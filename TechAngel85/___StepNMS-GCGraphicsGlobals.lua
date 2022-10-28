Author = "Step Modifications"
ModName = "___StepNoMansSky"
ModDescription = "These changes alter various graphical settings."
FileSource01 = "GCGRAPHICSGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
--## Step ##
ShadowLengthStation = 2000		-- How far away shadows are drawn | 1300 | 274
MaxParticleRenderRange = 150	-- Max distance particles will render | 75 | 493
TerrainAnisoLow = 16				-- Default Anisotropic  Filtering for Low Preset | 2 | 591
TerrainAnisoMed = 16			-- Default Anisotropic  Filtering for Medium Preset | 2 | 592
TerrainAnisoHi = 16				-- Default Anisotropic  Filtering for High Preset | 4 | 593
TerrainAnisoUlt = 16			-- Default Anisotropic  Filtering for Ultra Preset | 8 | 594
TerrainDroppedMipsMed = 0		--  | 1 | 596
TerrainMipBiasLow = 0.25		--  | 0.5 | 597
TerrainBlocksPerFrameLow = 24	--  | 16 | 599
TerrainBlocksPerFrameMed = 48	--  | 24 | 600
TerrainBlocksPerFrameHi = 64	--  | 48 | 601
TerrainBlocksPerFrameUlt = 128	--  | 64 | 602
ForceCachedTerrain = "False"	-- Forces the use of cached terrain, rather loading it fresh | False | 612
ForceUncachedTerrain = "True"	-- Forces the terrain to reload every time, rather than restoring it from cached files | False | 613
EnableVariableUpdate = "False"	-- Forwarded from Rotating Atmosphere | True | 1088


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= ModName..".pak",
["MOD_AUTHOR"]			= Author,
["MOD_DESCRIPTION"]		= ModDescription,
["MODIFICATIONS"] 		= 
	{{ ["MBIN_CHANGE_TABLE"] = 
		{{ ["MBIN_FILE_SOURCE"] = FileSource01,
			["EXML_CHANGE_TABLE"] = {
				{ 	["PRECEDING_KEY_WORDS"] = "",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ShadowLengthStation", ShadowLengthStation}, 
						{"MaxParticleRenderRange", MaxParticleRenderRange}, 
						{"TerrainAnisoLow", TerrainAnisoLow}, 
						{"TerrainAnisoMed", TerrainAnisoMed}, 
						{"TerrainAnisoHi", TerrainAnisoHi}, 
						{"TerrainAnisoUlt", TerrainAnisoUlt}, 
						{"TerrainDroppedMipsMed", TerrainDroppedMipsMed}, 
						{"TerrainMipBiasLow", TerrainMipBiasLow}, 
						{"TerrainBlocksPerFrameLow", TerrainBlocksPerFrameLow}, 
						{"TerrainBlocksPerFrameMed", TerrainBlocksPerFrameMed}, 
						{"TerrainBlocksPerFrameHi", TerrainBlocksPerFrameHi}, 
						{"TerrainBlocksPerFrameUlt", TerrainBlocksPerFrameUlt}, 
						{"ForceCachedTerrain", ForceCachedTerrain}, 
						{"ForceUncachedTerrain", ForceUncachedTerrain}, 
						{"EnableVariableUpdate", EnableVariableUpdate}, 
					}
				},
				{ 	["PRECEDING_KEY_WORDS"] = "TerrainMipDistanceMed",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"y", "16"}, 
						{"z", "32"}, 
						{"t", "64"}, 
					}
				},
			}
		}}
	}}
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE