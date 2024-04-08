NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "AppearanceModifierExtended.pak",
["MOD_AUTHOR"]    = "MortimerKerman",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.63",
["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\GAMESTATE\PLAYERDATA\CHARACTERCUSTOMISATIONDESCRIPTORGROUPSDATA.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
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
        <Property value="GcCustomisationDescriptorGroup.xml">
          <Property name="GroupID" value="BACKPACK_CAPE" />
          <Property name="Title" value="" />
          <Property name="Image" value="" />
          <Property name="Descriptors">
            <Property value="NMSString0x20.xml">
              <Property name="Value" value="_BACKPACK_CAPE" />
            </Property>
          </Property>
          <Property name="SuffixInclusionList" />
          <Property name="LinkedSpecialID" value="" />
          <Property name="Tip" value="Ultra slim jetpack" />
          <Property name="HiddenInCustomiser" value="False" />
        </Property>
]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\UI\CHARACTERCUSTOMISATIONUIDATA.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
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
                  <Property value="GcCustomisationDescriptorGroupOption.xml">
                    <Property name="DescriptorOption" value="ARMOUR_NULL" />
                    <Property name="TextureGroups">
                      <Property value="GcCustomisationTextureGroup.xml">
                        <Property name="GroupID" value="" />
                        <Property name="Title" value="" />
                        <Property name="TextureOptionGroup" value="ARMOUR_NULL" />
                      </Property>
                    </Property>
                    <Property name="ReplaceBaseColours" value="False" />
                    <Property name="ColourGroups" />
                    <Property name="ReplaceBaseBoneScales" value="False" />
                    <Property name="BoneScales" />
                    <Property name="InteractionCameraIndexOverride" value="-1" />
                    <Property name="InteracttionCameraFocusJointOverride" value="" />
                    <Property name="HideIfGroupActive" />
                    <Property name="SelectingRemovesGroup" />
                    <Property name="SelectingAddsGroup" />
                    <Property name="UnselectingRemovesGroup" />
                    <Property name="UnselectingAddsGroup" />
                  </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] =
                            {
                                {"DescriptorOption", "ARMOUR_NULL"},
                                {"DescriptorOption", "BACKPACK_CAPE"},
                            },
                            ["SECTION_ACTIVE"] = 2,
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"GroupTitle", "CUSTOMISE_BACKPACK_L"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FirstOptionIsEmpty", "True"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"GroupTitle", "CUSTOMISE_BACKPACK_L"},
                            ["PRECEDING_KEY_WORDS"] = {"DescriptorGroupOptions"},
                            ["ADD_OPTION"] = "ADDafterLINE",
							["ADD"] =
[[
                  <Property value="GcCustomisationDescriptorGroupOption.xml">
                    <Property name="DescriptorOption" value="BACKPACK_CAPE" />
                    <Property name="TextureGroups" />
                    <Property name="ReplaceBaseColours" value="False" />
                    <Property name="ColourGroups" />
                    <Property name="ReplaceBaseBoneScales" value="False" />
                    <Property name="BoneScales" />
                    <Property name="InteractionCameraIndexOverride" value="-1" />
                    <Property name="InteracttionCameraFocusJointOverride" value="" />
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