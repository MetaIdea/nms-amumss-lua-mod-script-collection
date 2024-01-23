--
-- A "dummy" script only serves one purpose, to name an end result .pak as you wish 
--    when the contents are only axtra files added to GlobalMEFTI or MEFTI folders
--
-- For precedence, it is named, with multiple ~ prefix characters to ensure loading 
--    after any other scripts that may use MOD_BATCHNAME

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]  = "DummyScript.pak",  -- Set this field when naming an individual mod .pak.
    ["MOD_BATCHNAME"] = "someBatchName.pak",  -- Set this field when naming a combine/merge .pak.
    ["MOD_AUTHOR"]    = "Whoever",
    ["NMS_VERSION"]   = "ALL", 
    ["MODIFICATIONS"] =
    {
    }
}