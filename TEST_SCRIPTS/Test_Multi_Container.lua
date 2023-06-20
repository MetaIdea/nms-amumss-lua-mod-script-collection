NMS_MOD_DEFINITION_CONTAINER = 
{
    { -- 1st script
        ["MOD_FILENAME"]             = "First.pak",
        ["MOD_DESCRIPTION"]            = "",
        ["MOD_AUTHOR"]                = "Wbertro",
        ["NMS_VERSION"]                = "",
        ["MODIFICATIONS"]             = 
        {
            {
                ["MBIN_CHANGE_TABLE"]     = 
                { 
                    {
                        ["MBIN_FILE_SOURCE"]     = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                        ["EXML_CHANGE_TABLE"]     = 
                        {
                          { --1 actions  WORKS with v3.9.5.98W and v4.0
                              COMMENT = [[1 actions  WORKS with v3.9.5.98W and v4.0]],
                              ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers",}, -- finds one section
                              ["LINE_OFFSET"]         = "1", -- to advanced to one line into the section
                              -- if there were multiple sections pointed to by Keywords, replacement would be done there also
                              ["VALUE_CHANGE_TABLE"]     =
                              {
                                  {"IGNORE", "24",}, -- because of only one entry here, only the line = newvalue: 24
                              },
                          },
                        },
                    },
                },
            },
        }, --1 global replacements
    }, -- END: 1st script
    
    { -- 2nd script
        ["MOD_FILENAME"]             = "Second.pak",
        ["MOD_DESCRIPTION"]            = "",
        ["MOD_AUTHOR"]                = "Wbertro",
        ["NMS_VERSION"]                = "",
        ["MODIFICATIONS"]             = 
        {
            {
                ["MBIN_CHANGE_TABLE"]     = 
                { 
                    {
                        ["MBIN_FILE_SOURCE"]     = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                        ["EXML_CHANGE_TABLE"]     = 
                        {
                          { --1 actions  WORKS with v3.9.5.98W and v4.0
                              COMMENT = [[1 actions  WORKS with v3.9.5.98W and v4.0]],
                              ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers",}, -- finds one section
                              ["LINE_OFFSET"]         = "1", -- to advanced to one line into the section
                              -- if there were multiple sections pointed to by Keywords, replacement would be done there also
                              ["VALUE_CHANGE_TABLE"]     =
                              {
                                  {"IGNORE", "24",}, -- because of only one entry here, the line = newvalue: 24
                              },
                          },
                        },
                    },
                },
            },
        },
    }, -- END: 2nd script
} --1 global replacements