NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "__CleanHUDVR_Main.pak",
["MOD_AUTHOR"]              = "enifleR",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.37",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LargeIconSize",                            "30"},
                                {"UnknownBuildingRange",                     "1200"},
                                {"MaxIconRange",                             "3600"},
                                {"MinShipScanBuildings",                     "1"},
                                {"MaxShipScanBuildings",                     "3"},
                                {"BuildingPlacementDefaultMinMinDistanceVR", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MultiplePlayerFreightersInASystem", "True"},
                                {"HmdPreviewScale",                   "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"QuickMenuLauncherTransforms", "GcProjectorOffsetData.xml", "ScreenScale", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.5"},
                                {"y", "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"QuickMenuLauncherTransformsNoBuildMenu", "GcProjectorOffsetData.xml", "ScreenScale", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.333333"},
                                {"y", "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WeaponMenuTransforms", "GcProjectorOffsetData.xml", "ScreenScale", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.5"},
                                {"y", "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LargeWeaponMenuTransforms", "GcProjectorOffsetData.xml", "ScreenScale", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.5"},
                                {"y", "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"QuickMenuOffset", "GcInWorldUIScreenData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ScreenScale", "0.05"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InventoryOffset", "GcInWorldUIScreenData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ScreenScale", "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FrontendOffset", "GcInWorldUIScreenData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ScreenScale", "0.17"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FrontendOffset", "GcInWorldUIScreenData.xml", "ScreenOffset", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "-0.4"},
                                {"z", "-0.57"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FrontendOffset", "GcInWorldUIScreenData.xml", "ScreenRotation", "Vector4f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "35"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"QuickMenuOffsetV2", "GcInWorldUIScreenData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ScreenScale", "0.05"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InventoryOffsetV2", "GcInWorldUIScreenData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ScreenScale", "0.065"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FrontendOffsetV2", "GcInWorldUIScreenData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ScreenScale", "0.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FrontendMessagesOffset", "GcInWorldUIScreenData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ScreenScale", "0.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FrontendMessagesOffset", "GcInWorldUIScreenData.xml", "ScreenOffset", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "0.15"},
                                {"z", "-0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DefaultLeftHandTransform", "GcInWorldUIScreenData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ScreenScale", "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InWorldCompass", "GcInWorldUIScreenData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ScreenScale", "0.025"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InWorldCompass", "GcInWorldUIScreenData.xml", "ScreenOffset", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "-0.2"},
                                {"z", "-0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InWorldCompass", "GcInWorldUIScreenData.xml", "ScreenRotation", "Vector4f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InteractionLineActiveColour", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0"},
                                {"G", "0"},
                                {"B", "0"},
                                {"A", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InteractionLineBaseColour", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0"},
                                {"G", "0"},
                                {"B", "0"},
                                {"A", "0"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BinocularsHUDScaleVR",             "1"},
                                {"FingerTipOffset",                  "0.028"},
                                {"FingerButtonClickSize",            "0.01"},
                                {"FingerButtonClickTime",            "0"},
                                {"HandInteractionLightIntensity",    "0.5"},
                                {"HandInteractionLightIntensityMax", "2.5"},
                                {"HandInteractionFresnel",           "0"},
                                {"HandInteractionFresnelMax",        "0"},
                                {"HandInteractionLightOffset",       "0"},
                                {"HandInteractionLightOffsetAt",     "0"},
                                {"HandInteractionLightTime",         "0"},
                                {"HandScreenLookActiveAngle",        "20"},
                                {"HandScreenActivationAngle",        "5"},
                                {"HandScreenActivationAngleDown",    "5"},
                                {"HandScreenRestingTurnAngle",       "10"},
                                {"EnableLeaning",                    "True"},
                                {"HmdResetButtonTime",               "0.01"},
                                {"HolsterGrabFrontOffset",           "9.1"},
                                {"HMDResetFlashTime",                "0.1"},
                                {"WantedLevelPlayerRangeSpace",      "2000"},
                                {"ShowLowAmmoWarning",               "False"},
                                {"MaximumCrouchVR",                  "-0.45"},
                                {"MaximumHorizontalOffsetVR",        "0.38"},
                                {"MeleeRadius",                      "0.7"},
                                {"MeleeSpeedBoostRangeMultiplier",   "1"},
                                {"MeleeCooldownAlt",                 "0.4"},
                                {"MeleeRadiusAlt",                   "0.4"},
                                {"MeleeDistanceAlt",                 "-0.16"},
                                {"StaminaRecoveryRate",              "0.12"},
                                {"ReloadTapButtonSpeedIncrease",     "20"},
                                {"MaxFallSpeed",                     "40"},
                                {"LeanLeftMaxAngle",                 "40"},
                                {"LeanRightMaxAngle",                "40"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {"MATERIALS\LINE3D.MATERIAL.MBIN", "MATERIALS\LINE3DGALAXY.MATERIAL.MBIN"},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MATERIALS\LINE3D.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Shader", ""},
                                {"Map",    ""},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\LINES\LINERENDERERGALAXY.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MATERIAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MATERIALS/LINE3DGALAXY.MATERIAL.MBIN"},
                            }
                        },
                    }
                },
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
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "UI\HUD\HUDHAZARD.MBIN",
                        "UI\HUD\HUDHEALTH.MBIN",
                        "UI\HUD\HUDINDICATORSVR.MBIN",
                        "UI\HUD\HUDLINES.MBIN",
                        "UI\HUD\HUDVRWARNING.MBIN",
                        "UI\HUD\HUDWEAPONS.MBIN",
                        "UI\HUD\HUDPLANETINFO.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\HUDINDICATORS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {4,5,9,12,13,15,17,18,20,22,23,25,26,27,29,31,32,34},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "50"},
                                {"Height", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "40"},
                                {"Height", "40"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "50"},
                                {"Height", "26"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {8,14,19,24,28,33},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {10},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "150"},
                                {"Height", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {11,16,21,30},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "27"},
                                {"Height", "27"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "JETPACK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "AMOUNT"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "False"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\HUDINTERACTIONMARKER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {3,16},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "50"},
                                {"Height", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "22"},
                                {"Height", "17"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "50"},
                                {"Height", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {7,8,9,10,11,12,15,24},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "17"},
                                {"Height", "17"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {13,14},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "9"},
                                {"Height", "9"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {21},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "64"},
                                {"Height", "64"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {22},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "27"},
                                {"Height", "27"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {23},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "16"},
                                {"Height", "16"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {25,26,27},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "35"},
                                {"Height", "35"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {28},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "120"},
                                {"Height", "120"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {29},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "64"},
                                {"Height", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {30},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "20"},
                                {"Height", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {31},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "32"},
                                {"Height", "32"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {32},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "20"},
                                {"Height", "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {33},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "13"},
                                {"Height", "13"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {34},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "17"},
                                {"Height", "16"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {35},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "500"},
                                {"Height", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Active", "TkNGuiTextStyleData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FontHeight", "16"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Style", "TkNGuiTextStyle.xml"},
                            ["SECTION_ACTIVE"] = {2,3,4,5},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FontHeight", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Style", "TkNGuiTextStyle.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FontHeight", "12"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Style", "TkNGuiGraphicStyle.xml"},
                            ["SECTION_ACTIVE"] = {1,2,3,4,6,8,9,10,11,12,13,14,19,20,21,22,23,24,25,26,27,28,29},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GlobalFade", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GraphicStyle", "TkNGuiGraphicStyle.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GlobalFade", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Style", "TkNGuiGraphicStyle.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GlobalFade", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GraphicStyle", "TkNGuiGraphicStyle.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GlobalFade", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GraphicStyle", "TkNGuiGraphicStyle.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GlobalFade", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\HUDNOTIFICATION.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {9,10,18,19},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "0"},
                                {"Height", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\HUDNOTIFICATIONPANEL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ElementData", "GcNGuiElementData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\HUDPLANETINFO.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ElementData", "GcNGuiElementData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\BINOCULARS\HUDBINOCSLEFTPANELNEW.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ElementData", "GcNGuiElementData.xml"},
                            ["SECTION_ACTIVE"] = {28},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\BINOCULARS\HUDBINOCSRIGHTPANEL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ElementData", "GcNGuiElementData.xml"},
                            ["SECTION_ACTIVE"] = {2,27,28},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ElementData", "GcNGuiElementData.xml"},
                            ["SECTION_ACTIVE"] = {8,22,25,33},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {8},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PositionX", "570"},
                                {"PositionY", "523.68164"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {22},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PositionX", "550"},
                                {"PositionY", "571"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\BINOCULARS\HUDBINOCSRIGHTPANELNEW.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ElementData", "GcNGuiElementData.xml"},
                            ["SECTION_ACTIVE"] = {9,26,27},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ElementData", "GcNGuiElementData.xml"},
                            ["SECTION_ACTIVE"] = {7,21,24,32},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PositionX", "590"},
                                {"PositionY", "523.68164"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {21},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PositionX", "570"},
                                {"PositionY", "571"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Style", "TkNGuiGraphicStyle.xml", "Colour", "Colour.xml"},
                            ["SECTION_ACTIVE"] = {76},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"G", "0.894"},
                                {"B", "1"},
                                {"A", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Highlight", "TkNGuiGraphicStyleData.xml", "Colour", "Colour.xml"},
                            ["SECTION_ACTIVE"] = {32},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"G", "0.894"},
                                {"B", "1"},
                                {"A", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Active", "TkNGuiGraphicStyleData.xml", "Colour", "Colour.xml"},
                            ["SECTION_ACTIVE"] = {32},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"G", "0.894"},
                                {"B", "1"},
                                {"A", "0.4"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\BINOCULARS\HUDBINOCULARMARKER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ElementData", "GcNGuiElementData.xml"},
                            ["SECTION_ACTIVE"] = {3,4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\HANDCONTROLS\QUICKMENULAUNCHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Style", "TkNGuiGraphicStyle.xml", "Colour", "Colour.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "0"},
                                {"B", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Highlight", "TkNGuiGraphicStyleData.xml", "Colour", "Colour.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "0"},
                                {"B", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Active", "TkNGuiGraphicStyleData.xml", "Colour", "Colour.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "0"},
                                {"B", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ElementData", "GcNGuiElementData.xml"},
                            ["SECTION_ACTIVE"] = {2,4,7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\HANDCONTROLS\WEAPONMENU.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ElementData", "GcNGuiElementData.xml"},
                            ["SECTION_ACTIVE"] = {4,7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "True"},
                            }
                        },
                    }
                },
            }
        },
    }
}