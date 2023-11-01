----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ColourfulStaves"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "445"
METADATA_MOD_DESC       = "This mod adds option to apply a substance to generate a new seed and colour combination for a staff Multi-Tool."



----------------------------------------------------------------------------------------------------
-- substances for seeds
----------------------------------------------------------------------------------------------------

LIST_SUBSTANCES = 
{
  "FUEL1",
  "FUEL2",
  "OXYGEN",
  "LAUNCHSUB",
  "LAUNCHSUB2",
  "ROCKETSUB",
  "LAND1",
  "LAND2",
  "LAND3",
  "SAND1",
  "CATALYST1",
  "CATALYST2",
  "CAVE1",
  "CAVE2",
  "WATER1",
  "WATER2",
  "WATERPLANT",
  "YELLOW2",
  "RED2",
  "GREEN2",
  "BLUE2",
  "STELLAR2",
  "LUSH1",
  "DUSTY1",
  "TOXIC1",
  "RADIO1",
  "COLD1",
  "HOT1",
  "LAVA1",
  "CREATURE1",
  "ROBOT1",
  "ROBOT2",
  "ASTEROID1",
  "ASTEROID2",
  "ASTEROID3",
  "GAS1",
  "GAS2",
  "GAS3",
  "EX_YELLOW",
  "EX_RED",
  "EX_GREEN",
  "EX_BLUE",
  "AF_METAL",
  "BUI_SCRAP",
  "SPECIAL_POOP",
  "SUNGOLD",
  "SOULFRAG",
  "WORMDUST",
  "TIMEDUST",
  "TIMEMILK",  
}

function BuildItemDataProperty (item) return
[[
<Property value="GcModularCustomisationSlotItemData.xml">
    <Property name="ItemID" value="]]..item..[[" />
    <Property name="ActivatedDescriptorGroupIDs">
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="" />
        </Property>
    </Property>
</Property>  
]]
end

function BuildItemList (list)
    local result = ""
    for i=1,#list do
        result = result .. BuildItemDataProperty(list[i])
    end
    return result
end

PROPERTY_SLOT_SUBSTANCE =
[[
<Property value="GcModularCustomisationSlotConfig.xml">
    <Property name="SlotID" value="STAFF_COLOR" />
    <Property name="LabelLocID" value="UI_BUILD_MENU_RECOLOUR_NAME" />
    <Property name="IncludeInSeed" value="True" />
    <Property name="SlotEmptyCustomisation" value="GcModularCustomisationSlotItemData.xml">
        <Property name="ItemID" value="" />
        <Property name="ActivatedDescriptorGroupIDs">
            <Property value="NMSString0x10.xml">
                <Property name="Value" value="" />
            </Property>
        </Property>
    </Property>
    <Property name="SlottableItems">
    ]] .. BuildItemList(LIST_SUBSTANCES) .. [[
    </Property>
</Property>
]]



----------------------------------------------------------------------------------------------------
-- staff builder UI
----------------------------------------------------------------------------------------------------

PROPERTY_UI_COLOR =
[[
<Property value="GcNGuiLayerData.xml">
    <Property name="ElementData" value="GcNGuiElementData.xml">
      <Property name="ID" value="SLOT04GRP" />
      <Property name="PresetID" value="" />
      <Property name="IsHidden" value="False" />
      <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
        <Property name="NGuiForcedStyle" value="None" />
      </Property>
      <Property name="Layout" value="GcNGuiLayoutData.xml">
        <Property name="VROverrides" />
        <Property name="AccessibleOverrides" />
        <Property name="PositionX" value="49.60241" />
        <Property name="PositionY" value="-14" />
        <Property name="Width" value="1920" />
        <Property name="Height" value="1080" />
        <Property name="ConstrainAspect" value="1" />
        <Property name="MaxWidth" value="0" />
        <Property name="Align" value="TkNGuiAlignment.xml">
          <Property name="Vertical" value="Top" />
          <Property name="Horizontal" value="Left" />
        </Property>
        <Property name="WidthPercentage" value="False" />
        <Property name="HeightPercentage" value="False" />
        <Property name="ConstrainProportions" value="False" />
        <Property name="ForceAspect" value="False" />
        <Property name="Anchor" value="True" />
        <Property name="AnchorPercent" value="True" />
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
    <Property name="Children">
      <Property value="GcNGuiLayerData.xml">
        <Property name="ElementData" value="GcNGuiElementData.xml">
          <Property name="ID" value="SLOT" />
          <Property name="PresetID" value="" />
          <Property name="IsHidden" value="False" />
          <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
            <Property name="NGuiForcedStyle" value="None" />
          </Property>
          <Property name="Layout" value="GcNGuiLayoutData.xml">
            <Property name="VROverrides" />
            <Property name="AccessibleOverrides" />
            <Property name="PositionX" value="279" />
            <Property name="PositionY" value="459.2" />
            <Property name="Width" value="114" />
            <Property name="Height" value="133" />
            <Property name="ConstrainAspect" value="0.854962" />
            <Property name="MaxWidth" value="0" />
            <Property name="Align" value="TkNGuiAlignment.xml">
              <Property name="Vertical" value="Top" />
              <Property name="Horizontal" value="Left" />
            </Property>
            <Property name="WidthPercentage" value="False" />
            <Property name="HeightPercentage" value="False" />
            <Property name="ConstrainProportions" value="False" />
            <Property name="ForceAspect" value="False" />
            <Property name="Anchor" value="True" />
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
              <Property name="A" value="1" />
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
            <Property name="MarginX" value="3" />
            <Property name="MarginY" value="3" />
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
              <Property name="A" value="1" />
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
            <Property name="MarginX" value="3" />
            <Property name="MarginY" value="3" />
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
              <Property name="A" value="1" />
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
            <Property name="MarginX" value="3" />
            <Property name="MarginY" value="3" />
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
          <Property name="Animate" value="None" />
          <Property name="InheritStyleFromParentLayer" value="False" />
        </Property>
        <Property name="Image" value="" />
        <Property name="Children">
          <Property value="GcNGuiLayerData.xml">
            <Property name="ElementData" value="GcNGuiElementData.xml">
              <Property name="ID" value="" />
              <Property name="PresetID" value="" />
              <Property name="IsHidden" value="False" />
              <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
                <Property name="NGuiForcedStyle" value="None" />
              </Property>
              <Property name="Layout" value="GcNGuiLayoutData.xml">
                <Property name="VROverrides" />
                <Property name="AccessibleOverrides" />
                <Property name="PositionX" value="50" />
                <Property name="PositionY" value="50" />
                <Property name="Width" value="100" />
                <Property name="Height" value="100" />
                <Property name="ConstrainAspect" value="1" />
                <Property name="MaxWidth" value="0" />
                <Property name="Align" value="TkNGuiAlignment.xml">
                  <Property name="Vertical" value="Middle" />
                  <Property name="Horizontal" value="Center" />
                </Property>
                <Property name="WidthPercentage" value="True" />
                <Property name="HeightPercentage" value="True" />
                <Property name="ConstrainProportions" value="False" />
                <Property name="ForceAspect" value="False" />
                <Property name="Anchor" value="True" />
                <Property name="AnchorPercent" value="True" />
                <Property name="SameLine" value="False" />
                <Property name="SlowCursorOnHover" value="False" />
              </Property>
            </Property>
            <Property name="Style" value="TkNGuiGraphicStyle.xml">
              <Property name="Default" value="TkNGuiGraphicStyleData.xml">
                <Property name="Colour" value="Colour.xml">
                  <Property name="R" value="1" />
                  <Property name="G" value="1" />
                  <Property name="B" value="1" />
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
                  <Property name="R" value="1" />
                  <Property name="G" value="1" />
                  <Property name="B" value="1" />
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
                  <Property name="R" value="1" />
                  <Property name="G" value="1" />
                  <Property name="B" value="1" />
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
            <Property name="DataFilename" value="UI/SLOT.MBIN" />
            <Property name="AltMode" value="None" />
          </Property>
        </Property>
        <Property name="DataFilename" value="" />
        <Property name="AltMode" value="None" />
      </Property>
      <Property value="GcNGuiTextData.xml">
        <Property name="ElementData" value="GcNGuiElementData.xml">
          <Property name="ID" value="LABEL" />
          <Property name="PresetID" value="DEFAULT" />
          <Property name="IsHidden" value="False" />
          <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
            <Property name="NGuiForcedStyle" value="None" />
          </Property>
          <Property name="Layout" value="GcNGuiLayoutData.xml">
            <Property name="VROverrides" />
            <Property name="AccessibleOverrides" />
            <Property name="PositionX" value="337.2" />
            <Property name="PositionY" value="437.6" />
            <Property name="Width" value="0" />
            <Property name="Height" value="0" />
            <Property name="ConstrainAspect" value="1" />
            <Property name="MaxWidth" value="0" />
            <Property name="Align" value="TkNGuiAlignment.xml">
              <Property name="Vertical" value="Top" />
              <Property name="Horizontal" value="Center" />
            </Property>
            <Property name="WidthPercentage" value="False" />
            <Property name="HeightPercentage" value="False" />
            <Property name="ConstrainProportions" value="False" />
            <Property name="ForceAspect" value="False" />
            <Property name="Anchor" value="True" />
            <Property name="AnchorPercent" value="False" />
            <Property name="SameLine" value="False" />
            <Property name="SlowCursorOnHover" value="False" />
          </Property>
        </Property>
        <Property name="Style" value="TkNGuiTextStyle.xml">
          <Property name="Default" value="TkNGuiTextStyleData.xml">
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="ShadowColour" value="Colour.xml">
              <Property name="R" value="0" />
              <Property name="G" value="0" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
            <Property name="OutlineColour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="FontHeight" value="22" />
            <Property name="FontSpacing" value="0" />
            <Property name="DropShadowAngle" value="0" />
            <Property name="DropShadowOffset" value="1" />
            <Property name="OutlineSize" value="1" />
            <Property name="FontIndex" value="0" />
            <Property name="Align" value="TkNGuiAlignment.xml">
              <Property name="Vertical" value="Top" />
              <Property name="Horizontal" value="Center" />
            </Property>
            <Property name="IsIndented" value="False" />
            <Property name="HasDropShadow" value="False" />
            <Property name="HasOutline" value="False" />
            <Property name="IsParagraph" value="False" />
            <Property name="AllowScroll" value="False" />
            <Property name="ForceUpperCase" value="False" />
            <Property name="AutoAdjustHeight" value="False" />
            <Property name="AutoAdjustFontHeight" value="True" />
            <Property name="BlockAudio" value="False" />
          </Property>
          <Property name="Highlight" value="TkNGuiTextStyleData.xml">
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="ShadowColour" value="Colour.xml">
              <Property name="R" value="0" />
              <Property name="G" value="0" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
            <Property name="OutlineColour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="FontHeight" value="22" />
            <Property name="FontSpacing" value="0" />
            <Property name="DropShadowAngle" value="0" />
            <Property name="DropShadowOffset" value="1" />
            <Property name="OutlineSize" value="1" />
            <Property name="FontIndex" value="0" />
            <Property name="Align" value="TkNGuiAlignment.xml">
              <Property name="Vertical" value="Top" />
              <Property name="Horizontal" value="Center" />
            </Property>
            <Property name="IsIndented" value="False" />
            <Property name="HasDropShadow" value="False" />
            <Property name="HasOutline" value="False" />
            <Property name="IsParagraph" value="False" />
            <Property name="AllowScroll" value="False" />
            <Property name="ForceUpperCase" value="False" />
            <Property name="AutoAdjustHeight" value="False" />
            <Property name="AutoAdjustFontHeight" value="True" />
            <Property name="BlockAudio" value="False" />
          </Property>
          <Property name="Active" value="TkNGuiTextStyleData.xml">
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="ShadowColour" value="Colour.xml">
              <Property name="R" value="0" />
              <Property name="G" value="0" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
            <Property name="OutlineColour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
            <Property name="FontHeight" value="22" />
            <Property name="FontSpacing" value="0" />
            <Property name="DropShadowAngle" value="0" />
            <Property name="DropShadowOffset" value="1" />
            <Property name="OutlineSize" value="1" />
            <Property name="FontIndex" value="0" />
            <Property name="Align" value="TkNGuiAlignment.xml">
              <Property name="Vertical" value="Top" />
              <Property name="Horizontal" value="Center" />
            </Property>
            <Property name="IsIndented" value="False" />
            <Property name="HasDropShadow" value="False" />
            <Property name="HasOutline" value="False" />
            <Property name="IsParagraph" value="False" />
            <Property name="AllowScroll" value="False" />
            <Property name="ForceUpperCase" value="False" />
            <Property name="AutoAdjustHeight" value="False" />
            <Property name="AutoAdjustFontHeight" value="True" />
            <Property name="BlockAudio" value="False" />
          </Property>
        </Property>
        <Property name="GraphicStyle" value="TkNGuiGraphicStyle.xml">
          <Property name="Default" value="TkNGuiGraphicStyleData.xml">
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0" />
              <Property name="G" value="0" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
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
              <Property name="A" value="1" />
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
              <Property name="A" value="1" />
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
          <Property name="Animate" value="None" />
          <Property name="InheritStyleFromParentLayer" value="False" />
        </Property>
        <Property name="Text" value="" />
        <Property name="Image" value="" />
        <Property name="ForcedOffset" value="0" />
        <Property name="VROverrides" />
        <Property name="AccessibleOverrides" />
        <Property name="Special" value="False" />
        <Property name="ForcedAllowScroll" value="False" />
      </Property>
      <Property value="GcNGuiGraphicData.xml">
        <Property name="ElementData" value="GcNGuiElementData.xml">
          <Property name="ID" value="LINE4" />
          <Property name="PresetID" value="" />
          <Property name="IsHidden" value="False" />
          <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
            <Property name="NGuiForcedStyle" value="None" />
          </Property>
          <Property name="Layout" value="GcNGuiLayoutData.xml">
            <Property name="VROverrides" />
            <Property name="AccessibleOverrides" />
            <Property name="PositionX" value="339.1983" />
            <Property name="PositionY" value="592.08386" />
            <Property name="Width" value="2" />
            <Property name="Height" value="164" />
            <Property name="ConstrainAspect" value="1" />
            <Property name="MaxWidth" value="0" />
            <Property name="Align" value="TkNGuiAlignment.xml">
              <Property name="Vertical" value="Top" />
              <Property name="Horizontal" value="Left" />
            </Property>
            <Property name="WidthPercentage" value="False" />
            <Property name="HeightPercentage" value="False" />
            <Property name="ConstrainProportions" value="False" />
            <Property name="ForceAspect" value="False" />
            <Property name="Anchor" value="True" />
            <Property name="AnchorPercent" value="False" />
            <Property name="SameLine" value="False" />
            <Property name="SlowCursorOnHover" value="False" />
          </Property>
        </Property>
        <Property name="Style" value="TkNGuiGraphicStyle.xml">
          <Property name="Default" value="TkNGuiGraphicStyleData.xml">
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.957" />
              <Property name="G" value="0.729" />
              <Property name="B" value="0.094" />
              <Property name="A" value="1" />
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
              <Property name="R" value="0.957" />
              <Property name="G" value="0.729" />
              <Property name="B" value="0.094" />
              <Property name="A" value="1" />
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
              <Property name="R" value="0.957" />
              <Property name="G" value="0.729" />
              <Property name="B" value="0.094" />
              <Property name="A" value="1" />
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
      </Property>
      <Property value="GcNGuiGraphicData.xml">
        <Property name="ElementData" value="GcNGuiElementData.xml">
          <Property name="ID" value="CORNER" />
          <Property name="PresetID" value="" />
          <Property name="IsHidden" value="False" />
          <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
            <Property name="NGuiForcedStyle" value="None" />
          </Property>
          <Property name="Layout" value="GcNGuiLayoutData.xml">
            <Property name="VROverrides" />
            <Property name="AccessibleOverrides" />
            <Property name="PositionX" value="335.68463" />
            <Property name="PositionY" value="752.2633" />
            <Property name="Width" value="8" />
            <Property name="Height" value="8" />
            <Property name="ConstrainAspect" value="1" />
            <Property name="MaxWidth" value="0" />
            <Property name="Align" value="TkNGuiAlignment.xml">
              <Property name="Vertical" value="Top" />
              <Property name="Horizontal" value="Left" />
            </Property>
            <Property name="WidthPercentage" value="False" />
            <Property name="HeightPercentage" value="False" />
            <Property name="ConstrainProportions" value="True" />
            <Property name="ForceAspect" value="False" />
            <Property name="Anchor" value="True" />
            <Property name="AnchorPercent" value="False" />
            <Property name="SameLine" value="False" />
            <Property name="SlowCursorOnHover" value="False" />
          </Property>
        </Property>
        <Property name="Style" value="TkNGuiGraphicStyle.xml">
          <Property name="Default" value="TkNGuiGraphicStyleData.xml">
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.957" />
              <Property name="G" value="0.729" />
              <Property name="B" value="0.094" />
              <Property name="A" value="1" />
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
            <Property name="Shape" value="Ellipse" />
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
              <Property name="R" value="0.957" />
              <Property name="G" value="0.729" />
              <Property name="B" value="0.094" />
              <Property name="A" value="1" />
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
            <Property name="Shape" value="Ellipse" />
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
              <Property name="R" value="0.957" />
              <Property name="G" value="0.729" />
              <Property name="B" value="0.094" />
              <Property name="A" value="1" />
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
            <Property name="Shape" value="Ellipse" />
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
      </Property>
    </Property>
    <Property name="DataFilename" value="" />
    <Property name="AltMode" value="None" />
  </Property>
]]



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_GAMEPLAYGLOBAL = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"
FILE_UI_STAFFBUILDER = "UI\\MULTITOOL_BUILDER_PAGE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_GAMEPLAYGLOBAL,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"SlotID","STAFF_POLE",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = PROPERTY_SLOT_SUBSTANCE,
                        },
                    }
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_UI_STAFFBUILDER,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"ID","INPUTARROW",},
                            ["VCT"] = {{"PositionX",886},},
                        },

                        {
                            ["SKW"] = {"ID","STAFF_RENDER",},
                            ["VCT"] = 
                            {
                                {"PositionX",70},
                                {"PositionY",30},
                                {"Width",782},
                                {"Height",82},
                            },
                        },

                        {
                            ["SKW"] = {"ID","SLOT03GRP",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = PROPERTY_UI_COLOR,
                        },


                    }
                }
            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------