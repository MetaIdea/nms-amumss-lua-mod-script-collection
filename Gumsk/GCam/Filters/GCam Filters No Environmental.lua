Author = "Gumsk"
ModName = "GCam Filters"
ModNameSub = "No Environmental"
BaseDescription = "Removes the environmental filters"
GameVersion = "322"
ModVersion = "a"
FileSource1 = "METADATA\EFFECTS\SCREENFILTERS.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
	["MBIN_CHANGE_TABLE"] = {{
		["MBIN_FILE_SOURCE"] = FileSource1,
		["EXML_CHANGE_TABLE"] = {
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","DefaultStorm"},
				["VALUE_CHANGE_TABLE"] = {
					{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Frozen"},
				["VALUE_CHANGE_TABLE"] = {
					{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","FrozenStorm"},
				["VALUE_CHANGE_TABLE"] = {
					{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Toxic"},
				["VALUE_CHANGE_TABLE"] = {
					{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","ToxicStorm"},
				["VALUE_CHANGE_TABLE"] = {
					{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Radioactive"},
				["VALUE_CHANGE_TABLE"] = {
					{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","RadioactiveStorm"},
				["VALUE_CHANGE_TABLE"] = {
					{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Scorched"},
				["VALUE_CHANGE_TABLE"] = {
					{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","ScorchedStorm"},
				["VALUE_CHANGE_TABLE"] = {
					{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Barren"},
				["VALUE_CHANGE_TABLE"] = {
					{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","BarrenStorm"},
				["VALUE_CHANGE_TABLE"] = {
					{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Weird1"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Weird2"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Weird3"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Weird4"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Weird5"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Weird6"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Weird7"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Weird8"},
				["VALUE_CHANGE_TABLE"] = {
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
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","SpaceStation"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","Freighter"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Filename",""},
					-- {"SelectableInPhotoMode","True"},
				-- },
			-- },
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","FreighterAbandoned"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"Filters","Frigate"},
				-- ["VALUE_CHANGE_TABLE"] = {
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
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","TwoToneStrong"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","TwoTone"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Dramatic"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Fuchsia"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Violet"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Cyan"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","GreenNew"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","AmberNew"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","Red"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","HueShiftA"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","HueShiftB"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","HueShiftC"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","HueShiftD"},
				["VALUE_CHANGE_TABLE"] = {
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
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","NMSRetroB"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","NMSRetroC"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","NMSRetroD"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","NMSRetroE"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","NMSRetroF"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Filters","NMSRetroG"},
				["VALUE_CHANGE_TABLE"] = {
					--{"Filename",""},
					{"SelectableInPhotoMode","True"},
				},
			},
		}
}}}}}