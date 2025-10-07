COLORCHOICE = 1

InputCOLORCHOICE = {COLORCHOICE,
[[
    Choose a panel color:
    1 - Black
    2 - Blue
    3 - Green
    4 - Red
    5 - Pink
    6 - Yellow
    7 - Orange
    Default = 1 | Current = >> ]] .. (COLORCHOICE) .. [[ <<
]]}

while COLORCHOICE do
  COLORCHOICE = GUIF(InputCOLORCHOICE,20)

  local minChoice = 1
  local maxChoice = 7

  if COLORCHOICE < minChoice or COLORCHOICE > maxChoice then
    print("         >>> ["..COLORCHOICE.."] is NOT a valid choice.  Must be a number between "..minChoice.."-"..maxChoice..".  Please retry! <<<")
  else
    break
  end
end

local colorTable = {
  {R = 0.000, G = 0.000, B = 0.000, A = 0.4},
  {R = 0.000, G = 0.384, B = 0.906, A = 0.4},
  {R = 0.055, G = 0.792, B = 0.004, A = 0.4},
  {R = 0.875, G = 0.188, B = 0.188, A = 0.4},
  {R = 1.000, G = 0.078, B = 0.576, A = 0.4},
  {R = 1.000, G = 0.984, B = 0.000, A = 0.4},
  {R = 0.910, G = 0.431, B = 0.000, A = 0.4},
}

local R = colorTable[COLORCHOICE].R
local G = colorTable[COLORCHOICE].G
local B = colorTable[COLORCHOICE].B
local A = colorTable[COLORCHOICE].A

COLORNAME = ""
  if COLORCHOICE == 1 then
      COLORNAME = "BLACK"
  elseif COLORCHOICE == 2 then
      COLORNAME = "BLUE"
  elseif COLORCHOICE == 3 then
      COLORNAME = "GREEN"
  elseif COLORCHOICE == 4 then
      COLORNAME = "RED"
  elseif COLORCHOICE == 5 then
      COLORNAME = "PINK"
  elseif COLORCHOICE == 6 then
      COLORNAME = "YELLOW"
  elseif COLORCHOICE == 7 then
      COLORNAME = "ORANGE"
  end

E_NOTICE = false

E_NOTICE = GUIF({false, [[Do you want to remove "Press E to place Custom Marker" notification?  Default = N.  Press ENTER for default value.]]},10)
print("E_NOTICE = "..tostring(E_NOTICE))

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Custom Binoc Panels-"..COLORNAME,
["MOD_AUTHOR"]              = "Babscoole & Exosolar",
["NMS_VERSION"]             = "6.00",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\BINOCULARS\HUDBINOCSLEFTPANEL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Children", "GcNGuiGraphicData"},
                            ["SECTION_ACTIVE"] = 14,
                            ["SEC_SAVE_TO"] = "ADD_PANEL",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_PANEL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Position X",       "22"},
                                {"Position Y",       "21.3"},
                                {"Width",            "433"},
                                {"Height",           "520"},
                                {"Width Percentage", "false"},
                                {"AnchorPercent",    "true"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "ADD_PANEL",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Corner Radius", "8"},
                                {"Stroke Size",   "1"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "ADD_PANEL",
                            ["PRECEDING_KEY_WORDS"] = {"Stroke Colour"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "0"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "ADD_PANEL",
                            ["PRECEDING_KEY_WORDS"] = {"Colour"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", R},
                                {"G", G},
                                {"B", B},
                                {"A", A},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BINOCS_LEFT"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "ADD_PANEL",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "HAZARD_VIEW"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Position X", "154"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "ADD_PANEL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Position Y", "29.4"},
                                {"Height",     "220"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SURVEY_LEFT"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "ADD_PANEL",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_PANEL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Position Y", "28"},
                                {"Height",     "320"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "MISSURVEY_LEFT"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "ADD_PANEL",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\BINOCULARS\HUDBINOCSRIGHTPANEL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Children", "GcNGuiGraphicData"},
                            ["SECTION_ACTIVE"] = 6,
                            ["SEC_SAVE_TO"] = "ADD_PANEL",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_PANEL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Is Hidden",         "false"},
                                {"Position X",        "0"},
                                {"Position Y",        "0"},
                                {"Width",             "396"},
                                {"Height",            "226"},
                                {"Width Percentage",  "false"},
                                {"Height Percentage", "false"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "ADD_PANEL",
                            ["PRECEDING_KEY_WORDS"] = {"Stroke Colour"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "0"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "ADD_PANEL",
                            ["PRECEDING_KEY_WORDS"] = {"Colour"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", R},
                                {"G", G},
                                {"B", B},
                                {"A", A},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "MINERAL_VIEW"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "ADD_PANEL",
                        },
                    }
                },
            }
        },
    }
}

local LEFTTABLE = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]
if E_NOTICE then

    LEFTTABLE[#LEFTTABLE +1] =
    {-- Hide "Press E to place Custom Marker" notification. (C) Balzhur
        ["SPECIAL_KEY_WORDS"] = {"Text",  "CUSTOM_HINT"},
				["VALUE_CHANGE_TABLE"] =
        {
					{"Is Hidden",	"true"} -- Original "false"
				}
    }
    
    LEFTTABLE[#LEFTTABLE +1] =
    {-- Hide "Press E to place Custom Marker" notification. (C) Balzhur
        ["SPECIAL_KEY_WORDS"] = {"Image", "/TEXTURES/UI/HUD/ICONS/SCANNING/DECSLASH.DDS"},
				["SECTION_UP_SPECIAL"] = 1,
				["PRECEDING_KEY_WORDS"] = {"Children"},
				["VALUE_CHANGE_TABLE"] =
        {
					{"Is Hidden",	"true"} -- Original "false"
				}
    }
end