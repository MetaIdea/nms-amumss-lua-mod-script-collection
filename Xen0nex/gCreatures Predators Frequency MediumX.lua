Author = "Gumsk"				--Edited by Xen0nex
ModName = "gCreatures Predators"
ModNameSub = "Frequency MediumX"
BaseDescription = "More dense predators; edited to tone down the effect to keep species sync with vanilla players"
GameVersion = "441"
ModVersion = "a"

FileSource1 = "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORMED.MBIN"
FileSource2 = "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORLARGE.MBIN"
--FileSource3 = "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLECOMMON.MBIN"
FileSource4 = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONARCHETYPES.MBIN"
--FileSource5 = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN"				--Removed the section of the mod that references this file, in order to maintain sync between which species I see on a planet and what all vanilla players also see


AddPredatorText = [[        <Property value="GcCreatureGenerationDomainEntry.xml">
          <Property name="DensityModifier" value="GcCreatureGenerationDensity.xml">
            <Property name="Density" value="Normal" />
          </Property>
          <Property name="File" value="METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEPLAYERPREDATORMED.MBIN" />
        </Property>
		<Property value="GcCreatureGenerationDomainEntry.xml">
          <Property name="DensityModifier" value="GcCreatureGenerationDensity.xml">
            <Property name="Density" value="Normal" />
          </Property>
          <Property name="File" value="METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEPLAYERPREDATORLARGE.MBIN" />
        </Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

{
["MBIN_FILE_SOURCE"] = FileSource1,
["EXML_CHANGE_TABLE"] = {
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
["EXML_CHANGE_TABLE"] = {
	{
		["PRECEDING_KEY_WORDS"] = {"Density"},
		["LINE_OFFSET"] = 1,
		["VALUE_CHANGE_TABLE"] = {
			{"Density", "Normal"},
	}},
	{
		["VALUE_CHANGE_TABLE"] = {
			{"LifeSetting", "Full"},
	}},
}},

-- {
-- ["MBIN_FILE_SOURCE"] = FileSource3,
-- ["EXML_CHANGE_TABLE"] = {
	-- {
		-- ["PRECEDING_KEY_WORDS"] = {"Density"},
		-- ["LINE_OFFSET"] = 1,
		-- ["VALUE_CHANGE_TABLE"] = {
			-- {"Density", "Sparse"},
	-- }},
-- }},


{
["MBIN_FILE_SOURCE"] = FileSource4,
["EXML_CHANGE_TABLE"] = {

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