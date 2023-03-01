Author = "Gumsk"
ModName = "gPredators Frequency"
ModNameSub = "None"
BaseDescription = "More dense predators"
GameVersion = "411"
ModVersion = "a"

FileSource5 = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN"

DefaultTypeWeight = 0		--0
ButterflyTypeWeight = 1		--1
AlienTypeWeight = 1.5		--1.5
DangerousTypeWeight = 0		--1
HerdTypeWeight = 1			--1
HuntedHerdTypeWeight = 1	--1
ParadiseTypeWeight = 1.5	--1.5
EmptyTypeWeight = 1			--1
GiantTypeWeight = 1			--1
SparseTypeWeight = 1		--1
BusyTypeWeight = 1			--1

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource5,
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Generic","Ground"},
							["PRECEDING_FIRST"] = "True",
							["SPECIAL_KEY_WORDS"] = {"Archetype","DEFAULT"},
							["VALUE_CHANGE_TABLE"] = {
								{"Weight", DefaultTypeWeight},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Generic","Ground"},
							["PRECEDING_FIRST"] = "True",
							["SPECIAL_KEY_WORDS"] = {"Archetype","BUTTERFLY"},
							["VALUE_CHANGE_TABLE"] = {
								{"Weight", ButterflyTypeWeight},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Generic","Ground"},
							["PRECEDING_FIRST"] = "True",
							["SPECIAL_KEY_WORDS"] = {"Archetype","ALIEN"},
							["VALUE_CHANGE_TABLE"] = {
								{"Weight", AlienTypeWeight},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Generic","Ground"},
							["PRECEDING_FIRST"] = "True",
							["SPECIAL_KEY_WORDS"] = {"Archetype","DANGEROUS"},
							["VALUE_CHANGE_TABLE"] = {
								{"Weight", DangerousTypeWeight},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Generic","Ground"},
							["PRECEDING_FIRST"] = "True",
							["SPECIAL_KEY_WORDS"] = {"Archetype","HERD"},
							["VALUE_CHANGE_TABLE"] = {
								{"Weight", HerdTypeWeight},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Generic","Ground"},
							["PRECEDING_FIRST"] = "True",
							["SPECIAL_KEY_WORDS"] = {"Archetype","HUNTEDHERD"},
							["VALUE_CHANGE_TABLE"] = {
								{"Weight", HuntedHerdTypeWeight},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Generic","Ground"},
							["PRECEDING_FIRST"] = "True",
							["SPECIAL_KEY_WORDS"] = {"Archetype","PARADISE"},
							["VALUE_CHANGE_TABLE"] = {
								{"Weight", ParadiseTypeWeight},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Generic","Ground"},
							["PRECEDING_FIRST"] = "True",
							["SPECIAL_KEY_WORDS"] = {"Archetype","EMPTY"},
							["VALUE_CHANGE_TABLE"] = {
								{"Weight", EmptyTypeWeight},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Generic","Ground"},
							["PRECEDING_FIRST"] = "True",
							["SPECIAL_KEY_WORDS"] = {"Archetype","GIANT"},
							["VALUE_CHANGE_TABLE"] = {
								{"Weight", GiantTypeWeight},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Generic","Ground"},
							["PRECEDING_FIRST"] = "True",
							["SPECIAL_KEY_WORDS"] = {"Archetype","SPARSE"},
							["VALUE_CHANGE_TABLE"] = {
								{"Weight", SparseTypeWeight},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Generic","Ground"},
							["PRECEDING_FIRST"] = "True",
							["SPECIAL_KEY_WORDS"] = {"Archetype","BUSY"},
							["VALUE_CHANGE_TABLE"] = {
								{"Weight", BusyTypeWeight},
							},
						},	
					},
				},
			}
		}
	}
}