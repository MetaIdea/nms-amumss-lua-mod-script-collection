NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Appearance Modifier Extended",
["MOD_AUTHOR"]    = "MortimerKerman",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.75",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\GAMESTATE\PLAYERDATA\CHARACTERCUSTOMISATIONDESCRIPTORGROUPSDATA.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RACE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Tip", "Anomaly"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GroupID", "GEK_BASE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Tip", "Gek"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GroupID", "VYKEEN_BASE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Tip", "Vy'keen"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GroupID", "KORVAX_BASE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Tip", "Korvax"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GroupID", "FOURTH_BASE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Tip", "Traveller"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GroupID", "BUILDERS_BASE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Tip", "Autophage"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CHAR_ARMOUR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Tip",                "No armour"},
                                {"HiddenInCustomiser", "False"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GroupID", "BACKPACK_CAPE"},
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GroupID", "BACKPACK_ATLAS"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
				<Property name="DescriptorGroups" value="GcCustomisationDescriptorGroup">
					<Property name="GroupID" value="BACKPACK_CAPE" />
					<Property name="Title" value="" />
					<Property name="Image" value="" />
					<Property name="Descriptors">
						<Property name="Descriptors" value="_BACKPACK_CAPE" />
					</Property>
					<Property name="SuffixInclusionList" />
					<Property name="LinkedSpecialID" value="" />
					<Property name="Tip" value="backpack" />
					<Property name="HiddenInCustomiser" value="false" />
				</Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\UI\CHARACTERCUSTOMISATIONUIDATA.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GroupTitle", "BODY_SHAPE_U"},
                            ["PRECEDING_KEY_WORDS"] = {"DescriptorOptions"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
              <Property name="DescriptorOptions" value="GcCustomisationDescriptorGroupOptions">
                <Property name="GroupTitle" value="(UNSTABLE) Body base" />
                <Property name="FirstOptionIsEmpty" value="false" />
                <Property name="DescriptorGroupOptions">
                  <Property name="DescriptorGroupOptions" value="GcCustomisationDescriptorGroupOption">
                    <Property name="DescriptorOption" value="ASTRONAUT_BASE" />
                    <Property name="TextureGroups" />
                    <Property name="ReplaceBaseColours" value="false" />
                    <Property name="ColourGroups" />
                    <Property name="ReplaceBaseBoneScales" value="false" />
                    <Property name="BoneScales" />
                    <Property name="InteractionCameraIndexOverride" value="-1" />
                    <Property name="InteracttionCameraFocusJointOverride" value="" />
                    <Property name="ForceDisableDoF" value="false" />
                    <Property name="HideIfGroupActive" />
                    <Property name="SelectingRemovesGroup" />
                    <Property name="SelectingAddsGroup" />
                    <Property name="UnselectingRemovesGroup" />
                    <Property name="UnselectingAddsGroup" />
                  </Property>
                  <Property name="DescriptorGroupOptions" value="GcCustomisationDescriptorGroupOption">
                    <Property name="DescriptorOption" value="GEK_BASE" />
                    <Property name="TextureGroups" />
                    <Property name="ReplaceBaseColours" value="false" />
                    <Property name="ColourGroups" />
                    <Property name="ReplaceBaseBoneScales" value="false" />
                    <Property name="BoneScales" />
                    <Property name="InteractionCameraIndexOverride" value="-1" />
                    <Property name="InteracttionCameraFocusJointOverride" value="" />
                    <Property name="ForceDisableDoF" value="false" />
                    <Property name="HideIfGroupActive" />
                    <Property name="SelectingRemovesGroup" />
                    <Property name="SelectingAddsGroup" />
                    <Property name="UnselectingRemovesGroup" />
                    <Property name="UnselectingAddsGroup" />
                  </Property>
                  <Property name="DescriptorGroupOptions" value="GcCustomisationDescriptorGroupOption">
                    <Property name="DescriptorOption" value="VYKEEN_BASE" />
                    <Property name="TextureGroups" />
                    <Property name="ReplaceBaseColours" value="false" />
                    <Property name="ColourGroups" />
                    <Property name="ReplaceBaseBoneScales" value="false" />
                    <Property name="BoneScales" />
                    <Property name="InteractionCameraIndexOverride" value="-1" />
                    <Property name="InteracttionCameraFocusJointOverride" value="" />
                    <Property name="ForceDisableDoF" value="false" />
                    <Property name="HideIfGroupActive" />
                    <Property name="SelectingRemovesGroup" />
                    <Property name="SelectingAddsGroup" />
                    <Property name="UnselectingRemovesGroup" />
                    <Property name="UnselectingAddsGroup" />
                  </Property>
                  <Property name="DescriptorGroupOptions" value="GcCustomisationDescriptorGroupOption">
                    <Property name="DescriptorOption" value="KORVAX_BASE" />
                    <Property name="TextureGroups" />
                    <Property name="ReplaceBaseColours" value="false" />
                    <Property name="ColourGroups" />
                    <Property name="ReplaceBaseBoneScales" value="false" />
                    <Property name="BoneScales" />
                    <Property name="InteractionCameraIndexOverride" value="-1" />
                    <Property name="InteracttionCameraFocusJointOverride" value="" />
                    <Property name="ForceDisableDoF" value="false" />
                    <Property name="HideIfGroupActive" />
                    <Property name="SelectingRemovesGroup" />
                    <Property name="SelectingAddsGroup" />
                    <Property name="UnselectingRemovesGroup" />
                    <Property name="UnselectingAddsGroup" />
                  </Property>
                  <Property name="DescriptorGroupOptions" value="GcCustomisationDescriptorGroupOption">
                    <Property name="DescriptorOption" value="FOURTH_BASE" />
                    <Property name="TextureGroups" />
                    <Property name="ReplaceBaseColours" value="false" />
                    <Property name="ColourGroups" />
                    <Property name="ReplaceBaseBoneScales" value="false" />
                    <Property name="BoneScales" />
                    <Property name="InteractionCameraIndexOverride" value="-1" />
                    <Property name="InteracttionCameraFocusJointOverride" value="" />
                    <Property name="ForceDisableDoF" value="false" />
                    <Property name="HideIfGroupActive" />
                    <Property name="SelectingRemovesGroup" />
                    <Property name="SelectingAddsGroup" />
                    <Property name="UnselectingRemovesGroup" />
                    <Property name="UnselectingAddsGroup" />
                  </Property>
                  <Property name="DescriptorGroupOptions" value="GcCustomisationDescriptorGroupOption">
                    <Property name="DescriptorOption" value="BUILDERS_BASE" />
                    <Property name="TextureGroups" />
                    <Property name="ReplaceBaseColours" value="false" />
                    <Property name="ColourGroups" />
                    <Property name="ReplaceBaseBoneScales" value="false" />
                    <Property name="BoneScales" />
                    <Property name="InteractionCameraIndexOverride" value="-1" />
                    <Property name="InteracttionCameraFocusJointOverride" value="" />
                    <Property name="ForceDisableDoF" value="false" />
                    <Property name="HideIfGroupActive" />
                    <Property name="SelectingRemovesGroup" />
                    <Property name="SelectingAddsGroup" />
                    <Property name="UnselectingRemovesGroup" />
                    <Property name="UnselectingAddsGroup" />
                  </Property>
                </Property>
                <Property name="PrerequisiteGroup" />
              </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GroupTitle", "BODY_SHAPE_U"},
                            ["PRECEDING_KEY_WORDS"] = {"BoneScales"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
								<Property name="BoneScales" value="GcCustomisationBoneScales">
									<Property name="GroupTitle" value="Gek body" />
									<Property name="ScaleBoneName" value="GEKBODY" />
									<Property name="Positions">
										<Property name="Positions" value="0.000000" />
										<Property name="Positions" value="0.100000" />
									</Property>
								</Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DescriptorOption", "TORSO_BUILDERS"},
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"UnselectingRemovesGroup"},
                                {"UnselectingAddsGroup"},
                            },
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GroupTitle", "CHEST_ARMOUR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FirstOptionIsEmpty", "True"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GroupTitle", "CHEST_ARMOUR"},
                            ["PRECEDING_KEY_WORDS"] = {"DescriptorGroupOptions"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
                  <Property name="DescriptorGroupOptions" value="GcCustomisationDescriptorGroupOption">
                    <Property name="DescriptorOption" value="ARMOUR_NULL" />
                    <Property name="TextureGroups" />
                    <Property name="ReplaceBaseColours" value="false" />
                    <Property name="ColourGroups" />
                    <Property name="ReplaceBaseBoneScales" value="false" />
                    <Property name="BoneScales" />
                    <Property name="InteractionCameraIndexOverride" value="-1" />
                    <Property name="InteracttionCameraFocusJointOverride" value="" />
                    <Property name="ForceDisableDoF" value="false" />
                    <Property name="HideIfGroupActive" />
                    <Property name="SelectingRemovesGroup" />
                    <Property name="SelectingAddsGroup" />
                    <Property name="UnselectingRemovesGroup" />
                    <Property name="UnselectingAddsGroup" />
                  </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DescriptorOption", "ARMOUR_NULL"},
                            ["SECTION_ACTIVE"] = 1,
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DescriptorOption", "BACKPACK_CAPE"},
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GroupTitle", "CUSTOMISE_BACKPACK_L", "DescriptorOption", "BACKPACK_ROYAL"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
                  <Property name="DescriptorGroupOptions" value="GcCustomisationDescriptorGroupOption">
                    <Property name="DescriptorOption" value="BACKPACK_CAPE" />
                    <Property name="TextureGroups" />
                    <Property name="ReplaceBaseColours" value="false" />
                    <Property name="ColourGroups" />
                    <Property name="ReplaceBaseBoneScales" value="false" />
                    <Property name="BoneScales" />
                    <Property name="InteractionCameraIndexOverride" value="-1" />
                    <Property name="InteracttionCameraFocusJointOverride" value="" />
                    <Property name="ForceDisableDoF" value="false" />
                    <Property name="HideIfGroupActive" />
                    <Property name="SelectingRemovesGroup" />
                    <Property name="SelectingAddsGroup" />
                    <Property name="UnselectingRemovesGroup" />
                    <Property name="UnselectingAddsGroup" />
                  </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DescriptorOption", "CAPE_NULL"},
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"SelectingRemovesGroup"},
                                {"SelectingAddsGroup"},
                            },
                            ["CREATE_HOES"] = "TRUE",
                        },
                    }
                },
            }
        }
    }
}