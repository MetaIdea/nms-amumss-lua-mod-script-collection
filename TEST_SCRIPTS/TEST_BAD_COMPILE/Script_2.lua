COLORCHOICE = 1

InputCOLORCHOICE = {COLORCHOICE,
[[
    Choose a color palette:
    1 - DAYGLOW
    2 - POLYMER
    3 - EXPANSE
    4 - PASTELS
    5 - NATURE
    6 - ARMOR
    7 - INDUSTRIAL
    8 - DARKSTEEL
    Default = 1 | Current = >> ]] .. (COLORCHOICE) .. [[ <<
]]}

while COLORCHOICE do
  COLORCHOICE = GUIF(InputCOLORCHOICE,1)

  local minChoice = 1
  local maxChoice = 8

  if COLORCHOICE < minChoice or COLORCHOICE > maxChoice then
    print("         >>> ["..COLORCHOICE.."] is NOT a valid choice.  Must be a number between "..minChoice.."-"..maxChoice..".  Please retry! <<<")
  else
    break
  end
end

PAKNAME = ""
COLORNAME = ""
  if COLORCHOICE == 1 then
      PAKNAME = "DAYGLOW"
      COLORNAME = "Crystal"
  elseif COLORCHOICE == 2 then
      PAKNAME = "POLYMER"
      COLORNAME = "Plastic"
  elseif COLORCHOICE == 3 then 
      PAKNAME = "EXPANSE"
      COLORNAME = "Space"
  elseif COLORCHOICE == 4 then 
      PAKNAME = "PASTELS"
      COLORNAME = "Sky"
  elseif COLORCHOICE == 5 then 
      PAKNAME = "NATURE"
      COLORNAME = "GrassAlt"
  elseif COLORCHOICE == 6 then 
      PAKNAME = "ARMOR"
      COLORNAME = "Custom_Head"
  elseif COLORCHOICE == 7 then 
      PAKNAME = "INDUSTRIAL"
      COLORNAME = "FreighterPaint"
  elseif COLORCHOICE == 8 then 
      PAKNAME = "DARKSTEEL"
      COLORNAME = "Metal"
  end

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Script_2.pak",
["MOD_AUTHOR"]      = "Babscoole-Wbertro",
["NMS_VERSION"]     = "4.64",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\COLOURS\BASECOLOURPALETTES.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"PlanetRing", "GcPaletteData.xml"},
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {COLORNAME, "GcPaletteData.xml"},
                            ["SEC_SAVE_TO"] = "ADD_PALETTE",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_PALETTE",
                            ["REPLACE_TYPE"] = "RAW",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {
                                    -- [[<Property name="]]..COLORNAME..[[" value="GcPaletteData.xml">]], [[<Property name="PlanetRing" value="GcPaletteData.xml">]],
                                    
                                    -- use instead this line below to create a MBINCompiler ERROR
                                    [[<Property name="]]..COLORNAME..[[" value="GcPaletteData.xml">]], [[<Property name="PlanetRing" Xvalue="GcPaletteData.xml">]],
                                },
                            }
                        },
                        {
                            ["SEC_EDIT"] = "ADD_PALETTE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumColours", "All"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RockDark", "GcPaletteData.xml"},
                            ["ADD_OPTION"]  = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "ADD_PALETTE",
                        },
                    }
                }
            }
        }
    } --5 global replacements
}