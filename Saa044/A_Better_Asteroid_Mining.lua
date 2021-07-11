
--[[ Summery Description:
Increases asteroid mining by a factor of 10. No longer will you have to GRIND asteroids for a bit of fuel or the like,
Now you can sit back and enjoy the life of being utterly rich in mere minutes.
]]--

Author = "Gumsk"
ModName = "Test CopperBoltwire Asteroid"
ModNameSub = ""
BaseDescription = "Test"
GameVersion = "322"
ModVersion = "a"
FileSource1 = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN"

Muultiplier = 10

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
			["MATH_OPERATION"] 		= "*",
			["REPLACE_TYPE"] 		= "ALL",
			["VALUE_CHANGE_TABLE"] = {
				{"CommonAsteroidMinResources", Muultiplier},
				{"CommonAsteroidMaxResources", Muultiplier},
				{"RareAsteroidMinResources", Muultiplier},
				{"RareAsteroidMaxResources", Muultiplier},
			},
			},
		}
}}}}}