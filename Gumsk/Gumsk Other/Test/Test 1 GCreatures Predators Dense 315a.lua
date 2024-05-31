Author = "Gumsk"
ModName = "GPredators"
ModNameSub = "Dense"
BaseDescription = "More dense predators"
GameVersion = "411"
ModVersion = "a"
FileSource1 = "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORMED.MBIN"
FileSource2 = "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORLARGE.MBIN"
FileSource3 = "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLECOMMON.MBIN"
FileSource4 = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONARCHETYPES.MBIN"

AddPredatorText = [[        <Property value="GcCreatureGenerationDomainEntry.xml">
          <Property name="DensityModifier" value="GcCreatureGenerationDensity.xml">
            <Property name="Density" value="VeryDense" />
          </Property>
          <Property name="File" value="METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEHPLAYERPREDATORMED.MBIN" />
        </Property>
		<Property value="GcCreatureGenerationDomainEntry.xml">
          <Property name="DensityModifier" value="GcCreatureGenerationDensity.xml">
            <Property name="Density" value="VeryDense" />
          </Property>
          <Property name="File" value="METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEHPLAYERPREDATORLARGE.MBIN" />
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
			{"Density", "VeryDense"},
	}},
	{
		["VALUE_CHANGE_TABLE"] = {
			{"LifeSetting", "Low"},
	}},
}},

{
["MBIN_FILE_SOURCE"] = FileSource2,
["EXML_CHANGE_TABLE"] = {
	{
		["PRECEDING_KEY_WORDS"] = {"Density"},
		["LINE_OFFSET"] = 1,
		["VALUE_CHANGE_TABLE"] = {
			{"Density", "VeryDense"},
	}},
	{
		["VALUE_CHANGE_TABLE"] = {
			{"LifeSetting", "Low"},
	}},
}},

{
["MBIN_FILE_SOURCE"] = FileSource3,
["EXML_CHANGE_TABLE"] = {
	{
		["PRECEDING_KEY_WORDS"] = {"Density"},
		["LINE_OFFSET"] = 1,
		["VALUE_CHANGE_TABLE"] = {
			{"Density", "VeryDense"},
	}},
}},

{
["MBIN_FILE_SOURCE"] = FileSource4,
["EXML_CHANGE_TABLE"] = {
	{
		["SPECIAL_KEY_WORDS"] = {"Id","DEFAULT","File","METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEHERBIVOREMED.MBIN"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddPredatorText
	},
	{
		["SPECIAL_KEY_WORDS"] = {"Id","HERD","File","METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEPREDATORLARGE.MBIN"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddPredatorText
	},
	{
		["SPECIAL_KEY_WORDS"] = {"Id","HUNTEDHERD","File","METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEPREDATORLARGE.MBIN"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddPredatorText
	},
	{
		["SPECIAL_KEY_WORDS"] = {"Id","GIANT","File","METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEHERBIVOREGIANT.MBIN"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddPredatorText
	},
	{
		["SPECIAL_KEY_WORDS"] = {"Id","SPARSE","File","METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEMAYBEBUTTERFLY.MBIN"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddPredatorText
	},
	{
		["SPECIAL_KEY_WORDS"] = {"Id","BUSY","File","METADATA/SIMULATION/ECOSYSTEM/GROUND/GROUNDTABLEHERBIVOREGIANT.MBIN"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddPredatorText
	},
}},

}}}}