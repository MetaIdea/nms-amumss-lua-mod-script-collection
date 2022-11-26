ColorName		= "CYAN"
RedAmount		= 0.0
GreenAmount		= 0.73725
BlueAmount		= 0.89019

Author			= "Gumsk"
ModName 		= "gMultitool Neutron Cannon"
ModNameSub		= ColorName
BaseDescription = "Changes the neutron cannon projectile and impact colors to "..ColorName
GameVersion 	= "407"
ModVersion		= "a"

FileSource1 	= "MODELS/COMMON/PROJECTILES/MULTITOOL_NEUTRON.SCENE.MBIN"
FileSource2 	= "MODELS/COMMON/PROJECTILES/MULTITOOL_NEUTRON/PROJECTILEMESHMAT.MATERIAL.MBIN"
FileSource3 	= "MODELS/COMMON/PROJECTILES/BLASTOVERLOADPROJECTILE/SPARKS.PARTICLE.MBIN"
FileSource4		= "MODELS/EFFECTS/MUZZLE/BLASTOVERLOADCHARGE/MUZZLEMAIN.PARTICLE.MBIN"
FileSource5		= "MODELS/EFFECTS/MUZZLE/BLASTOVERLOADCHARGE/GLOW.PARTICLE.MBIN"
FileSource6		= "MODELS/EFFECTS/MUZZLE/BLASTOVERLOADCHARGE/FLARE.PARTICLE.MBIN"
FileSource7		= "MODELS/EFFECTS/MUZZLE/BLASTOVERLOADFULLCHARGE/MUZZLEMAIN.PARTICLE.MBIN"
FileSource8		= "MODELS/EFFECTS/MUZZLE/BLASTOVERLOADFULLCHARGE/GLOW.PARTICLE.MBIN"
FileSource9		= "MODELS/EFFECTS/MUZZLE/BLASTOVERLOADFULLCHARGE/FLARE.PARTICLE.MBIN"
FileSource10	= "MODELS/EFFECTS/IMPACTS/BLASTOVERLOADIMPACT/ENERGYEXPLOSION.PARTICLE.MBIN"
FileSource11	= "MODELS/EFFECTS/IMPACTS/BLASTOVERLOADIMPACT/SPARKS.PARTICLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]			= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]			= BaseDescription,
	["MOD_AUTHOR"]				= Author,
	["NMS_VERSION"]				= GameVersion,
	["GLOBAL_INTEGER_TO_FLOAT"]	= "FORCE",
	["MODIFICATIONS"]			= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","COL_R"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value", RedAmount},		--0.833547
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","COL_G"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value", GreenAmount},		--0.484000
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","COL_B"},
							["VALUE_CHANGE_TABLE"] = {
								{"Value", BlueAmount},		--1.000000
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource2,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gMaterialColourVec4"},
							["VALUE_CHANGE_TABLE"] = {
								{"x", RedAmount},			--0.710101
								{"y", GreenAmount},			--0.183
								{"z", BlueAmount},			--1
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource3,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"ColourStart","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", 1},					--1.87
								{"G", 1},					--1.704
								{"B", 1},					--2
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourMiddle","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--1.397
								{"G", GreenAmount},		--1.178
								{"B", BlueAmount},		--2
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourEnd","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0.736
								{"G", GreenAmount},			--0.267
								{"B", BlueAmount},			--1
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource4,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"ColourStart","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--1.442
								{"G", GreenAmount},		--0.731
								{"B", BlueAmount},		--2
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourMiddle","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--1.282
								{"G", GreenAmount},		--0.804
								{"B", BlueAmount},		--2
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourEnd","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0.678
								{"G", GreenAmount},			--0.107
								{"B", BlueAmount},			--1
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource5,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"ColourStart","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0.698
								{"G", GreenAmount},			--0.589
								{"B", BlueAmount},			--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourMiddle","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0.698
								{"G", GreenAmount},			--0.589
								{"B", BlueAmount},			--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourEnd","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0.698
								{"G", GreenAmount},			--0.589
								{"B", BlueAmount},			--1
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource6,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"ColourStart","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0.736
								{"G", GreenAmount},			--0.267
								{"B", BlueAmount},			--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourMiddle","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0.736
								{"G", GreenAmount},			--0.267
								{"B", BlueAmount},			--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourEnd","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0.736
								{"G", GreenAmount},			--0.267
								{"B", BlueAmount},			--1
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource7,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"ColourStart","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--1.442
								{"G", GreenAmount},		--0.731
								{"B", BlueAmount},		--2
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourMiddle","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--1.282
								{"G", GreenAmount},		--0.804
								{"B", BlueAmount},		--2
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourEnd","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0.678
								{"G", GreenAmount},			--0.107
								{"B", BlueAmount},			--1
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource8,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"ColourStart","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0.698
								{"G", GreenAmount},			--0.589
								{"B", BlueAmount},			--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourMiddle","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0.698
								{"G", GreenAmount},			--0.589
								{"B", BlueAmount},			--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourEnd","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0.698
								{"G", GreenAmount},			--0.589
								{"B", BlueAmount},			--1
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource9,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"ColourStart","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0.736
								{"G", GreenAmount},			--0.267
								{"B", BlueAmount},			--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourMiddle","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0.736
								{"G", GreenAmount},			--0.267
								{"B", BlueAmount},			--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourEnd","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0.736
								{"G", GreenAmount},			--0.267
								{"B", BlueAmount},			--1
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource10,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"ColourStart","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--2.758
								{"G", GreenAmount},			--2.13
								{"B", BlueAmount},			--3
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourMiddle","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0.02
								{"G", GreenAmount},			--0.017
								{"B", BlueAmount},			--0.029
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourEnd","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0.033
								{"G", GreenAmount},			--0.013
								{"B", BlueAmount},			--0.044
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource11,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"ColourStart","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--4.177
								{"G", GreenAmount},			--3.13
								{"B", BlueAmount},			--5
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourMiddle","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--2.021
								{"G", GreenAmount},			--1.323
								{"B", BlueAmount},			--3
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourEnd","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0.736
								{"G", GreenAmount},			--0.267
								{"B", BlueAmount},			--1
							},
						},
					},
				},
			}
		}
	}
}