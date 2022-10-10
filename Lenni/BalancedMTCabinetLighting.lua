LightIntensity		=	0.9
SSLightIntensity	=	0.8
OSSLightIntensity	=	1.03

Light2	=	8000
Light3	=	8000
Light5	=	10000

SSLight2	=	8000
SSLight3	=	7000
SSLight5	=	10000

Light2	=	LightIntensity * Light2
Light3	=	LightIntensity * Light3
Light5	=	LightIntensity * Light5

SSLight2	=	SSLightIntensity * SSLight2
SSLight3	=	SSLightIntensity * SSLight3
SSLight5	=	SSLightIntensity * SSLight5

OSSLight2	=	OSSLightIntensity * Light2
OSSLight3	=	OSSLightIntensity * Light3
OSSLight5	=	OSSLightIntensity * Light5


--Lights copied from pre-Sentinel cabinet
--[[
pointLight4 = [[
		<Property value="TkSceneNodeData.xml">
		  <Property name="Name" value="pointLight4" />
          <Property name="NameHash" value="3912134971" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0.895172" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="10000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.196078" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.788267" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
		</Property>
]]


pointLight2 = [[
		<Property value="TkSceneNodeData.xml">
          <Property name="Name" value="pointLight2" />
          <Property name="NameHash" value="230242896" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0.289144" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0.785311" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="8000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.745098" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.965460" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
		</Property>
]]

pointLight3 = [[
		<Property value="TkSceneNodeData.xml">
		  <Property name="Name" value="pointLight3" />
          <Property name="NameHash" value="3337432249" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.28914" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0.785311" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="8000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.745098" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.965460" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
		</Property>
]]

pointLight5 = [[
	<Property value="TkSceneNodeData.xml">
      <Property name="Name" value="pointLight5" />
      <Property name="NameHash" value="2789731183" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0.2" />
        <Property name="TransZ" value="1.2" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="360.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="quadratic" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="10000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COOKIE_IDX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VOLUMETRIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
	</Property>
]]



NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BalancedMTCabinetLighting.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "3.93",
["MOD_DESCRIPTION"]			= "Makes Multi-Tool cabinets glow more equally on all parts",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{				
				{
					["MBIN_FILE_SOURCE"]	=	"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\PIRATES\SHOPWEAPON.SCENE.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	=	{"Type", "LIGHT"},
							["REPLACE_TYPE"]		=	"ALL",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name", "WeaponsCrateREF", "Name", "SCENEGRAPH"},
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_WEAPONOSS.SCENE.MBIN"},
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]	=	"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\WEAPONSHOP.SCENE.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	=	{"Type", "LIGHT"},
							["REPLACE_TYPE"]		=	"ALL",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name", "WeaponsCrate_", "Name", "SCENEGRAPH"},
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_WEAPONSS.SCENE.MBIN"},
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]	=	{
													"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\WEAPONSHOP\LIGHTS1_MAT.MATERIAL.MBIN",
													"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\WEAPONSHOP\LIGHT2_MAT.MATERIAL.MBIN",
													"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\WEAPONSHOP\SMALLLIGHT_MAT1.MATERIAL.MBIN",
													"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\WEAPONSHOP\LIGHTS1_MAT8.MATERIAL.MBIN",
													"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\WEAPONSHOP\LIGHTS1_MAT9.MATERIAL.MBIN",
													"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\WEAPONSHOP\CORRIDORMODULE_STRAIGHT3_LIGHTS1_MAT.MATERIAL.MBIN",
													"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\WEAPONSHOP\LIGHTS1_MAT.MATERIAL.MBIN",
													"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\WEAPONSHOP\LIGHTFADE_MAT1.MATERIAL.MBIN",
													"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\WEAPONSHOP\LIGHTFADE_MAT.MATERIAL.MBIN",
													"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\WEAPONSHOP\WALLMODULE_TECHSHOP_LIGHTS1_MAT2.MATERIAL.MBIN",
													"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\PIRATES\SHOPWEAPON\INTERIORLIGHTS_MAT26.MATERIAL.MBIN",
													"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\PIRATES\SHOPWEAPON\LIGHTS1_MAT.MATERIAL.MBIN",
													"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\WEAPONSHOP\GLOW_MAT1.MATERIAL.MBIN",
													"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\PIRATES\SHOPWEAPON\GLOW_MAT.MATERIAL.MBIN",
													"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\PIRATES\SHOPWEAPON\GLOW_MAT1.MATERIAL.MBIN",
												},
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"Class",	""},
							},
						},
					},
				},
				
				{
					["MBIN_FILE_SOURCE"]    = {{[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPON.SCENE.MBIN]],[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPONSS.SCENE.MBIN]]}},
				},
				{
					["MBIN_FILE_SOURCE"]    = {{[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPON.SCENE.MBIN]],[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPONOSS.SCENE.MBIN]]}},
				},
				
				{
					["MBIN_FILE_SOURCE"]	= 	{
													"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPON.SCENE.MBIN",
													"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPONSS.SCENE.MBIN",					
													"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPONOSS.SCENE.MBIN",					
												},
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name", "pointLight5"},
							["REMOVE"] = "SECTION",
						},	
					
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name", "pPlane5"},
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = pointLight2..pointLight3..pointLight5,	--pointLight4..
						},
						
						{
							["SPECIAL_KEY_WORDS"]	=	{"Type","LIGHT", "Name","FALLOFF"},
							["REPLACE_TYPE"]		=	"ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"linear"},
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name", "pointLight2"},	--Right
							["INTEGER_TO_FLOAT"]	=	"FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"TransX",	"0.5"},		--original : 0.289144
								{"TransY",	"0.05"},		--original : 0
								-- {"TransZ",	"2"},		--original : 0.785311
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name", "pointLight5"},	--Center
							["INTEGER_TO_FLOAT"]	=	"FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"TransX",	"-0.1"},		--original : 0
								{"TransY",	"-0.2"},		--original : 0.2
								{"TransZ",	"3"},		--original : 1.2
							},
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name", "pointLight3"},	--left
							["INTEGER_TO_FLOAT"]	=	"FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"TransX",	"-0.9"},	--original : -0.28914
								{"TransY",	"0.2"},	--original : 0
								{"TransZ",	"1"},		--original : 0.785311
							},
						},
					},
				},
				
				-- Modify minor settlement MT cabinet
				{
					["MBIN_FILE_SOURCE"]	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPON.SCENE.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	=	{"Type","LIGHT", "Name","COL_R"},
							["REPLACE_TYPE"]		=	"ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.91"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"Type","LIGHT", "Name","COL_G"},
							["REPLACE_TYPE"]		=	"ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.93"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"Type","LIGHT", "Name","COL_B"},
							["REPLACE_TYPE"]		=	"ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.945"},
							},
						},

						{
							["SPECIAL_KEY_WORDS"]	=	{"Name", "pointLight2", "Name", "INTENSITY"},	--Right
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	Light2},		--original : 8000
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name", "pointLight5", "Name", "INTENSITY"},	--Center
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	Light5},		--original : 10000
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name", "pointLight3", "Name", "INTENSITY"},	--left
							["INTEGER_TO_FLOAT"]	=	"FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	Light3},	--original : 8000
							},
						},
					},
				},
				
				-- Modify Space Station MT cabinet
				{
					["MBIN_FILE_SOURCE"]	=	"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPONSS.SCENE.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	=	{"Type","LIGHT", "Name","COL_R"},
							["REPLACE_TYPE"]		=	"ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.97"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"Type","LIGHT", "Name","COL_G"},
							["REPLACE_TYPE"]		=	"ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.77"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"Type","LIGHT", "Name","COL_B"},
							["REPLACE_TYPE"]		=	"ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.71"},
							},
						},

						{
							["SPECIAL_KEY_WORDS"]	=	{"Name", "pointLight2", "Name", "INTENSITY"},	--Right
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	SSLight2},		--original : 8000
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name", "pointLight5", "Name", "INTENSITY"},	--Center
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	SSLight5},		--original : 10000
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name", "pointLight3", "Name", "INTENSITY"},	--left
							["INTEGER_TO_FLOAT"]	=	"FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	SSLight3},	--original : 8000
							},
						},
					},
				},
				
				-- Modify Outlaw Space Station MT cabinet
				{
					["MBIN_FILE_SOURCE"]	=	"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPONOSS.SCENE.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	=	{"Type","LIGHT", "Name","COL_R"},
							["REPLACE_TYPE"]		=	"ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.9"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"Type","LIGHT", "Name","COL_G"},
							["REPLACE_TYPE"]		=	"ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.9"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"Type","LIGHT", "Name","COL_B"},
							["REPLACE_TYPE"]		=	"ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	"0.92"},
							},
						},

						{
							["SPECIAL_KEY_WORDS"]	=	{"Name", "pointLight2", "Name", "INTENSITY"},	--Right
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	OSSLight2},		--original : 8000
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name", "pointLight5", "Name", "INTENSITY"},	--Center
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	OSSLight5},		--original : 10000
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name", "pointLight3", "Name", "INTENSITY"},	--left
							["INTEGER_TO_FLOAT"]	=	"FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Value",	OSSLight3},	--original : 8000
							},
						},
					},
				},
			}
		}
	}	
}