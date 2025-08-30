NMS_MOD_DEFINITION_CONTAINER = 
{
MOD_FILENAME 			= "Black Carbon 4.6.pak", 
MOD_AUTHOR				= "Lo2k",
LUA_AUTHOR				= "Lowkie (+ Lo2k)",
NMS_VERSION				= "6.01",
MOD_DESCRIPTION			= "This mod makes carbon black",
MODIFICATIONS 			= 
	{
		{
			MBIN_CHANGE_TABLE 	= 
			{    		
                {
                    MBIN_FILE_SOURCE  = {"MODELS\EFFECTS\DEBRIS\RESOURCEDEBRIS.SCENE.MBIN"},
					MXML_CHANGE_TABLE = 
                    {
						{
							SPECIAL_KEY_WORDS   = {"Name", "INTENSITY"},
                            VALUE_CHANGE_TABLE 	= 
                            {
                                {"Value", "5000.0"},  --ORG "10000.000000"  
                            },
						},
						{
							SPECIAL_KEY_WORDS   = {"Name", "COL_R"},
                            VALUE_CHANGE_TABLE 	= 
                            {
                                {"Value", "0.8"},  --ORG "1.000000"  
                            },
						},
						{
							SPECIAL_KEY_WORDS   = {"Name", "COL_G"},
                            VALUE_CHANGE_TABLE 	= 
                            {
                                {"Value", "0.5"},  --ORG "0.000000"  
                            },
						},
						{
							SPECIAL_KEY_WORDS   = {"Name", "COL_B"},
                            VALUE_CHANGE_TABLE 	= 
                            {
                                {"Value", "0.0"},  --ORG "0.031298"  
                            },
						},
                    },
                },
                {
                    MBIN_FILE_SOURCE  = {"MODELS\EFFECTS\DEBRIS\RESOURCEDEBRIS\GEMTHINGS_MINERALMAT.MATERIAL.MBIN"},
					MXML_CHANGE_TABLE = 
					{
						{
							SPECIAL_KEY_WORDS = {"Name", "gDiffuseMap"},
                            VALUE_CHANGE_TABLE 	= 
                            {{"Map", "TEXTURES/PLANETS/BIOMES/CRYSTAL/LARGEPROP/MINERAL2.BASE.DDS"}}
                            --ORG MINERAL1.BASE.DDS                            
						},
                    },
                },
                {
                    MBIN_FILE_SOURCE  = {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE.SCENE.MBIN"},
					MXML_CHANGE_TABLE = 
					{
						{
							SPECIAL_KEY_WORDS   = {"Name", "COL_R"},
                            VALUE_CHANGE_TABLE 	= 
                            {
                                {"Value", "0.4"},  --ORG "1.000000"  
                            },
						},
						{
							SPECIAL_KEY_WORDS   = {"Name", "COL_G"},
                            VALUE_CHANGE_TABLE 	= 
                            {
                                {"Value", "0.15"},  --ORG "0.220675"  
                            },
						},
                    },
                },
                {
                    MBIN_FILE_SOURCE  = {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE\CRYSTAL_LARGE.MATERIAL.MBIN"},
					MXML_CHANGE_TABLE = 
					{
						{
							SPECIAL_KEY_WORDS = {"Name", "gDiffuseMap"},
                            VALUE_CHANGE_TABLE 	= 
                            {{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/CRYSTALS/LARGECRYSTAL2.RED.DDS"}}
                            --ORG LARGECRYSTAL.RED.DDS                          
						},
                    },
                },
                {
                    MBIN_FILE_SOURCE  = {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM.SCENE.MBIN"},
					MXML_CHANGE_TABLE = 
					{
						{
							SPECIAL_KEY_WORDS   = {"Name", "COL_R"},
                            VALUE_CHANGE_TABLE 	= 
                            {
                                {"Value", "0.8"},  --ORG "1.000000"  
                            },
						},
						{
							SPECIAL_KEY_WORDS   = {"Name", "COL_G"},
                            VALUE_CHANGE_TABLE 	= 
                            {
                                {"Value", "0.5"},  --ORG "0.220675"  
                            },
						},
                    },
                },
                {
                    MBIN_FILE_SOURCE  = {"MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\MEDIUM\CRYSTAL_MEDIUM\ICEFORMATION_MAT.MATERIAL.MBIN",
                                             "MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_FRAGMENT\ICEFORMATION_MAT.MATERIAL.MBIN",
                                             "MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_SMALL\ICEFORMATION_MAT.MATERIAL.MBIN"},
					MXML_CHANGE_TABLE = 
					{
						{
							SPECIAL_KEY_WORDS = {"Name", "gDiffuseMap"},
                            VALUE_CHANGE_TABLE 	= 
                            {{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUMCRYSTAL2.RED.DDS"}}
                            --ORG MEDIUMCRYSTAL.RED.DDS                          
						},
                    },
                },
			}
		}
	},
	["ADD_FILES"] 			= 
	{
		{			
            ["FILE_DESTINATION"] = [[METADATA\REALITY\DEFAULTREALITY.EXML]],
            ["FILE_CONTENT"]      = 	
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cGcRealityManagerData">
	<Property name="SubstanceCategoryColours">
		<Property name="Fuel">
			<Property name="R" value="0.140000" />
			<Property name="G" value="0.140000" />
			<Property name="B" value="0.140000" />
			<Property name="A" value="1.000000" />
		</Property>
	</Property>
</Data>
]],
		},	
	},	
}