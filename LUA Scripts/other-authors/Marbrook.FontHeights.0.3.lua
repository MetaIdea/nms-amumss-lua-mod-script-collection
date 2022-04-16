-- StandardSchemeSimple.lua used as template

-- Variables below this line change the UI

-- Markerfontsize effects all 3 Lines of waypoints (Name, Distanze and "press "e" to mark").
-- Working on effecting each line seperatly. right now it can break if an label-element ist added.
Marker_FontAlpha                = "1" -- Original "1" Tranparency range 0.0 - 1.0
Marker_LabelBackgroundAlpha     = "0.65" -- Original "0.65" Tranparency range 0.0 - 1.0
Marker_UnkwownAlpha             = "0" -- Original "0.75" Tranparency range 0.0 - 1.0 Still need to figure out whar it effexts
Marker_TopLabelFontSize     = "26" -- Original "19" "Your Ship" Hits all Labels atm
Marker_CenterLabelFontSize  = "26" -- Original "19" Waypointname 
Marker_BottomLabelFontSize  = "26" -- Original "19" "Arive in" 
Marker_Bottom2LabelFontSize = "19" -- Original "19" "Press E to mark" 

--LowerRightGroup Effects all the message-box as well as the symbols about exhaustion, inventory etc
LowerRightGroupPositionX   = "1920"  --Original "1920"
LowerRightGroupPositionY   = "1080"   --Original "1080"

--LowerNotify effects the blue titled objctive-window in the lower right corner
LowerNotifyWindowPositionX = "107.0833"    -- Original "107.0833"
LowerNotifyWindowPositionY = "23.33333"    -- Original "23.33333"
LowerNotifyWindowWidth     = "1200"    -- Original "1200"
LowerNotifyWindowHeigth    = "62"    -- Original "62"
LowerNotifyTitleFontSize   = "30"  --Original "24"
LowerNotifyBodyFontSize    = "30"  --Original "24"
LowerNotifyBodyAlpha       = "0.1"  --Original "0.3"
LowerNotifyFontAlpha       = "1"   --Original "1"

--HUDHealth is the group in the upper left corner
HUDHealthGroupPositionX = "0"  -- Original "38.4"
HUDHealthGroupPositionY = "-5.8"   -- Original "-5.8"
HUDHealthGroupAlpha     = "1"  -- Original "1"  still work in progress
HUDHealthGroupWidth     = "600"  -- Original "600"
HUDHealthGroupHeight    = "300"   -- Original "300"

--HUDHazardGroup effects the whole group showing temperature, Radion, Lifesupport, etc in the lower left corner

HUDHazardGroupPositionX = "0"  -- Original "0"
HUDHazardGroupPositionY = "571.4"  -- Original "571.4"
HUDHazardGroupAlpha     = "1"  -- Original "1" still WIP

--HUDWeaponsInfoGroup affects the weaponsinfo in the upper right corner

HUDWeaponsInfoGroupPositionX = "1920"  -- Original "1920"
HUDWeaponsInfoGroupPositionY = "-2"   -- Original "-2"
HUDWeaponsInfoGroupAlpha     = "1"  -- Original "1" still WIP
HUDWeaponsInfoGroupWidth     = "1500"  -- Original "1500"
HUDWeaponsInfoGroupHeight    = "551.2"  -- Original "551.2"


-- ShipHeadsUpPlanetinfo affects the PlanetInfo shown when pointing the shi at a planet

ShipHeadsUpPlanetInfoDistanceFontSize   = "26"  -- Original "26" Distance "10.000k"
ShipHeadsUpPlanetInfoNameFontSize       = "24"  -- Original "24" Planetname
ShipHeadsUpPlanetInfoSubtitlesFontSize  = "24"  -- Original "22" Subtitle1+2 "Undiscoverd"
ShipHeadsUpPlanetInfoRessourcesFontSize = "24"  -- Original "21" Ressources
ShipHeadsUpPlanetInfoArrivalFontsize    = "24"  -- Original "20" Arrive in / Time

ShipHeadsUpPlanetInfoPlanetNamePanelHeight    = "8.333333"     --not in use percentage
ShipHeadsUpPlanetInfoPlanetNamePanelWidth     = "650"  --Original "500"
ShipHeadsUpPlanetInfoPlanetPressPanelHeight    = ""     --not in use
ShipHeadsUpPlanetInfoPlanetPressPanelWidth     = "650"  --Original "500"
ShipHeadsUpPlanetInfoPlanetRessourcesPanelHeight    = ""     --not in use
ShipHeadsUpPlanetInfoPlanetRessourcesPanelWidth     = "500"  --Original "250" testing
ShipHeadsUpPlanetInfoFontAlpha = "1"    --Original "1" 

--HUDCornerLines effects the four gray lines in the four corners

HUDCornerLinesAlpha = "0.6" -- Original "0.6" WIP
HUDCOrnerLinesTopRightPositionX   = "1878.6"  -- Original "1978.6"
HUDCOrnerLinesTopRightPositionY   = "50"  -- Original "-2"
HUDCOrnerLinesBottomRightPositionX   = "44.70833"  -- Original "44.70833"
HUDCOrnerLinesBottomRightPositionY   = "44.5"  -- Original "44.5"
HUDCOrnerLinesTopLeftPositionX   = "0"  -- Original "0"
HUDCOrnerLinesTopLeftPositionY   = "0"  -- Original "0"
HUDCOrnerLinesBottomLeftPositionX   = "0"  -- Original  "0"
HUDCOrnerLinesBottomLeftPositionY   = "100"  -- Original "100"


-- ******************************************
-- Do not change anything below this line unless you know what you are doing. it might break your game.
-- ******************************************

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Marbrook.FontHeights.pak",      --the name of the pak created (if not combined) - REQUIRED - "ZZZ" to make it load ~last
  ["MOD_AUTHOR"]			= "Marbrook",           --optional, for reference only
  ["MOD_DESCRIPTION"]		= "Change your UI Version 0.3",    --optional, for reference only
  ["NMS_VERSION"]			= "2.06",             --optional, for reference only
  ["MODIFICATIONS"] 		=                     --REQUIRED SECTION
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak", --only one pak file here -REQUIRED
			["MBIN_CHANGE_TABLE"] = 
			{ 
--*******************************
--HUDMarkers
--*******************************
				{
					["MBIN_FILE_SOURCE"] 	= "UI\HUD\HUDMARKER.MBIN",  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, if this section is used
					["EXML_CHANGE_TABLE"] = 
					{
						{
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "LABEL_TOP"},	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"",""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		    = "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		    = "ALLFOLLOWING",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		    = "",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	    = "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		    = "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"FontHeight",	Marker_TopLabelFontSize}, 		-- Original 19  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"AutoAdjustHeight",	"True"}, 		-- Original false  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"FontHeight",	Marker_TopLabelFontSize}, 		-- Original 19  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"AutoAdjustHeight",	"True"}, 		-- Original false  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"FontHeight",	Marker_TopLabelFontSize}, 		-- Original 19  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"AutoAdjustHeight",	"True"}, 		-- Original false  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
                     	{
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "LABEL_CENTER"},	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"",""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		    = "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		    = "ALLFOLLOWING",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		    = "",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	    = "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		    = "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"FontHeight",	Marker_CenterLabelFontSize}, 		-- Original 19  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"AutoAdjustHeight",	"True"}, 		-- Original false  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"FontHeight",	Marker_CenterLabelFontSize}, 		-- Original 19  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"AutoAdjustHeight",	"True"}, 		-- Original false  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"FontHeight",	Marker_CenterLabelFontSize}, 		-- Original 19  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"AutoAdjustHeight",	"True"}, 		-- Original false  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
                     	{
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "LABEL_BTM"},	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"",""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		    = "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		    = "ALLFOLLOWING",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		    = "",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	    = "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		    = "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"FontHeight",	Marker_BottomLabelFontSize}, 		-- Original 19  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"AutoAdjustHeight",	"True"}, 		-- Original false  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"FontHeight",	Marker_BottomLabelFontSize}, 		-- Original 19  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"AutoAdjustHeight",	"True"}, 		-- Original false  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"FontHeight",	Marker_BottomLabelFontSize}, 		-- Original 19  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"AutoAdjustHeight",	"True"}, 		-- Original false  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
                     	{
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "LABEL_BTM2"},	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"",""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		    = "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		    = "ALLFOLLOWING",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		    = "",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	    = "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		    = "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"FontHeight",	Marker_Bottom2LabelFontSize}, 		-- Original 19  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"AutoAdjustHeight",	"True"}, 		-- Original false  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"FontHeight",	Marker_Bottom2LabelFontSize}, 		-- Original 19  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"AutoAdjustHeight",	"True"}, 		-- Original false  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"FontHeight",	Marker_Bottom2LabelFontSize}, 		-- Original 19  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"AutoAdjustHeight",	"True"}, 		-- Original false  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", ""},	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"", ""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		  = "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		    = "ALL",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		    = "1",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	  = "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		    = "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"A",	Marker_FontAlpha}, 		-- Original "1"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", ""},	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"", ""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		  = "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		    = "ALL",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		    = "0.65",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	  = "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		    = "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"A",	Marker_LabelBackgroundAlpha}, 		-- Original "0.75"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", ""},	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"", ""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		  = "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		    = "ALL",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		    = "0.75",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	  = "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		    = "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"A",	Marker_UnkwownAlpha}, 		-- Original "0.65"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						}
					}
				},
--*******************************
--HUDINDICATORS
--*******************************
			    {
					["MBIN_FILE_SOURCE"] 	= "UI\HUD\HUDINDICATORS.MBIN",  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, if this section is used
					["EXML_CHANGE_TABLE"] = 
					{
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", "", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"ElementData","Layout"},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"PositionX",	LowerRightGroupPositionX}, 		--Original 24  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"PositionY",	LowerRightGroupPositionY} 		--Original False  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "LOWER_NOTIFY", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = "",	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"PositionX",	LowerNotifyWindowPositionX}, 		--Original 24  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"PositionY",	LowerNotifyWindowPositionY}, 		--Original False  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"Width",	LowerNotifyWindowWidth}, 		--Original 24  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"Height",	LowerNotifyWindowHeigth} 		--Original False  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", "", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = "GcNGuiTextData.xml",	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "ALL",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"FontHeight",	LowerNotifyTitleFontSize}, 		--Original 24  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"AutoAdjustHeight",	"True"} 		--Original False  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", "", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = { "GcNGuiTextData.xml", "GcNGuiTextData.xml"},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "ALL",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"FontHeight",	LowerNotifyBodyFontSize}, 		--Original "24"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"A",	LowerNotifyFontAlpha}, 		--Original "1"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"AutoAdjustHeight",	"True"} 		--Original "False"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", "", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"Children","Children","Children","GcNGuiLayerData.xml","Style"},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "ALL",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "0.3",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"A",	LowerNotifyBodyAlpha}, 		--Original "1"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						}
					}
				},
--*******************************
--HUDHeadsup
--*******************************
				{
					["MBIN_FILE_SOURCE"] 	= { "UI\HUD\SHIP\HEADSUP.MBIN", },  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, if this section is used
					["EXML_CHANGE_TABLE"] = 
					{
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", "", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = { "", ""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "ALL",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "26",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"FontHeight",	ShipHeadsUpPlanetInfoDistanceFontSize}, 		-- Original 26  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
		                    },	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", "", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = { "", ""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "ALL",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "24",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"FontHeight",	ShipHeadsUpPlanetInfoNameFontSize}, 		-- Original 24  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							},	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", "", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = { "", ""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "ALL",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "22",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"FontHeight",	ShipHeadsUpPlanetInfoSubtitlesFontSize}, 		-- Original 22  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							},	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", "", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = { "", ""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "ALL",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "21",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"FontHeight",	ShipHeadsUpPlanetInfoRessourcesFontSize}, 		-- Original 21  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							},	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", "", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = { "", ""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "ALL",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "20",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"FontHeight",	ShipHeadsUpPlanetInfoArrivalFontsize}, 		-- Original 20  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							},	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "PANEL", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = { "", ""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"Width",	ShipHeadsUpPlanetInfoPlanetNamePanelWidth}, 		-- Original 500  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							},	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", ""},	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"TkNGuiTextStyle.xml"},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		  = "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		    = "ALL",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		    = "",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	  = "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		    = "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"AutoAdjustHeight",	"True"}, 		-- Original false  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", ""},	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"Style",""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		  = "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		    = "ALL",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		    = "1",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	  = "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		    = "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"A",	ShipHeadsUpPlanetInfoFontAlpha}, 		-- Original "1"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},

					}
				},
--*******************************
--HUDHEALTH
--*******************************
                {
					["MBIN_FILE_SOURCE"] 	= "UI\HUD\HUDHEALTH.MBIN",  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, if this section is used
					["EXML_CHANGE_TABLE"] = 
					{
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", "", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"ElementData","Layout"},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"PositionX",	HUDHealthGroupPositionX}, 		--Original "70"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"PositionY",	HUDHealthGroupPositionY}, 		--Original "72" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"Width",	HUDHealthGroupWidth}, 		--Original "600"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"Height",	HUDHealthGroupHeight} 		--Original "300" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						}
					}	
				},
--*******************************
--HUDWeapons
--*******************************
                {
					["MBIN_FILE_SOURCE"] 	= "UI\HUD\HUDWEAPONS.MBIN",  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, if this section is used
					["EXML_CHANGE_TABLE"] = 
					{
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", "", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"ElementData","Layout"},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"PositionX",	HUDWeaponsInfoGroupPositionX}, 		--Original "1920"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"PositionY",	HUDWeaponsInfoGroupPositionY}, 		--Original "-2" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"Width",	HUDWeaponsInfoGroupWidth}, 		--Original "1500"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"Height",	HUDWeaponsInfoGroupHeight} 		--Original "551.2" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", "", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"","",""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "ALL",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "1",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"A",	HUDWeaponsInfoGroupAlpha}, 		--Original "1"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						}
					}	
				},
--*******************************
--HUDHAZARD
--*******************************
                {
					["MBIN_FILE_SOURCE"] 	= "UI\HUD\HUDHAZARD.MBIN",  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, if this section is used
					["EXML_CHANGE_TABLE"] = 
					{
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", "", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"ElementData","Layout"},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"PositionX",	HUDHazardGroupPositionX}, 		--Original "0"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"PositionY",	HUDHazardGroupPositionY} 		--Original "571.4" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", "", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"","",""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "ALL",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "1",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"A",	HUDHazardGroupAlpha}, 		--Original "1"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", "", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"","",""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "ALL",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "1",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"A",	HUDHazardGroupAlpha},								--Original "1"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						}
					}	
				},
--*******************************
--HUDPLANETINFO
--*******************************
                {
					["MBIN_FILE_SOURCE"] 	= "UI\HUD\HUDPLANETINFO.MBIN",  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, if this section is used
					["EXML_CHANGE_TABLE"] = 
					{
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", "", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"","",""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "ALL",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "1",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"A",	HUDHazardGroupAlpha}, 		--Original "1"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
					}	
				},
--*******************************
--HUDLINES
--*******************************
                {
					["MBIN_FILE_SOURCE"] 	= "UI\HUD\HUDLINES.MBIN",  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, if this section is used
					["EXML_CHANGE_TABLE"] = 
					{
						{
                            ["SPECIAL_KEY_WORDS"]   = {"", "", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"","",""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "ALL",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "0.6",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"A",	HUDCornerLinesAlpha}, 		--Original "0.6"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "TOPLEFT", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"","",""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"PositionX",	HUDCOrnerLinesTopLeftPositionX}, 		--Original "0.6"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"PositionY",	HUDCOrnerLinesTopLeftPositionY}, 		--Original "0.6"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "TOPRIGHT", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"","",""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"PositionX",	HUDCOrnerLinesTopRightPositionX}, 		--Original "0.6"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"PositionY",	HUDCOrnerLinesTopRightPositionY}, 		--Original "0.6"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "BOTTOMLEFT", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"","",""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"PositionX",	HUDCOrnerLinesBottomLeftPositionX}, 		--Original "0.6"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"PositionY",	HUDCOrnerLinesBottomLeftPositionY}, 		--Original "0.6"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
                            ["SPECIAL_KEY_WORDS"]   = {"ID", "BOTTOMRIGHT", },	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = {"","",""},	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["MATH_OPERATION"] 		= "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		= "",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		= "",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	= "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		= "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"PositionX",	HUDCOrnerLinesBottomRightPositionX}, 		--Original "0.6"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
								{"PositionY",	HUDCOrnerLinesBottomRightPositionY}, 		--Original "0.6"  --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
					}	
				},
			}
		} --other PAK_FILE_SOURCE sections can be added here, see Multi_PAK_Multi_MBIN_Example_Mod.lua in Advanced folder
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE