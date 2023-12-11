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


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Custom Binoc Panels-"..COLORNAME..".pak",
["MOD_AUTHOR"]              = "Babscoole & Exosolar",
["NMS_VERSION"]             = "4.45",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\BINOCULARS\HUDBINOCSLEFTPANEL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcNGuiGraphicData.xml"},
                            ["SECTION_ACTIVE"] = 15,
                            ["SEC_SAVE_TO"] = "ADD_PANEL",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_PANEL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PositionX",       "50"},
                                {"PositionY",       "54"},
                                {"Width",           "450"},
                                {"Height",          "700"},
                                {"Vertical",        "Middle"},
                                {"Horizontal",      "Center"},
                                {"WidthPercentage", "False"},
                                {"AnchorPercent",   "True"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "ADD_PANEL",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CornerRadius", "8"},
                                {"StrokeSize",   "1"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "ADD_PANEL",
                            ["SPECIAL_KEY_WORDS"] = {"StrokeColour", "Colour.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "0"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "ADD_PANEL",
                            ["SPECIAL_KEY_WORDS"] = {"Colour", "Colour.xml"},
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
                            ["SPECIAL_KEY_WORDS"] = {"ID","BINOCS_LEFT"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "ADD_PANEL",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\BINOCULARS\HUDBINOCSRIGHTPANEL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcNGuiGraphicData.xml"},
                            ["SECTION_ACTIVE"] = 7,
                            ["SEC_SAVE_TO"] = "ADD_PANEL",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_PANEL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden",         "False"},
                                {"PositionX",        "50"},
                                {"PositionY",        "20"},
                                {"Width",            "400"},
                                {"Height",           "300"},
                                {"Vertical",         "Middle"},
                                {"Horizontal",       "Center"},
                                {"WidthPercentage",  "False"},
                                {"HeightPercentage", "False"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "ADD_PANEL",
                            ["SPECIAL_KEY_WORDS"] = {"StrokeColour", "Colour.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "0"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "ADD_PANEL",
                            ["SPECIAL_KEY_WORDS"] = {"Colour", "Colour.xml"},
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
                            ["SPECIAL_KEY_WORDS"] = {"ID","MINERAL_VIEW"},
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