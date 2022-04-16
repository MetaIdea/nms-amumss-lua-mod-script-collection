//=============================================================================
// From: NMS Creative & Sharing Hub discord server
// MOD SCRIPT TO CREATE THE DESCRIPTOR LUA TABLES
// USE WITH https://github.com/cmkushnir/NMSModBuilder
//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	public class Export_Descriptor_Trees : cmk.NMS.QueryScript
	{
		public class Node {
			public string Name;  // mbin name w/o extension or "_PROC.DESCRIPTOR" suffix
			public string Path;  // full path to descriptor mbin
			public List<Node> Parents  = new();
			public List<Node> Children = new();
		}

		protected System.Text.StringBuilder m_builder = new(100 * 1024);

		//...........................................................
	
		protected override void Execute ()
		{		
			var dir = Dialog.SelectFolder();
			if( dir.IsNullOrEmpty() ) return;
		
			var root = ParseDescriptors();
			
			foreach( var child in root.Children ) {
				if( !child.Parents.IsNullOrEmpty() ) continue;  // only dump top desc
				Log.AddInformation($"{child.Path} => {child.Name}.lua");
				
				// test, just Log what we think are top desc mbin's,
				// comment out continue when we think we are getting correct ones.
				//continue;
				
				m_builder.AppendLine(child.Name + " = ");
				
				Process(child.Path, null);			
				System.IO.File.WriteAllText(System.IO.Path.Combine(dir, child.Name + ".lua"), m_builder.ToString());
				
				m_builder.Clear();
			}
			
			Log.AddSuccess("Finished");
		}
	
		//...........................................................

		protected Node ParseDescriptors()
		{
			var root = new Node();
			var TkModelDescriptorListClass = Game.Mbinc.FindClass("TkModelDescriptorList");
			
			// pass 1: create Node object for each desc mbin
			foreach( var desc_path in TkModelDescriptorListClass.PakItems ) {
				if( desc_path.Contains("/ANIM")    ||
				    desc_path.Contains("/TESTS/")  ||
				    desc_path.Contains("/DEMOS/")
				)	continue;
				
				var child  = new Node{ Path = desc_path };
				child.Name = System.IO.Path.GetFileNameWithoutExtension(desc_path);
				if( child.Name.EndsWith(".DESCRIPTOR") ) child.Name = child.Name.Remove(child.Name.Length - ".DESCRIPTOR".Length);
				if( child.Name.EndsWith("_PROC") )       child.Name = child.Name.Remove(child.Name.Length - "_PROC".Length);
				root.Children.Add(child);
			}
			
			// pass 2: for each top Node (mbin) get list of all child ReferencePaths,
			//         for each child ReferencePath set top Node as a Parent
			foreach( var child in root.Children ) {
				ParseDescriptor(child, root.Children);
			}		
			
			return root;
		}
	
		//...........................................................
		
		protected void ParseDescriptor( Node NODE, List<Node> ALL )
		{
			var mbin  = ExtractMbin<TkModelDescriptorList>(NODE.Path, true, false);
			if( mbin == null ) return; 
			
			foreach( var path in ParseDescriptorReferencePaths(mbin) ) {
				var node  = ALL.Find(NODE => NODE.Path == path);
				if( node != null ) {
					node.Parents.Add(NODE);
					NODE.Children.Add(node);
				}
			}
		}

		//...........................................................
		
		protected IEnumerable<string> ParseDescriptorReferencePaths( TkModelDescriptorList LIST )
		{		
			if( !LIST.List.IsNullOrEmpty() )
			foreach( TkResourceDescriptorList res_list in LIST.List ) {
				if( !res_list.Descriptors.IsNullOrEmpty() )			
				foreach( TkResourceDescriptorData data in res_list.Descriptors ) {
					if( !data.ReferencePaths.IsNullOrEmpty() )
					foreach( var path in data.ReferencePaths ) {
						var desc_path = path.Value.Replace(".SCENE.", ".DESCRIPTOR.");
						yield return desc_path;
					}
					if( !data.Children.IsNullOrEmpty() )
					foreach( TkModelDescriptorList child in data.Children ) {
						if( child != null )
						foreach( var child_path in ParseDescriptorReferencePaths(child) ) {  // recurse
							yield return child_path;
						}
					}					
				}
			}				
		}

		//...........................................................
		
		
		protected void Process( string PATH, string INDENT )
		{
			var mbin  = ExtractMbin<TkModelDescriptorList>(PATH, true, false);
			if( mbin != null ) {
				//Log.AddInformation(string.Format("Processing: {0}", PATH));
				Process(mbin, INDENT, INDENT != null);
			}
			else {
				m_builder.AppendLine(INDENT + "{},");
			}
		}

		//...........................................................
		
		
		protected void Process( TkModelDescriptorList LIST, string INDENT, bool NEW_FILE )
		{
			m_builder.AppendLine(INDENT + "{");
			if( NEW_FILE ) m_builder.AppendLine(INDENT + "\t\"TkModelDescriptorListNewFile\", {");
			else           m_builder.AppendLine(INDENT + "\t\"TkModelDescriptorList\", {");
			
			if( LIST.List != null )
			foreach( var list in LIST.List ) {
				Process(list, INDENT + "\t\t");
			}
			
			m_builder.AppendLine(INDENT + "\t},");
			if( INDENT == null ) m_builder.AppendLine(INDENT + "}");
			else                 m_builder.AppendLine(INDENT + "},");
		}

		//...........................................................

		protected void Process( TkResourceDescriptorList LIST, string INDENT ) 
		{
			m_builder.AppendLine(INDENT + "{");		
			m_builder.AppendLine(INDENT + "\t\"TkResourceDescriptorList\",");	
			m_builder.AppendLine(INDENT + "\t{");		
			//m_builder.AppendLine(INDENT + LIST.TypeId);
			
			string xRare = "";
			var    index = 1;
			bool   xRareTag = false;
			var    nonEmptyRefPaths = 0;
			//var refcount = 0;
			
			if( LIST.Descriptors != null )
			foreach( var desc in LIST.Descriptors ) {
				m_builder.AppendLine(INDENT + "\t\t{");	
				
				//if( desc.ReferencePaths.Count < 1 ) {
					m_builder.AppendLine(INDENT + "\t\t\t\"TkResourceDescriptorData\",");
				//} 
				//else {
					//m_builder.AppendLine(INDENT + "\t\t\t\"TkResourceDescriptorDataWithReferencePath\",");
				//}
				m_builder.AppendLine(INDENT + "\t\t\t\"" + desc.Id + "\",");
							
				if( desc.Children != null && desc.Children.Count > 0) {
					m_builder.AppendLine(INDENT + "\t\t\t{");	
					
					foreach( TkModelDescriptorList child in desc.Children ) {
						Process(child, INDENT + "\t\t\t\t", false);
					}
					
					m_builder.AppendLine(INDENT + "\t\t\t},");
				}
				else {
					m_builder.AppendLine(INDENT + "\t\t\t{},");
				}
				
				
				if( desc.ReferencePaths != null  && desc.ReferencePaths.Count > 0) {
					foreach( var ref_path in desc.ReferencePaths ) {
						if( ExtractMbin<TkModelDescriptorList>(ref_path.Value, true, false) != null ) {
							nonEmptyRefPaths++;
						}
					}
				}
				
				if( desc.ReferencePaths != null  && desc.ReferencePaths.Count > 0 ) {
					m_builder.AppendLine(INDENT + "\t\t\t{");
					bool leftOrRightIterated = false;
					
					foreach( var ref_path in desc.ReferencePaths ) {
						bool IsleftOrRight = false;
						var desc_path = ref_path.Value.Replace(".SCENE.", ".DESCRIPTOR.");
						if( desc_path.Contains("_RIGHT.") || desc_path.Contains("_R.") ||
						    desc_path.Contains("_LEFT.")  || desc_path.Contains("_L.") ||
						    desc_path.Contains("DOUBLE/R")|| desc_path.Contains("DOUBLE/L")
						) {
							IsleftOrRight = true;
						}
						if( !IsleftOrRight || (IsleftOrRight && !leftOrRightIterated) ) { //only use LEFT OR Right side DESCRIPTORS
							Process(desc_path, INDENT + "\t\t\t\t");
							if( IsleftOrRight ) leftOrRightIterated = true;
							//if( !(desc_path.Contains("LEFT") || desc_path.Contains("RIGHT")) ) ++refcount;
						}
						else {
							//if( nonEmptyRefPaths > 0 ) {
								m_builder.AppendLine(INDENT + "\t\t\t\t{},");
							//}
						}
					}
					m_builder.AppendLine(INDENT + "\t\t\t},");
				}
				else {
					m_builder.AppendLine(INDENT + "\t\t\t{},");
				}
					
				m_builder.AppendLine(INDENT + "\t\t},");
				
				if( desc.Name.Value.Contains("xRARE") ) {
					xRareTag = true;
					xRare    = xRare + index + ",";
				}
				else {
					for( int i = 1; i <= 20; ++i ) {
						xRare = xRare + index + ",";
					}
				}	
				++index;				
			}
			
			m_builder.AppendLine(INDENT + "\t},");	
			if( xRareTag && xRare.Length > 0 ) m_builder.AppendLine(INDENT + "\t" + "{" + xRare + "},");		
			m_builder.AppendLine(INDENT + "},");
		}	
	}
}

//=============================================================================
