NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_PU_IMMERSIVE_UI.pak",
["MOD_DESCRIPTION"]         = "",
["MOD_AUTHOR"]              = "trevix",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.38",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = 
                    {
                        "UI\HUD\HUDBARS.MBIN",
                        "UI\HUD\HUDBUILDNOTIFY.MBIN",
                        "UI\HUD\HUDFANCYNOTIFY.MBIN",
                        "UI\HUD\HUDHAZARD.MBIN",
                        "UI\HUD\HUDLINES.MBIN",
                        "UI\HUD\HUDMARKER.MBIN",
                        "UI\HUD\HUDNOTIFICATION.MBIN",
                        "UI\HUD\HUDNOTIFICATIONPANEL.MBIN",
                        "UI\HUD\HUDPLANETINFO.MBIN",
                        "UI\HUD\HUDVRWARNING.MBIN",
                        "UI\HUD\HUDWEAPONS.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width", "0"},

                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\HUDWEAPONS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Layout", "GcNGuiLayoutData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PositionX", "100"},

                            }
                        },
                    }
                },
            }
        }
    },
["ADD_FILES"] =
    {
        {
            ["FILE_DESTINATION"] = "UI\HUD\HUDINTERACTIONMARKER.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="GcNGuiLayerData">
  <Property name="ElementData" value="GcNGuiElementData.xml">
    <Property name="ID" value="" />
    <Property name="PresetID" value="" />
    <Property name="IsHidden" value="True" />
    <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
      <Property name="NGuiForcedStyle" value="None" />
    </Property>
    <Property name="Layout" value="GcNGuiLayoutData.xml">
      <Property name="VROverrides" />
      <Property name="AccessibleOverrides" />
      <Property name="PositionX" value="315" />
      <Property name="PositionY" value="141" />
      <Property name="Width" value="2000" />
      <Property name="Height" value="300" />
      <Property name="ConstrainAspect" value="1" />
      <Property name="MaxWidth" value="0" />
      <Property name="Align" value="TkNGuiAlignment.xml">
        <Property name="Vertical" value="Middle" />
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
  <Property name="Style" value="TkNGuiGraphicStyle.xml">
    <Property name="Default" value="TkNGuiGraphicStyleData.xml">
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0.196" />
        <Property name="G" value="0.137" />
        <Property name="B" value="0.137" />
        <Property name="A" value="0" />
      </Property>
      <Property name="IconColour" value="Colour.xml">
        <Property name="R" value="0" />
        <Property name="G" value="0" />
        <Property name="B" value="0" />
        <Property name="A" value="0" />
      </Property>
      <Property name="StrokeColour" value="Colour.xml">
        <Property name="R" value="0" />
        <Property name="G" value="0" />
        <Property name="B" value="0" />
        <Property name="A" value="0" />
      </Property>
      <Property name="GradientColour" value="Colour.xml">
        <Property name="R" value="0" />
        <Property name="G" value="0" />
        <Property name="B" value="0" />
        <Property name="A" value="0" />
      </Property>
      <Property name="StrokeGradientColour" value="Colour.xml">
        <Property name="R" value="0" />
        <Property name="G" value="0" />
        <Property name="B" value="0" />
        <Property name="A" value="0" />
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
        <Property name="R" value="0.196" />
        <Property name="G" value="0.137" />
        <Property name="B" value="0.137" />
        <Property name="A" value="0" />
      </Property>
      <Property name="IconColour" value="Colour.xml">
        <Property name="R" value="0" />
        <Property name="G" value="0" />
        <Property name="B" value="0" />
        <Property name="A" value="0" />
      </Property>
      <Property name="StrokeColour" value="Colour.xml">
        <Property name="R" value="0" />
        <Property name="G" value="0" />
        <Property name="B" value="0" />
        <Property name="A" value="0" />
      </Property>
      <Property name="GradientColour" value="Colour.xml">
        <Property name="R" value="0" />
        <Property name="G" value="0" />
        <Property name="B" value="0" />
        <Property name="A" value="0" />
      </Property>
      <Property name="StrokeGradientColour" value="Colour.xml">
        <Property name="R" value="0" />
        <Property name="G" value="0" />
        <Property name="B" value="0" />
        <Property name="A" value="0" />
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
        <Property name="R" value="0.196" />
        <Property name="G" value="0.137" />
        <Property name="B" value="0.137" />
        <Property name="A" value="0" />
      </Property>
      <Property name="IconColour" value="Colour.xml">
        <Property name="R" value="0" />
        <Property name="G" value="0" />
        <Property name="B" value="0" />
        <Property name="A" value="0" />
      </Property>
      <Property name="StrokeColour" value="Colour.xml">
        <Property name="R" value="0" />
        <Property name="G" value="0" />
        <Property name="B" value="0" />
        <Property name="A" value="0" />
      </Property>
      <Property name="GradientColour" value="Colour.xml">
        <Property name="R" value="0" />
        <Property name="G" value="0" />
        <Property name="B" value="0" />
        <Property name="A" value="0" />
      </Property>
      <Property name="StrokeGradientColour" value="Colour.xml">
        <Property name="R" value="0" />
        <Property name="G" value="0" />
        <Property name="B" value="0" />
        <Property name="A" value="0" />
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
      <Property name="x" value="0" />
      <Property name="y" value="0" />
    </Property>
    <Property name="CustomMaxStart" value="Vector2f.xml">
      <Property name="x" value="0" />
      <Property name="y" value="0" />
    </Property>
    <Property name="HighlightTime" value="0.1" />
    <Property name="HighlightScale" value="0" />
    <Property name="GlobalFade" value="1" />
    <Property name="AnimTime" value="0" />
    <Property name="AnimSplit" value="0" />
    <Property name="AnimCurve1" value="TkCurveType.xml">
      <Property name="Curve" value="SmoothInOut" />
    </Property>
    <Property name="AnimCurve2" value="TkCurveType.xml">
      <Property name="Curve" value="SmoothInOut" />
    </Property>
    <Property name="Animate" value="SimpleWipe" />
    <Property name="InheritStyleFromParentLayer" value="False" />
  </Property>
  <Property name="Image" value="" />
  <Property name="Children">
    <Property value="GcNGuiLayerData.xml">
      <Property name="ElementData" value="GcNGuiElementData.xml">
        <Property name="ID" value="MAINBARICON" />
        <Property name="PresetID" value="" />
        <Property name="IsHidden" value="True" />
        <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
          <Property name="NGuiForcedStyle" value="None" />
        </Property>
        <Property name="Layout" value="GcNGuiLayoutData.xml">
          <Property name="VROverrides" />
          <Property name="AccessibleOverrides" />
          <Property name="PositionX" value="900" />
          <Property name="PositionY" value="150" />
          <Property name="Width" value="128" />
          <Property name="Height" value="128" />
          <Property name="ConstrainAspect" value="1" />
          <Property name="MaxWidth" value="0" />
          <Property name="Align" value="TkNGuiAlignment.xml">
            <Property name="Vertical" value="Middle" />
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
      <Property name="Style" value="TkNGuiGraphicStyle.xml">
        <Property name="Default" value="TkNGuiGraphicStyleData.xml">
          <Property name="Colour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="IconColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="StrokeColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="GradientColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="StrokeGradientColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
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
            <Property name="A" value="0" />
          </Property>
          <Property name="IconColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="StrokeColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="GradientColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="StrokeGradientColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
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
            <Property name="A" value="0" />
          </Property>
          <Property name="IconColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="StrokeColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="GradientColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="StrokeGradientColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
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
          <Property name="x" value="0" />
          <Property name="y" value="0" />
        </Property>
        <Property name="CustomMaxStart" value="Vector2f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
        </Property>
        <Property name="HighlightTime" value="0" />
        <Property name="HighlightScale" value="0" />
        <Property name="GlobalFade" value="1" />
        <Property name="AnimTime" value="0" />
        <Property name="AnimSplit" value="0" />
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
            <Property name="ID" value="ICON" />
            <Property name="PresetID" value="" />
            <Property name="IsHidden" value="True" />
            <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
              <Property name="NGuiForcedStyle" value="None" />
            </Property>
            <Property name="Layout" value="GcNGuiLayoutData.xml">
              <Property name="VROverrides" />
              <Property name="AccessibleOverrides" />
              <Property name="PositionX" value="71" />
              <Property name="PositionY" value="50" />
              <Property name="Width" value="54" />
              <Property name="Height" value="54" />
              <Property name="ConstrainAspect" value="0.996667" />
              <Property name="MaxWidth" value="0" />
              <Property name="Align" value="TkNGuiAlignment.xml">
                <Property name="Vertical" value="Middle" />
                <Property name="Horizontal" value="Center" />
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
                <Property name="R" value="0" />
                <Property name="G" value="0" />
                <Property name="B" value="0" />
                <Property name="A" value="0" />
              </Property>
              <Property name="StrokeColour" value="Colour.xml">
                <Property name="R" value="0" />
                <Property name="G" value="0" />
                <Property name="B" value="0" />
                <Property name="A" value="0" />
              </Property>
              <Property name="GradientColour" value="Colour.xml">
                <Property name="R" value="0" />
                <Property name="G" value="0" />
                <Property name="B" value="0" />
                <Property name="A" value="0" />
              </Property>
              <Property name="StrokeGradientColour" value="Colour.xml">
                <Property name="R" value="0" />
                <Property name="G" value="0" />
                <Property name="B" value="0" />
                <Property name="A" value="0" />
              </Property>
              <Property name="PaddingX" value="0" />
              <Property name="PaddingY" value="0" />
              <Property name="MarginX" value="0" />
              <Property name="MarginY" value="0" />
              <Property name="GradientStartOffset" value="0" />
              <Property name="GradientEndOffset" value="0" />
              <Property name="CornerRadius" value="32" />
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
                <Property name="R" value="0" />
                <Property name="G" value="0" />
                <Property name="B" value="0" />
                <Property name="A" value="0" />
              </Property>
              <Property name="StrokeColour" value="Colour.xml">
                <Property name="R" value="0" />
                <Property name="G" value="0" />
                <Property name="B" value="0" />
                <Property name="A" value="0" />
              </Property>
              <Property name="GradientColour" value="Colour.xml">
                <Property name="R" value="0" />
                <Property name="G" value="0" />
                <Property name="B" value="0" />
                <Property name="A" value="0" />
              </Property>
              <Property name="StrokeGradientColour" value="Colour.xml">
                <Property name="R" value="0" />
                <Property name="G" value="0" />
                <Property name="B" value="0" />
                <Property name="A" value="0" />
              </Property>
              <Property name="PaddingX" value="0" />
              <Property name="PaddingY" value="0" />
              <Property name="MarginX" value="0" />
              <Property name="MarginY" value="0" />
              <Property name="GradientStartOffset" value="0" />
              <Property name="GradientEndOffset" value="0" />
              <Property name="CornerRadius" value="32" />
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
                <Property name="R" value="0" />
                <Property name="G" value="0" />
                <Property name="B" value="0" />
                <Property name="A" value="0" />
              </Property>
              <Property name="StrokeColour" value="Colour.xml">
                <Property name="R" value="0" />
                <Property name="G" value="0" />
                <Property name="B" value="0" />
                <Property name="A" value="0" />
              </Property>
              <Property name="GradientColour" value="Colour.xml">
                <Property name="R" value="0" />
                <Property name="G" value="0" />
                <Property name="B" value="0" />
                <Property name="A" value="0" />
              </Property>
              <Property name="StrokeGradientColour" value="Colour.xml">
                <Property name="R" value="0" />
                <Property name="G" value="0" />
                <Property name="B" value="0" />
                <Property name="A" value="0" />
              </Property>
              <Property name="PaddingX" value="0" />
              <Property name="PaddingY" value="0" />
              <Property name="MarginX" value="0" />
              <Property name="MarginY" value="0" />
              <Property name="GradientStartOffset" value="0" />
              <Property name="GradientEndOffset" value="0" />
              <Property name="CornerRadius" value="32" />
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
              <Property name="x" value="0" />
              <Property name="y" value="0" />
            </Property>
            <Property name="CustomMaxStart" value="Vector2f.xml">
              <Property name="x" value="0" />
              <Property name="y" value="0" />
            </Property>
            <Property name="HighlightTime" value="0.1" />
            <Property name="HighlightScale" value="0" />
            <Property name="GlobalFade" value="1" />
            <Property name="AnimTime" value="0" />
            <Property name="AnimSplit" value="0" />
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
            <Property value="GcNGuiGraphicData.xml">
              <Property name="ElementData" value="GcNGuiElementData.xml">
                <Property name="ID" value="INTERACT" />
                <Property name="PresetID" value="" />
                <Property name="IsHidden" value="True" />
                <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
                  <Property name="NGuiForcedStyle" value="None" />
                </Property>
                <Property name="Layout" value="GcNGuiLayoutData.xml">
                  <Property name="VROverrides" />
                  <Property name="AccessibleOverrides" />
                  <Property name="PositionX" value="50" />
                  <Property name="PositionY" value="50" />
                  <Property name="Width" value="32" />
                  <Property name="Height" value="32" />
                  <Property name="ConstrainAspect" value="1" />
                  <Property name="MaxWidth" value="0" />
                  <Property name="Align" value="TkNGuiAlignment.xml">
                    <Property name="Vertical" value="Middle" />
                    <Property name="Horizontal" value="Center" />
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
                    <Property name="R" value="1" />
                    <Property name="G" value="1" />
                    <Property name="B" value="1" />
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
                    <Property name="R" value="1" />
                    <Property name="G" value="1" />
                    <Property name="B" value="1" />
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
                    <Property name="R" value="1" />
                    <Property name="G" value="1" />
                    <Property name="B" value="1" />
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
              <Property name="Image" value="/TEXTURES/UI/FRONTEND/INPUTBUTTONS/PSBUTTON.SQUARE.DDS" />
            </Property>
            <Property value="GcNGuiGraphicData.xml">
              <Property name="ElementData" value="GcNGuiElementData.xml">
                <Property name="ID" value="SHOOT" />
                <Property name="PresetID" value="" />
                <Property name="IsHidden" value="True" />
                <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
                  <Property name="NGuiForcedStyle" value="None" />
                </Property>
                <Property name="Layout" value="GcNGuiLayoutData.xml">
                  <Property name="VROverrides" />
                  <Property name="AccessibleOverrides" />
                  <Property name="PositionX" value="50" />
                  <Property name="PositionY" value="50" />
                  <Property name="Width" value="70" />
                  <Property name="Height" value="70" />
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
                    <Property name="R" value="1" />
                    <Property name="G" value="1" />
                    <Property name="B" value="1" />
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
                    <Property name="R" value="1" />
                    <Property name="G" value="1" />
                    <Property name="B" value="1" />
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
              <Property name="Image" value="/TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/TECH.WEAPON.PROJECTILE.DDS" />
            </Property>
            <Property value="GcNGuiGraphicData.xml">
              <Property name="ElementData" value="GcNGuiElementData.xml">
                <Property name="ID" value="DECONSTRUCT" />
                <Property name="PresetID" value="" />
                <Property name="IsHidden" value="True" />
                <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
                  <Property name="NGuiForcedStyle" value="None" />
                </Property>
                <Property name="Layout" value="GcNGuiLayoutData.xml">
                  <Property name="VROverrides" />
                  <Property name="AccessibleOverrides" />
                  <Property name="PositionX" value="50" />
                  <Property name="PositionY" value="50" />
                  <Property name="Width" value="70" />
                  <Property name="Height" value="70" />
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
                    <Property name="R" value="1" />
                    <Property name="G" value="1" />
                    <Property name="B" value="1" />
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
                    <Property name="R" value="1" />
                    <Property name="G" value="1" />
                    <Property name="B" value="1" />
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
              <Property name="Image" value="TEXTURES/UI/FRONTEND/INTEXTBUTTONS/ACTIONS/ACTION.PICKUP.DDS" />
            </Property>
            <Property value="GcNGuiGraphicData.xml">
              <Property name="ElementData" value="GcNGuiElementData.xml">
                <Property name="ID" value="ARMOUR" />
                <Property name="PresetID" value="" />
                <Property name="IsHidden" value="True" />
                <Property name="ForcedStyle" value="TkNGuiForcedStyle.xml">
                  <Property name="NGuiForcedStyle" value="None" />
                </Property>
                <Property name="Layout" value="GcNGuiLayoutData.xml">
                  <Property name="VROverrides" />
                  <Property name="AccessibleOverrides" />
                  <Property name="PositionX" value="50" />
                  <Property name="PositionY" value="50" />
                  <Property name="Width" value="70" />
                  <Property name="Height" value="70" />
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
                    <Property name="R" value="1" />
                    <Property name="G" value="1" />
                    <Property name="B" value="1" />
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
                    <Property name="R" value="1" />
                    <Property name="G" value="1" />
                    <Property name="B" value="1" />
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
              <Property name="Image" value="TEXTURES/UI/FRONTEND/ICONS/STATS/STATS.SUIT.ARMOUR.DDS" />
            </Property>
          </Property>
          <Property name="DataFilename" value="" />
          <Property name="AltMode" value="None" />
        </Property>
      </Property>
      <Property name="DataFilename" value="" />
      <Property name="AltMode" value="None" />
    </Property>
  </Property>
  <Property name="DataFilename" value="UI/HUD/HUDINTERACTIONMARKER.MBIN" />
  <Property name="AltMode" value="None" />
</Data>
]],
        },
    },
}