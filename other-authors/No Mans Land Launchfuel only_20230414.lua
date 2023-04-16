
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Mans Land Only starship fuel for launching", 
["MOD_AUTHOR"]				= "Youngneil1",				--Originally authored by Lo2K, edited by Xen0nex and then again by youngneil1
["NMS_VERSION"]				= "4.20",
["MOD_DESCRIPTION"]			= "This mods makes launchfuel the only resocurce eglible for refueling the launch thruster, regardless of ship type.",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							-- yn1: Replace RADIO1 as resource for launch thruster with launchfuel
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER"},				--Normal Ship Launch Thruster
							["PRECEDING_KEY_WORDS"] = {"RADIO1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"LAUNCHFUEL"}			
							}
						},
						
						{
							-- yn1: Replace FUEL2 as resource for launch thruster with launchfuel
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ALIEN"},				--Living Ship Launch Thruster equivalent
							["PRECEDING_KEY_WORDS"] = {"FUEL2"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"LAUNCHFUEL"}			
							}
						},
						{
							-- yn1: Replace CREATURE1 as resource for launch thruster with launchfuel
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ALIEN"},				--Living Ship Launch Thruster equivalent
							["PRECEDING_KEY_WORDS"] = {"CREATURE1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"LAUNCHFUEL"}			
							}
						},
						{
							-- yn1: Replace OXYGEN as resource for launch thruster with launchfuel
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ALIEN"},		--Living Ship Launch Thruster equivalent
							["PRECEDING_KEY_WORDS"] = {"OXYGEN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"LAUNCHFUEL"}			
							}
						},
						
						{
							-- yn1: Replace DRONE_SHARD as resource for launch thruster with launchfuel
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ROBO"},				--Sentinel Interceptor Launch Thruster equivalent
							["PRECEDING_KEY_WORDS"] = {"DRONE_SHARD"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"LAUNCHFUEL"}			
							}
						},
						{
							-- yn1: Replace ROBOT1 as resource for launch thruster with launchfuel
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ROBO"},		--Living Ship Launch Thruster equivalent
							["PRECEDING_KEY_WORDS"] = {"ROBOT1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"LAUNCHFUEL"}			
							}
						},
						
						{
							-- yn1: Replace RADIO1 as resource for launch thruster with launchfuel
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_SPEC"},				--Advanced Launch System
							["PRECEDING_KEY_WORDS"] = {"RADIO1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"LAUNCHFUEL"}			
							}
						}
					}
				}	
			}
		}
	}	
}
