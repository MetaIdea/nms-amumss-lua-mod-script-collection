NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "VR_NO_GLOW.pak",
["MOD_AUTHOR"]      = "Mjjstral, hubbabubba1211, and Babscoole",
["NMS_VERSION"]     = "4.52",
["MOD_DESCRIPTION"] = "Remove white glow around objects when focusing it (especially for VR immersion)",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "PIPELINES\PIPELINEDEFERREDVR.BIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "RAW",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {
                                    [[      <DoForwardLightLoop type="Mesh"     class="Highlight"            context="LIT_FORWARD_WITH_MASK" order="BACK_TO_FRONT" />]],
                                    [[      <!DoForwardLightLoop type="Mesh"     class="Highlight"            context="LIT_FORWARD_WITH_MASK" order="BACK_TO_FRONT" />-->]]
                                },
                            }
                        },
                    }
                },
            }
        },
    }
}