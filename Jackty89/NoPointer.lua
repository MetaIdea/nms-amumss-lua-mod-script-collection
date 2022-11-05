GameVersion = "3_82"
ModeName = "NoPointer"
Author = "Jackty89"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModeName .. GameVersion .. ".pak",
    ["MOD_DESCRIPTION"] = ModeName,
    ["MOD_AUTHOR"] = Author,
    ["NMS_VERSION"] = GameVersion,
    ["MODIFICATIONS"] =
    {
        -- This is an empty lua so  a pak gets created for AMUMMS
        -- Just drop the texture in files to include
    }
}
