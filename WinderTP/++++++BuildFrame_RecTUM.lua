SUBGROUP_MOVE_TABLE =
-- "SubGroup" WITH "Name", "From" ORIGINAL TOP GROUP "To" DESTINATION TOP GROUP, EXISTING TOP GROUPS ONLY
-- TABLE IS TREATED AS A STACK
{
	{ ["SubGroup"] = "TECHTECH", ["Name"] = "UI_BUILD_GRID_TECH", ["From"] = "BASE_TECH", ["To"] = "PLANET_TECH" },
	{ ["SubGroup"] = "TECHFARMING", ["Name"] = "UI_BUILD_GRID_FARMING", ["From"] = "BASE_TECH", ["To"] = "PLANET_TECH" },
	{ ["SubGroup"] = "TECHSTORAGE", ["Name"] = "UI_BUILD_GRID_STORAGE", ["From"] = "BASE_TECH", ["To"] = "PLANET_TECH" },
	{ ["SubGroup"] = "TECHTEMINALS", ["Name"] = "UI_BUILD_GRID_TERMINALS", ["From"] = "BASE_TECH", ["To"] = "PLANET_TECH" },
	{ ["SubGroup"] = "POWERPOWER", ["Name"] = "UI_BUILD_GRID_POWER", ["From"] = "POWER", ["To"] = "PLANET_TECH" },
	{ ["SubGroup"] = "POWERINDUSTRY", ["Name"] = "UI_BUILD_GRID_INDUSTRY", ["From"] = "POWER", ["To"] = "PLANET_TECH" },
	{ ["SubGroup"] = "POWERSWITCHES", ["Name"] = "UI_BUILD_GRID_SWITCHES", ["From"] = "POWER", ["To"] = "PLANET_TECH" },
	{ ["SubGroup"] = "DECOLIGHTS", ["Name"] = "UI_BUILD_GRID_LIGHTS", ["From"] = "DECORATION", ["To"] = "FURNITURE" },
	{ ["SubGroup"] = "DECOEXTERIOR", ["Name"] = "UI_BUILD_GRID_EXTERIOR", ["From"] = "DECORATION", ["To"] = "FURNITURE" },
	{ ["SubGroup"] = "DECOCONSTRUCT", ["Name"] = "UI_BUILD_GRID_CONSTRUCTION", ["From"] = "DECORATION", ["To"] = "FURNITURE" },
	{ ["SubGroup"] = "WALLDECALS", ["Name"] = "UI_BUILD_GRID_DECALS", ["From"] = "WALL_ART", ["To"] = "EXOTICS" },
	{ ["SubGroup"] = "WALLPOSTERS", ["Name"] = "UI_BUILD_GRID_POSTERS", ["From"] = "WALL_ART", ["To"] = "EXOTICS" },
	-- { ["SubGroup"] = "FREIGHTERROOMS", ["Name"] = "UI_BUILD_GRID_FREIGHTER_ROOMS", ["From"] = "FREIGHTER", ["To"] = "ROOMS" },
	-- { ["SubGroup"] = "FREIGHTERTECH", ["Name"] = "UI_BUILD_GRID_FREIGHTER_TECH", ["From"] = "FREIGHTER", ["To"] = "PLANET_TECH" },
	{ ["SubGroup"] = "FRE_TECH_OTHER", ["Name"] = "UI_BUILD_GRID_FREIGHTPORTABLE", ["From"] = "FREIGHTER_TECH", ["To"] = "FREIGHTER" },
	{ ["SubGroup"] = "FRE_PLANTS", ["Name"] = "UI_BUILD_GRID_FREIGHTER_PLANTS", ["From"] = "FREIGHTER_BIO", ["To"] = "FREIGHTER" },
	{ ["SubGroup"] = "FREIGHTERLEGACY", ["Name"] = "UI_BUILD_GRID_FREIGHT_LEGACY_S", ["From"] = "FREIGHT_LEGACY", ["To"] = "FREIGHTER" },
	{ ["SubGroup"] = "FRE_IND_SUB", ["Name"] = "UI_BUILD_GRID_FREIGHTER_INDROOM", ["From"] = "FREIGHTER_IND", ["To"] = "FREIGHTER" },
	{ ["SubGroup"] = "FRE_BIO_SUB", ["Name"] = "UI_BUILD_GRID_FREIGHTER_BIOROOM", ["From"] = "FREIGHTER_BIO", ["To"] = "FREIGHTER" },
	{ ["SubGroup"] = "FRE_TECH_SUB", ["Name"] = "UI_BUILD_GRID_FREIGHTER_TECHROO", ["From"] = "FREIGHTER_TECH", ["To"] = "FREIGHTER" },
	{ ["SubGroup"] = "T_FLOORS", ["Name"] = "UI_BUILD_GRID_FLOORS", ["From"] = "BASIC_T", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "S_FLOORS", ["Name"] = "UI_BUILD_GRID_FLOORS", ["From"] = "BASIC_S", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "F_FLOORS", ["Name"] = "UI_BUILD_GRID_FLOORS", ["From"] = "BASIC_F", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "T_WALLS", ["Name"] = "UI_BUILD_GRID_WALLS", ["From"] = "BASIC_T", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "S_WALLS", ["Name"] = "UI_BUILD_GRID_WALLS", ["From"] = "BASIC_S", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "F_WALLS", ["Name"] = "UI_BUILD_GRID_WALLS", ["From"] = "BASIC_F", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "T_ROOFS", ["Name"] = "UI_BUILD_GRID_ROOFS", ["From"] = "BASIC_T", ["To"] = "ROOMS" }, 
	{ ["SubGroup"] = "S_ROOFS", ["Name"] = "UI_BUILD_GRID_ROOFS", ["From"] = "BASIC_S", ["To"] = "ROOMS" },
	{ ["SubGroup"] = "F_ROOFS", ["Name"] = "UI_BUILD_GRID_ROOFS", ["From"] = "BASIC_F", ["To"] = "ROOMS" },
	-- { ["SubGroup"] = "BASICWOOD", ["Name"] = "UI_BUILD_GRID_WOOD", ["From"] = "BASIC_LEGACY", ["To"] = "ROOMS" },
    -- { ["SubGroup"] = "BASICCONCRETE", ["Name"] = "UI_BUILD_GRID_CONCRETE", ["From"] = "BASIC_LEGACY", ["To"] = "ROOMS" },
    -- { ["SubGroup"] = "BASICMETAL", ["Name"] = "UI_BUILD_GRID_METAL", ["From"] = "BASIC_LEGACY", ["To"] = "ROOMS" },	

}

DEBUG_TEXT = false

-- BUILD MENU PARTS MENU UI HEIGHT MODIFIER
-- ALTER WITH CARE
PARTS_UI_MULTIPLIER = 1.75

-- NUMBER OF ITEM SLOTS BETWEEN A DIVIDER
-- ONLY ALTER UPON MBIN CHANGE
DIVIDER_SLOT = 10

-- MAXIMUM NUMBER OF VANILLA PARTS IN THE PARTS MENU
-- ONLY ALTER UPON MBIN CHANGE
VANILLA_PARTS_COUNT = 240

-- MAXIMUM NUMBER OF STABLE UI SLOTS
-- DO NOT ALTER
PARTS_SLOTS_LIMIT = 270

--[[function GetBaseObjectMigrate(SUBGROUP, FROM, TO)
return
	{
		["PRECEDING_KEY_WORDS"] = {"GcBaseBuildingEntry.xml", "GcBaseBuildingEntryGroup.xml"},
		["REPLACE_TYPE"] 	= "ALL",
		["WHERE_IN_SUBSECTION"] =
		{
			{ "Group",			FROM },
			{ "SubGroupName",	SUBGROUP },
		},
		["VALUE_CHANGE_TABLE"] 	= 
		{
			{"Group",			TO},
		}
	}
end]]

function GetBaseObjectMigrateAlt(SUBGROUP, TO)
-- CHANGING A "SubGroup"'S TOP GROUP "To" THE NEW GROUP, NO EXCEPTIONS
return
	{
		["SPECIAL_KEY_WORDS"] = {"SubGroupName", SUBGROUP},
		["REPLACE_TYPE"] 	= "ALL",
		["VALUE_CHANGE_TABLE"] 	= 
		{
			{"Group",			TO},
		}
	}
end

--[[function GetBaseObjectMigrateAltTwo(FROM, TO)
return
	{
		["PRECEDING_KEY_WORDS"] = 	{"GcBaseBuildingEntry.xml", "GcBaseBuildingEntryGroup.xml"},
		["REPLACE_TYPE"] 	= 		"ALL",
		["VALUE_MATCH"] = 			FROM, 
		["VALUE_CHANGE_TABLE"] 	= 
		{
			{"Group",			TO },
		}
	}
end]]


function GetSubGroupMigrate(SUBGROUP, NAME, TO)
-- ADDING "SubGroup" WITH "Name", "To" DESTINATION TOP GROUP, EXISTING TOP GROUPS ONLY
	function GetSubGroupData(ID, SUBNAME)
	-- CONSTRUCTING EXML CODE
		return [[
        <Property value="GcBaseBuildingSubGroup.xml">
          <Property name="Id" value="]] .. ID .. [[" />
          <Property name="Name" value="]] .. SUBNAME .. [[" />
        </Property>
]]
	end
return
	{
		["SPECIAL_KEY_WORDS"] = {"ID", TO},
		["PRECEDING_KEY_WORDS"] = {"SubGroups"},
		-- ["LINE_OFFSET"] 		= "+0",
		["ADD"] 				= GetSubGroupData(SUBGROUP, NAME)
	}
end

function GetPartsMenuDivider(COUNTER)
return [[
					<Property value="GcNGuiLayerData.xml">
                      <Property name="ElementData" value="GcNGuiElementData.xml">
                        <Property name="ID" value="DIVIDER]] .. COUNTER .. [[" />
                        <Property name="PresetID" value="" />
                        <Property name="IsHidden" value="False" />
                        <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
                          <Property name="NGuiForcedStyle" value="None" />
                        </Property>
                        <Property name="Layout" value="GcNGuiLayoutData.xml">
                          <Property name="VROverrides" />
                          <Property name="AccessibleOverrides" />
                          <Property name="PositionX" value="0" />
                          <Property name="PositionY" value="0" />
                          <Property name="Width" value="100" />
                          <Property name="Height" value="35" />
                          <Property name="ConstrainAspect" value="1" />
                          <Property name="MaxWidth" value="0" />
                          <Property name="Align" value="TkNGuiAlignment.xml">
                            <Property name="Vertical" value="Top" />
                            <Property name="Horizontal" value="Left" />
                          </Property>
                          <Property name="WidthPercentage" value="True" />
                          <Property name="HeightPercentage" value="False" />
                          <Property name="ConstrainProportions" value="False" />
                          <Property name="ForceAspect" value="False" />
                          <Property name="Anchor" value="False" />
                          <Property name="AnchorPercent" value="False" />
                          <Property name="SameLine" value="False" />
                          <Property name="SlowCursorOnHover" value="False" />
                        </Property>
                      </Property>
                      <Property name="Style" value="TkNGuiGraphicStyle.xml">
                        <Property name="Default" value="TkNGuiGraphicStyleData.xml">
                          <Property name="Colour" value="Colour.xml">
                            <Property name="R" value="0" />
                            <Property name="G" value="0" />
                            <Property name="B" value="0" />
                            <Property name="A" value="0" />
                          </Property>
                          <Property name="IconColour" value="Colour.xml">
                            <Property name="R" value="1" />
                            <Property name="G" value="1" />
                            <Property name="B" value="1" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="StrokeColour" value="Colour.xml">
                            <Property name="R" value="1" />
                            <Property name="G" value="1" />
                            <Property name="B" value="1" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="GradientColour" value="Colour.xml">
                            <Property name="R" value="0" />
                            <Property name="G" value="0" />
                            <Property name="B" value="0" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="StrokeGradientColour" value="Colour.xml">
                            <Property name="R" value="1" />
                            <Property name="G" value="1" />
                            <Property name="B" value="1" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="PaddingX" value="0" />
                          <Property name="PaddingY" value="0" />
                          <Property name="MarginX" value="0" />
                          <Property name="MarginY" value="0" />
                          <Property name="GradientStartOffset" value="0" />
                          <Property name="GradientEndOffset" value="0" />
                          <Property name="CornerRadius" value="0" />
                          <Property name="StrokeSize" value="0" />
                          <Property name="Image" value="0" />
                          <Property name="Icon" value="0" />
                          <Property name="Desaturation" value="0" />
                          <Property name="StrokeGradientOffset" value="0" />
                          <Property name="StrokeGradientFeather" value="0" />
                          <Property name="Shape" value="Rectangle" />
                          <Property name="Gradient" value="None" />
                          <Property name="SolidColour" value="True" />
                          <Property name="HasDropShadow" value="False" />
                          <Property name="HasOuterGradient" value="False" />
                          <Property name="HasInnerGradient" value="False" />
                          <Property name="GradientOffsetPercent" value="False" />
                          <Property name="StrokeGradient" value="False" />
                        </Property>
                        <Property name="Highlight" value="TkNGuiGraphicStyleData.xml">
                          <Property name="Colour" value="Colour.xml">
                            <Property name="R" value="0" />
                            <Property name="G" value="0" />
                            <Property name="B" value="0" />
                            <Property name="A" value="0" />
                          </Property>
                          <Property name="IconColour" value="Colour.xml">
                            <Property name="R" value="1" />
                            <Property name="G" value="1" />
                            <Property name="B" value="1" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="StrokeColour" value="Colour.xml">
                            <Property name="R" value="1" />
                            <Property name="G" value="1" />
                            <Property name="B" value="1" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="GradientColour" value="Colour.xml">
                            <Property name="R" value="0" />
                            <Property name="G" value="0" />
                            <Property name="B" value="0" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="StrokeGradientColour" value="Colour.xml">
                            <Property name="R" value="1" />
                            <Property name="G" value="1" />
                            <Property name="B" value="1" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="PaddingX" value="0" />
                          <Property name="PaddingY" value="0" />
                          <Property name="MarginX" value="0" />
                          <Property name="MarginY" value="0" />
                          <Property name="GradientStartOffset" value="0" />
                          <Property name="GradientEndOffset" value="0" />
                          <Property name="CornerRadius" value="0" />
                          <Property name="StrokeSize" value="0" />
                          <Property name="Image" value="0" />
                          <Property name="Icon" value="0" />
                          <Property name="Desaturation" value="0" />
                          <Property name="StrokeGradientOffset" value="0" />
                          <Property name="StrokeGradientFeather" value="0" />
                          <Property name="Shape" value="Rectangle" />
                          <Property name="Gradient" value="None" />
                          <Property name="SolidColour" value="True" />
                          <Property name="HasDropShadow" value="False" />
                          <Property name="HasOuterGradient" value="False" />
                          <Property name="HasInnerGradient" value="False" />
                          <Property name="GradientOffsetPercent" value="False" />
                          <Property name="StrokeGradient" value="False" />
                        </Property>
                        <Property name="Active" value="TkNGuiGraphicStyleData.xml">
                          <Property name="Colour" value="Colour.xml">
                            <Property name="R" value="0" />
                            <Property name="G" value="0" />
                            <Property name="B" value="0" />
                            <Property name="A" value="0" />
                          </Property>
                          <Property name="IconColour" value="Colour.xml">
                            <Property name="R" value="1" />
                            <Property name="G" value="1" />
                            <Property name="B" value="1" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="StrokeColour" value="Colour.xml">
                            <Property name="R" value="1" />
                            <Property name="G" value="1" />
                            <Property name="B" value="1" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="GradientColour" value="Colour.xml">
                            <Property name="R" value="0" />
                            <Property name="G" value="0" />
                            <Property name="B" value="0" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="StrokeGradientColour" value="Colour.xml">
                            <Property name="R" value="1" />
                            <Property name="G" value="1" />
                            <Property name="B" value="1" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="PaddingX" value="0" />
                          <Property name="PaddingY" value="0" />
                          <Property name="MarginX" value="0" />
                          <Property name="MarginY" value="0" />
                          <Property name="GradientStartOffset" value="0" />
                          <Property name="GradientEndOffset" value="0" />
                          <Property name="CornerRadius" value="0" />
                          <Property name="StrokeSize" value="0" />
                          <Property name="Image" value="0" />
                          <Property name="Icon" value="0" />
                          <Property name="Desaturation" value="0" />
                          <Property name="StrokeGradientOffset" value="0" />
                          <Property name="StrokeGradientFeather" value="0" />
                          <Property name="Shape" value="Rectangle" />
                          <Property name="Gradient" value="None" />
                          <Property name="SolidColour" value="True" />
                          <Property name="HasDropShadow" value="False" />
                          <Property name="HasOuterGradient" value="False" />
                          <Property name="HasInnerGradient" value="False" />
                          <Property name="GradientOffsetPercent" value="False" />
                          <Property name="StrokeGradient" value="False" />
                        </Property>
                        <Property name="CustomMinStart" value="Vector2f.xml">
                          <Property name="x" value="1" />
                          <Property name="y" value="1" />
                        </Property>
                        <Property name="CustomMaxStart" value="Vector2f.xml">
                          <Property name="x" value="1" />
                          <Property name="y" value="1" />
                        </Property>
                        <Property name="HighlightTime" value="0.1" />
                        <Property name="HighlightScale" value="1" />
                        <Property name="GlobalFade" value="1" />
                        <Property name="AnimTime" value="0.5" />
                        <Property name="AnimSplit" value="0.4" />
                        <Property name="AnimCurve1" value="TkCurveType.xml">
                          <Property name="Curve" value="Linear" />
                        </Property>
                        <Property name="AnimCurve2" value="TkCurveType.xml">
                          <Property name="Curve" value="Linear" />
                        </Property>
                        <Property name="Animate" value="None" />
                        <Property name="InheritStyleFromParentLayer" value="False" />
                      </Property>
                      <Property name="Image" value="" />
                      <Property name="Children" />
                      <Property name="DataFilename" value="UI/BASEPARTSMENUSUBGROUP.MBIN" />
                      <Property name="AltMode" value="None" />
                    </Property>
]]
end

function GetPartsItemEntry(COUNTER)
return [[
					<Property value="GcNGuiLayerData.xml">
                      <Property name="ElementData" value="GcNGuiElementData.xml">
                        <Property name="ID" value="ITEM]] .. COUNTER .. [[" />
                        <Property name="PresetID" value="" />
                        <Property name="IsHidden" value="False" />
                        <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
                          <Property name="NGuiForcedStyle" value="None" />
                        </Property>
                        <Property name="Layout" value="GcNGuiLayoutData.xml">
                          <Property name="VROverrides" />
                          <Property name="AccessibleOverrides" />
                          <Property name="PositionX" value="0" />
                          <Property name="PositionY" value="0" />
                          <Property name="Width" value="164" />
                          <Property name="Height" value="187.01755" />
                          <Property name="ConstrainAspect" value="0.876923" />
                          <Property name="MaxWidth" value="0" />
                          <Property name="Align" value="TkNGuiAlignment.xml">
                            <Property name="Vertical" value="Top" />
                            <Property name="Horizontal" value="Left" />
                          </Property>
                          <Property name="WidthPercentage" value="False" />
																	  
                          <Property name="HeightPercentage" value="False" />
                          <Property name="ConstrainProportions" value="True" />
																			  
                          <Property name="ForceAspect" value="False" />
                          <Property name="Anchor" value="False" />
                          <Property name="AnchorPercent" value="False" />
                          <Property name="SameLine" value="True" />
                          <Property name="SlowCursorOnHover" value="False" />
                        </Property>
                      </Property>
                      <Property name="Style" value="TkNGuiGraphicStyle.xml">
                        <Property name="Default" value="TkNGuiGraphicStyleData.xml">
                          <Property name="Colour" value="Colour.xml">
                            <Property name="R" value="0" />
                            <Property name="G" value="0" />
                            <Property name="B" value="0" />
                            <Property name="A" value="0" />
                          </Property>
                          <Property name="IconColour" value="Colour.xml">
                            <Property name="R" value="1" />
                            <Property name="G" value="1" />
                            <Property name="B" value="1" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="StrokeColour" value="Colour.xml">
                            <Property name="R" value="1" />
                            <Property name="G" value="1" />
                            <Property name="B" value="1" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="GradientColour" value="Colour.xml">
                            <Property name="R" value="0" />
                            <Property name="G" value="0" />
                            <Property name="B" value="0" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="StrokeGradientColour" value="Colour.xml">
                            <Property name="R" value="1" />
                            <Property name="G" value="1" />
                            <Property name="B" value="1" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="PaddingX" value="0" />
                          <Property name="PaddingY" value="0" />
                          <Property name="MarginX" value="0" />
                          <Property name="MarginY" value="6" />
                          <Property name="GradientStartOffset" value="0" />
                          <Property name="GradientEndOffset" value="0" />
                          <Property name="CornerRadius" value="0" />
                          <Property name="StrokeSize" value="0" />
                          <Property name="Image" value="0" />
                          <Property name="Icon" value="0" />
                          <Property name="Desaturation" value="0" />
                          <Property name="StrokeGradientOffset" value="0" />
                          <Property name="StrokeGradientFeather" value="0" />
                          <Property name="Shape" value="Rectangle" />
                          <Property name="Gradient" value="None" />
                          <Property name="SolidColour" value="False" />
                          <Property name="HasDropShadow" value="False" />
                          <Property name="HasOuterGradient" value="False" />
                          <Property name="HasInnerGradient" value="False" />
                          <Property name="GradientOffsetPercent" value="False" />
                          <Property name="StrokeGradient" value="False" />
                        </Property>
                        <Property name="Highlight" value="TkNGuiGraphicStyleData.xml">
                          <Property name="Colour" value="Colour.xml">
                            <Property name="R" value="0" />
                            <Property name="G" value="0" />
                            <Property name="B" value="0" />
                            <Property name="A" value="0" />
                          </Property>
                          <Property name="IconColour" value="Colour.xml">
                            <Property name="R" value="1" />
                            <Property name="G" value="1" />
                            <Property name="B" value="1" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="StrokeColour" value="Colour.xml">
                            <Property name="R" value="1" />
                            <Property name="G" value="1" />
                            <Property name="B" value="1" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="GradientColour" value="Colour.xml">
                            <Property name="R" value="0" />
                            <Property name="G" value="0" />
                            <Property name="B" value="0" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="StrokeGradientColour" value="Colour.xml">
                            <Property name="R" value="1" />
                            <Property name="G" value="1" />
                            <Property name="B" value="1" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="PaddingX" value="0" />
                          <Property name="PaddingY" value="0" />
                          <Property name="MarginX" value="0" />
                          <Property name="MarginY" value="6" />
                          <Property name="GradientStartOffset" value="0" />
                          <Property name="GradientEndOffset" value="0" />
                          <Property name="CornerRadius" value="0" />
                          <Property name="StrokeSize" value="0" />
                          <Property name="Image" value="0" />
                          <Property name="Icon" value="0" />
                          <Property name="Desaturation" value="0" />
                          <Property name="StrokeGradientOffset" value="0" />
                          <Property name="StrokeGradientFeather" value="0" />
                          <Property name="Shape" value="Rectangle" />
                          <Property name="Gradient" value="None" />
                          <Property name="SolidColour" value="False" />
                          <Property name="HasDropShadow" value="False" />
                          <Property name="HasOuterGradient" value="False" />
                          <Property name="HasInnerGradient" value="False" />
                          <Property name="GradientOffsetPercent" value="False" />
                          <Property name="StrokeGradient" value="False" />
                        </Property>
                        <Property name="Active" value="TkNGuiGraphicStyleData.xml">
                          <Property name="Colour" value="Colour.xml">
                            <Property name="R" value="0" />
                            <Property name="G" value="0" />
                            <Property name="B" value="0" />
                            <Property name="A" value="0" />
                          </Property>
                          <Property name="IconColour" value="Colour.xml">
                            <Property name="R" value="1" />
                            <Property name="G" value="1" />
                            <Property name="B" value="1" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="StrokeColour" value="Colour.xml">
                            <Property name="R" value="1" />
                            <Property name="G" value="1" />
                            <Property name="B" value="1" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="GradientColour" value="Colour.xml">
                            <Property name="R" value="0" />
                            <Property name="G" value="0" />
                            <Property name="B" value="0" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="StrokeGradientColour" value="Colour.xml">
                            <Property name="R" value="1" />
                            <Property name="G" value="1" />
                            <Property name="B" value="1" />
                            <Property name="A" value="1" />
                          </Property>
                          <Property name="PaddingX" value="0" />
                          <Property name="PaddingY" value="0" />
                          <Property name="MarginX" value="0" />
                          <Property name="MarginY" value="6" />
                          <Property name="GradientStartOffset" value="0" />
                          <Property name="GradientEndOffset" value="0" />
                          <Property name="CornerRadius" value="0" />
                          <Property name="StrokeSize" value="0" />
                          <Property name="Image" value="0" />
                          <Property name="Icon" value="0" />
                          <Property name="Desaturation" value="0" />
                          <Property name="StrokeGradientOffset" value="0" />
                          <Property name="StrokeGradientFeather" value="0" />
                          <Property name="Shape" value="Rectangle" />
                          <Property name="Gradient" value="None" />
                          <Property name="SolidColour" value="False" />
                          <Property name="HasDropShadow" value="False" />
                          <Property name="HasOuterGradient" value="False" />
                          <Property name="HasInnerGradient" value="False" />
                          <Property name="GradientOffsetPercent" value="False" />
                          <Property name="StrokeGradient" value="False" />
                        </Property>
                        <Property name="CustomMinStart" value="Vector2f.xml">
                          <Property name="x" value="1" />
                          <Property name="y" value="1" />
                        </Property>
                        <Property name="CustomMaxStart" value="Vector2f.xml">
                          <Property name="x" value="1" />
                          <Property name="y" value="1" />
                        </Property>
                        <Property name="HighlightTime" value="0.1" />
                        <Property name="HighlightScale" value="1" />
                        <Property name="GlobalFade" value="1" />
                        <Property name="AnimTime" value="0.5" />
                        <Property name="AnimSplit" value="0.4" />
                        <Property name="AnimCurve1" value="TkCurveType.xml">
                          <Property name="Curve" value="Linear" />
                        </Property>
                        <Property name="AnimCurve2" value="TkCurveType.xml">
                          <Property name="Curve" value="Linear" />
                        </Property>
                        <Property name="Animate" value="SimpleWipe" />
                        <Property name="InheritStyleFromParentLayer" value="False" />
                      </Property>
                      <Property name="Image" value="" />
                      <Property name="Children" />
                      <Property name="DataFilename" value="UI/COMPONENTS/BASEPARTITEM.MBIN" />
                      <Property name="AltMode" value="None" />
                    </Property>
]]
end

CHANGE_LEOPARDON = {}

-- for i,j in pairs(SUBGROUP_MOVE_TABLE) do
	-- table.insert(CHANGE_LEOPARDON, GetBaseObjectMigrateAlt(j["SubGroup"], j["To"]))
	-- table.insert(CHANGE_LEOPARDON, GetSubGroupMigrate(j["SubGroup"], j["Name"], j["From"], j["To"]))
-- end

for i=#SUBGROUP_MOVE_TABLE,1,-1 do
-- INSERTING DATA FROM BOTTOM-UP SO THAT SUBGROUP_MOVE_TABLE IS TREATED AS A STACK
	table.insert(CHANGE_LEOPARDON, GetBaseObjectMigrateAlt(SUBGROUP_MOVE_TABLE[i]["SubGroup"], SUBGROUP_MOVE_TABLE[i]["To"]))
	table.insert(CHANGE_LEOPARDON, GetSubGroupMigrate(SUBGROUP_MOVE_TABLE[i]["SubGroup"], SUBGROUP_MOVE_TABLE[i]["Name"], SUBGROUP_MOVE_TABLE[i]["To"]))
end

-- UI EXPANSION
PARTS_UI_ADD_TABLE = {}
table.insert(PARTS_UI_ADD_TABLE, [[<!--BuildFrame-->]])
-- MINUS 1 SINCE VANILLA ID STARTS WITH 0
for i = VANILLA_PARTS_COUNT, PARTS_SLOTS_LIMIT - 1 do
	-- ADD DIVIDER EVERY "UI_SINGLE_LINE"TH UI ENTRY
	if (i) % DIVIDER_SLOT <= 0 then
		table.insert(PARTS_UI_ADD_TABLE, GetPartsMenuDivider(i//DIVIDER_SLOT))
	end
	-- VANILLA ID STARTS WITH 0
	table.insert(PARTS_UI_ADD_TABLE, GetPartsItemEntry(i))
end
table.insert(PARTS_UI_ADD_TABLE, [[<!--BuildFrame End-->]])
if DEBUG_TEXT then
	print(table.concat(PARTS_UI_ADD_TABLE))
end


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "~~~RecTUM.pak",
["MOD_BATCHNAME"]			= "~~~~BuildFrame_Comp.pak",
["MOD_AUTHOR"]				= "WinderTP, Babscoole",
["MOD_DESCRIPTION"]			= "Recategorisation Trimming Utility for Build Menu",
["NMS_VERSION"]				= "",
["AMUMSS_SUPPRESS_MSG"] 	= "SUPPRESS_FLOOR_DIV",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= CHANGE_LEOPARDON
				}, 
				{
					["MBIN_FILE_SOURCE"] 	= "UI\BASEPARTSMENU.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							-- UI CANVAS FOR THE PARTS MENU
							["SPECIAL_KEY_WORDS"] = {"ID", "SCROLL", "Layout", "GcNGuiLayoutData.xml"},
							["REPLACE_TYPE"] = "",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = 
							{ 
								{"Height", PARTS_UI_MULTIPLIER},
							},
						},
						{
							-- ["PRECEDING_KEY_WORDS"] = {"GcNGuiLayerData.xml"},
							-- ["PRECEDING_FIRST"] = "TRUE",
							["SPECIAL_KEY_WORDS"] = {"ID", "ITEM" .. VANILLA_PARTS_COUNT - 1 }, -- MINUS 1 SINCE VANILLA ID STARTS WITH 0
							["SECTION_UP_SPECIAL"] = 1,
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = table.concat(PARTS_UI_ADD_TABLE)
						},
					}
				},
			}
		}, 
	}	
}