local modfilename = "NoSpeedLines4Streamers"
local lua_author  = "Silent"
local lua_version = "v1.0"
local mod_author  = "Silent369"
local nms_version = "3.9x"
local description = "No speed lines. No ship halo effect at cruise/boost/pulse speeds in space. No Space Dust / Plasma."

--Modifies:
--MODELS\EFFECTS\ENGINES\SPEEDCOOL\TUNNELMAT.MATERIAL.MBIN
--MODELS\EFFECTS\HEAVYAIR\SPACE\SPACE2.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\SPACE\SPACEPLASMA.HEAVYAIR.MBIN
--MODELS\EFFECTS\LINES\SPEEDLINE2MATERIAL.MATERIAL.MBIN
--MODELS\EFFECTS\LINES\SPEEDLINE3MATERIAL.MATERIAL.MBIN
--MODELS\EFFECTS\LINES\SPEEDLINEMATERIAL.MATERIAL.MBIN
--MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES.SPEEDLINE.MBIN
--MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN
--MODELS\EFFECTS\SPEEDLINES\SPACE.SPEEDLINE.MBIN
--MODELS\EFFECTS\SPEEDLINES\SPACE2.SPEEDLINE.MBIN
--MODELS\EFFECTS\SPEEDLINES\SPACEBIG.SPEEDLINE.MBIN
--MODELS\EFFECTS\WARP\SPEEDTUNNEL\SPEEDTUNNELMAT.MATERIAL.MBIN

--Material Vec4
_tParamsVec4 			 = 0

--Dust Particles	(cannot be 0)
_dparticleNum 			 = 1		--Original "500"
_dpartLifeMin 			 = 0.1		--Original "1.5"
_dpartLifeMax 			 = 0.1		--Original "2.5"

--Plasma Particles	(cannot be 0)
_pparticleNum 			 = 1		--Original "100"
_ppartLifeMin 			 = 0.1		--Original "1"
_ppartLifeMax 			 = 0.1		--Original "1"

--Speed Particles 	(cannot be 0)
_NumParticles			 = 1		--Original ""
_AlphaTexture			 = 0		--Original ""

NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"]			= "_"..modfilename..lua_version..".pak",
	["LUA_AUTHOR"]				= lua_author,
	["MOD_AUTHOR"]				= mod_author,
	["NMS_VERSION"]				= nms_version,
	["MOD_DESCRIPTION"]			= description,
	["MODIFICATIONS"]			=
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{

					--|----------------------------------------------------------------------------------------
					--| Ship Boost Effect
					--|----------------------------------------------------------------------------------------

				{
					["MBIN_FILE_SOURCE"]	=
					{
						"MODELS/EFFECTS/ENGINES/SPEEDCOOL/TUNNELMAT.MATERIAL.MBIN",
						"MODELS/EFFECTS/WARP/SPEEDTUNNEL/SPEEDTUNNELMAT.MATERIAL.MBIN"
					},
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "gMaterialColourVec4"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"t",					_tParamsVec4}
							},
						},
					}
				},

					--|----------------------------------------------------------------------------------------
					--| Speed Lines Materials
					--|----------------------------------------------------------------------------------------

				{
					["MBIN_FILE_SOURCE"] =
					{
						"MODELS/EFFECTS/LINES/SPEEDLINEMATERIAL.MATERIAL.MBIN",
						"MODELS/EFFECTS/LINES/SPEEDLINE2MATERIAL.MATERIAL.MBIN",
						"MODELS/EFFECTS/LINES/SPEEDLINE3MATERIAL.MATERIAL.MBIN"
					},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "gScanParamsVec4"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"t",					_tParamsVec4}
							}
						},
					}
				},

					--|----------------------------------------------------------------------------------------
					--| Space Dust Particles
					--|----------------------------------------------------------------------------------------

				{
					["MBIN_FILE_SOURCE"] = {"MODELS/EFFECTS/HEAVYAIR/SPACE/SPACE2.HEAVYAIR.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"]	   = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"NumberOfParticles",	_dparticleNum},
								{"MinParticleLifetime",	_dpartLifeMin},
								{"MaxParticleLifetime",	_dpartLifeMax},
							}
						}
					}
				},

					--|----------------------------------------------------------------------------------------
					--| Space Plasma Particles
					--|----------------------------------------------------------------------------------------

				{
					["MBIN_FILE_SOURCE"] = {"MODELS/EFFECTS/HEAVYAIR/SPACE/SPACEPLASMA.HEAVYAIR.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"]	   = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"NumberOfParticles",	_pparticleNum},
								{"MinParticleLifetime",	_ppartLifeMin},
								{"MaxParticleLifetime",	_ppartLifeMax},
							}
						}
					}
				},

					--|----------------------------------------------------------------------------------------
					--| Speed Lines 1 (Cruise Holding Shift)
					--|----------------------------------------------------------------------------------------

				{
					["MBIN_FILE_SOURCE"]	 =
					{
						"MODELS/EFFECTS/SPEEDLINES/SPACE.SPEEDLINE.MBIN",
					},
					["EXML_CHANGE_TABLE"]	 =
					{
						{
							["PRECEDING_KEY_WORDS"]	= {""},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"NumberOfParticles",	 _NumParticles},	--Original "5000"
								{"Alpha",				 _AlphaTexture},	--Original "0.4"
							},
						},
					},
				},

					--|----------------------------------------------------------------------------------------
					--| Speed Lines 2 (Cruise)
					--|----------------------------------------------------------------------------------------

				{
					["MBIN_FILE_SOURCE"]	 =
					{
						"MODELS/EFFECTS/SPEEDLINES/SPACE2.SPEEDLINE.MBIN",
					},
					["EXML_CHANGE_TABLE"]	 =
					{
						{
							["PRECEDING_KEY_WORDS"]	= {""},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"NumberOfParticles",	 _NumParticles},	--Original "4000"
								{"Alpha",				 _AlphaTexture},	--Original "0.5"
							},
						},
					},
				},

					--|----------------------------------------------------------------------------------------
					--| Speed Lines 3 (Cruise Big)
					--|----------------------------------------------------------------------------------------

				{
					["MBIN_FILE_SOURCE"]	 =
					{
						"MODELS/EFFECTS/SPEEDLINES/SPACEBIG.SPEEDLINE.MBIN",
					},
					["EXML_CHANGE_TABLE"]	 =
					{
						{
							["PRECEDING_KEY_WORDS"]	= {""},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"NumberOfParticles",	 _NumParticles},	--Original "2500"
								{"Alpha",				 _AlphaTexture},	--Original "0.5"
							},
						},
					},
				},

					--|----------------------------------------------------------------------------------------
					--| Mini Warp Speed Lines 1 (Pulse Jump)
					--|----------------------------------------------------------------------------------------

				{
					["MBIN_FILE_SOURCE"]	 =
					{
						"MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES.SPEEDLINE.MBIN",
					},
					["EXML_CHANGE_TABLE"]	 =
					{
						{
							["PRECEDING_KEY_WORDS"]	= {""},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"NumberOfParticles",	 _NumParticles},	--Original "2000"
								{"Alpha",				 _AlphaTexture},	--Original "0.5"
							},
						},
					},
				},

					--|----------------------------------------------------------------------------------------
					--| Mini Warp Speed Lines 2 (Pulse Jump)
					--|----------------------------------------------------------------------------------------

				{
					["MBIN_FILE_SOURCE"]	 =
					{
						"MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN",
					},
					["EXML_CHANGE_TABLE"]	 =
					{
						{
							["PRECEDING_KEY_WORDS"]	= {""},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"NumberOfParticles",	 _NumParticles},	--Original "4000"
								{"Alpha",				 _AlphaTexture},	--Original "0.5"
							},
						},
					},
				},
			}
		},
	}
}