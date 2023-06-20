NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC ENVIRONMENT.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCENVIRONMENTGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				COMMENT = "Short script version, negative SECTION_ACTIVE forces each VALUE_CHANGE_TABLE entry to be REPLACEd only ONCE",
        MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'LODAdjust',
				SECTION_ACTIVE		= -4,
				LINE_OFFSET			= 1,
				VALUE_CHANGE_TABLE 	= { --mutiple entry activates auto-increment of LINE_OFFSET
					{'IGNORE',		2},
					{'IGNORE',		2.5},
					{'IGNORE',		3},
					{'IGNORE',		4},
					{'IGNORE',		5},
				},
			},
		},
	},
	{
		MBIN_FILE_SOURCE	= 'GCENVIRONMENTGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				COMMENT = "Long script version, negative SECTION_ACTIVE forces each VALUE_CHANGE_TABLE entry to be REPLACEd only ONCE",
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'LODAdjust',
				SECTION_ACTIVE		= -4,
				LINE_OFFSET			= 1,
				VALUE_CHANGE_TABLE 	= { --no auto-increment of LINE_OFFSET
					{'IGNORE',		2},
				},
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'LODAdjust',
				SECTION_ACTIVE		= -4,
				LINE_OFFSET			= 2,
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		2.5},
				},
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'LODAdjust',
				SECTION_ACTIVE		= -4,
				LINE_OFFSET			= 3,
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		3},
				},
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'LODAdjust',
				SECTION_ACTIVE		= -4,
				LINE_OFFSET			= 4,
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		4},
				},
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'LODAdjust',
				SECTION_ACTIVE		= -4,
				LINE_OFFSET			= 5,
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		5},
				},
			},
		},
	}, --10 global replacements
}}}}
