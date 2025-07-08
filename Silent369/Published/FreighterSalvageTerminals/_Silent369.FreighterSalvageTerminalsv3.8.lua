local modfilename = "FreighterSalvageTerminals"
local lua_author  = "Silent"
local lua_version = "3.8"
local mod_author  = "Silent369"
local nms_version = "5.73"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Adds MultiTool / Ship Salvage Terminals to the rear of your Freighter's Hanger Teleport
Lift Area where there are accessible stairs for easy access. The terminals have been
scaled down very slightly in order to fit better within the selected area.
The mod also replaces the freighter landing pads with that of the new space station.
]]

--Inspired by TheLich's original mod: https://www.nexusmods.com/nomanssky/mods/1734
--But this mod no longer works due to the changes to Freighter layouts.
--So, i decided to fix it.

--Modifies
--"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGAR.SCENE.MBIN"
--"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARGHOST.SCENE.MBIN"
--"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPIRATE.SCENE.MBIN"

--|----------------------------------------------------------------------------------------
--| Transform Data for each terminal.
--|----------------------------------------------------------------------------------------

--Salvage Terminals NameHash
local m_ShipNHash ="2509059409"
local m_MultNHash ="932601899"

--Left Termainal
local m_TransXL = "-22.66539"
local m_TransYL = "-4.297458"
local m_TransZL = "41.33"
local m_ScaleXL = "0.85"
local m_ScaleYL = "0.85"
local m_ScaleZL = "0.85"

--Right Terminal
local m_TransXR = "22.66539"
local m_TransYR = m_TransYL
local m_TransZR = m_TransZL
local m_ScaleXR = m_ScaleXL
local m_ScaleYR = m_ScaleYL
local m_ScaleZR = m_ScaleZL

--|----------------------------------------------------------------------------------------
--| Salvage Terminal Sections to Inject
--|----------------------------------------------------------------------------------------

local m_SalvageTerminalL =
[[
				<Property name="Children" value="TkSceneNodeData">
					<Property name="Name" value="SalvageTerminalL" />
					<Property name="NameHash" value="]]..m_ShipNHash..[[" />
					<Property name="Type" value="REFERENCE" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="]]..m_TransXL..[[" />
						<Property name="TransY" value="]]..m_TransYL..[[" />
						<Property name="TransZ" value="]]..m_TransZL..[[" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="]]..m_ScaleXL..[[" />
						<Property name="ScaleY" value="]]..m_ScaleYL..[[" />
						<Property name="ScaleZ" value="]]..m_ScaleZL..[[" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData">
							<Property name="Name" value="SCENEGRAPH" />
							<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIPSALVAGETERMINAL.SCENE.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData">
							<Property name="Name" value="EMBEDGEOMETRY" />
							<Property name="Value" value="TRUE" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
]]

local m_SalvageTerminalR =
[[
				<Property name="Children" value="TkSceneNodeData">
					<Property name="Name" value="SalvageTerminalR" />
					<Property name="NameHash" value="]]..m_MultNHash..[[" />
					<Property name="Type" value="REFERENCE" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="]]..m_TransXR..[[" />
						<Property name="TransY" value="]]..m_TransYR..[[" />
						<Property name="TransZ" value="]]..m_TransZR..[[" />
						<Property name="RotX" value="0.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="]]..m_ScaleXR..[[" />
						<Property name="ScaleY" value="]]..m_ScaleYR..[[" />
						<Property name="ScaleZ" value="]]..m_ScaleZR..[[" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData">
							<Property name="Name" value="SCENEGRAPH" />
							<Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\MULTITOOLSALVAGETERMINAL.SCENE.MBIN" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData">
							<Property name="Name" value="EMBEDGEOMETRY" />
							<Property name="Value" value="TRUE" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
]]

--|----------------------------------------------------------------------------------------
--| Main Script Start
--|----------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = table.concat({modfilename, ".v", lua_version}),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_DESCRIPTION = description,
    MOD_MAINTENANCE = maintenance,
    EXML_CREATE     = exmlcreate,
    MODIFICATIONS   =
    {
        {
            MBIN_CT =
            {
                {
                    MBIN_FS = {
                        [[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR.SCENE.MBIN]],
                        [[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARPIRATE.SCENE.MBIN]],
                    },
                    MXML_CT = {
                        {
                            SKW = {"Children", "TkSceneNodeData", "Name", "HangarA"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = m_SalvageTerminalL
                        },
                        {
                            SKW = {"Name", "SalvageTerminalL"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = m_SalvageTerminalR
                        },
                    }
                },
                {
                    MBIN_FS = [[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARGHOST.SCENE.MBIN]],
                    MXML_CT = {
                        {
                            SKW = {"Children", "TkSceneNodeData", "Name", "HangarPadLOD4"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = m_SalvageTerminalL
                        },
                        {
                            SKW = {"Name", "SalvageTerminalL"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = m_SalvageTerminalR
                        },
                    }
                },
            },
        }
    }
}
