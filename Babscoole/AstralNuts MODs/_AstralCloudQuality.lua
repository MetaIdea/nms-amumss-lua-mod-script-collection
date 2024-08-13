NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_AstralCloudQuality.pak",
["MOD_AUTHOR"]    = "AstralNut",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.03",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "PIPELINES\PIPELINEDEFERRED.BIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "RAW",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {[[    <PipelineVariable id="CloudQuality"                   defaultValue="2" />]], [[    <PipelineVariable id="CloudQuality"                   defaultValue="2" />]]},
                                {[[    <PipelineVariable id="CloudQuality_Low"               defaultValue="0" />]], [[    <PipelineVariable id="CloudQuality_Low"               defaultValue="2" />]]},
                                {[[    <PipelineVariable id="CloudQuality_Mid"               defaultValue="1" />]], [[    <PipelineVariable id="CloudQuality_Mid"               defaultValue="2" />]]},
                                {[[    <PipelineVariable id="CloudQuality_High"              defaultValue="2" />]], [[    <PipelineVariable id="CloudQuality_High"              defaultValue="2" />]]},
                                {[[    <RenderTarget id="CLOUDSHADOWS"       depthBuf="false"        numColBufs="1" format="RED8"   applyDrs="true" scale="0.5" allowDcc="false" />]], [[    <RenderTarget id="CLOUDSHADOWS"       depthBuf="false"        numColBufs="1" format="RED8"   applyDrs="true" scale="2" allowDcc="false" />]]},
                                {[[    <RenderTarget id="CLOUDS_MRT"         depthBuf="false"        numColBufs="3" format0="RGBA16F" format1="R32FG32F" format2="RG8" scale="0.5" applyDrs="true" allowDcc="NEXT" shareTarget0="CLOUDS_COLOUR" shareTarget1="CLOUDS_DEPTH" shareTarget2="CLOUDS_MASK" />]], [[    <RenderTarget id="CLOUDS_MRT"         depthBuf="false"        numColBufs="3" format0="RGBA16F" format1="R32FG32F" format2="RG8" scale="2" applyDrs="true" allowDcc="NEXT" shareTarget0="CLOUDS_COLOUR" shareTarget1="CLOUDS_DEPTH" shareTarget2="CLOUDS_MASK" />]]},
                                {[[    <RenderTarget id="CLOUDS_COLOUR"      depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_COLOUR"      depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="2" applyDrs="true" allowDcc="NEXT" />]]},
                                {[[    <RenderTarget id="CLOUDS_DEPTH"       depthBuf="false"        numColBufs="1" format="R32FG32F"  scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_DEPTH"       depthBuf="false"        numColBufs="1" format="R32FG32F"  scale="2" applyDrs="true" allowDcc="NEXT" />]]},
                                {[[    <RenderTarget id="CLOUDS_MASK"        depthBuf="false"        numColBufs="1" format="RG8"       scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_MASK"        depthBuf="false"        numColBufs="1" format="RG8"       scale="2" applyDrs="true" allowDcc="NEXT" />]]},
                                {[[    <RenderTarget id="CLOUDS_HISTORY"     depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_HISTORY"     depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="2" applyDrs="true" allowDcc="NEXT" />]]},
                                {[[    <RenderTarget id="CLOUDS_FINAL"       depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="0.5" applyDrs="true" allowDcc="NEXT" />]], [[    <RenderTarget id="CLOUDS_FINAL"       depthBuf="false"        numColBufs="1" format="RGBA16F"   scale="2" applyDrs="true" allowDcc="NEXT" />]]},
                                {[[    <RenderTarget id="WATER_REFL"         platforms="PC|NEXT|XB1X"  depthBuf="false"  numColBufs="1" format="RED32UI"                 scale="1.0" applyDrs="true" allowDcc="false" shareTarget0="RED32UI_BUF_1" />]], [[    <RenderTarget id="WATER_REFL"         platforms="PC|NEXT|XB1X"  depthBuf="false"  numColBufs="1" format="RED32UI"                 scale="1.0" applyDrs="true" allowDcc="true" shareTarget0="RED32UI_BUF_1" />]]},
                                {[[    <RenderTarget id="WATER_REFL_FRONT"   platforms="PC|NEXT"       depthBuf="false"  numColBufs="1" format="RED32UI"                 scale="1.0" applyDrs="true" allowDcc="false" shareTarget0="RED32UI_BUF_2" esramPageColBuf0="76" />]], [[    <RenderTarget id="WATER_REFL_FRONT"   platforms="PC|NEXT"       depthBuf="false"  numColBufs="1" format="RED32UI"                 scale="1.0" applyDrs="true" allowDcc="true" shareTarget0="RED32UI_BUF_2" esramPageColBuf0="76" />]]},
                                {[[    <RenderTarget id="WATER_REFL_BACK"    platforms="PC|NEXT"       depthBuf="false"  numColBufs="1" format="RED32UI"                 scale="1.0" applyDrs="true" allowDcc="false" />]], [[    <RenderTarget id="WATER_REFL_BACK"    platforms="PC|NEXT"       depthBuf="false"  numColBufs="1" format="RED32UI"                 scale="1.0" applyDrs="true" allowDcc="true" />]]},
                            }
                        },
                    }
                },
            }
        }
    }
}