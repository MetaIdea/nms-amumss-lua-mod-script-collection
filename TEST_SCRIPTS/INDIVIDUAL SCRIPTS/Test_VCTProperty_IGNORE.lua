NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Test_VCTProperty_IGNORE.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "",         --optional, for reference
  ["MOD_AUTHOR"]				= "Wbertro",         --optional, for reference
  ["NMS_VERSION"]				= "",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA/REALITY/TABLES/FRIGATETRAITTABLE.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						
            {
              COMMENT = [[0 action: with both SKW and PKW + no MATH_OPERATION:
              -- ALTERNATE USE is invoked!
              -- property becomes the last PKW
              -- will try to search for ChanceOfBeingOffered and it cannot replace because no value of type NUMBER
              -- here SOME sections will be found]],
              SKW = {"FrigateTraitStrength","NegativeLarge",},
              SECTION_UP_SPECIAL = 1,
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
              REPLACE_TYPE = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",	"0"},
							}	
						},

						{ 
              COMMENT = [[40 actions: with both SKW and PKW + MATH_OPERATION: 
              -- will work and replace all inside found sections
              -- ALTERNATE USE is NOT invoked
              -- here SOME sections will be found]],
              SKW = {"FrigateTraitStrength","NegativeLarge",},
              SECTION_UP_SPECIAL = 1,
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
              MATH_OPERATION = "*",
              REPLACE_TYPE = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",	"0"},
							}	
						},

						{ 
              COMMENT = [[1376 actions: with MATH_OPERATION, will work and replace all inside found sections
              -- here ALL sections are found inside the whole file
              -- ALTERNATE USE is NOT invoked]],
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
              MATH_OPERATION = "*",
              REPLACE_TYPE = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",	"0"},
							}	
						},

						{ 
              COMMENT = [[0 action: PKW exist + no MATH_OPERATION: 
              -- ALTERNATE USE is invoked!
              -- property becomes the last PKW
              -- will try to search for ChanceOfBeingOffered and it cannot replace because no value of type NUMBER
              -- here ALL sections are still found inside the whole file]],
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
              REPLACE_TYPE = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",	"0"},
							}	
						},
            
					}
				},
			}
		}, --1602 global replacements
	},
}
