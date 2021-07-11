
--[[ Summery Description:
For the sake of "Semi-Creative Mode" mod, i have found a few recipes to be... a bit to "heavy" for lack of better words.
So this mod change the Ratios of certain recipes in the refineries to be a little more in the spirit of "Semi-Creative Mode".

Here i will list the "recipes" that got altered.

Runway Mould -> Clustered Nanites == 1:1 - Was 5:1
Copper -> Chromatic Metal == 1:1 - Was 2:1
Silicate Powder -> Glass == 1:1 - was 40:1

Sodium <-> Sodium Nitrate == 1:1 both ways now
Cobalt <-> Ionized Cobalt == 1:1 Both Ways
Pure Ferrite <-> Magnetized Ferrite == 1:1 Both ways


ACTIVATED CADMIUM, ACTIVATED COPPER, ACTIVATED EMERIL and ACTIVATED INDIUM
will be done at a later point. You see i'm playing through the game the long way around.
so i don't have access to all materials from the get go... Meaning you'll just have to have patience.
]]--

Author = "Gumsk"
ModName = "Test CopperBoltwire Recipe"
ModNameSub = ""
BaseDescription = "Test"
GameVersion = "322"
ModVersion = "a"
FileSource1 = "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN"

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
				["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_23","Id","CAVE1"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] = {
					{"Amount", 1},
				},
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_24","Id","CAVE1"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] = {
					{"Amount", 1},
				},
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_25","Id","FUEL1"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] = {
					{"Amount", 1},
				},
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_26","Id","FUEL1"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] = {
					{"Amount", 1},
				},
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_27","Id","CATALYST1"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] = {
					{"Amount", 1},
				},
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_28","Id","CATALYST1"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] = {
					{"Amount", 1},
				},
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_30","Id","LAND2"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] = {
					{"Amount", 1},
				},
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_31","Id","LAND2"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] = {
					{"Amount", 1},
				},
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_35","Id","YELLOW2"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] = {
					{"Amount", 1},
				},
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_52","Id","SPACEGUNK2"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] = {
					{"Amount", 1},
				},
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_323","Id","SAND1"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] = {
					{"Amount", 1},
				},
			},
		}
}}}}}