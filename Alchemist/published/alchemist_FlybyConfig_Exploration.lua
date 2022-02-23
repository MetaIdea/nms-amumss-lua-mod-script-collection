
Author = "alchemist"
ModName = "FlybyConfig_Exploration"
BaseDescription = "Survive."
GameVersion = "3-82"
ModVersion = "1"

-- This is all quick hack stuff.

-- {Type, Count}
-- can handle whatever, but if more than 2 increased likelyhood of some spawning
-- underground very frequently since we have no control over spawn altitude
-- options: Combat, Exploration, Mining, Diplomacy, Support, Normandy
local FLYBY_CONFIG = {
	{"Exploration", 1},
}

-- if multiple ships, how far apart are they
-- 200-400 is best, lower they might overlap, higher they will fly through ground consistently
local SHIP_SPREAD = 300

local function GcFrigateFlybyOption(ship, count)
	return [[
        <Property value="GcFrigateFlybyOption.xml">
          <Property name="FrigateClass" value="GcFrigateClass.xml">
            <Property name="FrigateClass" value="]]..ship..[[" />
          </Property>
          <Property name="MinCount" value="]]..count..[[" />
          <Property name="MaxCount" value="]]..count..[[" />
          <Property name="Weight" value="1" />
        </Property>
]]
end

local INJECT = ""

for i, v in ipairs(FLYBY_CONFIG) do
	INJECT = INJECT..GcFrigateFlybyOption(v[1], v[2])
end

NMS_MOD_DEFINITION_CONTAINER = {

["MOD_FILENAME"]				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"]			= BaseDescription,
["MOD_AUTHOR"]					= Author,
["NMS_VERSION"]					= GameVersion,

["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

	{["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/FRIGATEFLYBYTABLE.MBIN",
	["EXML_CHANGE_TABLE"] = {

		-- remove original config of SingleShip/Normandy
		-- no matter what is specified in the start flyby trigger, it will
		-- always trigger the first entry in this table
		{["SPECIAL_KEY_WORDS"] = {
			"FrigateClass", "Normandy"
		},
		["SECTION_UP"] = 1,
		["REMOVE"] = "SECTION"},

		-- even though it says "SingleShip", it will actually allow multiples no problem
		{["SPECIAL_KEY_WORDS"] = {
			"FrigateFlybyType", "SingleShip"
		},
		["LINE_OFFSET"] = 2,
		["ADD"] = INJECT},

	}},

}}}}

local Ref = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]

-- If we have more than one ship we have to adjust the spread for first
-- FrigateFlybySpawns entry or the ships will spawn overlapped.
-- As with entries in FRIGATEFLYBYTABLE, it seems that only the first one is used
if #FLYBY_CONFIG > 1 or FLYBY_CONFIG[1][2] > 1 then
	Ref[#Ref + 1] = {
		["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SCENE/EXPERIENCESPAWNTABLE.MBIN",
		["EXML_CHANGE_TABLE"] = {
			{
				["PRECEDING_KEY_WORDS"] = {"FrigateFlybySpawns", "Spread"},
				["VALUE_CHANGE_TABLE"] = {
					{"x", SHIP_SPREAD}, -- default: 0
					{"y", SHIP_SPREAD}, -- default: 0
				}
			}
		}
	}
end