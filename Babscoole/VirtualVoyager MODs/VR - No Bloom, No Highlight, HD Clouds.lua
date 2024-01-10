NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "VR - No Bloom, No Highlight, HD Clouds.pak",
["MOD_AUTHOR"]      = "PC Mystic",
["NMS_VERSION"]     = "4.48",
["MOD_DESCRIPTION"] = "Removes bloom, removes white highlights on interactable objects, increases VR cloud resolution",
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
                                    [[    <RenderTarget id="CLOUDS_HIGH"        platforms="!PS5,PC,PS4"  depthBuf="false"  numColBufs="2" format0="RGBA8" format1="RED32F" width="442" height="496"  allowDcc="false" numUniformBuffers="3" numSlices="2"  crossPipeShareId="CLOUDS_SHARED"   />]],
                                    [[    <RenderTarget id="CLOUDS_HIGH"        platforms="!PS5,PC,PS4"  depthBuf="false"  numColBufs="2" format0="RGBA8" format1="RED32F" width="1768" height="1984"  allowDcc="false" numUniformBuffers="3" numSlices="2"  crossPipeShareId="CLOUDS_SHARED"   />]]
                                },
                                {
                                    [[    <RenderTarget id="CLOUD_BLURBUF1"     platforms="!PS5,PC,PS4"  depthBuf="false"  numColBufs="1" format="RGBA8"  width="442" height="496" allowDcc="false" numUniformBuffers="3" numSlices="2" crossPipeShareId="CLOUDSB1_SHARED" />]],
                                    [[    <RenderTarget id="CLOUD_BLURBUF1"     platforms="!PS5,PC,PS4"  depthBuf="false"  numColBufs="1" format="RGBA8"  width="1768" height="1984" allowDcc="false" numUniformBuffers="3" numSlices="2" crossPipeShareId="CLOUDSB1_SHARED" />]]
                                },
                                {
                                    [[    <RenderTarget id="CLOUD_BLURBUF2"     platforms="!PS5,PC,PS4"  depthBuf="false"  numColBufs="1" format="RGBA8"  width="442" height="496" allowDcc="false" numUniformBuffers="3" numSlices="2" crossPipeShareId="CLOUDSB2_SHARED" />]],
                                    [[    <RenderTarget id="CLOUD_BLURBUF2"     platforms="!PS5,PC,PS4"  depthBuf="false"  numColBufs="1" format="RGBA8"  width="1768" height="1984" allowDcc="false" numUniformBuffers="3" numSlices="2" crossPipeShareId="CLOUDSB2_SHARED" />]]
                                },
                                {
                                    [[      <DoForwardLightLoop type="Mesh"     class="Highlight"            context="LIT_FORWARD_WITH_MASK" order="BACK_TO_FRONT" />]],
                                    [[      <!DoForwardLightLoop type="Mesh"     class="Highlight"            context="LIT_FORWARD_WITH_MASK" order="BACK_TO_FRONT" />]]
                                },
                                {
                                    [[    <Stage id="NewBloomBright" enabled="true">]],
                                    [[    <Stage id="NewBloomBright" enabled="false">]]
                                },
                                {
                                    [[    <Stage id="NewBloom" enabled="true">]],
                                    [[    <Stage id="NewBloom" enabled="false">]]
                                },
                                {
                                    [[    <Stage id="NewBloomResolve" enabled="true">]],
                                    [[    <Stage id="NewBloomResolve" enabled="false">]]
                                },
                                {
                                    [[    <Stage id="NewBloomExposure" enabled="true">]],
                                    [[    <Stage id="NewBloomExposure" enabled="false">]]
                                },
                                {
                                    [[    <Stage id="NoBloom" enabled="false">]],
                                    [[    <Stage id="NoBloom" enabled="true">]]
                                },
                                
                            }
                        },
                    }
                },
            }
        },
    }
}