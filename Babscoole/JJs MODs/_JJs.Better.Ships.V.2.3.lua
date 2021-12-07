TEXT_TO_ADD =
[[
          <Property name="Filename" value="MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC.SCENE.MBIN" />
          <Property name="Class" value="GcSpaceshipClasses.xml">
            <Property name="ShipClass" value="Dropship" />
          </Property>
          <Property name="AIRole" value="GcAISpaceshipRoles.xml">
            <Property name="AIShipRole" value="Standard" />
          </Property>
          <Property name="FrigateClass" value="GcFrigateClass.xml">
            <Property name="FrigateClass" value="Combat" />
          </Property>
        </Property>
        <Property value="GcAISpaceshipModelData.xml">
          <Property name="Filename" value="MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN" />
          <Property name="Class" value="GcSpaceshipClasses.xml">
            <Property name="ShipClass" value="Shuttle" />
          </Property>
          <Property name="AIRole" value="GcAISpaceshipRoles.xml">
            <Property name="AIShipRole" value="Standard" />
          </Property>
          <Property name="FrigateClass" value="GcFrigateClass.xml">
            <Property name="FrigateClass" value="Combat" />
          </Property>
        </Property>
        <Property value="GcAISpaceshipModelData.xml">
          <Property name="Filename" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\FIGHTERCLASSICGOLD.SCENE.MBIN" />
          <Property name="Class" value="GcSpaceshipClasses.xml">
            <Property name="ShipClass" value="Fighter" />
          </Property>
          <Property name="AIRole" value="GcAISpaceshipRoles.xml">
            <Property name="AIShipRole" value="Standard" />
          </Property>
          <Property name="FrigateClass" value="GcFrigateClass.xml">
            <Property name="FrigateClass" value="Combat" />
          </Property>
        </Property>
        <Property value="GcAISpaceshipModelData.xml">
          <Property name="Filename" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN" />
          <Property name="Class" value="GcSpaceshipClasses.xml">
            <Property name="ShipClass" value="Scientific" />
          </Property>
          <Property name="AIRole" value="GcAISpaceshipRoles.xml">
            <Property name="AIShipRole" value="Standard" />
          </Property>
          <Property name="FrigateClass" value="GcFrigateClass.xml">
            <Property name="FrigateClass" value="Combat" />
          </Property>
        </Property>
        <Property value="GcAISpaceshipModelData.xml">
]]


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_JJs.Better.Ships.V.2.3.pak",
["MOD_DESCRIPTION"]			= "",
["MOD_AUTHOR"]				= "JJHookah",
["LUA_AUTHOR"]				= "Babscoole",
["NMS_VERSION"]				= "3.72",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData","Poor"},				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"C",	"0"}, -- Original "60"
								{"B",	"34"}, -- Original "30"
								{"A",	"33"}, -- Original "10"
								{"S",	"33"} -- Original "0"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData","Average"},				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"C",	"0"}, -- Original "49"
								{"B",	"33"}, -- Original "35"
								{"A",	"34"}, -- Original "15"
								{"S",	"33"} -- Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData","Wealthy"},				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"C",	"0"}, -- Original "30"
								{"B",	"33"}, -- Original "40"
								{"A",	"33"}, -- Original "28"
								{"S",	"34"} -- Original "2"
							}
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns","GcAIShipSpawnData.xml"},				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"WarpIn",	"True"} -- Original "False"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns","StartTime"},				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"y","2"}	-- Original "0"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns","ChildSpawns"},				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"WarpIn",	"True"} -- Original "False"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns","ChildSpawns","StartTime"},				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"x","4"},	-- Original "0"					
								{"y","6"}	-- Original "0"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns","ChildSpawns","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"},				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"WarpIn",	"True"}, -- Original "False"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns","ChildSpawns","ChildSpawns"},				
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"WarpIn",	"True"}, -- Original "False"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["LINE_OFFSET"] 	= "+155",							
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"IGNORE",	"CapitalFreighter"}, -- Original "Freighter"					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["SPECIAL_KEY_WORDS"] = {"MinRange","5000"},
							["PRECEDING_FIRST"] = "TRUE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinRange","8000"} --Original "5000"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["LINE_OFFSET"] 	= "+170",							
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"IGNORE",	"1"}, -- Original "2"			
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["LINE_OFFSET"] 	= "+171",							
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"IGNORE",	"3"}, -- Original "5"				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["LINE_OFFSET"] 	= "+192",							
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"IGNORE",	"Freighter"}, -- Original "Frigate"			
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["LINE_OFFSET"] 	= "+194",							
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"IGNORE",	"5000"}, -- Original "200"				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["LINE_OFFSET"] 	= "+203",							
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"IGNORE",	"3000"}, -- Original "1000"		
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["LINE_OFFSET"] 	= "+204",							
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"IGNORE",	"3000"}, -- Original "1500"				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["LINE_OFFSET"] 	= "+207",							
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"IGNORE",	"3"}, -- Original "0"			
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["LINE_OFFSET"] 	= "+208",							
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"IGNORE",	"5"}, -- Original "3"				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["LINE_OFFSET"] 	= "+211",							
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"IGNORE",	"4"}, -- Original "0"			
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["LINE_OFFSET"] 	= "+212",							
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"IGNORE",	"6"}, -- Original "0"				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["LINE_OFFSET"] 	= "+243",							
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"IGNORE",	"4"}, -- Original "0"				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["LINE_OFFSET"] 	= "+244",							
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"IGNORE",	"6"}, -- Original "5"				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["LINE_OFFSET"] 	= "+247",							
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"IGNORE",	"0"}, -- Original "4"			
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["LINE_OFFSET"] 	= "+248",							
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"IGNORE",	"0"}, -- Original "6"				
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["LINE_OFFSET"] 	= "+278",							
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"IGNORE",	"0"}, -- Original "4"			
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["LINE_OFFSET"] 	= "+279",							
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"IGNORE",	"0"}, -- Original "6"				
							}
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC.SCENE.MBIN",},	
							["LINE_OFFSET"] 	= "+11",
							["ADD"] 				= TEXT_TO_ADD
						},						
					}
				},				
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE