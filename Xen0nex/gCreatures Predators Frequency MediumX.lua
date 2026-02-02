Author = "Gumsk"				--Edited by Xen0nex
ModName = "gCreatures Predators"
ModNameSub = "Frequency MediumX"
BaseDescription = "More dense predators; edited to tone down the effect to keep species sync with vanilla players"
GameVersion = "6_18"
ModVersion = "a"

FileSource1 = "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORMED.MBIN"
FileSource2 = "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORLARGE.MBIN"
--FileSource3 = "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLECOMMON.MBIN"
FileSource4 = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONARCHETYPES.MBIN"
FileSource5 = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN"


MorePredatorSpecies =				false				--false					Set to true to make predator species more common/plentiful to appear in the species list for all planets
	--NOTE: Setting this to true and changing the weight for Predator species will make the the species list for all planets no longer be synced with vanilla players.
	--IE, Your creature discoveries & renamings will no longer all appear for vanilla players, and you will no longer see the all same creature species & renamings that vanilla players see
		--Alternatively, you can increase the "PercentagePlayerPredators" value in "gCreatures Predators Danger DangerousX.lua" to increase how many existing Predator species will also attack players instead of only attacking other creatures, which will not affect species/Discovery data "sync" with vanilla players

PredatorWeight =					3					--1						Only has an effect if MorePredatorSpecies is set to true above. Changes the frequency that Predator species appear in the species list for planets

AddPredatorText = [[        <Property name="Tables" value="GcCreatureGenerationDomainEntry">
          <Property name="DensityModifier" value="GcCreatureGenerationDensity">
            <Property name="Density" value="Normal" />
          </Property>
          <Property name="File" value="METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEPLAYERPREDATORMED.MBIN" />
        </Property>
		<Property name="Tables" value="GcCreatureGenerationDomainEntry">
          <Property name="DensityModifier" value="GcCreatureGenerationDensity">
            <Property name="Density" value="Normal" />
          </Property>
          <Property name="File" value="METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEPLAYERPREDATORLARGE.MBIN" />
        </Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["EXML_CREATE"] = "FALSE",
["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

{
["MBIN_FILE_SOURCE"] = FileSource1,
["MXML_CHANGE_TABLE"] = {
	{
		["PRECEDING_KEY_WORDS"] = {"Density"},
		["LINE_OFFSET"] = 1,
		["VALUE_CHANGE_TABLE"] = {
			{"Density", "Normal"},
	}},
	{
		["VALUE_CHANGE_TABLE"] = {
			{"LifeSetting", "Mid"},
	}},
}},

{
["MBIN_FILE_SOURCE"] = FileSource2,
["MXML_CHANGE_TABLE"] = {
	{
		["PRECEDING_KEY_WORDS"] = {"Density"},
		["LINE_OFFSET"] = 1,
		["VALUE_CHANGE_TABLE"] = {
			{"Density", "Sparse"},
	}},
	{
		["VALUE_CHANGE_TABLE"] = {
			{"LifeSetting", "Full"},
	}},
}},

-- {
-- ["MBIN_FILE_SOURCE"] = FileSource3,
-- ["MXML_CHANGE_TABLE"] = {
	-- {
		-- ["PRECEDING_KEY_WORDS"] = {"Density"},
		-- ["LINE_OFFSET"] = 1,
		-- ["VALUE_CHANGE_TABLE"] = {
			-- {"Density", "Sparse"},
	-- }},
-- }},


{
["MBIN_FILE_SOURCE"] = FileSource4,
["MXML_CHANGE_TABLE"] = {

	-- {
		-- ["SPECIAL_KEY_WORDS"] = {"Id","DEFAULT","File","METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEHERBIVOREMED.MBIN"},
		-- ["REPLACE_TYPE"] = "ADDAFTERSECTION",
		-- ["ADD"] = AddPredatorText,
	-- },

	{
		["SPECIAL_KEY_WORDS"] = {"Id","HERD","File","METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEPREDATORLARGE.MBIN"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddPredatorText,
	},
	
	{
		["SPECIAL_KEY_WORDS"] = {"Id","HUNTEDHERD","File","METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEPREDATORLARGE.MBIN"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddPredatorText,
	},
	
	-- {
		-- ["SPECIAL_KEY_WORDS"] = {"Id","GIANT","File","METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEHERBIVOREGIANT.MBIN"},
		-- ["REPLACE_TYPE"] = "ADDAFTERSECTION",
		-- ["ADD"] = AddPredatorText,
	-- },
	
	-- {
		-- ["SPECIAL_KEY_WORDS"] = {"Id","BUSY","File","METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEHERBIVOREGIANT.MBIN"},
		-- ["REPLACE_TYPE"] = "ADDAFTERSECTION",
		-- ["ADD"] = AddPredatorText,
	-- },
	
}},

}}}}

local ChangesToTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]

if MorePredatorSpecies then
	ChangesToTable[#ChangesToTable+1] =
		{
			["MBIN_FILE_SOURCE"] 	= FileSource5,
			["MXML_CHANGE_TABLE"] 	= 
			{
				{
					["SPECIAL_KEY_WORDS"] = {"Archetype","DANGEROUS"},
					--["SECTION_UP"] = 1,
					["VALUE_CHANGE_TABLE"] = {
						{"Weight ", PredatorWeight},
					},
				},
			}
		}
end