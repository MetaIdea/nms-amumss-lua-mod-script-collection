Author = "camustc"
ModName = "OpenWater"
ModNameSub = ""
BaseDescription = ""
GameVersion = "407"
ModVersion = "a"
FileSource1 = "METADATA\SIMULATION\SOLARSYSTEM\VOXELGENERATORSETTINGS.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
    ["MOD_DESCRIPTION"]    = BaseDescription,
    ["MOD_AUTHOR"]        = Author,
    ["NMS_VERSION"]        = GameVersion,
    ["MODIFICATIONS"]    = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = FileSource1,
                    ["EXML_CHANGE_TABLE"] = {

                        {
                            ["SPECIAL_KEY_WORDS"] = {"UnderWater", "TkNoiseUberLayerData.xml"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["REPLACE_TYPE"]         = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Height",10},                                        -- 100
                                {"Width",25},                                        -- 250
                                {"RegionScale",100},                                -- 1
                                {"PlateauStratas",1.0},                                -- 2.5
                                {"PlateauSharpness",10},                            -- 3
                                {"PlateauRegionSize",0}                                -- 100
                            }
                        }
                    }
                }
            }
        }
    }
}