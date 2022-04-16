--see also StandardSchemeExtended.lua

TEXT_TO_ADD =
[[
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_R_EYESTEW" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_ICE_STAR" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_CM_CHOC" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_CM_CREAM" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_CM_CARM" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_CM_APPLE" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_CM_CACTUS" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_CM_JAM" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_CM_JHOT" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_CM_JGLITCH" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_MC_HONEY" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_MM_HONEY" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_MM_BLOB" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_MM_CREAM" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_MM_CHOC" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_MM_CARM" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_MM_APPLE" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_MM_CACTUS" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_MM_JAM" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_MM_CUST" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_CM_BLOBBUT" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_MM_JGLITCH" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_PIE_MCUST" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_PIE_BONE" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_CK_MCUST" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_MM_JHOT" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_CB_SCUST" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_DNUT_SCUST" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_PIE_SCUST" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_CK_SCUST" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_CG_SCUST" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_DNUT_MCUST" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_CM_HONEY" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_EGGPIE_M" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_EGGPIE_GM" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_R_EYEICE" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="FOOD_ICE_FIEND" />
        </Property>
]] --a long text assigned to a user named variable

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "_hilightnotes_Hungry_LivingShip.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "Feed living ships",         --optional, for reference
  ["MOD_AUTHOR"]				= "hilightnotes",         --optional, for reference
  ["NMS_VERSION"]				= "3.38",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN"},  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, must be a file in PAK_FILE_SOURCE
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "UI_FIENDCORE_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"200"}, --Original v3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "UI_EYEBALL_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"300"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_DNUT_MCUST_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_DNUT_SCUST_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_PIE_MCUST_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_PIE_SCUST_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_BONE_PIE_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_EGGPIE_M_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"1000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_EGGPIE_GM_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"1000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_CK_MCUST_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_CK_SCUST_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_R_EYESTEW_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"1000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_R_EYEICE_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"1000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_ICE_FIEND_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"1000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_ICE_STAR_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"1000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_CG_SCUST_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_CB_SCUST_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_CM_CREAM_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_CM_CHOC_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_CM_CARM_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_CM_APPLE_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_CM_CACTUS_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_CM_JAM_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_CM_JHOT_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_CM_JGLITCH_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_MC_HONEY_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_MM_HONEY_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_MM_BLOB_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_MM_CREAM_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_MM_CHOC_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_MM_CARM_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_MM_APPLE_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_MM_CACTUS_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_MM_JAM_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_MM_JHOT_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_MM_JGLITCH_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_MM_CUST_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_CM_BLOBBUT_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "FOOD_CM_HONEY_NAME"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeValue",	"2000"}, --Original 3.38 "0" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						}
						
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"},  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, must be a file in PAK_FILE_SOURCE
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "LAUNCHER_ALIEN_NAME" },
							["PRECEDING_KEY_WORDS"] = { "Chargeable" }, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	"2000"}, --Original v3.38 "200" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "LAUNCHER_ALIEN_NAME" },
							["PRECEDING_KEY_WORDS"] = { "OXYGEN" }, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["LINE_OFFSET"] 		= "+3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"FIENDCORE"}, --Original v3.38 "CREATURE1" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "LAUNCHER_ALIEN_NAME" },
							["PRECEDING_KEY_WORDS"] = { "ChargeBy" }, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["LINE_OFFSET"] 		= "+6",
							["VALUE_CHANGE_TABLE"] 	= {{"IGNORE",	"IGNORE"}},
							["ADD"] 				= TEXT_TO_ADD
						},
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "LAUNCHER_ALIEN_NAME" },
							["PRECEDING_KEY_WORDS"] = { "GcStatsBonus.xml", "GcStatsBonus.xml" }, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"1000"}, --Original v3.38 "50" --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
					}
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE