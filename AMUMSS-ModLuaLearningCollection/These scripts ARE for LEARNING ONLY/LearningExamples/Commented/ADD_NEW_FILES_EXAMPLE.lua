NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = ".pak",
["MOD_DESCRIPTION"]         = "",
["MOD_AUTHOR"]              = "",
["NMS_VERSION"]             = "1.77",
["ADD_FILES"]           =
    {
        {
            ["FILE_DESTINATION"]        = "\.EXML",
            ["EXTERNAL_FILE_SOURCE"]    = "", --copy files from external source (folder hierarchy same or above this scripts path), you don't need ["FILE_CONTENT"] with this
            ["FILE_CONTENT"]    =
[[
NEW TEXT TO ADD HERE (EXML CODE and everything else)
]]
        },
    },
}
--NOTE: ANYTHING NOT referenced in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
