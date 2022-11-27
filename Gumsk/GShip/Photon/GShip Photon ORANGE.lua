Color			= "ORANGE"
RedAmount		= 0.97647
GreenAmount		= 0.39607
BlueAmount		= 0.08235

Author			= "Gumsk"
ModName			= "gShip Photon"
ModNameSub		= Color
BaseDescription	= "Changes color of photon cannon to "..Color
GameVersion		= "407"
ModVersion		= "a"

--[[Files Modified
MODELS\EFFECTS\WEAPONS\SHIPS\SHIPBULLET_BLUE.MATERIAL.MBIN
MODELS\EFFECTS\PROJECTILES\SHIPGUN\SHIPGUN\EMITTERS\GLOW_EMITTER.PARTICLE.MBIN
MODELS\EFFECTS\PROJECTILES\SHIPGUN\SHIPGUN\EMITTERS\SMOKE_EMITTER.PARTICLE.MBIN
MODELS\EFFECTS\PROJECTILES\SHIPGUN\SHIPGUN\EMITTERS\SPARKS_EMITTER.PARTICLE.MBIN
--]]

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["GLOBAL_INTEGER_TO_FLOAT"]	= "FORCE",
	["ADD_FILES"] = {
		{
			["FILE_DESTINATION"] 		= "GUMSK/GUMSKPHOTON"..Color..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "GUMSKPHOTON"..Color..".DDS",
		},
	},
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\WEAPONS\SHIPS\SHIPBULLET_BLUE.MATERIAL.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "GUMSK/GUMSKPHOTON"..Color..".DDS"}
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\PROJECTILES\SHIPGUN\SHIPGUN\EMITTERS\GLOW_EMITTER.PARTICLE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"ColourStart","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--2.03
								{"G", GreenAmount},			--4.358
								{"B", BlueAmount},			--5
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourMiddle","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0
								{"G", GreenAmount},			--0.736
								{"B", BlueAmount},			--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourEnd","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0
								{"G", GreenAmount},			--0.547
								{"B", BlueAmount},			--1
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\PROJECTILES\SHIPGUN\SHIPGUN\EMITTERS\SMOKE_EMITTER.PARTICLE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"ColourStart","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--2.59
								{"G", GreenAmount},			--4.103
								{"B", BlueAmount},			--5
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourMiddle","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", 1},					--0.854
								{"G", 1},					--0.918
								{"B", 1},					--1
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\PROJECTILES\SHIPGUN\SHIPGUN\EMITTERS\SPARKS_EMITTER.PARTICLE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"ColourStart","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--3.938
								{"G", GreenAmount},			--4.731
								{"B", BlueAmount},			--5
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourMiddle","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--1.313
								{"G", GreenAmount},			--4.066
								{"B", BlueAmount},			--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ColourEnd","Colour.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"R", RedAmount},			--0
								{"G", GreenAmount},			--0.507
								{"B", BlueAmount},			--1
							},
						},
					},
				},
			}
		}
	}
}