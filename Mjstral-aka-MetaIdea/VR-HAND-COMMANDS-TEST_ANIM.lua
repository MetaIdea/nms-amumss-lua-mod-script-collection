ANIMS = 
{
"POSE_HND_FIST_L",
"POSE_HND_FIST_R",
"POSE_HND_PNT_R",
"HND_CTRL_CPIT_L",
"HND_CTRL_CPIT_R",
"HND_CPIT_EJCT_L",
"HND_CPIT_EJCT_R",
"IN_SHIP",

"HND_CPIT_EXO_L",
"HND_CPIT_EXO_R",

"HND_TCH_HLD_R",
"HND_TCH_HLD_L",
"HND_TCH_GRP_R",
"HND_TCH_GRP_L",

"POSE_HND_PNT_L",





"0H_IDLE_TOUCH",


"0H_INT_CNSL_IN",
"0H_INT_CNSL_LP",
"0H_INT_CNSL_OUT",
"0H_INT_RT_01_IN",
"0H_INT_RT_01_LP",
"0H_INT_RT_01_OU",
"0H_INT_RT_02_IN",
"0H_INT_RT_02_LP",
"0H_INT_RT_02_OU",
"0H_INT_RT_03",
"0H_INT_RT_04",

"1H_INT_IPD_01",
"1H_INT_IPD_02",
"1H_INSIT_IPD_01",
"1H_INSIT_IPD_01",

"1H_INT_IPD_03",
"1H_INT_IPD_04",
"1H_INT_IPD_05",

"ANY2MELBOOST",
"MELBOOST",

"0H_IDLE_VR",	
}

function GetAnims(ANIM_NAME)
return [[
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="]] .. ANIM_NAME .. [[" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcDisplayText.xml">
                  <Property name="HUDTextDisplayType" value="Tooltip" />
                  <Property name="Title" value="]] .. ANIM_NAME .. [[" />
                  <Property name="Subtitle1" value="" />
                  <Property name="Subtitle2" value="" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
              </Property>
            </Property>		
]]
end

ANIM_ACTIONS = ""
for i=1,#ANIMS,1 do
	ANIM_ACTIONS = ANIM_ACTIONS .. GetAnims(ANIMS[i])
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "VR-HAND-COMMANDS.pak", 
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.24",
["MOD_DESCRIPTION"]			= "Adds certain fucntions to hand caused by fast hand close-open repetitions",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						--"MODELS\UI\WORLD\UI_HAND\ENTITIES\UI_HAND.ENTITY.MBIN",
						--"MODELS\COMMON\HMD\HMDDRONE\ENTITIES\HMDDRONEDATA.ENTITY.MBIN",
						"MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] 	= { "Components" },
							["LINE_OFFSET"] 			= "+0",
							["ADD"] 	= 
[[
			
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">

]] .. ANIM_ACTIONS .. [[
		  
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
    </Property>
]] 
						}
					}
				}
			}
		}
	}	
}