NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "TurretForShip.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.0+",
["DESCRIPTION"]				= "Light, invisibility and bombdrop control in cockpit",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.4C482859.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 		
				{
					["MBIN_FILE_SOURCE"] 	= 
						{
							"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_A\COCKPITA.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_B\COCKPITB.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_C\COCKPITC.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_D\COCKPITD.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_E\COCKPITE.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_F\COCKPITF.SCENE.MBIN",
							
							"MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB.SCENE.MBIN",
							
							"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITA\COCKPITA.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITB\COCKPITB.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITC\COCKPITC.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITD\COCKPITD.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\CANOPY\CANOPYA\CANOPYA.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\CANOPY\CANOPYB\CANOPYB.SCENE.MBIN",
							
							"MODELS\COMMON\SPACECRAFT\SHUTTLE\COCKPIT\COCKPITASINGLE.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\SHUTTLE\COCKPIT\COCKPITADOUBLE.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\SHUTTLE\COCKPIT\COCKPITBDOUBLEBOX.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\SHUTTLE\COCKPIT\COCKPITBSINGLE.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\SHUTTLE\COCKPIT\COCKPITBSINGLEBOX.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\SHUTTLE\COCKPIT\COCKPITBSINGLECYLINDER.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\SHUTTLE\CANOPY\CANOPYA.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\SHUTTLE\CANOPY\CANOPYB.SCENE.MBIN",
							
							"MODELS\COMMON\SPACECRAFT\S-CLASS\SQUIDPARTS\COCKPIT\COCKPIT_A.SCENE.MBIN",
							"MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\COCKPIT\COCKPIT_A.SCENE.MBIN",
							
						}
					["EXML_CHANGE_TABLE"] 	= 
					{
							--["SPECIAL_KEY_WORDS"]	= {"Children"},
							["PRECEDING_KEY_WORDS"] = { "Children" },
							--["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Turret" />
      <Property name="NameHash" value="200504717" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\INDUSTRIAL\TURRET\TURRETA\ENTITIES\TURRET.ENTITY.MBIN" />
        </Property>
      </Property>
	  <Property name="Children" />
    </Property>
]]					
					}
				}		
			}
		}
	}	
}

-- "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\TURRET\TURRETA\ENTITIES\TURRET.ENTITY.MBIN",
-- "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\TURRET\TURRETB\ENTITIES\TURRET.ENTITY.MBIN",
-- "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\SCENES\MAINBATTERY\ENTITIES\TURRET.ENTITY.MBIN",
-- "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_TURRET\ENTITIES\TURRET.ENTITY.MBIN",
-- "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_TURRET_L\ENTITIES\TURRET_L.ENTITY.MBIN",
-- "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_TURRET_R\ENTITIES\TURRET_L.ENTITY.MBIN",

-- "MODELS/COMMON/SPACECRAFT/FRIGATES/COMMONPARTS/SCENES/MAINBATTERY.SCENE.MBIN",
-- "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UTILITYPARTS/MODULE_TURRET.SCENE.MBIN",
-- "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UTILITYPARTS/MODULE_TURRET_R.SCENE.MBIN",
-- "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UTILITYPARTS/MODULE_TURRET_L.SCENE.MBIN",
-- "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/TURRET/MISSILE_TURRET.SCENE.MBIN",
-- "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/TURRET/TURRETA.SCENE.MBIN",
-- "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/TURRET/TURRETB.SCENE.MBIN",

TURRET =
[[
    <Property value="GcTurretComponentData.xml">
      <Property name="GunType" value="Laser" />
      <Property name="LaserEffectId" value="AI_FREIGHTER" />
      <Property name="LaserMuzzleFlashId" value="TURRETLASER" />
      <Property name="ProjectileId" value="BASE_TURRET_M" />
      <Property name="ProjectileMuzzleFlashId" value="TURRETGUN" />
      <Property name="MissileId" value="" />
    </Property>
]]

BASE_DEFENCE_TURRET = 
[[
    <Property value="GcBaseDefenceComponentData.xml" />
    <Property value="GcTurretComponentData.xml">
      <Property name="GunType" value="Projectile" />
      <Property name="LaserEffectId" value="BASE_TURRET_L" />
      <Property name="LaserMuzzleFlashId" value="BASE_TURRET" />
      <Property name="ProjectileId" value="BASE_TURRET_P" />
      <Property name="ProjectileMuzzleFlashId" value="BASE_TURRET" />
      <Property name="MissileId" value="BASE_TURRET_M" />
    </Property>
]]

BASE_DEFENCE_TURRET_2 = 
[[
    <Property value="GcBaseDefenceComponentData.xml" />
    <Property value="GcTurretComponentData.xml">
      <Property name="GunType" value="Laser" />
      <Property name="LaserEffectId" value="BASE_TURRET_L" />
      <Property name="LaserMuzzleFlashId" value="BASE_TURRET" />
      <Property name="ProjectileId" value="BASE_TURRET_P" />
      <Property name="ProjectileMuzzleFlashId" value="BASE_TURRET" />
      <Property name="MissileId" value="BASE_TURRET_M" />
    </Property>
]]
