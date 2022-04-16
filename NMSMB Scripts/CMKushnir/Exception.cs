//=============================================================================

using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Text;

using nms = libMBIN.NMS;
using libMBIN.NMS.Globals;
using libMBIN.NMS.GameComponents;
using libMBIN.NMS.Toolkit;

//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	public class Exception : cmk.NMS.QueryScript
	{
		public static void assert( bool b, string m = "" )
		{
        	if( !b ){
				throw new System.Exception("ASSERTION FAILED!!! " + m);
			}
		}

		protected override void Execute()
		{
			assert(false);
		}
	}
}

//=============================================================================
