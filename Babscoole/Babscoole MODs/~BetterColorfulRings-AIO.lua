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
  COLORCHOICE = GUIF(InputCOLORCHOICE,10)

  local minChoice = 1
  local maxChoice = 8

  if COLORCHOICE < minChoice or COLORCHOICE > maxChoice then
    print("         >>> ["..COLORCHOICE.."] is NOT a valid choice.  Must be a number between "..minChoice.."-"..maxChoice..".  Please retry! <<<")
  else
    break
  end
end

VERNAME = ""
COLORNAME = ""
  if COLORCHOICE == 1 then
    VERNAME = "DAYGLOW"
    COLORNAME = "Crystal"
  elseif COLORCHOICE == 2 then
    VERNAME = "POLYMER"
    COLORNAME = "Plastic"
  elseif COLORCHOICE == 3 then
    VERNAME = "EXPANSE"
    COLORNAME = "Space"
  elseif COLORCHOICE == 4 then
    VERNAME = "PASTELS"
    COLORNAME = "Sky"
  elseif COLORCHOICE == 5 then
    VERNAME = "NATURE"
    COLORNAME = "GrassAlt"
  elseif COLORCHOICE == 6 then
    VERNAME = "ARMOR"
    COLORNAME = "Custom_Head"
  elseif COLORCHOICE == 7 then
    VERNAME = "INDUSTRIAL"
    COLORNAME = "FreighterPaint"
  elseif COLORCHOICE == 8 then
    VERNAME = "DARKSTEEL"
    COLORNAME = "Metal"
  end

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "~BetterColorfulRings-"..VERNAME,
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Change palette colors for planetary rings",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\COLOURS\BASECOLOURPALETTES.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"]  = {"PlanetRing", "GcPaletteData"},
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {COLORNAME, "GcPaletteData"},
              ["SEC_SAVE_TO"] = "ADD_PALETTE",
            },
            {
              ["SEC_EDIT"] = "ADD_PALETTE",
              ["REPLACE_TYPE"] = "RAW",
              ["VALUE_CHANGE_TABLE"] =
              {
                {
                  [[<Property name="]]..COLORNAME..[[" value="GcPaletteData">]], [[<Property name="PlanetRing" value="GcPaletteData">]]
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
              ["SPECIAL_KEY_WORDS"] = {"RockDark", "GcPaletteData"},
              ["ADD_OPTION"]  = "ADDafterSECTION",
              ["SEC_ADD_NAMED"] = "ADD_PALETTE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"PlanetRing", "GcPaletteData"},
              ["EXML_FLAGS"]  = "OVERWRITE",
            },
          }
        }
      }
    }
  }
}