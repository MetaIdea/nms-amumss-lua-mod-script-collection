local modfilename = "_BetterRewardsFrigateRewardsSignalBoosterFirmware"
local lua_author  = "Silent"
local lua_version = "v1.1"
local mod_author  = "MrTrack, Lowkie, Merged by Silent"
local nms_version = "3.8"
local description = "Allows the Signal booster to find crashed ships, factories, multi tools, and portals with no inputs"
local integtoflot = "PRESERVE"

-- Learning more words was created by ChoseSauvage ( https://www.nexusmods.com/nomanssky/mods/733 )
-- and converted to lua script by Mjjstral (available in AMUMSS script collection)

-- Please be aware if you set any of the values below to 0 or NOT integer, you
-- might break the math used and the .lua won't produce a useable .pak file!

------------------------------------------------------------------------------
------------------- YOU SHOULD ONLY EDIT THE VALUES BELOW --------------------
------------------------------------------------------------------------------

UNITS_MULTI					= 10	-- Default value is 1 | Multiplys the amount of units you get
LOW_UNITS_MULTI				= 10	-- Default value is 1 | Terminals and other unit sources that have really low unit rewards (90 - 2000 units)
															-- are multiplied by this number on top of the regular unit multiplier (so by default = 5 * 10 = 50x multiplier)

NANITES_MULTI				= 15	-- Default value is 1 | Multiplys the amount of nanites you get

NADA_MILESTONE_REWARD		= 100	-- Default value is 50 | Sets the reward value (in nanites) for each milestone tier at Nada and other anomalies (in the Space Anomaly)

QS_MULTI					= 15	-- Default value is 1 | Multiplys the amount of quicksilver you get

PRODUCT_MULTI				= 2		-- Default value is 1 | Multiplys the amount of products you get
RESOURCES_MULTI				= 5     -- Default value is 1 | Multiplys the amount of resources gathered, as well as containers, depots, guild rewards and ships that have resources

WORDS_TO_LEARN				= 3		-- Default value is 1 | Sets the amount of words you learn from non npc sources
ATLAS_WORDS_TO_LEARN		= 3		-- Default value is 1 | Sets the amount of words you learn from the Atlas Interface

SALVAGED_DATA				= 10	-- Default value is 1 | Multiplys the amount of salvaged data you mine up and get in Missions

MISSION_UNITS_MULTI			= 15	-- Default value is 1 | Multiplys the amount of units you get from Mission Board (Space Station) Missions
MISSION_NANITES_MULTI		= 15	-- Default value is 1 | Multiplys the amount of nanites you get from Mission Board (Space Station) Missions
MISSION_PROD_MULTI			= 15	-- Default value is 1 | Multiplys the amount of products you get from Mission Board (Space Station) Missions

NEXUS_UNITS_MULTI			= 15	-- Default value is 1 | Multiplys the amount of units you get from Nexus Missions
NEXUS_NANITES_MULTI			= 15	-- Default value is 1 | Multiplys the amount of nanites you get from Nexus Missions
NEXUS_PROD_MULTI			= 15	-- Default value is 1 | Multiplys the amount of products you get from Nexus Missions

-- When learning words, you can choose to have a PERCENTAGE(%) chance at learning an Atlas word along with them (default value is 15%)
-- If you wish to learn Atlas words change the value to a number ranging from 1-100 in the following line (line 42): <Property name="PercentageChance" value="15" />
-- Edit the value in the double bracket -> [[ ]] <- section below!! ----> <Property name="PercentageChance" value="15" /> <---- edit this "15", the " " must stay!!

ATLAS_WORD = [[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="50" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Atlas" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="gcwordcategorytableEnum" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

------------------------------------------------------------------------------
-------------------- DO NOT EDIT ANYTHING PAST THIS POINT --------------------
------------------------------------------------------------------------------

MISC_WORD =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="None" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="gcwordcategorytableEnum" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

ATLAS_WORD_FULL =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Atlas" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="gcwordcategorytableEnum" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

MISC_WORD_LEARN = string.rep(MISC_WORD, WORDS_TO_LEARN)
ATLAS_WORD_LEARN = string.rep(ATLAS_WORD_FULL, ATLAS_WORDS_TO_LEARN - 1)

 All_Request_Leave =[[
                <Property value="GcAlienPuzzleOption.xml">
                  <Property name="Name" value="ALL_REQUEST_LEAVE" />
                  <Property name="Text" value="" />
                  <Property name="IsAlien" value="False" />
                  <Property name="Cost" value="" />
                  <Property name="Rewards" />
                  <Property name="Mood" value="GcAlienMood.xml">
                    <Property name="Mood" value="Neutral" />
                  </Property>
                  <Property name="Prop" value="GcNPCPropTypes.xml">
                    <Property name="NPCProp" value="DontCare" />
                  </Property>
                  <Property name="KeepOpen" value="False" />
                  <Property name="DisplayCost" value="True" />
                  <Property name="TruncateCost" value="False" />
                  <Property name="MarkInteractionComplete" value="True" />
                  <Property name="NextInteraction" value="" />
                  <Property name="SelectedOnBackOut" value="False" />
                  <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                    <Property name="AkEvent" value="INVALID_EVENT" />
                  </Property>
                  <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
                    <Property name="ConditionTest" value="AnyFalse" />
                  </Property>
                  <Property name="EnablingConditions" />
                  <Property name="EnablingConditionId" value="" />
                  <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
                    <Property name="gcwordcategorytableEnum" value="MISC" />
                  </Property>
                </Property>
			  </Property>]]

function GetReward(ID, EVENT)
return[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="]]..ID..[[" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardScanEvent.xml">
              <Property name="Event" value="]]..EVENT..[[" />
              <Property name="ScanEventTable" value="Planet" />
              <Property name="DoAerialScan" value="False" />
              <Property name="UseMissionSeedForEvent" value="False" />
              <Property name="StartDelay" value="6" />
              <Property name="UseStartDelayWhenNoAerialScan" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]]
end

function GetPuzzleOption(NAME, ACTION)
return[[                <Property value="GcAlienPuzzleOption.xml">
                  <Property name="Name" value="]]..NAME..[[" />
                  <Property name="Text" value="" />
                  <Property name="IsAlien" value="False" />
                  <Property name="Cost" value="C_ALLOWSCAN" />
                  <Property name="Rewards">
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="]]..ACTION..[[" />
                    </Property>
                  </Property>
                  <Property name="Mood" value="GcAlienMood.xml">
                    <Property name="Mood" value="Neutral" />
                  </Property>
                  <Property name="Prop" value="GcNPCPropTypes.xml">
                    <Property name="NPCProp" value="DontCare" />
                  </Property>
                  <Property name="KeepOpen" value="False" />
                  <Property name="DisplayCost" value="True" />
                  <Property name="TruncateCost" value="False" />
                  <Property name="MarkInteractionComplete" value="True" />
                  <Property name="NextInteraction" value="" />
                  <Property name="SelectedOnBackOut" value="False" />
                  <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                    <Property name="AkEvent" value="INVALID_EVENT" />
                  </Property>
                  <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
                    <Property name="ConditionTest" value="AnyFalse" />
                  </Property>
                  <Property name="EnablingConditions" />
                  <Property name="EnablingConditionId" value="" />
                  <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
                    <Property name="gcwordcategorytableEnum" value="MISC" />
                  </Property>
                </Property>
]]
end

function GetMorePuzzleOption(NEXTACTION)
return[[          <Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="More Options" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="C_ALLOWSCAN" />
          <Property name="Rewards" />
          <Property name="Mood" value="GcAlienMood.xml">
            <Property name="Mood" value="Neutral" />
          </Property>
          <Property name="Prop" value="GcNPCPropTypes.xml">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="KeepOpen" value="True" />
          <Property name="DisplayCost" value="True" />
          <Property name="TruncateCost" value="False" />
          <Property name="MarkInteractionComplete" value="False" />
          <Property name="NextInteraction" value="]]..NEXTACTION..[[" />
          <Property name="SelectedOnBackOut" value="False" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="EnablingConditions" />
          <Property name="EnablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
            <Property name="gcwordcategorytableEnum" value="MISC" />
          </Property>
        </Property>
      </Property>
      <Property name="AdditionalText" />
      <Property name="AdditionalTextAlien" />
      <Property name="Mood" value="GcAlienMood.xml">
        <Property name="Mood" value="Neutral" />
      </Property>
      <Property name="Prop" value="GcNPCPropTypes.xml">
        <Property name="NPCProp" value="DontCare" />
      </Property>
      <Property name="AdvancedInteractionFlow" />
      <Property name="PersistancyBufferOverride" value="None" />
      <Property name="CustomFreighterTextIndex" value="-1" />
      <Property name="RadialInteraction" value="False" />
    </Property>
    <Property value="GcAlienPuzzleEntry.xml">
      <Property name="ProgressionIndex" value="-1" />
      <Property name="MinProgressionForSelection" value="0" />
      <Property name="Id" value="]]..NEXTACTION..[[" />
      <Property name="Race" value="GcAlienRace.xml">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="Type" value="GcInteractionType.xml">
        <Property name="InteractionType" value="SignalScanner" />
      </Property>
      <Property name="AlienPuzzleCategory" value="GcAlienPuzzleCategory.xml">
        <Property name="AlienPuzzleCategory" value="Default" />
      </Property>
      <Property name="AdditionalOptions" value="None" />
      <Property name="Title" value="" />
      <Property name="Text" value="" />
      <Property name="TextAlien" value="" />
      <Property name="TranslateAlienText" value="False" />
      <Property name="TranslationBrackets" value="False" />
      <Property name="ProgressiveDialogue" value="False" />
      <Property name="RequiresScanEvent" value="" />
      <Property name="Options">
	  ]]
 end


--Changes for the Rewards table
REWARD1 = GetReward ("CRASHED_SHIP", "DISTRESS")
REWARD2 = GetReward ("TOOL_LOCATION", "SHOP")
REWARD3 = GetReward ("PLANET_ARCHIVES", "LIBRARY")

REWARDSET = REWARD1..REWARD2..REWARD3

--First set of options only 4 options per set allowed
Menu1_Option1 = GetPuzzleOption("UI_PORTAL_OPT", "REVEAL_PORTAL")
Menu1_Option2 = GetPuzzleOption("Crashed Starship", "CRASHED_SHIP")
Menu1_Option3 = GetPuzzleOption("Multi-tool Location","TOOL_LOCATION")
--Generate a new Puzzle option that points to the next dialog set
More_Options1 = GetMorePuzzleOption("?POWER_SCANNER")
--Put the options together with a more options closer
Menu1_Options = Menu1_Option1..Menu1_Option2..Menu1_Option3..More_Options1

--Second set of options
Menu2_Option1 = GetPuzzleOption("Manufacturing Facility","SEC_SCN_FACT")
Menu2_Option2 = GetPuzzleOption("Exosuit DropPod", "SCAN_1")
Menu2_Option3 = GetPuzzleOption("Planetary Archives", "PLANET_ARCHIVES")
More_Options2 = GetMorePuzzleOption("?ATOMIC_SCANNER")
Menu2_Options = Menu2_Option1..Menu2_Option2..Menu2_Option3..More_Options2

--Third set of options, also get a close option
Menu3_Option1 = GetPuzzleOption("Crashed Freighter", "SHOW_CRASHSITE")
Menu3_Option2 = GetPuzzleOption("Observatory", "SEC_SCN_OBS")
Menu3_Option3 = GetPuzzleOption("NAV_DATA_OPTC", "RANDOM_SCAN_C")
Menu3_Options = Menu3_Option1..Menu3_Option2..Menu3_Option3..All_Request_Leave

--Put all the options together.
ALL_PUZZLE_UPDATES = [[      <Property name="Options">
]]..Menu1_Options..Menu2_Options..Menu3_Options

NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"] 		    = modfilename..lua_version..".pak",
	["LUA_AUTHOR"]			    = lua_author,
	["MOD_AUTHOR"]			    = mod_author,
	["NMS_VERSION"]			    = nms_version,
	["MOD_DESCRIPTION"]		    = description,
	["GLOBAL_INTEGER_TO_FLOAT"] = integtoflot,
	["MODIFICATIONS"] 		    =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{

                {
                    ["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "SIGNALSCANNER"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
                            ["VALUE_CHANGE_TABLE"] 	= {{"IGNORE", "IGNORE"}},
							["LINE_OFFSET"] 		= "1",
							["REMOVE"] 				= "SECTION",  --Remove original options section
						},
                    },
               },
               {
                    ["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "SIGNALSCANNER"},
							["VALUE_CHANGE_TABLE"] 	= {{"TextAlien", 	""}},    --org UI_SIGNAL_SCANNER_DESC_ALT},
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "SIGNALSCANNER"},
                            ["PRECEDING_KEY_WORDS"] = {"RequiresScanEvent"},
                            ["ADD"]                 = ALL_PUZZLE_UPDATES,
						},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\TABLES\REWARDTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
                        {
                            ["SPECIAL_KEY_WORDS"] 	= {"Id", "SEC_CRASHEDSHIP"},
                            ["LINE_OFFSET"] 		= "0",
                            ["REPLACE_TYPE"] 		= "ADDafterSECTION",
                            ["VALUE_CHANGE_TABLE"] 	= {{"IGNORE", "IGNORE"}},
                            ["ADD"] 				= REWARDSET,
                        },
                    }
                }
			}
        },
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\EXPEDITIONREWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
					
-----------------------------------------------------------------------------------------------------
------------------------------------------ CURRENCY: UNITS ------------------------------------------
-----------------------------------------------------------------------------------------------------
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
                            ["VALUE_MATCH"]         = "0",
                            ["VALUE_MATCH_OPTIONS"] = ">",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						
-----------------------------------------------------------------------------------------------------
----------------------------------------- CURRENCY: NANITES -----------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
                            ["VALUE_MATCH"]         = "0",
                            ["VALUE_MATCH_OPTIONS"] = ">",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTI},
								{"AmountMax",	NANITES_MULTI}
							}
						},

-----------------------------------------------------------------------------------------------------
--------------------------------------------- RESOURCES ---------------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"DefaultProductType", "None"},
							["SECTION_UP"]			= 2,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
                            ["VALUE_MATCH"]         = "0",
                            ["VALUE_MATCH_OPTIONS"] = ">",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCES_MULTI},
								{"AmountMax",	RESOURCES_MULTI}
							}
						},

-----------------------------------------------------------------------------------------------------
---------------------------------------------- PRODUCTS ---------------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"DefaultProductType", "None"},
							["SECTION_UP"]			= 2,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
                            ["VALUE_MATCH"]         = "0",
                            ["VALUE_MATCH_OPTIONS"] = ">",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTI},
								{"AmountMax",	PRODUCT_MULTI}
							}
						}
					}
				}
			}
		},
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {""},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_MATCH"]         = "100",
                            ["VALUE_MATCH_OPTIONS"] = "<",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"PercentageChance",  "100"}
                            }
						},

-----------------------------------------------------------------------------------------------------
------------------------------------------ CURRENCY: UNITS ------------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2000",
							["VALUE_MATCH_OPTIONS"]	= "<=",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	LOW_UNITS_MULTI},
								{"AmountMax",	LOW_UNITS_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},

-----------------------------------------------------------------------------------------------------
----------------------------------------- CURRENCY: NANITES -----------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTI},
								{"AmountMax",	NANITES_MULTI}
							}
						},

-----------------------------------------------------------------------------------------------------
--------------------------------------- CURRENCY: QUICKSILVER ---------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"Currency", "Specials"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	QS_MULTI},
								{"AmountMax",	QS_MULTI}
							}
						},

-----------------------------------------------------------------------------------------------------
--------------------------------------- CURRENCY CORRECTIONS ----------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PIRATE_BOUNTY1"},
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PIRATE_BOUNTY2"},
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PIRATE_BOUNTY3"},
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTI},
								{"AmountMax",	NANITES_MULTI}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTI},
								{"AmountMax",	NANITES_MULTI}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTI},
								{"AmountMax",	NANITES_MULTI}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTI},
								{"AmountMax",	NANITES_MULTI}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED_C", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED_C", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTI},
								{"AmountMax",	NANITES_MULTI}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA_C", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA_C", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTI},
								{"AmountMax",	NANITES_MULTI}
							}
						},

-----------------------------------------------------------------------------------------------------
--------------------------------------------- RESOURCES ---------------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"DefaultProductType", "None"},
							["SECTION_UP"]			= 2,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCES_MULTI},
								{"AmountMax",	RESOURCES_MULTI}
							}
						},

-----------------------------------------------------------------------------------------------------
--------------------------------------------- MISSIONS ----------------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "DefaultProductType", "None"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PROD_MULTI},
								{"AmountMax",	MISSION_PROD_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "DefaultProductType", "None"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PROD_MULTI},
								{"AmountMax",	MISSION_PROD_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "DefaultProductType", "None"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PROD_MULTI},
								{"AmountMax",	MISSION_PROD_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "DefaultProductType", "None"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PROD_MULTI},
								{"AmountMax",	MISSION_PROD_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED", "DefaultProductType", "None"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_PROD_MULTI},
								{"AmountMax",	NEXUS_PROD_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA", "DefaultProductType", "None"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_PROD_MULTI},
								{"AmountMax",	NEXUS_PROD_MULTI}
							}
						},

-----------------------------------------------------------------------------------------------------
---------------------------------------- CURRENCY: MISSIONS -----------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_UNITS_MULTI},
								{"AmountMax",	MISSION_UNITS_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_NANITES_MULTI},
								{"AmountMax",	MISSION_NANITES_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_UNITS_MULTI},
								{"AmountMax",	MISSION_UNITS_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_NANITES_MULTI},
								{"AmountMax",	MISSION_NANITES_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_UNITS_MULTI},
								{"AmountMax",	MISSION_UNITS_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_NANITES_MULTI},
								{"AmountMax",	MISSION_NANITES_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_UNITS_MULTI},
								{"AmountMax",	MISSION_UNITS_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_NANITES_MULTI},
								{"AmountMax",	MISSION_NANITES_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED_C", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_UNITS_MULTI},
								{"AmountMax",	NEXUS_UNITS_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED_C", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_NANITES_MULTI},
								{"AmountMax",	NEXUS_NANITES_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA_C", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_UNITS_MULTI},
								{"AmountMax",	NEXUS_UNITS_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA_C", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_NANITES_MULTI},
								{"AmountMax",	NEXUS_NANITES_MULTI}
							}
						},

-----------------------------------------------------------------------------------------------------
--------------------------------------- MISSIONS CORRECTIONS ----------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PROD_MULTI},
								{"AmountMax",	MISSION_PROD_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PROD_MULTI},
								{"AmountMax",	MISSION_PROD_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PROD_MULTI},
								{"AmountMax",	MISSION_PROD_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PROD_MULTI},
								{"AmountMax",	MISSION_PROD_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_PROD_MULTI},
								{"AmountMax",	NEXUS_PROD_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_PROD_MULTI},
								{"AmountMax",	NEXUS_PROD_MULTI}
							}
						},

-----------------------------------------------------------------------------------------------------
------------------------------------------- SALVAGED DATA -------------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_PET_ROCK", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_TGUILD_GIFT2", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_TGUILD_GIFT3", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_TGUILD_GIFT4", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "BP_SALVAGE_ONLY", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "BP_SALVAGE", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COMM_UG_HARD", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "RS_BASE_TOKENS", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},

-----------------------------------------------------------------------------------------------------
------------------------------------------------ MISC -----------------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NADA_JM"},
							["PRECEDING_KEY_WORDS"] = "",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountPerStat",	NADA_MILESTONE_REWARD}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "WORD", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= ATLAS_WORD
						},

						{
							["SPECIAL_KEY_WORDS"] 	= {"Id", "WORD", "PercentageChance", "IGNORE", "AlienRace", "None"},
							["SECTION_UP"] 			= 2,
							["REMOVE"] 				= "SECTION"
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "WORD", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= MISC_WORD_LEARN
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TRA_WORD", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= ATLAS_WORD
						},

						{
							["SPECIAL_KEY_WORDS"] 	= {"Id", "TRA_WORD", "PercentageChance", "IGNORE", "AlienRace", "Traders"},
							["SECTION_UP"] 			= 2,
							["REMOVE"] 				= "SECTION"
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TRA_WORD", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= MISC_WORD_LEARN
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "EXP_WORD", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= ATLAS_WORD
						},

						{
							["SPECIAL_KEY_WORDS"] 	= {"Id", "EXP_WORD", "PercentageChance", "IGNORE", "AlienRace", "Explorers"},
							["SECTION_UP"] 			= 2,
							["REMOVE"] 				= "SECTION"
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "EXP_WORD", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= MISC_WORD_LEARN
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "WAR_WORD", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= ATLAS_WORD
						},

						{
							["SPECIAL_KEY_WORDS"] 	= {"Id", "WAR_WORD", "PercentageChance", "IGNORE", "AlienRace", "Warriors"},
							["SECTION_UP"] 			= 2,
							["REMOVE"] 				= "SECTION"
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "WAR_WORD", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= MISC_WORD_LEARN
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TEACHWORD_EXP", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= ATLAS_WORD
						},

						{
							["SPECIAL_KEY_WORDS"] 	= {"Id", "TEACHWORD_EXP", "PercentageChance", "IGNORE", "AlienRace", "Explorers"},
							["SECTION_UP"] 			= 2,
							["REMOVE"] 				= "SECTION"
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TEACHWORD_EXP", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= MISC_WORD_LEARN
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TEACHWORD_TRA", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= ATLAS_WORD
						},

						{
							["SPECIAL_KEY_WORDS"] 	= {"Id", "TEACHWORD_TRA", "PercentageChance", "IGNORE", "AlienRace", "Traders"},
							["SECTION_UP"] 			= 2,
							["REMOVE"] 				= "SECTION"
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TEACHWORD_TRA", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= MISC_WORD_LEARN
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TEACHWORD_WAR", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= ATLAS_WORD
						},

						{
							["SPECIAL_KEY_WORDS"] 	= {"Id", "TEACHWORD_WAR", "PercentageChance", "IGNORE", "AlienRace", "Warriors"},
							["SECTION_UP"] 			= 2,
							["REMOVE"] 				= "SECTION"
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TEACHWORD_WAR", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= MISC_WORD_LEARN
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TEACHWORD_ATLAS", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= ATLAS_WORD_LEARN
						}
					}
				} --3568 global changes
			}
		}
	}
}
