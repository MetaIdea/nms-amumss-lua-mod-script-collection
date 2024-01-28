--NOTE: This LUA will not work properly in this format. Many parts have been cut out to make the format more legible.
--      This is just an example of how to include a file and how to reference it in your code.
--      If you want to see the full code in a working format, get the LUA file for GFloor Heated from NexusMods
--      https://www.nexusmods.com/nomanssky/mods/1657

-- REMEMBER TO MAKE YOUR FILENAME AND PATH ALL CAPS

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "GFloor Heated EXAMPLE.pak",
    ["MOD_DESCRIPTION"] = "Basic floor pieces have hazard protection",
    ["MOD_AUTHOR"]      = "Gumsk+Kibbles",
    ["NMS_VERSION"]     = "303",
    ["ADD_FILES"]       =
    {
        {
      -- This is the path where the file will be inserted by the mod.
      -- Make it similar to where similar files are located.
      -- For example, the normal heater file is in this path. Copy the same path in your references in code.
      ["FILE_DESTINATION"]      = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\PROPS\STANDINGLIGHT_SMALL\ENTITIES\GUMSKFLOORHEATER.ENTITY.EXML",
      -- This is where your original file is.
      -- You can include it in the ModScript folder with your LUA and leave it without a path, just like this.
      -- If it's an EXML file, AMUMSS will convert it to an MBIN, so make sure your references are to MBIN.
      ["EXTERNAL_FILE_SOURCE"]  = "GUMSKFLOORHEATER.ENTITY.EXML",
        },
    },
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\WOOD\BASIC_FLOOR.SCENE.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Type","COLLISION"},
                            ["REPLACE_TYPE"] = "ADDAFTERSECTION",
              -- This is a snippet from the longer section I add in the real mod (GFloor Heated from NexusMods https://www.nexusmods.com/nomanssky/mods/1657),
              -- but shows you how the path here mimics the path in FILE_DESTINATION.
              ["ADD"] = [[<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\PROPS\STANDINGLIGHT_SMALL\ENTITIES\GUMSKFLOORHEATER.ENTITY.MBIN" />]],
                        },
                    },
                },
            },
        },
    },
}
--NOTE: ANYTHING NOT referenced in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED