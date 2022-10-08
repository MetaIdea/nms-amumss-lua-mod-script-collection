-- Pulse Jump 1 -- (Holding Shift and Space)
PJ1_Particles = "600" -- 2000
PJ1_Radius    = "1100" -- 14500
PJ1_Length    = "1700" -- 13000
PJ1_Width     = "10" -- 750
PJ1_Alpha     = "0.5" -- 0.5
PJ1_RemoveCylinderRadius = "200" -- 5000

-- Pulse Jump 2 --
PJ2_Particles = "800" -- 4000
PJ2_Radius    = "2000" -- 15000
PJ2_Length    = "1300" -- 10000
PJ2_Width     = "25" -- 750
PJ2_Alpha     = "0.4" -- 0.5
PJ2_RemoveCylinderRadius = "250" -- 2000

-- Cruise 1 -- (Holding Shift)
C1_Particles = "1000" -- 5000
C1_Radius    = "400" -- 400
C1_Length    = "6" -- 6
C1_Width     = "1" -- 1
C1_Alpha     = "0.4" -- 0.4
C1_RemoveCylinderRadius = "5" -- 0

-- Cruise 2 --
C2_Particles = "800" -- 4000
C2_Radius    = "220" -- 220
C2_Length    = "3.5" -- 3.5
C2_Width     = "0.4" -- 0.4
C2_Alpha     = "0.5" -- 0.5
C2_RemoveCylinderRadius = "10" -- 5

-- Cruise Big --
CB_Particles = "500" -- 2500
CB_Radius    = "300" -- 300
CB_Length    = "4" -- 4
CB_Width     = "4" -- 4
CB_Alpha     = "0.5" -- 0.5
CB_RemoveCylinderRadius = "15" -- 10

-- File Settings --
FileName    = "Reduce Pulse Speed Lines.pak"
ModAuthor   = "JustRuthless"
LuaAuthor   = "JustRuthless"
ModMaintenance = "Babscoole"
NMS_Version = "4.00"

-- File Sources --
FileSource1 = "MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES.SPEEDLINE.MBIN"
FileSource2 = "MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN"
FileSource3 = "MODELS/EFFECTS/SPEEDLINES/SPACE.SPEEDLINE.MBIN"
FileSource4 = "MODELS/EFFECTS/SPEEDLINES/SPACE2.SPEEDLINE.MBIN"
FileSource5 = "MODELS/EFFECTS/SPEEDLINES/SPACEBIG.SPEEDLINE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]  = FileName,
	["MOD_AUTHOR"]    = ModAuthor,
	["LUA_AUTHOR"]    = LuaAuthor,
	["MOD_MAINTENANCE"] = ModMaintenance,
	["MOD_DESCRIPTION"] = "",
	["NMS_VERSION"]   = NMS_Version,
	["MODIFICATIONS"] =
		{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = FileSource1,
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] =
							{
								{"NumberOfParticles", PJ1_Particles},
								{"Radius", PJ1_Radius},
								{"Length", PJ1_Length},
								{"Width", PJ1_Width},
								{"Alpha", PJ1_Alpha},
								{"RemoveCylinderRadius", PJ1_RemoveCylinderRadius},
							},
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = FileSource2,
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] =
							{
								{"NumberOfParticles", PJ2_Particles},
								{"Radius", PJ2_Radius},
								{"Length", PJ2_Length},
								{"Width", PJ2_Width},
								{"Alpha", PJ2_Alpha},
								{"RemoveCylinderRadius", PJ2_RemoveCylinderRadius},
							},
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = FileSource3,
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] =
							{
								{"NumberOfParticles", C1_Particles},
								{"Radius", C1_Radius},
								{"Length", C1_Length},
								{"Width", C1_Width},
								{"Alpha", C1_Alpha},
								{"RemoveCylinderRadius", C1_RemoveCylinderRadius},
							},
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = FileSource4,
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] =
							{
								{"NumberOfParticles", C2_Particles},
								{"Radius", C2_Radius},
								{"Length", C2_Length},
								{"Width", C2_Width},
								{"Alpha", C2_Alpha},
								{"RemoveCylinderRadius", C2_RemoveCylinderRadius},
							},
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = FileSource5,
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] =
							{
								{"NumberOfParticles", CB_Particles},
								{"Radius", CB_Radius},
								{"Length", CB_Length},
								{"Width", CB_Width},
								{"Alpha", CB_Alpha},
								{"RemoveCylinderRadius", CB_RemoveCylinderRadius},
							},
						},
					}
				},
			}
		},
	}
}