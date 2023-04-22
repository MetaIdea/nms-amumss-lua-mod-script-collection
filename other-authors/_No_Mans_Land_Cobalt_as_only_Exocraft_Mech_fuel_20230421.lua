
Author = "Youngneil1"		
ModName = "No Mans Land"
ModNameSub = "Cobalt as only Exoccraft Mech Fuel"
BaseDescription = "All Exocraft and the Mech require Cobalt as fuel."
GameVersion = "423"
ModVersion = "a"
FileSource1 = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"

TEXT_TO_ADD =
[[
        <Property name="ChargeBy">
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="CAVE1" />
          </Property>
        </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{
	["MBIN_CHANGE_TABLE"] = {
		{
			["MBIN_FILE_SOURCE"] = FileSource1,
			["EXML_CHANGE_TABLE"] = {
				
				{
					["SPECIAL_KEY_WORDS"] = {"ID","VEHICLE_ENGINE","SubstanceCategory","Fuel"},
					--["PRECEDING_KEY_WORDS"] = "SCANBINOC1",
					["REPLACE_TYPE"] = "ADDAFTERSECTION",
					["ADD"] = TEXT_TO_ADD, 
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","VEHICLE_ENGINE","BuildFullyCharged","True"},
					--["PRECEDING_KEY_WORDS"] = "SCANBINOC1",
					--["REPLACE_TYPE"] = "ADDAFTERSECTION",
					["LINE_OFFSET"] = "-2",
					["REMOVE"] = "LINE", 
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","VEHICLE_ENGINE","BuildFullyCharged","True"},
					--["PRECEDING_KEY_WORDS"] = "SCANBINOC1",
					--["REPLACE_TYPE"] = "ADDAFTERSECTION",
					--["LINE_OFFSET"] = "-2",
					--["REMOVE"] = "LINE", 
					["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BuildFullyCharged",	"False"}			
							}
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","MECH_ENGINE","SubstanceCategory","Fuel"},
					--["PRECEDING_KEY_WORDS"] = "SCANBINOC1",
					["REPLACE_TYPE"] = "ADDAFTERSECTION",
					["ADD"] = TEXT_TO_ADD, 
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","MECH_ENGINE","BuildFullyCharged","True"},
					--["PRECEDING_KEY_WORDS"] = "SCANBINOC1",
					--["REPLACE_TYPE"] = "ADDAFTERSECTION",
					["LINE_OFFSET"] = "-2",
					["REMOVE"] = "LINE", 
				},
				{
					["SPECIAL_KEY_WORDS"] = {"ID","MECH_ENGINE","BuildFullyCharged","True"},
					--["PRECEDING_KEY_WORDS"] = "SCANBINOC1",
					--["REPLACE_TYPE"] = "ADDAFTERSECTION",
					--["LINE_OFFSET"] = "-2",
					--["REMOVE"] = "LINE", 
					["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BuildFullyCharged",	"False"}			
							}
				},
			}
		},
	}
},
}}
