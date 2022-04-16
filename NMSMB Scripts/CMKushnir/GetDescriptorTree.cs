//=============================================================================

using System.IO;
using System.Text;

using mbin_gl = libMBIN.NMS.Globals;
using mbin_gc = libMBIN.NMS.GameComponents;
using mbin_tk = libMBIN.NMS.Toolkit;

//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	public class GetDescriptorTree : cmk.NMS.QueryScript
	{
		protected StringBuilder m_builder = new StringBuilder(100 * 1024);
	
		protected struct Descriptor {
			public string Name;
			public string Path;
		}	
		protected Descriptor [] m_descriptor = new [] {
			new Descriptor { Name = "MULTITOOL",  Path = "MODELS/COMMON/WEAPONS/MULTITOOL/MULTITOOL.DESCRIPTOR.MBIN" },	
			new Descriptor { Name = "DROPSHIP",   Path = "MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.DESCRIPTOR.MBIN" },
			new Descriptor { Name = "FIGHTER",    Path = "MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.DESCRIPTOR.MBIN" },
			new Descriptor { Name = "S-CLASS",    Path = "MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.DESCRIPTOR.MBIN" },
			new Descriptor { Name = "SCIENTIFIC", Path = "MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.DESCRIPTOR.MBIN" },
			new Descriptor { Name = "SHUTTLE",    Path = "MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.DESCRIPTOR.MBIN" },
			new Descriptor { Name = "BIOSHIP",    Path = "MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC.DESCRIPTOR.MBIN" },
		};
	
		//...........................................................
	
		protected override void Execute()
		{		
			var dir = Dialog.SelectFolder();
			if( dir.IsNullOrEmpty() ) return;
		
			foreach( var descriptor in m_descriptor ) {
				if( Cancel.IsCancellationRequested ) break;
				m_builder.AppendLine(descriptor.Name + " = ");
				Process(descriptor.Path, null);			
				System.IO.File.WriteAllText(System.IO.Path.Combine(dir, descriptor.Name + ".lua"), m_builder.ToString());
				m_builder.Clear();
			}
			
			Log.AddSuccess("Finished");
		}
		
		//...........................................................
		
		
		protected void Process( string PATH, string INDENT )
		{
			var mbin  = Mbin<mbin_tk.TkModelDescriptorList>(PATH, false);
			if( mbin != null ) {
				Log.AddInformation(string.Format("Processing: {0}", PATH));
				Process(mbin, INDENT, INDENT != null);
			}
		}

		//...........................................................
		
		
		protected void Process( mbin_tk.TkModelDescriptorList LIST, string INDENT, bool NEW_FILE )
		{
			m_builder.AppendLine(INDENT + "{");
			if( NEW_FILE ) m_builder.AppendLine(INDENT + "\t\"TkModelDescriptorListFile\", {");
			else           m_builder.AppendLine(INDENT + "\t\"TkModelDescriptorList\", {");
			
			if( LIST.List != null )
			foreach( var list in LIST.List ) {
				if( Cancel.IsCancellationRequested ) break;
				Process(list, INDENT + "\t\t");
			}
			
			m_builder.AppendLine(INDENT + "\t},");
			if( INDENT == null ) m_builder.AppendLine(INDENT + "}");
			else                 m_builder.AppendLine(INDENT + "},");
		}

		//...........................................................

		protected void Process( mbin_tk.TkResourceDescriptorList LIST, string INDENT ) 
		{
			m_builder.AppendLine(INDENT + "{");		
			m_builder.AppendLine(INDENT + "\t\"TkResourceDescriptorList\", {");	
			//m_builder.AppendLine(INDENT + LIST.TypeId);
			
			if( LIST.Descriptors != null )
			foreach( var desc in LIST.Descriptors ) {
				if( Cancel.IsCancellationRequested ) break;
				
				m_builder.AppendLine(INDENT + "\t\t{");	
				if( desc.ReferencePaths.Count < 1 ) m_builder.AppendLine(INDENT + "\t\t\t\"TkResourceDescriptorData\",");		
				else                                m_builder.AppendLine(INDENT + "\t\t\t\"TkResourceDescriptorDataWithReferencePath\",");		
				m_builder.AppendLine(INDENT + "\t\t\t\"" + desc.Id + "\",");
				
				if( desc.Children != null )
				foreach( mbin_tk.TkModelDescriptorList child in desc.Children ) {
					if( Cancel.IsCancellationRequested ) break;
					Process(child, INDENT + "\t\t\t", false);
				}

				if( desc.ReferencePaths != null )
				foreach( var ref_path in desc.ReferencePaths ) {
					if( Cancel.IsCancellationRequested ) break;
					var desc_path = ref_path.Value.Replace(".SCENE.", ".DESCRIPTOR.");
					Process(desc_path, INDENT + "\t\t\t");
				}

				m_builder.AppendLine(INDENT + "\t\t},");		
			}
			
			m_builder.AppendLine(INDENT + "\t},");	
			m_builder.AppendLine(INDENT + "},");	
		}	
	}
}

//=============================================================================
