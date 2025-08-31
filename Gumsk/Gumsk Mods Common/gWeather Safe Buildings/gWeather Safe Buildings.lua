Author = "Gumsk"
ModName = "gBase"
ModNameSub = "Weather Safe Buildings"
BaseDescription = "Basic floor pieces have hazard protection"
GameVersion = "6.0.2.0"
ModVersion = "a"

HeaterAdd = [[		<Property name="Children" value="TkSceneNodeData">
					<Property name="Name" value="Heater" />
					<Property name="NameHash" value="]]..GNH("Heater")..[[" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="0.000000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData.xml">
							<Property name="Name" value="ATTACHMENT" />
							<Property name="Value" value="GUMSK/GUMSKHEATER.ENTITY.MBIN" />
						</Property>
					</Property>
					<Property name="Children">
						<Property name="Children" value="TkSceneNodeData" _index="0">
							<Property name="Name" value="HeaterCollision" />
							<Property name="NameHash" value="]]..GNH("HeaterCollision")..[[" />
							<Property name="Type" value="COLLISION" />
							<Property name="Transform" value="TkTransformData.xml">
								<Property name="TransX" value="0.000000" />
								<Property name="TransY" value="0.000000" />
								<Property name="TransZ" value="0.000000" />
								<Property name="RotX" value="0.000000" />
								<Property name="RotY" value="0.000000" />
								<Property name="RotZ" value="0.000000" />
								<Property name="ScaleX" value="1.000000" />
								<Property name="ScaleY" value="1.000000" />
								<Property name="ScaleZ" value="1.000000" />
							</Property>
							<Property name="PlatformExclusion" value="0" />
							<Property name="Attributes">
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
									<Property name="Name" value="NAVIGATION" />
									<Property name="Value" value="FALSE" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
									<Property name="Name" value="TYPE" />
									<Property name="Value" value="Sphere" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
									<Property name="Name" value="RADIUS" />
									<Property name="Value" value="5.000000" />
								</Property>
							</Property>
							<Property name="Children" />
						</Property>
					</Property>
				</Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	ADD_FILES		 = {
		{
			FILE_DESTINATION		 = [[GUMSK/GUMSKHEATER.ENTITY.MXML]],
			FILE_CONTENT	 = [[<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkAttachmentData">
	<Property name="AdditionalData" />
	<Property name="Components">
		<Property name="Components" value="TkPhysicsComponentData" _index="0">
			<Property name="TkPhysicsComponentData">
				<Property name="Data" value="TkPhysicsData">
					<Property name="Mass" value="0.000000" />
					<Property name="Friction" value="0.500000" />
					<Property name="RollingFriction" value="0.200000" />
					<Property name="AngularDamping" value="0.200000" />
					<Property name="LinearDamping" value="0.100000" />
					<Property name="Gravity" value="20.000000" />
				</Property>
				<Property name="TriggerVolume" value="true" />
				<Property name="TriggerVolumeType" value="TkVolumeTriggerType">
					<Property name="VolumeTriggerType" value="GenericInterior" />
				</Property>
				<Property name="SurfaceProperties" value="None" />
				<Property name="ModelOwnership" value="Model" />
				<Property name="Climbable" value="false" />
				<Property name="Walkable" value="true" />
				<Property name="Floor" value="false" />
				<Property name="IgnoreModelOwner" value="false" />
				<Property name="NoVehicleCollide" value="false" />
				<Property name="NoPlayerCollide" value="false" />
				<Property name="NoTerrainCollide" value="false" />
				<Property name="NoFireCollide" value="false" />
				<Property name="NoFallDamage" value="false" />
				<Property name="IgnoreAllCollisions" value="false" />
				<Property name="BlocksInteract" value="true" />
				<Property name="CameraInvisible" value="false" />
				<Property name="InvisibleForInteraction" value="false" />
				<Property name="AllowTeleporter" value="false" />
				<Property name="BlockTeleporter" value="false" />
				<Property name="CanBeTooSteepForTeleporter" value="true" />
				<Property name="DisableGravity" value="false" />
				<Property name="SpinOnCreate" value="0.000000" />
				<Property name="ScaleAffectsMass" value="false" />
				<Property name="AllowedDefaultCollision" value="true" />
				<Property name="Animated" value="false" />
				<Property name="UseBasePartOptimisation" value="false" />
				<Property name="IsTransporter" value="false" />
				<Property name="UseSimpleCharacterCollision" value="false" />
				<Property name="RotateSimpleCharacterCollisionCapsule" value="false" />
				<Property name="SimpleCharacterCollisionRadius" value="0.500000" />
				<Property name="SimpleCharacterCollisionHeight" value="2.000000" />
				<Property name="SimpleCharacterCollisionHeightOffset" value="0.000000" />
				<Property name="SimpleCharacterCollisionFwdOffset" value="0.000000" />
			</Property>
		</Property>
	</Property>
	<Property name="LodDistances">
		<Property name="LodDistances" value="0.000000" _index="0" />
		<Property name="LodDistances" value="50.000000" _index="1" />
		<Property name="LodDistances" value="80.000000" _index="2" />
		<Property name="LodDistances" value="150.000000" _index="3" />
		<Property name="LodDistances" value="500.000000" _index="4" />
	</Property>
</Data>]],
		}
	},
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = {
					--Timber Pieces
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\TIMBER\BASIC_FLOOR.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\TIMBER\BASIC_FLOOR_QUARTER.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\TIMBER\BASIC_FLOOR_TRI.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\TIMBER\BASIC_FLOOR_TRI_QUARTER.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\TIMBER\BASIC_GFLOOR.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\TIMBER\BASIC_RAMP.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\TIMBER\BASIC_RAMP_THIN.SCENE.MBIN",	
					--Fibreglass Pieces
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\FIBREGLASS\BASIC_FLOOR.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\FIBREGLASS\BASIC_FLOOR_QUARTER.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\FIBREGLASS\BASIC_FLOOR_TRI.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\FIBREGLASS\BASIC_FLOOR_TRI_QUARTER.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\FIBREGLASS\BASIC_GFLOOR.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\FIBREGLASS\BASIC_RAMP.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\FIBREGLASS\BASIC_RAMP_THIN.SCENE.MBIN",	
					--Stone Pieces
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\STONE\BASIC_FLOOR.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\STONE\BASIC_FLOOR_QUARTER.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\STONE\BASIC_FLOOR_TRI.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\STONE\BASIC_FLOOR_TRI_QUARTER.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\STONE\BASIC_GFLOOR.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\STONE\BASIC_RAMP.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\STONE\BASIC_RAMP_THIN.SCENE.MBIN",
					--Wood Pieces
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\WOOD\BASIC_FLOOR.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\WOOD\BASIC_FLOOR_QUARTER.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\WOOD\BASIC_FLOOR_TRI.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\WOOD\BASIC_FLOOR_TRI_QUARTER.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\WOOD\BASIC_GFLOOR.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\WOOD\BASIC_RAMP.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\WOOD\BASIC_RAMP_THIN.SCENE.MBIN",
					--Metal Pieces
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_FLOOR.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_FLOOR_QUARTER.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_FLOOR_TRI.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_FLOOR_TRI_QUARTER.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_GFLOOR.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_RAMP.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\METAL\BASIC_RAMP_THIN.SCENE.MBIN",
					--Concrete Pieces
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\CONCRETE\BASIC_FLOOR.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\CONCRETE\BASIC_FLOOR_QUARTER.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\CONCRETE\BASIC_FLOOR_TRI.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\CONCRETE\BASIC_FLOOR_TRI_QUARTER.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\CONCRETE\BASIC_GFLOOR.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\CONCRETE\BASIC_RAMP.SCENE.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\CONCRETE\BASIC_RAMP_THIN.SCENE.MBIN",
					--Light Pieces
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\LIGHT\BASIC_FLOOR_QUARTER.SCENE.MBIN",
					},
					MXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Name","Physics"},
							REPLACE_TYPE = "ADDAFTERSECTION",
							ADD = HeaterAdd,
						},
					},
				},
			}
		}
	}
}