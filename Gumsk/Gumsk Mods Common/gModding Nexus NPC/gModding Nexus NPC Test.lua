Author = "Gumsk"
ModName = "gModding Nexus NPC"
ModNameSub = "Test"
BaseDescription = "Adds a modding NPC vendor to the Nexus."
GameVersion = "5.1.2.0"
ModVersion = "a"

local MbinChangeTables = {}
MbinChangeTables[#MbinChangeTables + 1] = {
	MBIN_FILE_SOURCE = "MODELS\SPACE\NEXUS\PARTS\RIGHTSECTION\RIGHTSECTION.SCENE.MBIN",
	EXML_CHANGE_TABLE = {
		{
			SPECIAL_KEY_WORDS = {"Name","REFchef"}, 
			SEC_SAVE_TO = "SecRightSection"
		},
		{
			SEC_EDIT = "SecRightSection",
			VALUE_CHANGE_TABLE = {
				{"Name","REFmod"},
				{"NameHash",GNH("REFmod")},
				{"TransX",53.0},
				{"TransY",26.0},
				{"TransZ",-41.0},
				{"Value","G\NEXUSNPC\SHOPMOD.SCENE.MBIN"}
			}
		},
		{
			SPECIAL_KEY_WORDS = {"Name","REFchef"},
			ADD_OPTION = "ADDafterSECTION",
			SEC_ADD_NAMED = "SecRightSection"
		}
	}
}
MbinChangeTables[#MbinChangeTables + 1] = {
	MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\NPCPLACEMENTSHOP.ENTITY.MBIN",
	EXML_CHANGE_TABLE = {
		{
			SPECIAL_KEY_WORDS = {"Value","NEXUSCHEF"}, 
			SEC_SAVE_TO = "SecNpcPlacementShop"
		},
		{
			SEC_EDIT = "SecNpcPlacementShop",
			VALUE_CHANGE_TABLE = {
				{"Value","NEXUSMOD"},
			}
		},
		{
			SPECIAL_KEY_WORDS = {"Value","NEXUSCHEF"},
			ADD_OPTION = "ADDafterSECTION",
			SEC_ADD_NAMED = "SecNpcPlacementShop"
		}
	}
}
MbinChangeTables[#MbinChangeTables + 1] = {
	MBIN_FILE_SOURCE = "MODELS\SPACE\NEXUS\NEXUS\ENTITIES\NPCDATA.ENTITY.MBIN",
	EXML_CHANGE_TABLE = {
		{
			SPECIAL_KEY_WORDS = {"Value","NEXUSCHEF"}, 
			SEC_SAVE_TO = "SecNpcData"
		},
		{
			SEC_EDIT = "SecNpcData",
			VALUE_CHANGE_TABLE = {
				{"Value","NEXUSMOD"},
			}
		},
		{
			SPECIAL_KEY_WORDS = {"Value","NEXUSCHEF"},
			ADD_OPTION = "ADDafterSECTION",
			SEC_ADD_NAMED = "SecNpcData"
		}
	}
}
MbinChangeTables[#MbinChangeTables + 1] = {
	MBIN_FILE_SOURCE = "METADATA\SIMULATION\NPCS\NPCSPAWNTABLE.MBIN",
	EXML_CHANGE_TABLE = {
		{
			SPECIAL_KEY_WORDS = {"Id","NEXUSCHEF"}, 
			SEC_SAVE_TO = "SecNpcSpawnTableId"
		},
		{
			SEC_EDIT = "SecNpcSpawnTableId",
			VALUE_CHANGE_TABLE = {
				{"Id","NEXUSMOD"},
				--{"PresetId","SHARK"},
				--{"Seed",5},
				--{"AlienRace","Warriors"}
			}
		},
		{
			SPECIAL_KEY_WORDS = {"Id","NEXUSCHEF"},
			ADD_OPTION = "ADDafterSECTION",
			SEC_ADD_NAMED = "SecNpcSpawnTableId"
		},
		{
			SPECIAL_KEY_WORDS = {"PlacementRuleId","NEXUSCHEF"}, 
			SEC_SAVE_TO = "SecNpcSpawnTablePlacement"
		},
		{
			SEC_EDIT = "SecNpcSpawnTablePlacement",
			VALUE_CHANGE_TABLE = {
				{"PlacementRuleId","NEXUSMOD"},
				{"PlacmentNodeName","NPCNEXUSMOD_"},
				{"SpawnSpecific","NEXUSMOD"},
				--{"AlienRace","Diplomats"},
				--{"InteractionType","ExoticExtra6"},
				--{"NPCProp","DontCare"},
				--{"CanTurn","True"}
				
			}
		},
		{
			SPECIAL_KEY_WORDS = {"PlacementRuleId","NEXUSCHEF"},
			ADD_OPTION = "ADDafterSECTION",
			SEC_ADD_NAMED = "SecNpcSpawnTablePlacement"
		}
	}
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION = BaseDescription,
	MOD_AUTHOR = Author,
	LUA_AUTHOR = "Gumsk",
	NMS_VERSION = GameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	ADD_FILES = {
		{
		FILE_DESTINATION = [[G\NEXUSNPC\SHOPMOD.SCENE.EXML]],
		FILE_CONTENT 	= [[<Data template="TkSceneNodeData">
  <Property name="Name" value="G\NEXUSNPC\SHOPMOD.SCENE.MBIN" />
  <Property name="NameHash" value="]]..GNH([[G\NEXUSNPC\SHOPMOD.SCENE.MBIN]])..[[" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="InteriorShop" />
      <Property name="NameHash" value="2122621493" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\NPCPLACEMENTSHOP.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NPCNEXUSMOD_" />
          <Property name="NameHash" value="]]..GNH([[NPCNEXUSMOD_]])..[[" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-4.990213" />
            <Property name="TransY" value="0.419249" />
            <Property name="TransZ" value="1.23886" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="133.46935" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
	  </Property>
	</Property>
  </Property>
</Data>]],
		}
	},
	MODIFICATIONS = {{
		MBIN_CHANGE_TABLE = MbinChangeTables
	}}
}