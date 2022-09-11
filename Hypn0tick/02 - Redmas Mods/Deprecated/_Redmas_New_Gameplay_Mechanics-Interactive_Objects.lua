ModAuthor       =   "Redmas"
LuaAuthor       =   "Hypn0tick"
ModName         =   "New_Gameplay_Mechanics-Interactive_Objects"
BaseDescription =   "Adds new interactive objects."
GameVersion     =   "3.99"

IncludedFileDir =   "../ModExtraFilesToInclude"

HangarInterior_Data_Template    =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="StandingLight_B1" />
      <Property name="NameHash" value="1030908137" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="23.0741428" />
        <Property name="TransY" value="-4.299597" />
        <Property name="TransZ" value="-20.0793743" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\TELEPORTER_NEXUS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]

Interaction_Data  =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Interact" />
      <Property name="NameHash" value="2844439898" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]

CeilingLightScene_Data  =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="spotLight1" />
          <Property name="NameHash" value="422545419" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0.852511" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="15" />
            <Property name="ScaleY" value="15" />
            <Property name="ScaleZ" value="15" />
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
              <Property name="Value" value="40000.000000" />
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

Attachment_Template_Data    =   [[
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="ATTACHMENT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\SAVEPOINT.ENTITY.MBIN" />
            </Property>
]]

RoofMonitorScene_Data   =   [[
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="LODDIST4" />
      <Property name="AltID" value="" />
      <Property name="Value" value="500.000000" />
    </Property>
]]

TradingPost_Template_SceneData =    [[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Terminal_Tradingpost" />
          <Property name="NameHash" value="1933274541" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="39.3999977" />
            <Property name="TransY" value="16.6126556" />
            <Property name="TransZ" value="-2.031249" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="0.8" />
            <Property name="ScaleY" value="0.8" />
            <Property name="ScaleZ" value="0.8" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\FW\MONITORDESK.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]            =   "_"..ModAuthor.."_"..ModName..".pak",
    ["MOD_DESCRIPTION"]         =   BaseDescription,
    ["MOD_AUTHOR"]              =   ModAuthor,
    ["LUA_AUTHOR"]              =   LuaAuthor,
    ["NMS_VERSION"]             =   GameVersion,
    ["GLOBAL_INTEGER_TO_FLOAT"] =   "FORCE",
    ["ADD_FILES"]               =
    {
        {
            ["FILE_DESTINATION"] = "MODELS/FW/LIGHTTABLE.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/FW/LIGHTTABLE.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/FW/MONITORDESK.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/FW/MONITORDESK.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/FW/MONITORDESKN.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/FW/MONITORDESKN.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/FW/ENTITIES/SAVEPOINT.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/FW/ENTITIES/SAVEPOINT.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/CARGOGENERATOR.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/CARGOGENERATOR.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/CHARCUSTOMISER.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/CHARCUSTOMISER.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/COBALTGENERATOR.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/COBALTGENERATOR.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/CRATE_WEAPON.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/CRATE_WEAPON.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/CRYOCHAMBERPOD.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/CRYOCHAMBERPOD.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/DEATHGENERATOR.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/DEATHGENERATOR.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/DIHYDROGENGENERATOR.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/DIHYDROGENGENERATOR.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/EXOSUIT.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/EXOSUIT.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/FERRITEDUSTGENERATOR.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/FERRITEDUSTGENERATOR.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/MISSIONS.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/MISSIONS.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/MISSIONS2.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/MISSIONS2.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/MPTERMINAL.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/MPTERMINAL.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/OXYGENFAN.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/OXYGENFAN.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/PLANTERWALLSHELVES.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/PLANTERWALLSHELVES.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/SALTGENERATOR.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/SALTGENERATOR.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/SAVEPOINT.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/SAVEPOINT.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/SHIELDPLANT.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/SHIELDPLANT.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/SIGNALSCANNER.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/SIGNALSCANNER.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/SILVCOPPLATCOBGENERATOR.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/SILVCOPPLATCOBGENERATOR.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/WATER2GENERATOR.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/WATER2GENERATOR.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/TEMPLATES/CHARCUSTOMISER.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/TEMPLATES/CHARCUSTOMISER.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/TEMPLATES/CRYOCHAMBERINTERACTION.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/TEMPLATES/CRYOCHAMBERINTERACTION.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/TEMPLATES/MPTERMINAL.ENTITY.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ENTITIES/TEMPLATES/MPTERMINAL.ENTITY.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/BED.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/BED.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/CANISTERRACK.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/CANISTERRACK.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/CRATE.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/CRATE.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/DRAWS.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/DRAWS.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/FANVENT.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/FANVENT.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/LARGEDESK.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/LARGEDESK.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/LIGHTTABLE.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/LIGHTTABLE.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/LOCKER.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/LOCKER.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/MONITORDESK.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/MONITORDESK.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/PLANTPOT_1.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/PLANTPOT_1.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/PLANTPOT_2.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/PLANTPOT_2.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/PLANTPOT_3.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/PLANTPOT_3.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/PLANTPOTWALL.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/PLANTPOTWALL.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/SHELVES.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/SHELVES.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/STORAGEPANEL.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/STORAGEPANEL.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/WALLMONITOR_A.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/WALLMONITOR_A.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/WALLMONITOR_B.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/WALLMONITOR_B.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/WALLMONITOR_B2.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/WALLMONITOR_B2.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/WATERCORALTREEDECORATION.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/WATERCORALTREEDECORATION.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/WATERCRYSTALDECORATION.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/WATERCRYSTALDECORATION.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/WATERGLOWPLANTDECORATION.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/WATERGLOWPLANTDECORATION.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/WEAPONRACK.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/quarantaine/WEAPONRACK.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/R/MONITORDESK.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/R/MONITORDESK.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/R/S_CUSTOMISER.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/R/S_CUSTOMISER.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/R/S_CUSTOMISER.TERMINAL_M.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/R/TERMINAL_M.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/R/TERMINAL_M2.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/R/TERMINAL_M2.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/R/TERMINAL_S.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/R/TERMINAL_S.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/R/TERMINAL_S2.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/R/TERMINAL_S2.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/R/W_CUSTOMISER.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/R/W_CUSTOMISER.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/V/BED.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/V/BED.SCENE.EXML",
        },
        {
            ["FILE_DESTINATION"] = "MODELS/V/LIGHTTABLE.SCENE.MBIN",
            ["EXTERNAL_FILE_SOURCE"] = IncludedFileDir.."/MODELS/V/LIGHTTABLE.SCENE.EXML",
        },
    },
    ["MODIFICATIONS"]     = {
        {
            ["MBIN_CHANGE_TABLE"] = {

                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/NPCS/NPCSPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PlacementRuleId", "WFC_SECONDARY"},
                            ["PRECEDING_KEY_WORDS"] = {"InteractionOverride"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"InteractionType", "MissionGiver"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PlacementRuleId", "FREIGHT_GENERIC"},
                            ["PRECEDING_KEY_WORDS"] = {"InteractionOverride"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"InteractionType", "NPC_Secondary"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PlacementRuleId", "FREIGHT_HANGAR"},
                            ["PRECEDING_KEY_WORDS"] = {"InteractionOverride"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"InteractionType", "NPC_Secondary"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "REFFreighterHangerVolumeLight43"},
                            ["ADD_OPTION"]  = "ADDafterSECTION",
                            ["ADD"] =   HangarInterior_Data_Template,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "StandingLight_B1"},
                            ["ADD_OPTION"]  = "ADDafterSECTION",
                            ["ADD"] =   HangarInterior_Data_Template,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "StandingLight_B1"},
                            ["SECTION_ACTIVE"] = 2,
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransZ", "-10.0793743"},
                                {"RotY", "180"},
                                {"ScaleX", "0.71"},
                                {"ScaleY", "0.71"},
                                {"ScaleZ", "0.71"},
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TERMINAL\TERMINAL_TADINGPOST.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "StandingLight_B1"},
                            ["SECTION_ACTIVE"] = 2,
                            ["ADD_OPTION"]  = "ADDafterSECTION",
                            ["ADD"] =   HangarInterior_Data_Template,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "StandingLight_B1"},
                            ["SECTION_ACTIVE"] = 3,
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransZ", "40.9793743"},
                                {"RotY", "180"},
                                {"ScaleX", "0.81"},
                                {"ScaleY", "0.81"},
                                {"ScaleZ", "0.81"},
                                {"Value", "MODELS\R\TERMINAL_S.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "StandingLight_B1"},
                            ["SECTION_ACTIVE"] = 3,
                            ["ADD_OPTION"]  = "ADDafterSECTION",
                            ["ADD"] =   HangarInterior_Data_Template,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "StandingLight_B1"},
                            ["SECTION_ACTIVE"] = 4,
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "-23.0741428"},
                                {"TransZ", "40.9793743"},
                                {"RotY", "180"},
                                {"ScaleX", "0.81"},
                                {"ScaleY", "0.81"},
                                {"ScaleZ", "0.81"},
                                {"Value", "MODELS\R\TERMINAL_S.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "StandingLight_B1"},
                            ["SECTION_ACTIVE"] = 4,
                            ["ADD_OPTION"]  = "ADDafterSECTION",
                            ["ADD"] =   HangarInterior_Data_Template,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "StandingLight_B1"},
                            ["SECTION_ACTIVE"] = 5,
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "StandingLight_B"},
                                {"NameHash", "2914142723"},
                                {"TransX", "-23.0764862"},
                                {"TransZ", "-19.9985313"},
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\TELEPORTER_NEXUS.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "StandingLight_B"},
                            ["ADD_OPTION"]  = "ADDafterSECTION",
                            ["ADD"] =   HangarInterior_Data_Template,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "StandingLight_B1"},
                            ["SECTION_ACTIVE"] = 5,
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "StandingLight_B"},
                                {"NameHash", "2914142723"},
                                {"TransX", "-23.0764862"},
                                {"TransZ", "-10.9985313"},
                                {"RotY", "180"},
                                {"ScaleX", "0.71"},
                                {"ScaleY", "0.71"},
                                {"ScaleZ", "0.71"},
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TERMINAL\TERMINAL_TADINGPOST.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "StandingLight_B"},
                            ["SECTION_ACTIVE"] = 2,
                            ["ADD_OPTION"]  = "ADDafterSECTION",
                            ["ADD"] =   HangarInterior_Data_Template,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "StandingLight_B1"},
                            ["SECTION_ACTIVE"] = 5,
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "StandingLight_B"},
                                {"NameHash", "2914142723"},
                                {"TransX", "20.0764862"},
                                {"TransZ", "1.9985313"},
                                {"RotY", "190"},
                                {"ScaleX", "0.81"},
                                {"ScaleY", "0.81"},
                                {"ScaleZ", "0.81"},
                                {"Value", "MODELS\R\TERMINAL_M2.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "StandingLight_B"},
                            ["SECTION_ACTIVE"] = 3,
                            ["ADD_OPTION"]  = "ADDafterSECTION",
                            ["ADD"] =   HangarInterior_Data_Template,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "StandingLight_B1"},
                            ["SECTION_ACTIVE"] = 5,
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "StandingLight_B"},
                                {"NameHash", "2914142723"},
                                {"TransX", "-20.0764862"},
                                {"TransZ", "1.9985313"},
                                {"RotY", "-90"},
                                {"ScaleX", "0.81"},
                                {"ScaleY", "0.81"},
                                {"ScaleZ", "0.81"},
                                {"Value", "MODELS\R\TERMINAL_M.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "StandingLight_B"},
                            ["SECTION_ACTIVE"] = 4,
                            ["ADD_OPTION"]  = "ADDafterSECTION",
                            ["ADD"] =   HangarInterior_Data_Template,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "StandingLight_B1"},
                            ["SECTION_ACTIVE"] = 5,
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "StandingLight_B"},
                                {"NameHash", "2914142723"},
                                {"TransX", "9"},
                                {"TransY", "-7.899597"},
                                {"TransZ", "-20.9985313"},
                                {"RotY", "-90"},
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\VEHICLEGARAGEBIKE.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BED.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\SAVEPOINT.ENTITY.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/CANISTERRACK.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\DIHYDROGENGENERATOR.ENTITY.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "GridLOD0"},
                            ["PRECEDING_KEY_WORDS"] =   {"Children"},
                            ["ADD"] =   Interaction_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"NameHash", "2844439898"},
                            ["REMOVE"] =   "Line",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/CEILINGLIGHT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "CeilingLight_Ring1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransY", "0"},
                                {"RotY", "0"},
                                {"RotZ", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BATCHSTARTPHYSI"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "384"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "CeilingLight_Ring1"},
                            ["PRECEDING_KEY_WORDS"] =   {"Children",  "Transform"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransY", "0.249412"},
                                {"RotY", "180"},
                                {"RotZ", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BATCHSTART"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BATCHCOUNT"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "384"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "VERTREND"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "1488"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BOUNDHULLED"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "194"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "ConOn1_"},
                            ["PRECEDING_KEY_WORDS"] =   {"Children"},
                            ["ADD"] =   CeilingLightScene_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BATCHSTARTPHYSI"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "4320"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "VERTRSTARTPHYSI"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "1489"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "VERTRENDPHYSICS"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "1636"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BOUNDHULLST"},
                            ["SECTION_ACTIVE"]  =   3,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "194"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BOUNDHULLED"},
                            ["SECTION_ACTIVE"]  =   3,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "202"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "pointLight6"},
                            ["REMOVE"] =   "Section",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "RefPowerConnection"},
                            ["REMOVE"] =   "Section",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/CRATE.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "ATTACHMENT"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\FERRITEDUSTGENERATOR.ENTITY.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "CrateLOD0"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["PRECEDING_KEY_WORDS"] =   {"Children"},
                            ["ADD"] =   Interaction_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "Interact"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"NameHash", "2228203301"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/DRAWS.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\CHARCUSTOMISER.ENTITY.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/FANVENT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\OXYGENFAN.ENTITY.MBIN"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =   {"Children"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["ADD"] =   Interaction_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Interact"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"NameHash", "1339394650"},
                                {"TransY", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/LARGEDESK.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\SIGNALSCANNER.ENTITY.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
                            ["PRECEDING_KEY_WORDS"] =   {"Transform"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"RotX", "61.2766533"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2"},
                            ["PRECEDING_KEY_WORDS"] =   {"Transform"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"RotX", "61.2766533"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "FALLOFF_RATE"},
                            ["REPLACE_TYPE"]    = "ALL",
                            ["REMOVE"] =   "Section",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\SIGNALSCANNER.ENTITY.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/LIGHTTABLE.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MESHLINK"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["ADD_OPTION"]  = "ADDafterSECTION",
                            ["ADD"] =   Attachment_Template_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "FALLOFF_RATE"},
                            ["REPLACE_TYPE"]    = "ALL",
                            ["REMOVE"] =   "Section",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/LOCKER.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\CHARCUSTOMISER.ENTITY.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/MONITORDESK.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\MISSIONS2.ENTITY.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "AudioScreenStand"},
                            ["REMOVE"] =   "Section",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NavData"},
                            ["REMOVE"] =   "Section",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "FALLOFF_RATE"},
                            ["REPLACE_TYPE"]    = "ALL",
                            ["REMOVE"] =   "Section",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/PLANTPOT_1.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\SALTGENERATOR.ENTITY.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Workstation"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["SECTION_UP"]  =   1,
                            ["ADD"] =   Interaction_Data,
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/PLANTPOT_2.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\PLANTERWALLSHELVES.ENTITY.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Trolly"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["SECTION_UP"]  =   1,
                            ["ADD"] =   Interaction_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Trolly"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"NameHash", "1092846373"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "FALLOFF_RATE"},
                            ["REPLACE_TYPE"]    = "ALL",
                            ["REMOVE"] =   "Section",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "COOKIE_IDX"},
                            ["REMOVE"] =   "Section",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "VOLUMETRIC"},
                            ["REMOVE"] =   "Section",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/PLANTPOT_3.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\PLANTERWALLSHELVES.ENTITY.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "PlantPot3"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD"] =   Interaction_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Interact"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"NameHash", "4210404024"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "FALLOFF_RATE"},
                            ["REMOVE"] =   "Section",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "COOKIE_IDX"},
                            ["REMOVE"] =   "Section",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "VOLUMETRIC"},
                            ["REMOVE"] =   "Section",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/PLANTPOTWALL.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\PLANTERWALLSHELVES.ENTITY.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Physics"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD"] =   Interaction_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Interact"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"NameHash", "3072354185"},
                                {"TransY", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ROBOTICARM.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\EXOSUIT.ENTITY.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RoboticArm"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD"] =   Interaction_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Interact"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"NameHash", "111223168"},
                                {"TransY", "2"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/ROOFMONITOR.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LODDIST3"},
                            ["ADD_OPTION"]  =   "ADDafterSECTION",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"IGNORE", "IGNORE"},
                            },
                            ["ADD"] =   RoofMonitorScene_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NUMLODS"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ScreenBase1"},
                            ["SECTION_UP"]  =   1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"RotX", "-60.0000038"},
                            }
                        },
                        {
                            ["REPLACE_TYPE"]    =   "ALL",
                            ["VALUE_MATCH"] =   "-60.000004",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"RotX", "-60.0000038"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RoofMonitorLOD1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "RoofMonitorLOD2"},
                                {"NameHash", "1359567845"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LODLEVEL"},
                            ["REPLACE_TYPE"]    =   "ALL",
                            ["VALUE_MATCH"] =   "3",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LODLEVEL"},
                            ["REPLACE_TYPE"]    =   "ALL",
                            ["VALUE_MATCH"] =   "2",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LODLEVEL"},
                            ["REPLACE_TYPE"]    =   "ALL",
                            ["VALUE_MATCH"] =   "1",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "5753703545436067703"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "15414602064215783970"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "RoofMonitorLOD1Shape"},
                            ["REPLACE_TYPE"]    =   "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "RoofMonitorLOD2Shape"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1RoofMonitorLOD1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB1RoofMonitorLOD2"},
                                {"NameHash", "2726328701"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "4281064809948686780"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "8967001975041313400"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB2RoofMonitorLOD1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB2RoofMonitorLOD2"},
                                {"NameHash", "2288273105"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "7789191746863085349"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "17484138410932979256"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3RoofMonitorLOD1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB3RoofMonitorLOD2"},
                                {"NameHash", "3796559012"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "13591503996762363189"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "5092304772350503561"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB4RoofMonitorLOD1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB4RoofMonitorLOD2"},
                                {"NameHash", "3956657653"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "5686182838958312647"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "2899562882462083698"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB5RoofMonitorLOD1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB5RoofMonitorLOD2"},
                                {"NameHash", "2554445483"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "1465415794870356107"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "12189743193412836969"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB6RoofMonitorLOD1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB6RoofMonitorLOD2"},
                                {"NameHash", "3709068821"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "9098777690103192663"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "14128108695526069588"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB7RoofMonitorLOD1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB7RoofMonitorLOD2"},
                                {"NameHash", "1394997209"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "15893691710577725308"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "13992535141139020929"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RoofMonitorLOD2"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "RoofMonitorLOD3"},
                                {"NameHash", "2959776422"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "15414602064215783970"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "10581989461222155994"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "RoofMonitorLOD2Shape"},
                            ["SECTION_ACTIVE"]  =   9,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "RoofMonitorLOD3Shape"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1RoofMonitorLOD2"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB1RoofMonitorLOD3"},
                                {"NameHash", "3906995771"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "8967001975041313400"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "7973128317296148470"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "RoofMonitorLOD2Shape"},
                            ["SECTION_ACTIVE"]  =   9,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "RoofMonitorLOD3Shape"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB2RoofMonitorLOD2"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB2RoofMonitorLOD3"},
                                {"NameHash", "2057710421"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "17484138410932979256"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "HASH"},
                                {"Value", "10040305594375659746"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "RoofMonitorLOD2Shape"},
                            ["SECTION_ACTIVE"]  =   9,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "RoofMonitorLOD3Shape"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3RoofMonitorLOD2"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB3RoofMonitorLOD3"},
                                {"NameHash", "3484598132"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "5092304772350503561"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "3299778931428653299"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "RoofMonitorLOD2Shape"},
                            ["SECTION_ACTIVE"]  =   9,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "RoofMonitorLOD3Shape"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB4RoofMonitorLOD2"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB4RoofMonitorLOD3"},
                                {"NameHash", "3668650912"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "2899562882462083698"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "5349213764300669416"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "RoofMonitorLOD2Shape"},
                            ["SECTION_ACTIVE"]  =   9,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "RoofMonitorLOD3Shape"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB5RoofMonitorLOD2"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB5RoofMonitorLOD3"},
                                {"NameHash", "2224363446"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "12189743193412836969"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "3957377607501577257"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "RoofMonitorLOD2Shape"},
                            ["SECTION_ACTIVE"]  =   9,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "RoofMonitorLOD3Shape"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB6RoofMonitorLOD2"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB6RoofMonitorLOD3"},
                                {"NameHash", "1608313757"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "14128108695526069588"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "18034430728186048111"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "RoofMonitorLOD2Shape"},
                            ["SECTION_ACTIVE"]  =   9,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "RoofMonitorLOD3Shape"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB7RoofMonitorLOD2"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB7RoofMonitorLOD3"},
                                {"NameHash", "610245197"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "13992535141139020929"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "4364358700024159723"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "RoofMonitorLOD2Shape"},
                            ["SECTION_ACTIVE"]  =   9,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "RoofMonitorLOD3Shape"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RoofMonitorLOD3"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "RoofMonitorLOD4"},
                                {"NameHash", "577896131"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "10581989461222155994"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "7757178958151208794"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "RoofMonitorLOD3Shape"},
                            ["SECTION_ACTIVE"]  =   9,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "RoofMonitorLOD4Shape"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1RoofMonitorLOD3"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB1RoofMonitorLOD4"},
                                {"NameHash", "4142178884"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "7973128317296148470"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "6673193876127933275"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "RoofMonitorLOD3Shape"},
                            ["SECTION_ACTIVE"]  =   9,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "RoofMonitorLOD4Shape"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB2RoofMonitorLOD3"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB2RoofMonitorLOD4"},
                                {"NameHash", "1827704810"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "10040305594375659746"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "112711413567082671"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "RoofMonitorLOD3Shape"},
                            ["SECTION_ACTIVE"]  =   9,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "RoofMonitorLOD4Shape"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3RoofMonitorLOD3"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB3RoofMonitorLOD4"},
                                {"NameHash", "3186957305"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "3299778931428653299"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "18028356446794161218"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "RoofMonitorLOD3Shape"},
                            ["SECTION_ACTIVE"]  =   9,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "RoofMonitorLOD4Shape"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB4RoofMonitorLOD3"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB4RoofMonitorLOD4"},
                                {"NameHash", "3472823368"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "5349213764300669416"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "4503118323869686227"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "RoofMonitorLOD3Shape"},
                            ["SECTION_ACTIVE"]  =   9,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "RoofMonitorLOD4Shape"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB5RoofMonitorLOD3"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB5RoofMonitorLOD4"},
                                {"NameHash", "2455155513"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "3957377607501577257"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "5579979151559462691"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "RoofMonitorLOD3Shape"},
                            ["SECTION_ACTIVE"]  =   9,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "RoofMonitorLOD4Shape"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB6RoofMonitorLOD3"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB6RoofMonitorLOD4"},
                                {"NameHash", "838143950"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "18034430728186048111"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "14784564260067438512"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "RoofMonitorLOD3Shape"},
                            ["SECTION_ACTIVE"]  =   9,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "RoofMonitorLOD4Shape"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB7RoofMonitorLOD3"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "SUB7RoofMonitorLOD4"},
                                {"NameHash", "916078274"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "4364358700024159723"},
                            ["SECTION_ACTIVE"]  =   2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "17232185679801681550"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "RoofMonitorLOD3Shape"},
                            ["SECTION_ACTIVE"]  =   9,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "RoofMonitorLOD4Shape"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\EXOSUIT.ENTITY.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "FALLOFF_RATE"},
                            ["REPLACE_TYPE"]    = "ALL",
                            ["REMOVE"] =   "Section",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/SHELVES.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\STORAGECHEST.ENTITY.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/WALLMONITOR_A.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkSceneNodeData.xml"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["LINE_OFFSET"] =   "-1",
                            ["ADD"] =   Interaction_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Interact"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"NameHash", "3117433536"},
                                {"TransY", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\MISSIONS.ENTITY.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/WALLMONITOR_B.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkSceneNodeData.xml"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["LINE_OFFSET"] =   "-1",
                            ["ADD"] =   Interaction_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Interact"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"NameHash", "3625942878"},
                                {"TransY", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\MISSIONS.ENTITY.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "FALLOFF_RATE"},
                            ["REPLACE_TYPE"]    = "ALL",
                            ["REMOVE"] =   "Section",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "COOKIE_IDX"},
                            ["REPLACE_TYPE"]    = "ALL",
                            ["REMOVE"] =   "Section",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "VOLUMETRIC"},
                            ["REPLACE_TYPE"]    = "ALL",
                            ["REMOVE"] =   "Section",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/WALLMONITOR_B2.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkSceneNodeData.xml"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["LINE_OFFSET"] =   "-1",
                            ["ADD"] =   Interaction_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Interact"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"NameHash", "3048500897"},
                                {"TransY", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\MISSIONS.ENTITY.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "FALLOFF_RATE"},
                            ["REMOVE"] =   "Section",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "COOKIE_IDX"},
                            ["REMOVE"] =   "Section",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   =   {"Name", "VOLUMETRIC"},
                            ["REMOVE"] =   "Section",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/WATERCORALTREEDECORATION.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["ADD"] =   Interaction_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\WATER2GENERATOR.ENTITY.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/WATERCRYSTALDECORATION.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["ADD"] =   Interaction_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\WATER2GENERATOR.ENTITY.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/WATERGLOWPLANTDECORATION.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["ADD"] =   Interaction_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\WATER2GENERATOR.ENTITY.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/WEAPONRACK.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["ADD"] =   Interaction_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Interact"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"NameHash", "245433769"},
                                {"TransY", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\CRATE_WEAPON.ENTITY.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\CONTAINER.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["ADD"] =   Interaction_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash", "2844439898"},
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["SECTION_ACTIVE"]  =   1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\CARGOGENERATOR.ENTITY.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\LARGECRATE.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NUMLODS"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = Attachment_Template_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\ENTITIES\CARGOGENERATOR.ENTITY.MBIN"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["SECTION_ACTIVE"]  = 1,
                            ["ADD"] = Interaction_Data,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"NameHash", "2844439898"},
                            ["REMOVE"] = "Line",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LAYOUTS\LAYOUT_SCIENTIFIC.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder4"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                                {"TransY", "21.7999783"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder3"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                                {"TransY", "21.7999783"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder2"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                                {"TransY", "21.7999783"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                                {"TransY", "21.7999783"},
                                {"TransZ", "10.5000038"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight10"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight9"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight8"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefScreen6"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "41.5884056"},
                                {"TransY", "18.7257023"},
                                {"RotX", "-36.8359146"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefScreen5"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "41.5884056"},
                                {"TransY", "18.7257023"},
                                {"RotX", "-36.8359146"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefScreen4"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "41.5884056"},
                                {"TransY", "18.7257023"},
                                {"RotX", "-36.8359146"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefScreen3"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "41.5884056"},
                                {"TransY", "18.7257023"},
                                {"RotX", "-36.8359146"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RoofMonitor4"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "28.4069328"},
                                {"TransZ", "10.5000038"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RoofMonitor3"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "28.4069328"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "polySurface5"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                                {"TransY", "21.8392277"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "polySurface5"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "GARAGE"},
                                {"NameHash", "1933274541"},
                                {"TransX", "21.3999977"},
                                {"TransY", "9"},
                                {"TransZ", "18.031249"},
                                {"RotX", "0"},
                                {"RotY", "-180"},
                                {"RotZ", "0"},
                                {"ScaleX", "1"},
                                {"ScaleY", "1"},
                                {"ScaleZ", "1"},
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\CUSTOMISESTATION.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "GARAGE"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "GARAGE"},
                                {"NameHash", "1933274541"},
                                {"TransX", "21.3999977"},
                                {"TransY", "9"},
                                {"TransZ", "-18.031249"},
                                {"RotX", "0"},
                                {"RotY", "0"},
                                {"RotZ", "0"},
                                {"ScaleX", "1"},
                                {"ScaleY", "1"},
                                {"ScaleZ", "1"},
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\CUSTOMISESTATION.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "GARAGE"},
                            ["SECTION_ACTIVE"] = 2,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "GARAGE"},
                                {"NameHash", "1933274541"},
                                {"TransX", "45.3999977"},
                                {"TransY", "0"},
                                {"TransZ", "20.031249"},
                                {"RotX", "0"},
                                {"RotY", "0"},
                                {"RotZ", "0"},
                                {"ScaleX", "1"},
                                {"ScaleY", "1"},
                                {"ScaleZ", "1"},
                                {"Value", "MODELS\R\VEHICLEGARAGE.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "GARAGE"},
                            ["SECTION_ACTIVE"] = 3,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransZ", "-2.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESK.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransZ", "-0.031249"},
                                {"RotY", "-90"},
                                {"ScaleX", "1.2"},
                                {"ScaleY", "1.2"},
                                {"ScaleZ", "1.2"},
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TERMINAL\TERMINAL_TADINGPOST.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 2,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 3,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransZ", "2.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESKN.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 3,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 4,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransZ", "6.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESK.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 4,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 5,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransZ", "12.6312494"},
                                {"RotY", "-90"},
                                {"ScaleX", "1"},
                                {"ScaleY", "1"},
                                {"ScaleZ", "1"},
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\CRYOCHAMBER.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 5,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 6,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "36.3999977"},
                                {"TransZ", "4.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESK.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 6,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 7,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "36.3999977"},
                                {"TransZ", "4.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESK.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 7,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 8,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "36.3999977"},
                                {"TransZ", "5.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESK.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 8,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 9,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "36.3999977"},
                                {"TransZ", "7.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESK.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 10,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "36.3999977"},
                                {"TransY", "16.6126556"},
                                {"TransZ", "8.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESK.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransZ", "6.255497"},
                                {"RotY", "61.3157845"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "28.3435974"},
                                {"RotY", "-164.709351"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_3"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"RotY", "131.139267"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_5"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "35.0145073"},
                                {"RotY", "60.6414337"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_6"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"RotY", "-25.2407475"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_7"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "31.5608082"},
                                {"TransZ", "-12.4958715"},
                                {"RotY", "7.664297"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_8"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "31.1358376"},
                                {"TransZ", "-13.2395725"},
                                {"RotY", "-137.085632"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_9"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "24.6166229"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_10"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "35.0009155"},
                                {"RotY", "122.839821"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_11"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransZ", "11.0856819"},
                                {"RotY", "20.6665115"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_12"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "27.9635849"},
                                {"TransZ", "10.1325932"},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LAYOUTS\LAYOUT_TRADER.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder11"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransY", "16.2385635"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder10"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransY", "16.2385635"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder9"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransY", "16.2385635"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder8"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "23.5094128"},
                                {"TransY", "17.0303726"},
                                {"TransZ", "10.5000019"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder7"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "23.5094128"},
                                {"TransY", "17.0303726"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder6"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "23.5094128"},
                                {"TransY", "17.0303726"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder5"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "23.5094128"},
                                {"TransY", "17.0303726"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder4"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                                {"TransY", "21.7999783"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder3"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                                {"TransY", "21.7999783"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder2"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                                {"TransY", "21.7999783"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                                {"TransY", "21.7999783"},
                                {"TransZ", "10.5000038"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight10"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight9"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight8"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight7"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "23.5043068"},
                                {"TransY", "17.0222378"},
                                {"TransZ", "-10.4999971"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight6"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "23.5043068"},
                                {"TransY", "17.0222378"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight5"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "23.5043068"},
                                {"TransY", "17.0222378"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight4"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "23.5043068"},
                                {"TransY", "17.0222378"},
                                {"TransZ", "10.5000019"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefScreen6"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "40.1096725"},
                                {"RotX", "-45.0000038"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefScreen5"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "40.1096725"},
                                {"RotX", "-45.0000038"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefScreen4"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "40.1096725"},
                                {"RotX", "-45.0000038"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefScreen3"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "40.1096725"},
                                {"RotX", "-45.0000038"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefScreen2"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "38.1476173"},
                                {"TransY", "21.4691162"},
                                {"RotX", "-45.0000038"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefScreen1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "38.1476173"},
                                {"TransY", "21.4691162"},
                                {"RotX", "-45.0000038"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefScreen"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "38.1476173"},
                                {"TransY", "21.4691162"},
                                {"RotX", "-45.0000038"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RoofMonitor4"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "28.4069328"},
                                {"TransZ", "10.5000038"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RoofMonitor3"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "28.4069328"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RoofMonitor2"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "28.4597683"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RoofMonitor1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "28.4597683"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight3"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"RotX", "61.8413658"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"RotX", "61.8413658"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"RotX", "61.8413658"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "39.3999977"},
                                {"TransY", "16.6126556"},
                                {"TransZ", "12.531249"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "GARAGE"},
                                {"NameHash", "1933274541"},
                                {"TransX", "21.3999977"},
                                {"TransY", "9"},
                                {"TransZ", "18.031249"},
                                {"RotX", "0"},
                                {"RotY", "-180"},
                                {"RotZ", "0"},
                                {"ScaleX", "1"},
                                {"ScaleY", "1"},
                                {"ScaleZ", "1"},
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\CUSTOMISESTATION.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "GARAGE"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "GARAGE"},
                                {"NameHash", "1933274541"},
                                {"TransX", "21.3999977"},
                                {"TransY", "9"},
                                {"TransZ", "-18.031249"},
                                {"RotX", "0"},
                                {"RotY", "0"},
                                {"RotZ", "0"},
                                {"ScaleX", "1"},
                                {"ScaleY", "1"},
                                {"ScaleZ", "1"},
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\CUSTOMISESTATION.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "GARAGE"},
                            ["SECTION_ACTIVE"] = 2,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransZ", "2.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESKN.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 2,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 3,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransZ", "6.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESK.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 3,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 4,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "WaitingRoomChair1"},
                                {"NameHash", "66199794"},
                                {"TransX", "35.39379"},
                                {"TransY", "16.6"},
                                {"TransZ", "-0.031249"},
                                {"RotX", "0"},
                                {"RotY", "90"},
                                {"RotZ", "0"},
                                {"ScaleX", "0.81"},
                                {"ScaleY", "0.81"},
                                {"ScaleZ", "0.81"},
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIPSALVAGETERMINAL.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WaitingRoomChair1"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 4,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "36.3999977"},
                                {"TransY", "16.6126556"},
                                {"TransZ", "4.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESK.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 4,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 5,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "36.3999977"},
                                {"TransY", "16.6126556"},
                                {"TransZ", "4.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESK.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 5,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 6,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "36.3999977"},
                                {"TransY", "16.6126556"},
                                {"TransZ", "5.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESK.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 6,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 7,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "36.3999977"},
                                {"TransY", "16.6126556"},
                                {"TransZ", "7.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESK.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 7,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 8,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "36.3999977"},
                                {"TransY", "16.6126556"},
                                {"TransZ", "8.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESK.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "polySurface5"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                                {"TransY", "21.8392277"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransZ", "12.5628939"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "29.4657764"},
                                {"TransZ", "12.6937494"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_2"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "24.8379288"},
                                {"TransZ", "12.6010628"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_4"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"RotY", "-25.2407475"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_5"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "28.3435974"},
                                {"RotY", "-164.709351"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_6"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"RotY", "61.3157845"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_7"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "35.0145073"},
                                {"RotY", "60.6414337"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_8"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"RotY", "131.139267"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_10"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "35.0009155"},
                                {"RotY", "122.839821"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_11"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "31.5608082"},
                                {"TransZ", "-12.4958715"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_12"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "31.1358376"},
                                {"TransZ", "-13.2395725"},
                                {"RotY", "-137.085632"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_13"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "24.6166229"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_14"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransZ", "-12.7503586"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LAYOUTS\LAYOUT_WARRIOR.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder11"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransY", "16.2385635"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder10"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransY", "16.2385635"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder9"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransY", "16.2385635"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder8"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "23.5094128"},
                                {"TransY", "17.0303726"},
                                {"TransZ", "10.5000019"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder7"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "23.5094128"},
                                {"TransY", "17.0303726"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder6"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "23.5094128"},
                                {"TransY", "17.0303726"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder5"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "23.5094128"},
                                {"TransY", "17.0303726"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder4"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                                {"TransY", "21.7999783"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder3"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                                {"TransY", "21.7999783"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder2"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                                {"TransY", "21.7999783"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                                {"TransY", "21.7999783"},
                                {"TransZ", "10.5000038"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight10"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight9"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight8"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight7"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "23.5043068"},
                                {"TransY", "17.0222378"},
                                {"TransZ", "-10.4999971"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight6"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "23.5043068"},
                                {"TransY", "17.0222378"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight5"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "23.5043068"},
                                {"TransY", "17.0222378"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight4"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "23.5043068"},
                                {"TransY", "17.0222378"},
                                {"TransZ", "10.5000019"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefScreen6"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "40.1096725"},
                                {"RotX", "36.8359146"},
                                {"RotY", "-90"},
                                {"ScaleX", "1"},
                                {"ScaleY", "1"},
                                {"ScaleZ", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefScreen5"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "40.1096725"},
                                {"RotX", "36.8359146"},
                                {"RotY", "-90"},
                                {"ScaleX", "1"},
                                {"ScaleY", "1"},
                                {"ScaleZ", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefScreen4"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "40.1096725"},
                                {"RotX", "36.8359146"},
                                {"RotY", "-90"},
                                {"ScaleX", "1"},
                                {"ScaleY", "1"},
                                {"ScaleZ", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefScreen3"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "40.1096725"},
                                {"RotX", "36.8359146"},
                                {"RotY", "-90"},
                                {"ScaleX", "1"},
                                {"ScaleY", "1"},
                                {"ScaleZ", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefScreen2"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "38.1476173"},
                                {"TransY", "21.4691162"},
                                {"RotX", "-45.0000038"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefScreen1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "38.1476173"},
                                {"TransY", "21.4691162"},
                                {"RotX", "-45.0000038"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefScreen"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "38.1476173"},
                                {"TransY", "21.4691162"},
                                {"RotX", "-45.0000038"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RoofMonitor4"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "28.4069328"},
                                {"TransZ", "10.5000038"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RoofMonitor3"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "28.4069328"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RoofMonitor2"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "28.4597683"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RoofMonitor1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "28.4597683"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight3"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"RotX", "61.8413658"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"RotX", "61.8413658"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"RotX", "61.8413658"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "polySurface5"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "33.3999977"},
                                {"TransY", "21.8392277"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "37.3999977"},
                                {"TransY", "16.6126556"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransZ", "2.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESKN.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 2,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 3,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransZ", "6.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESK.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 3,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 4,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "GARAGE"},
                                {"NameHash", "1933274541"},
                                {"TransX", "21.3999977"},
                                {"TransY", "9"},
                                {"TransZ", "18.031249"},
                                {"RotY", "-180"},
                                {"ScaleX", "1"},
                                {"ScaleY", "1"},
                                {"ScaleZ", "1"},
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\CUSTOMISESTATION.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "GARAGE"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 4,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Name", "GARAGE"},
                                {"NameHash", "1933274541"},
                                {"TransX", "21.3999977"},
                                {"TransY", "9"},
                                {"TransZ", "-18.031249"},
                                {"RotY", "0"},
                                {"ScaleX", "1"},
                                {"ScaleY", "1"},
                                {"ScaleZ", "1"},
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\CUSTOMISESTATION.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "GARAGE"},
                            ["SECTION_ACTIVE"] = 2,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 4,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "36.3999977"},
                                {"TransZ", "4.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESK.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 4,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 5,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "36.3999977"},
                                {"TransZ", "4.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESK.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 5,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 6,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "36.3999977"},
                                {"TransZ", "5.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESK.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 6,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 7,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "36.3999977"},
                                {"TransZ", "7.031249"},
                                {"RotY", "0"},
                                {"Value", "MODELS\FW\MONITORDESK.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 7,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = TradingPost_Template_SceneData,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Terminal_Tradingpost"},
                            ["SECTION_ACTIVE"] = 8,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "39.3999977"},
                                {"TransY", "17.6126556"},
                                {"TransZ", "12.031249"},
                                {"RotY", "0"},
                                {"ScaleX", "0.5"},
                                {"ScaleY", "0.5"},
                                {"ScaleZ", "0.5"},
                                {"Value", "MODELS\SPACE\ANOMALY\PARTS\WEAPONCRATE\WEAPONCRATE.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "29.4657764"},
                                {"TransZ", "12.6937494"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransZ", "12.5628939"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_2"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "24.8379288"},
                                {"TransZ", "12.6010628"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_4"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "35.0145073"},
                                {"RotY", "60.6414337"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_5"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"RotY", "131.139267"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_7"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "35.0009155"},
                                {"RotY", "122.839821"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_8"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"RotY", "61.3157845"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_9"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "28.3435974"},
                                {"RotY", "-164.709351"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_10"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"RotY", "-25.2407475"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_11"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "31.5608082"},
                                {"TransZ", "-12.4958715"},
                                {"RotY", "7.664297"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_12"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "31.1358376"},
                                {"TransZ", "-13.2395725"},
                                {"RotY", "-137.085632"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_13"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransX", "24.6166229"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPCHIREABLE_14"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TransZ", "-12.7503586"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\TKREFSCENE.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefLightTable"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\LIGHTTABLE.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\BARRACKS\CORNER_BUNK00.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\BARRACKS\CORNER00.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\BARRACKS\CORNER01.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\BARRACKS\CORNER03.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\BARRACKS\CORNER04.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\BARRACKS\DEADEND_BUNK0.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefLightTable"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\LIGHTTABLE.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\BARRACKS\ROOM_DEADEND2.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefLightTable"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\LIGHTTABLE.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\BARRACKS\ROOM_DEADEND3.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\BARRACKS\ROOM_DEADEND4.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\BARRACKS\ROOM_INCORNER_1_9.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\BARRACKS\ROOM_WALL5.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\BARRACKS\ROOM_WALL6.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefLightTable"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\LIGHTTABLE.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\BARRACKS\WALL_BUNK00.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefLightTable"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\LIGHTTABLE.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\BARRACKS\WALL00.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefLightTable"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\LIGHTTABLE.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\BARRACKS\WALL01.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\BARRACKS\WALL02.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefLightTable"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\LIGHTTABLE.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\BARRACKS\WALL03.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed1"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\INFESTATION\MEDI_CORNER_HANGING0.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pasted__RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\MEDI\ROOM_DEADEND2.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\MEDI\ROOM_INCORNER_1_1.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        --{
                        --    ["SPECIAL_KEY_WORDS"] = {"NameHash", "3251089518"},
                        --    ["VALUE_CHANGE_TABLE"] = {
                        --        {"Name", "MODELS\SPACE\POI\DUNGEON\MEDI\ROOM_INCORNER_1_1"},
                        --        {"NameHash", "587430681"},
                        --    }
                        --},
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "GEOMETRY"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\SPACE\POI\DUNGEON\MEDI\ROOM_INCORNER_1_1.GEOMETRY.MBIN"},
                            }
                        },
                        --{
                        --    ["SPECIAL_KEY_WORDS"] = {"Name", "RefDeadEndC"},
                        --    ["VALUE_CHANGE_TABLE"] = {
                        --        {"Name", "LAYER3_"},
                        --        {"NameHash", "3014152897"},
                        --        {"Type", "LOCATOR"},
                        --        {"TransZ", "8"},
                        --        {"RotY", "-90"},
                        --    }
                        --},
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\MEDI\ROOM_INCORNER_1_4.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\MEDI\ROOM_WALL_1_0.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\MEDI\ROOM_WALL_1_1.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\MEDI\ROOM_WALL_1_3.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\MEDI\PODS\ROOM_WALL0.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBed"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value", "MODELS\V\BED.SCENE.MBIN"},
                            }
                        },
                    }
                },
            }
        }
    }
}