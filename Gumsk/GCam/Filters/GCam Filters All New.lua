Author = "Gumsk"
ModName = "gCam Filters"
ModNameSub = "All"
BaseDescription = "Removes the environmental filters"
GameVersion = "322"
ModVersion = "a"
FileSource1 = "METADATA\EFFECTS\SCREENFILTERS.MBIN"
FileSource2 = "LANGUAGE\NMS_LOC6_ENGLISH.MBIN"


WeatherArray =
{{"ID","English","French","Italian","German","Spanish","Russian","Polish","Dutch","Portuguese","LatinAmericanSpanish","BrazilianPortuguese","SimplifiedChinese","TraditionalChinese","TencentChinese","Korean","Japanese","USEnglish"},
{"STORM",			"Storm",				"","","","","","","","","","","","","","","",""},
{"FROZEN",			"Frozen",				"","","","","","","","","","","","","","","",""},
{"FROZENSTORM",		"Frozen Storm",			"","","","","","","","","","","","","","","",""},
{"TOXIC",			"Toxic",				"","","","","","","","","","","","","","","",""},
{"TOXICSTORM",		"Toxic Storm",			"","","","","","","","","","","","","","","",""},
{"RADIO",			"Radioactive",			"","","","","","","","","","","","","","","",""},
{"RADIOSTORM",		"Radioactive Storm",	"","","","","","","","","","","","","","","",""},
{"SCORCHED",		"Scorched",				"","","","","","","","","","","","","","","",""},
{"SCORCHEDSTORM",	"Scorched Storm",		"","","","","","","","","","","","","","","",""},
{"BARREN",			"Barren",				"","","","","","","","","","","","","","","",""},
{"BARRENSTORM",		"Barren Storm",			"","","","","","","","","","","","","","","",""},
{"WEIRD1",			"Weird 1",				"","","","","","","","","","","","","","","",""},
{"WEIRD2",			"Weird 2",				"","","","","","","","","","","","","","","",""},
{"WEIRD3",			"Weird 3",				"","","","","","","","","","","","","","","",""},
{"WEIRD4",			"Weird 4",				"","","","","","","","","","","","","","","",""},
{"WEIRD5",			"Weird 5",				"","","","","","","","","","","","","","","",""},
{"WEIRD6",			"Weird 6",				"","","","","","","","","","","","","","","",""},
{"WEIRD7",			"Weird 7",				"","","","","","","","","","","","","","","",""},
{"WEIRD8",			"Weird 8",				"","","","","","","","","","","","","","","",""},
{"BINOC",			"Binoculars",			"","","","","","","","","","","","","","","",""},
{"NEXUS",			"Nexus",				"","","","","","","","","","","","","","","",""},
{"FREIGHTABAND",	"Abandoned Freighter",	"","","","","","","","","","","","","","","",""},
{"SOLARISE",		"Solarise",				"","","","","","","","","","","","","","","",""},
{"TWOTONESTRONG",	"TwoTone Strong",		"","","","","","","","","","","","","","","",""},
{"TWOTONE",			"TwoTone",				"","","","","","","","","","","","","","","",""},
{"DRAMATIC",		"Dramatic",				"","","","","","","","","","","","","","","",""},
{"FUCHSIA",			"Fuchsia",				"","","","","","","","","","","","","","","",""},
{"VIOLET",			"Violet",				"","","","","","","","","","","","","","","",""},
{"CYAN",			"Cyan",					"","","","","","","","","","","","","","","",""},
{"GREENNEW",		"Green New",			"","","","","","","","","","","","","","","",""},
{"AMBERNEW",		"Amber New",			"","","","","","","","","","","","","","","",""},
{"RED",				"Red",					"","","","","","","","","","","","","","","",""},
{"HUESHIFTA",		"Hue Shift A",			"","","","","","","","","","","","","","","",""},
{"HUESHIFTB",		"Hue Shift B",			"","","","","","","","","","","","","","","",""},
{"HUESHIFTC",		"Hue Shift C",			"","","","","","","","","","","","","","","",""},
{"HUESHIFTD",		"Hue Shift D",			"","","","","","","","","","","","","","","",""},
{"RETROA",			"Retro A",				"","","","","","","","","","","","","","","",""},
{"RETROB",			"Retro B",				"","","","","","","","","","","","","","","",""},
{"RETROC",			"Retro C",				"","","","","","","","","","","","","","","",""},
{"RETROD",			"Retro D",				"","","","","","","","","","","","","","","",""},
{"RETROE",			"Retro E",				"","","","","","","","","","","","","","","",""},
{"RETROF",			"Retro F",				"","","","","","","","","","","","","","","",""},
{"RETROG",			"Retro G",				"","","","","","","","","","","","","","","",""}
}

AddText = ""

LocText1 = [[    <Property value="TkLocalisationEntry.xml">
        <Property name="Id" value="]]
LocText2 = [[" />
]]
LocText3 = [[        <Property name="]]
LocText4 =[[" value="VariableSizeString.xml">
          <Property name="Value" value="]]
LocText5 = [[" />
        </Property>
]]
LocText6 = [[      </Property>
]]
	  
--  for i = 1,#WeatherArray[1][1] do
	for i = 2,44 do
		AddText = AddText..LocText1..[[PHOTO_FILTER_]]..WeatherArray[i][1]..LocText2
		for k = 2,#WeatherArray[1] do
			AddText = AddText..LocText3..WeatherArray[1][k]..LocText4..WeatherArray[i][k]..LocText5
		end
		AddText = AddText..LocText6
  end

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
	["MBIN_CHANGE_TABLE"] = {
	{
		["MBIN_FILE_SOURCE"] = FileSource1,
		["EXML_CHANGE_TABLE"] = {
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","DefaultStorm"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."STORM"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Frozen"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."FROZEN"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","FrozenStorm"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."FROZENSTORM"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Toxic"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."TOXIC"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","ToxicStorm"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."TOXICSTORM"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Radioactive"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."RADIO"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","RadioactiveStorm"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."RADIOSTORM"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Scorched"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."SCORCHED"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","ScorchedStorm"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."SCORCHEDSTORM"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Barren"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."BARREN"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","BarrenStorm"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."BARRENSTORM"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Weird1"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."WEIRD1"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Weird2"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."WEIRD2"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Weird3"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."WEIRD3"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Weird4"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."WEIRD4"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Weird5"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."WEIRD5"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Weird6"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."WEIRD6"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Weird7"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."WEIRD7"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Weird8"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."WEIRD8"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","Vintage"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","HyperReal"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Desaturated"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","Amber"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","GBGreen"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Apocalypse"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Diffusion"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","Green"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Weird2"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","BlackAndWhite"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Isolation"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","Sepia"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Filmic"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","GBGrey"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Binoculars"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."BINOC"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Surveying"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Nexus"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."NEXUS"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","SpaceStation"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"LocText","PHOTO_FILTER_".."STATION"},
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","Freighter"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"LocText","PHOTO_FILTER_".."FREIGHT"},
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","FreighterAbandoned"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."FREIGHTABAND"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","Frigate"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"LocText","FRIGATE"},
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","MissionSurvey"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","NewVibrant"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","NewVibrantBright"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","NewVibrantWarm"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","NewVintageBright"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","NewVintageWash"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","Drama"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","MemoryBold"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","Memory"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","MemoryWash"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","Autumn"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","AutumnFade"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","ClassicBright"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","Classic"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","ClassicWash"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","BlackAndWhiteDream"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","ColourTouchB"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","ColourTouchC"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","NegativePrint"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","SepiaExtreme"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Solarise"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."SOLARISE"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","TwoToneStrong"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."TWOTONESTRONG"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","TwoTone"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."TWOTONE"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Dramatic"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."DRAMATIC"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Fuchsia"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."FUCHSIA"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Violet"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."VIOLET"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Cyan"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."CYAN"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","GreenNew"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."GREENNEW"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","AmberNew"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."AMBERNEW"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Red"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."RED"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","HueShiftA"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."HUESHIFTA"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","HueShiftB"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."HUESHIFTB"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","HueShiftC"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."HUESHIFTC"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","HueShiftD"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."HUESHIFTD"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","WarmStripe"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","NMSRetroA"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."RETROA"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","NMSRetroB"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."RETROB"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","NMSRetroC"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."RETROC"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","NMSRetroD"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."RETROD"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","NMSRetroE"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."RETROE"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","NMSRetroF"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."RETROF"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","NMSRetroG"},
				["VALUE_CHANGE_TABLE"] = {
					{"LocText","PHOTO_FILTER_".."RETROG"},
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
		},
	},

	{
	["MBIN_FILE_SOURCE"] = FileSource2,
	["EXML_CHANGE_TABLE"] = {
		{
			["SPECIAL_KEY_WORDS"] = {"Id","UI_PREV_SYSTEM_LABEL"},
			["LINE_OFFSET"] = -2,
			["ADD"] = AddText,
			["REMOVE_TYPE"] = "ADDAFTERSECTION",
		},

	}}
}}}}