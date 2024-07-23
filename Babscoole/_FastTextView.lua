Version = "5.01"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_FastTextView"..Version..".pak",
["MOD_AUTHOR"]              = "UserPro66",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = Version,
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\SPECIALTEXTPUNCTUATIONDELAYDATA.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Delay",        "0.003"},
                                {"DefaultDelay", "0.003"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Default",    "GcPunctuationDelayData.xml"},
                                {"Gek",        "GcPunctuationDelayData.xml"},
                                {"Korvax",     "GcPunctuationDelayData.xml"},
                                {"Vykeen",     "GcPunctuationDelayData.xml"},
                                {"FourthRace", "GcPunctuationDelayData.xml"},
                                {"Builders",   "GcPunctuationDelayData.xml"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"PunctuationList"},
                            ["ADD"] =
[[
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value=" " />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="1" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="2" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="3" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="4" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="5" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="6" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="7" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="8" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="9" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="0" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="A" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="B" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="C" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="D" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="E" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="F" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="G" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="H" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="I" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="J" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="K" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="L" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="M" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="N" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="O" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="P" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="Q" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="R" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="S" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="T" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="U" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="V" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="W" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="X" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="Y" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="Z" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="a" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="b" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="c" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="d" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="e" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="f" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="g" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="h" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="i" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="j" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="k" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="l" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="m" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="n" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="o" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="p" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="q" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="r" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="s" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="t" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="u" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="v" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="w" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="x" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="y" />
          <Property name="Delay" value="0.003" />
        </Property>
        <Property value="GcPunctuationDelay.xml">
          <Property name="Punctuation" value="z" />
          <Property name="Delay" value="0.003" />
        </Property>
]]
                        },
                    }
                },
            }
        },
    }
}