
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'Test_VCT_regular.pak',
	MOD_AUTHOR			= 'Wbertro',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {'MATERIALS/ATMOSPHERE.MATERIAL.MBIN',
                         [[METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN]], --nothing will be change in this MBIN
                         },
		EXML_CHANGE_TABLE	= {
			{
				COMMENT = [[
        
        
        ***************    THIS SCRIPT WILL NOT PRODUCE A PAK, IT WILL NOT COMPILE THE EXMLs   ****************
        
        1 action: Finds 'Map' with the exact 'Property'
        
        Processing NMS_REALITY_GCPRODUCTTABLE.MBIN: NOTHING WILL BE DONE (WARNING/NOTICE issued)]],
        SPECIAL_KEY_WORDS	= {'Name', 'gCloudMap'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/SPACE/ATMOSPHERE/NEWATMOSPHERE02.DDS'},
				},
			},
			{
				COMMENT = [[1 action: Finds first 'Property' that starts with TextureAdd*
        To replace all make REPLACE_TYPE = "ALL", like next section
        WILL not compile obviously due to bogus newvalue
        
        Processing NMS_REALITY_GCPRODUCTTABLE.MBIN: NOTHING WILL BE DONE (WARNING/NOTICE issued)]],
				VALUE_CHANGE_TABLE 	= {
					{[[{^TextureAdd}]], 'MyTest'},
				},
			},
			{
				COMMENT = [[4 actions: Finds ALL 'Property' that starts with TextureAdd*
        Will not compile obviously due to bogus newvalue
        
        Processing NMS_REALITY_GCPRODUCTTABLE.MBIN: NOTHING WILL BE DONE (WARNING/NOTICE issued)]],
				REPLACE_TYPE = "ALL",
				VALUE_CHANGE_TABLE 	= {
					{[[{^TextureAdd}]], 'MyTest'},
				},
			},
			{
				COMMENT = [[12 actions: Finds first 'Property' with TextureAdd*
        Adds ' AfterTest' to the end of the current value of ^TextureAdd
        Adds 'BeforeTest ' to the start of the current value of ^TextureFil
        Will not compile obviously
        
        Processing NMS_REALITY_GCPRODUCTTABLE.MBIN: NOTHING WILL BE DONE (WARNING/NOTICE issued)]],
				REPLACE_TYPE = "ALL",
				VALUE_CHANGE_TABLE 	= {
					{[[{^TextureAdd}]], [[{:} AfterTest]]},
					{[[{^TextureFil}]], [[BeforeTest {:}]]},
					{[[{^TextureFil}]], [=[+++ BeforeTest {:} AfterTest[1.235]]=]},
				},
			},
			{
				COMMENT = [[4 actions: Finds ALL 'Property (name/value)=' *Add* ('Add' anywhere in 'Property')
        Will not compile obviously
        
        Processing NMS_REALITY_GCPRODUCTTABLE.MBIN: NOTHING WILL BE DONE (WARNING/NOTICE issued)]],
				REPLACE_TYPE = "ALL",
        VALUE_CHANGE_TABLE 	= {
					{[[{Add}]], 'MyTest'},
				},
			},
		},
	}
}}}, --25 global replacements
}
