NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "FPKWGTest.pak",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.52",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"]  = "GCSETTLEMENTGLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						
            -- {
							-- ["PRECEDING_KEY_WORDS"] = "GekProductionElements", -- a string
							-- ["ADD"] =
              -- [[
                  -- <Property value="NMSString0x10.xml">
                    -- <Property name="Value" value="GAS1" />
                  -- </Property>
              -- ]]
						-- },
						
            -- {
							-- ["PRECEDING_KEY_WORDS"] = {"KorvaxProductionElements"}, -- a table of strings
							-- ["ADD"] =
              -- [[
                  -- <Property value="NMSString0x10.xml">
                    -- <Property name="Value" value="GAS1" />
                  -- </Property>
              -- ]]
						-- },
						
            -- {
							-- ["PRECEDING_KEY_WORDS"] = {"VykeenProductionElements"},
							-- ["ADD"] =
              -- [[
                  -- <Property value="NMSString0x10.xml">
                    -- <Property name="Value" value="GAS1" />
                  -- </Property>
              -- ]]
            -- },
						
            -- {
							-- ["PRECEDING_KEY_WORDS"] = {"PoorProductionElements"},
							-- ["ADD"] =
              -- [[
                  -- <Property value="NMSString0x10.xml">
                    -- <Property name="Value" value="GAS1" />
                  -- </Property>
              -- ]]
						-- },
            
						{
							COMMENT = [[ Using a table of sub-tables of strings for PKW]],
              ["PRECEDING_KEY_WORDS"] = {
                {"Test1","Test2",},
                {"GekProductionElements"},
                {"KorvaxProductionElements"},
                {"VykeenProductionElements"},
                {"PoorProductionElements"},
              },
							["ADD"] =
              [[
                  <Property value="NMSString0x10.xml">
                    <Property name="Value" value="GAS1" />
                  </Property>
              ]]
						},
            
					}
				},				
			}
		}
	}	--4 global replacements
}