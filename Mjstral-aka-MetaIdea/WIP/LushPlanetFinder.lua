NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "zzzzzzzLushPlanetFinder.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["MOD_DESCRIPTION"]			= "Show lush planets",
["NMS_VERSION"]				= "2.0+",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{  
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Anims"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="SHOWPLANET" />
          <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN" />
          <Property name="AnimType" value="OneShot" />
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
          <Property name="StartNode" value="" />
          <Property name="ExtraStartNodes" />
          <Property name="Priority" value="0" />
          <Property name="LoopOffsetMin" value="0" />
          <Property name="LoopOffsetMax" value="0" />
          <Property name="Delay" value="0" />
          <Property name="Speed" value="1" />
          <Property name="ActionFrameStart" value="0" />
          <Property name="ActionFrame" value="-1" />
          <Property name="ControlCreatureSize" value="AllSizes" />
          <Property name="Additive" value="False" />
          <Property name="Mirrored" value="False" />
          <Property name="Active" value="True" />
          <Property name="AdditiveBaseAnim" value="" />
          <Property name="AdditiveBaseFrame" value="0" />
          <Property name="GameData" value="TkAnimationGameData.xml">
            <Property name="RootMotionEnabled" value="False" />
            <Property name="BlockPlayerMovement" value="False" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
        </Property>
]]
							
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LodDistances"}, 
							["LINE_OFFSET"] 		= "-2",
							["ADD"] 				= 
[[
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>		  
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="WAIT_FOR_ACTION" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>			
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ACTION" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="SignalScanner" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="LUSHPLANET" />
                </Property>
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="WAIT_FOR_ACTION" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>				
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="WAIT_FOR_ACTION" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="SHOWPLANET" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>			  
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ACTION" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>			
              </Property>
            </Property>	
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
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\UI\EMOTEMENU.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Emotes"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Show Lush Planet" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="SHOWPLANET" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/DISCOVERY/PLANET.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="LoopAnimUntilMov" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Show Lush Planet" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="SHOWPLANET" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/DISCOVERY/PLANET.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="LoopAnimUntilMov" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
    </Property>	
]]							
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GenericTable"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="LUSHPLANET" />
      <Property name="Common" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardScanEvent.xml">
              <Property name="Event" value="LUSHPLANET" />
              <Property name="ScanEventTable" value="Tutorial" />
              <Property name="DoAerialScan" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]]
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCANNING\SCANEVENTTABLETUTORIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Events"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
        <Property value="GcScanEventData.xml">
          <Property name="Name" value="LUSHPLANET" />
          <Property name="ForceInteraction" value="" />
          <Property name="ForceInteractionType" value="GcInteractionType.xml">
            <Property name="InteractionType" value="None" />
          </Property>
          <Property name="ForceBroken" value="False" />
          <Property name="ForceFixed" value="False" />
          <Property name="ForceOverridesAll" value="True" />
          <Property name="IsCommunityPortalOverride" value="False" />
          <Property name="ClearForcedInteractionOnCompletion" value="False" />
          <Property name="AlwaysShow" value="False" />
          <Property name="NeverShow" value="False" />
          <Property name="PlanetLabelText" value="" />
          <Property name="EventStartType" value="None" />
          <Property name="EventEndType" value="None" />
          <Property name="EventPriority" value="Regular" />
          <Property name="CanEndFromOutsideMission" value="False" />
          <Property name="DisableMultiplayerSync" value="False" />
          <Property name="ReplaceEventIfAlreadyActive" value="False" />
          <Property name="BuildingLocation" value="Random" />
          <Property name="BuildingType" value="Any" />
          <Property name="BuildingClass" value="GcBuildingClassification.xml">
            <Property name="BuildingClass" value="None" />
          </Property>
          <Property name="AllowFriendBases" value="True" />
          <Property name="SolarSystemLocation" value="Local" />
          <Property name="SolarSystemAttributes" value="GcScanEventSolarSystemLookup.xml">
            <Property name="UseStarType" value="True" />
            <Property name="UseWealth" value="False" />
            <Property name="Usetrading" value="False" />
            <Property name="Userace" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
              <Property name="GalaxyStarAnomaly" value="None" />
            </Property>
            <Property name="UseConflict" value="GcPlayerConflictData.xml">
              <Property name="ConflictLevel" value="Default" />
            </Property>
            <Property name="StarType" value="GcGalaxyStarTypes.xml">
              <Property name="GalaxyStarType" value="Yellow" />
            </Property>
            <Property name="TradingData" value="GcPlanetTradingData.xml">
              <Property name="WealthClass" value="GcWealthClass.xml">
                <Property name="WealthClass" value="Average" />
              </Property>
              <Property name="TradingClass" value="GcTradingClass.xml">
                <Property name="TradingClass" value="Mining" />
              </Property>
            </Property>
            <Property name="NeedsWaterPlanet" value="True" />
            <Property name="NeedsExtremeSentinelPlanet" value="False" />
            <Property name="NeedsBiome" value="True" />
            <Property name="AnyRGBBiome" value="False" />
            <Property name="NeedsBiomeType" value="GcBiomeType.xml">
              <Property name="Biome" value="Lush" />
            </Property>
            <Property name="NeedsEmptySystem" value="False" />
            <Property name="NeedsAbandonedSystem" value="False" />
            <Property name="NeedsResourceHint" value="" />
            <Property name="NeedsHighCreatureLevel" value="False" />
            <Property name="AllowUnsafeMatches" value="False" />
            <Property name="NeverAllowEmpty" value="False" />
            <Property name="SamePlanetAsEvent" value="" />
          </Property>
          <Property name="SolarSystemAttributesFallback" value="GcScanEventSolarSystemLookup.xml">
            <Property name="UseStarType" value="False" />
            <Property name="UseWealth" value="False" />
            <Property name="Usetrading" value="False" />
            <Property name="Userace" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
              <Property name="GalaxyStarAnomaly" value="None" />
            </Property>
            <Property name="UseConflict" value="GcPlayerConflictData.xml">
              <Property name="ConflictLevel" value="Default" />
            </Property>
            <Property name="StarType" value="GcGalaxyStarTypes.xml">
              <Property name="GalaxyStarType" value="Yellow" />
            </Property>
            <Property name="TradingData" value="GcPlanetTradingData.xml">
              <Property name="WealthClass" value="GcWealthClass.xml">
                <Property name="WealthClass" value="Average" />
              </Property>
              <Property name="TradingClass" value="GcTradingClass.xml">
                <Property name="TradingClass" value="Mining" />
              </Property>
            </Property>
            <Property name="NeedsWaterPlanet" value="False" />
            <Property name="NeedsExtremeSentinelPlanet" value="False" />
            <Property name="NeedsBiome" value="False" />
            <Property name="AnyRGBBiome" value="False" />
            <Property name="NeedsBiomeType" value="GcBiomeType.xml">
              <Property name="Biome" value="Lush" />
            </Property>
            <Property name="NeedsEmptySystem" value="False" />
            <Property name="NeedsAbandonedSystem" value="False" />
            <Property name="NeedsResourceHint" value="" />
            <Property name="NeedsHighCreatureLevel" value="False" />
            <Property name="AllowUnsafeMatches" value="False" />
            <Property name="NeverAllowEmpty" value="False" />
            <Property name="SamePlanetAsEvent" value="" />
          </Property>
          <Property name="ForceRestartInteraction" value="True" />
          <Property name="HasReward" value="" />
          <Property name="NextOption" value="" />
          <Property name="TriggerActions" value="GcScanEventTriggers.xml">
            <Property name="Range" value="100" />
            <Property name="Triggers" />
            <Property name="AllowRetrigger" value="False" />
          </Property>
          <Property name="UAsList" />
          <Property name="TechShopType" value="GcTechnologyCategory.xml">
            <Property name="TechnologyCategory" value="All" />
          </Property>
          <Property name="OSDMessage" value="" />
          <Property name="InterstellarOSDMessage" value="" />
          <Property name="MarkerLabel" value="UI_WIKI_GAS3_MARKER" />
          <Property name="MarkerIcon" value="TkTextureResource.xml">
            <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/UPDATE3/GAS.1.DDS" />
          </Property>
          <Property name="StartTime" value="0" />
          <Property name="MessageTime" value="0" />
          <Property name="MessageDisplayTime" value="4" />
          <Property name="MessageAudio" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="IconTime" value="4" />
          <Property name="TooltipTime" value="10" />
          <Property name="TooltipRepeats" value="False" />
          <Property name="ShowEndTooltip" value="True" />
          <Property name="TooltipMessage" value="" />
        </Property>
]]							
						}
					}
				}				
			}
		}		
	},
["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\ANIMS\EMOTES\NULL.ANIM.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkAnimMetadata">
  <Property name="FrameCount" value="10" />
  <Property name="NodeCount" value="0" />
  <Property name="NodeData" /> 
  <Property name="AnimFrameData">
    <Property value="TkAnimNodeFrameData.xml">
    <Property name="Rotations" />  
	<Property name="Translations" /> 
	<Property name="Scales" />
    </Property>  
  </Property>	
  <Property name="StillFrameData" value="TkAnimNodeFrameData.xml">
    <Property name="Rotations" />  
	<Property name="Translations" /> 
	<Property name="Scales" />	  
 </Property>
</Data>	
]]			
		}
	}
}