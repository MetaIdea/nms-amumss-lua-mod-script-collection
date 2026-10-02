NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Unused Pulse Drive Warp Mechanic",
["MOD_AUTHOR"]      = "ThatBomberBoi",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.03",
["MOD_DESCRIPTION"] = "Enables the unused Neighbouring Star Pulse-Warp system",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"EnableNearbySolarSystemWarpMarkers", "true"},
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
      ["FILE_DESTINATION"] = "LocTable.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkLocalisationTable">
	<Property name="Table">
		<Property name="Table" value="TkLocalisationEntry" _id="UI_STAR_MARKER_NAME">
			<Property name="Id" value="UI_STAR_MARKER_NAME" />
			<Property name="English" value="%SYSTEM% System" />
			<Property name="French" value="%SYSTEM% System" />
			<Property name="Italian" value="%SYSTEM% System" />
			<Property name="German" value="%SYSTEM% System" />
			<Property name="Spanish" value="%SYSTEM% System" />
			<Property name="Russian" value="%SYSTEM% System" />
			<Property name="Polish" value="%SYSTEM% System" />
			<Property name="Dutch" value="%SYSTEM% System" />
			<Property name="Portuguese" value="%SYSTEM% System" />
			<Property name="LatinAmericanSpanish" value="%SYSTEM% System" />
			<Property name="BrazilianPortuguese" value="%SYSTEM% System" />
			<Property name="SimplifiedChinese" value="%SYSTEM% System" />
			<Property name="TraditionalChinese" value="%SYSTEM% System" />
			<Property name="TencentChinese" value="%SYSTEM% System" />
			<Property name="Korean" value="%SYSTEM% System" />
			<Property name="Japanese" value="%SYSTEM% System" />
			<Property name="USEnglish" value="%SYSTEM% System" />
		</Property>
		<Property name="Table" value="TkLocalisationEntry" _id="UI_STAR_MARKER_SUB">
			<Property name="Id" value="UI_STAR_MARKER_SUB" />
			<Property name="English" value="Neighbouring Star" />
			<Property name="French" value="Neighbouring Star" />
			<Property name="Italian" value="Neighbouring Star" />
			<Property name="German" value="Neighbouring Star" />
			<Property name="Spanish" value="Neighbouring Star" />
			<Property name="Russian" value="Neighbouring Star" />
			<Property name="Polish" value="Neighbouring Star" />
			<Property name="Dutch" value="Neighbouring Star" />
			<Property name="Portuguese" value="Neighbouring Star" />
			<Property name="LatinAmericanSpanish" value="Neighbouring Star" />
			<Property name="BrazilianPortuguese" value="Neighbouring Star" />
			<Property name="SimplifiedChinese" value="Neighbouring Star" />
			<Property name="TraditionalChinese" value="Neighbouring Star" />
			<Property name="TencentChinese" value="Neighbouring Star" />
			<Property name="Korean" value="Neighbouring Star" />
			<Property name="Japanese" value="Neighbouring Star" />
			<Property name="USEnglish" value="Neighbouring Star" />
		</Property>
		<Property name="Table" value="TkLocalisationEntry" _id="UI_STAR_MARKER_SUB_ERR">
			<Property name="Id" value="UI_STAR_MARKER_SUB_ERR" />
			<Property name="English" value="&lt;FUEL&gt;Unreachable&lt;&gt; Star" />
			<Property name="French" value="&lt;FUEL&gt;Unreachable&lt;&gt; Star" />
			<Property name="Italian" value="&lt;FUEL&gt;Unreachable&lt;&gt; Star" />
			<Property name="German" value="&lt;FUEL&gt;Unreachable&lt;&gt; Star" />
			<Property name="Spanish" value="&lt;FUEL&gt;Unreachable&lt;&gt; Star" />
			<Property name="Russian" value="&lt;FUEL&gt;Unreachable&lt;&gt; Star" />
			<Property name="Polish" value="&lt;FUEL&gt;Unreachable&lt;&gt; Star" />
			<Property name="Dutch" value="&lt;FUEL&gt;Unreachable&lt;&gt; Star" />
			<Property name="Portuguese" value="&lt;FUEL&gt;Unreachable&lt;&gt; Star" />
			<Property name="LatinAmericanSpanish" value="&lt;FUEL&gt;Unreachable&lt;&gt; Star" />
			<Property name="BrazilianPortuguese" value="&lt;FUEL&gt;Unreachable&lt;&gt; Star" />
			<Property name="SimplifiedChinese" value="&lt;FUEL&gt;Unreachable&lt;&gt; Star" />
			<Property name="TraditionalChinese" value="&lt;FUEL&gt;Unreachable&lt;&gt; Star" />
			<Property name="TencentChinese" value="&lt;FUEL&gt;Unreachable&lt;&gt; Star" />
			<Property name="Korean" value="&lt;FUEL&gt;Unreachable&lt;&gt; Star" />
			<Property name="Japanese" value="&lt;FUEL&gt;Unreachable&lt;&gt; Star" />
			<Property name="USEnglish" value="&lt;FUEL&gt;Unreachable&lt;&gt; Star" />
		</Property>
	</Property>
</Data>
]]
    },
  }
}