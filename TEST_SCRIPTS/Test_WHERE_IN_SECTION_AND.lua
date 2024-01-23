ModName = "Test_WHERE_IN_SECTION_AND"
GameVersion = "ANY"

--Multipliers for Bounties for the random space encounter with pirates having a bounty on them.
	--TODO:	Check if the vanilla bug of often getting no bounty still persists in 3.87
PirateBounty1 = 						2						--100,000	~	180,000
PirateBounty2 = 						4						--200,000	~	350,000
PirateBounty3 = 						8						--300,000	~	500,000

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]		= ModName..GameVersion..".pak",
  ["MOD_DESCRIPTION"]		= "Test",
  ["MOD_AUTHOR"]			= "Wbertro",
  ["NMS_VERSION"]			= GameVersion,
  ["MODIFICATIONS"]		= 
  {
    {
      ["MBIN_CHANGE_TABLE"]	= 
      {
        {
          ["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"]	= 
          {
            {
              ["COMMENT"] = [[This works ok]],
              ["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_BOUNTY1","Reward","GcRewardMoney.xml"},
              ["MATH_OPERATION"] 		= "*", 
              ["VALUE_CHANGE_TABLE"] 	=
              {
                {"AmountMin",	PirateBounty1},
                {"AmountMax",	PirateBounty1},
              },
            },
            {
              ["COMMENT"] = [[This tests WHERE_IN_SECTION with WISEC_LOP = "AND"]],
              ["PKW"] = {"GcGenericRewardTableEntry.xml",},
              ["WHERE_IN_SECTION"] =  
                      {  
                          {"Id","COLL_WEIRDSHELL",},
                          {"ID","BASE_SHELLWHITE",},  
                      },
              ["WISEC_LOP"] = "AND",
              ["MATH_OPERATION"] 		= "*", 
              ["VALUE_CHANGE_TABLE"] 	=
              {
                {"AmountMin",	PirateBounty1},
                {"AmountMax",	PirateBounty1},
              },
            },	
          },
        },
      },
    }, 
  }, --4 global replacements
}