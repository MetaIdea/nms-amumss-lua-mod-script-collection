Laser_Damage = 100

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "MiningLaserSpeed.pak",
["MOD_AUTHOR"]				= "Wbertro",
["NMS_VERSION"]				= "1.78",  			--version on first mod release
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
              ["SPECIAL_KEY_WORDS"] = {"ID","LASER",},
							["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_Damage",},     -- here using a single "KeyWord" to further specify the location of the value to change
							["VALUE_CHANGE_TABLE"] 	=   --more damage = less required time to mine
							{
								{"Bonus",				Laser_Damage}, -- Original "20"  always leave the orig. value as a reference
							}
						}, --for multiple EXML changes with PRECEDING_KEY_WORDS copy this chunk below and add a comma behind this line here
						{
              ["SPECIAL_KEY_WORDS"] = {"ID","LASER",},
							["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_Mining_Speed",},     -- here using a single "KeyWord" to further specify the location of the value to change
							["VALUE_CHANGE_TABLE"] 	=   --currently, in NMS, only changes the "Advanced Mining Laser" "Mining Speed %" 
							{                           --does not affect "Mining Speed" per say
								{"Bonus",				"1"}, -- Original "1"  always leave the orig. value as a reference
							}
						}, --for multiple EXML changes with PRECEDING_KEY_WORDS copy this chunk below and add a comma behind this line here
						{
              ["SPECIAL_KEY_WORDS"] = {"ID","STRONGLASER",},
							["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_Mining_Speed",},     -- here using a single "KeyWord" to further specify the location of the value to change
							["VALUE_CHANGE_TABLE"] 	=    --currently, in NMS, only changes the "Advanced Mining Laser" "Mining Speed %"
							{                           --does not affect "Mining Speed" per say
								{"Bonus",				"0.9"}, -- Original "0.9"  always leave the orig. value as a reference
							}
						}, --for multiple EXML changes with PRECEDING_KEY_WORDS copy this chunk below and add a comma behind this line here
						{
              ["SPECIAL_KEY_WORDS"] = {"ID","LASER_XO",},
							["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_Mining_Speed",},     -- here using a single "KeyWord" to further specify the location of the value to change
							["VALUE_CHANGE_TABLE"] 	=    --currently, in NMS, only changes the "Advanced Mining Laser" "Mining Speed %"
							{                           --does not affect "Mining Speed" per say
								{"Bonus",				"0.95"}, -- Original "0.95"  always leave the orig. value as a reference
							}
						}, --for multiple EXML changes with PRECEDING_KEY_WORDS copy this chunk below and add a comma behind this line here
					} --4 global replacements
				}, --for multiple MBIN sources: copy this chunk below and add a comma behind this line here
			}
		}, --for multiple pak sources: copy this chunk below and add a comma behind this line here
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE