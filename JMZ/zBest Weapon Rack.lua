Author			= "JMZawodny"
ModName			= "zBest"
ModNameSub		= "Weapon Rack"
BaseDescription = "Add Upgrade and Scrap capabilities to the Weapon Rack"
GameVersion		= "v6.2"
ModVersion		= ""


NMS_MOD_DEFINITION_CONTAINER =
{
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	LUA_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {{MBIN_CHANGE_TABLE = {
	{ -- Copy Vanilla Entity files to mod folder
		MBIN_FILE_SOURCE = 
			{{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WEAPONRACK\ENTITIES\WEAPONRACK.ENTITY.MBIN",
			 "MODELS\JMZ\ENTITIES\SALVAGE.ENTITY.MBIN", "REMOVE"},},
	},
	{
		MBIN_FILE_SOURCE = 
			{{"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WEAPONRACK\ENTITIES\WEAPONRACK.ENTITY.MBIN",
			 "MODELS\JMZ\ENTITIES\UPGRADE.ENTITY.MBIN", "REMOVE"},},
	},
	{ -- Modify the Salvage Entity
		MBIN_FILE_SOURCE = "MODELS\JMZ\ENTITIES\SALVAGE.ENTITY.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{
				SKW = {"Components", "GcInteractionComponentData", "InteractionType", "GcInteractionType"},
				REPLACE_TYPE = "ONCEINSIDE",
				VCT = {{"InteractionType" ,"WeaponSalvage"},}
			},
			{
				SKW = {"Components", "GcInteractionComponentData", "Renderer", "TkModelRendererData"},
				VCT = {{"Pitch" ,"80.000000"},}
			},
		}
	},
	{ -- Modify the Upgrade Entity
		MBIN_FILE_SOURCE = "MODELS\JMZ\ENTITIES\UPGRADE.ENTITY.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{
				SKW = {"Components", "GcInteractionComponentData", "InteractionType", "GcInteractionType"},
				REPLACE_TYPE = "ONCEINSIDE",
				VCT = {{"InteractionType" ,"WeaponUpgrade"},}
			},
		}
	},
	{ -- Modify the Weapon Rack
		MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WEAPONRACK.SCENE.MBIN",
		MXML_CHANGE_TABLE = 
		{
			{
				SKW = {"Name", "WeaponRack", "Name", "ATTACHMENT"  },
				REMOVE = "SECTION"
			},
			{
				SKW = {"NameHash", "1071726048"},
				ADD_OPTION = "ADDafterSection",
				AUTO_GNH = "TRUE",
				ADD = [[
				<Property name="Children" value="TkSceneNodeData">
					<Property name="Name" value="Archive" />
					<Property name="NameHash" value="0" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="-0.820000" />
						<Property name="TransY" value="0.300000" />
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
							<Property name="Name" value="ATTACHMENT" />
							<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WEAPONRACK\ENTITIES\WEAPONRACK.ENTITY.MBIN" />
						</Property>
					</Property>
					<Property name="Children">
						<Property name="Children" value="TkSceneNodeData" _index="0">
							<Property name="Name" value="ArchiveCollision" />
							<Property name="NameHash" value="0" />
							<Property name="Type" value="COLLISION" />
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
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
									<Property name="Name" value="NAVIGATION" />
									<Property name="Value" value="FALSE" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
									<Property name="Name" value="TYPE" />
									<Property name="Value" value="Box" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
									<Property name="Name" value="WIDTH" />
									<Property name="Value" value="1.500000" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
									<Property name="Name" value="HEIGHT" />
									<Property name="Value" value="1.500000" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
									<Property name="Name" value="DEPTH" />
									<Property name="Value" value="1.500000" />
								</Property>
							</Property>
							<Property name="Children" />
						</Property>
					</Property>
				</Property>
				<Property name="Children" value="TkSceneNodeData">
					<Property name="Name" value="Salvage" />
					<Property name="NameHash" value="0" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.820000" />
						<Property name="TransY" value="0.300000" />
						<Property name="TransZ" value="-0.375000" />
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
							<Property name="Name" value="ATTACHMENT" />
							<Property name="Value" value="Models/JMZ/Entities/Salvage.Entity.MBIN" />
						</Property>
					</Property>
					<Property name="Children">
						<Property name="Children" value="TkSceneNodeData" _index="0">
							<Property name="Name" value="SalvageCollision" />
							<Property name="NameHash" value="0" />
							<Property name="Type" value="COLLISION" />
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
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
									<Property name="Name" value="NAVIGATION" />
									<Property name="Value" value="FALSE" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
									<Property name="Name" value="TYPE" />
									<Property name="Value" value="Box" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
									<Property name="Name" value="WIDTH" />
									<Property name="Value" value="1.500000" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
									<Property name="Name" value="HEIGHT" />
									<Property name="Value" value="0.500000" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
									<Property name="Name" value="DEPTH" />
									<Property name="Value" value="0.650000" />
								</Property>
							</Property>
							<Property name="Children" />
						</Property>
					</Property>
				</Property>
				<Property name="Children" value="TkSceneNodeData">
					<Property name="Name" value="Upgrade" />
					<Property name="NameHash" value="0" />
					<Property name="Type" value="LOCATOR" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.820000" />
						<Property name="TransY" value="0.300000" />
						<Property name="TransZ" value="0.375000" />
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
							<Property name="Name" value="ATTACHMENT" />
							<Property name="Value" value="Models/JMZ/Entities/Upgrade.Entity.MBIN" />
						</Property>
					</Property>
					<Property name="Children">
						<Property name="Children" value="TkSceneNodeData" _index="0">
							<Property name="Name" value="UpgadeCollision" />
							<Property name="NameHash" value="0" />
							<Property name="Type" value="COLLISION" />
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
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
									<Property name="Name" value="NAVIGATION" />
									<Property name="Value" value="FALSE" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
									<Property name="Name" value="TYPE" />
									<Property name="Value" value="Box" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
									<Property name="Name" value="WIDTH" />
									<Property name="Value" value="1.500000" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
									<Property name="Name" value="HEIGHT" />
									<Property name="Value" value="0.500000" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
									<Property name="Name" value="DEPTH" />
									<Property name="Value" value="0.650000" />
								</Property>
							</Property>
							<Property name="Children" />
						</Property>
					</Property>
				</Property>
]],
			},
			{
				SKW = {"NameHash", "1071726048"},
				REMOVE = "SECTION"
			},
		}
	},
	}},}
}