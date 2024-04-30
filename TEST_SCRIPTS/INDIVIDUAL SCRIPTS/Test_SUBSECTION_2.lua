NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "TestScript.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "",         --optional, for reference
  ["MOD_AUTHOR"]				= "WBERTRO",         --optional, for reference
  ["NMS_VERSION"]				= "",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0.SCENE.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{ 
              COMMENT = [[-- 1 action: will replace only in the section found by 2nd SKW pair, line 3917]],
							["SPECIAL_KEY_WORDS"] = {"NameHash","3181130562","Name","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0",}, -- 3527-4115 then found section 3916-3954
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"New_MODEL"}, -- just for test at line 3917
							}	
						},
            
						{ 
              COMMENT= [[-- 1 action:  no REPLACE_TYPE here implies REPLACE_TYPE = "ONCE"
              no keywords implies use full EXML, line 4 is 1st "Name" encountered
              ]],
              ["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name",	"Newer_MODEL"}, -- just for test in line 4 (the 1st "Name" encountered)
							}	
						},

						{ 
              COMMENT = [[-- 5 action:  no REPLACE_TYPE here implies REPLACE_TYPE = "ONCE"
              BUT WISS forces REPLACE_TYPE = "ALL" when user do not explicitely say "ONCE",
              section found: 3916-3954]],
              WISS = {
                    {"Name","New_MODEL",}, -- section encountered is 3916-3954
                  },
              ["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0"},
							}	
						},

						{ 
              COMMENT = [[-- 1 action:  no REPLACE_TYPE here implies REPLACE_TYPE = "ONCE"
               BUT WISS forces REPLACE_TYPE = "ALL" but the user explicitely says "ONCE",
               just for test, restored line 4 to original, 3-4348
               ]],
              REPLACE_TYPE = "ONCE",
              WISS = {
                    {"Name","Newer_MODEL",}, -- section encountered is 3-4348
                  },
              ["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Name","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0"},
							}	
						},

					},
				},
			},
		}, --8 global replacements
	},
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED