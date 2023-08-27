Author = "Mjstral,Gumsk"
ModName = "gShip Custom Ships Summoner"
ModNameSub = "N1 Mando S Class"
BaseDescription = "Summons new ship models from gShip Custom Ships"
GameVersion = "4412"
ModVersion = "a"

--[[Files Used:
MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENTITIES/PLAYERCHARACTER.ENTITY.MBIN
METADATA/UI/EMOTEMENU.MBIN
METADATA/REALITY/TABLES/REWARDTABLE.MBIN
]]--

ShipInfo = 	{
	{"GOLDENVECTOR",		"Golden Vector",			"1"},
	{"N1MANDO",				"N1 Mandalorian",			"2"},
}

NewRewardEntry = ""
FinalRewardEntries = ""
NewEmoteEntry = ""
FinalEmoteEntries = ""
NewPCAnimEntry = ""
FinalPCAnimEntries = ""
NewPCTriggerEntry = ""
FinalPCTriggerEntries = ""

for i = 1,#ShipInfo do
	NewRewardEntry = [[
		<Property value="GcGenericRewardTableEntry.xml">
		  <Property name="Id" value="]]..ShipInfo[i][1]..[[" />
		  <Property name="List" value="GcRewardTableItemList.xml">
			<Property name="RewardChoice" value="Select" />
			<Property name="OverrideZeroSeed" value="False" />
			<Property name="List">
			  <Property value="GcRewardTableItem.xml">
				<Property name="PercentageChance" value="100" />
				<Property name="Reward" value="GcRewardSpecificShip.xml">
				  <Property name="ShipResource" value="GcResourceElement.xml">
					<Property name="Filename" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERCLASSICGOLD.SCENE.MBIN" />
					<Property name="ResHandle" value="GcResource.xml">
					  <Property name="ResourceID" value="0" />
					</Property>
					<Property name="Seed" value="GcSeed.xml">
					  <Property name="Seed" value="]]..ShipInfo[i][3]..[[" />
					  <Property name="UseSeedValue" value="True" />
					</Property>
					<Property name="AltId" value="" />
					<Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
					  <Property name="Samplers" />
					</Property>
				  </Property>
				  <Property name="ShipLayout" value="GcInventoryLayout.xml">
					<Property name="Slots" value="60" />
					<Property name="Seed" value="GcSeed.xml">
					  <Property name="Seed" value="1" />
					  <Property name="UseSeedValue" value="False" />
					</Property>
					<Property name="Level" value="1" />
				  </Property>
				  <Property name="ShipInventory" value="GcInventoryContainer.xml">
					<Property name="Slots">
					  <Property value="GcInventoryElement.xml">
						<Property name="Type" value="GcInventoryType.xml">
						  <Property name="InventoryType" value="Technology" />
						</Property>
						<Property name="Id" value="LAUNCHER_SPEC" />
						<Property name="Amount" value="200" />
						<Property name="MaxAmount" value="200" />
						<Property name="DamageFactor" value="0" />
						<Property name="FullyInstalled" value="True" />
						<Property name="Index" value="GcInventoryIndex.xml">
						  <Property name="X" value="-1" />
						  <Property name="Y" value="-1" />
						</Property>
					  </Property>
					  <Property value="GcInventoryElement.xml">
						<Property name="Type" value="GcInventoryType.xml">
						  <Property name="InventoryType" value="Technology" />
						</Property>
						<Property name="Id" value="SHIPJUMP_SPEC" />
						<Property name="Amount" value="200" />
						<Property name="MaxAmount" value="200" />
						<Property name="DamageFactor" value="0" />
						<Property name="FullyInstalled" value="True" />
						<Property name="Index" value="GcInventoryIndex.xml">
						  <Property name="X" value="-1" />
						  <Property name="Y" value="-1" />
						</Property>
					  </Property>
					  <Property value="GcInventoryElement.xml">
						<Property name="Type" value="GcInventoryType.xml">
						  <Property name="InventoryType" value="Technology" />
						</Property>
						<Property name="Id" value="PHOTONIX_CORE" />
						<Property name="Amount" value="-1" />
						<Property name="MaxAmount" value="100" />
						<Property name="DamageFactor" value="0" />
						<Property name="FullyInstalled" value="True" />
						<Property name="Index" value="GcInventoryIndex.xml">
						  <Property name="X" value="-1" />
						  <Property name="Y" value="-1" />
						</Property>
					  </Property>
					  <Property value="GcInventoryElement.xml">
						<Property name="Type" value="GcInventoryType.xml">
						  <Property name="InventoryType" value="Technology" />
						</Property>
						<Property name="Id" value="SOLAR_SAIL" />
						<Property name="Amount" value="-1" />
						<Property name="MaxAmount" value="100" />
						<Property name="DamageFactor" value="0" />
						<Property name="FullyInstalled" value="True" />
						<Property name="Index" value="GcInventoryIndex.xml">
						  <Property name="X" value="-1" />
						  <Property name="Y" value="-1" />
						</Property>
					  </Property>
					  <Property value="GcInventoryElement.xml">
						<Property name="Type" value="GcInventoryType.xml">
						  <Property name="InventoryType" value="Technology" />
						</Property>
						<Property name="Id" value="SHIPSHIELD" />
						<Property name="Amount" value="200" />
						<Property name="MaxAmount" value="200" />
						<Property name="DamageFactor" value="0" />
						<Property name="FullyInstalled" value="True" />
						<Property name="Index" value="GcInventoryIndex.xml">
						  <Property name="X" value="-1" />
						  <Property name="Y" value="-1" />
						</Property>
					  </Property>
					  <Property value="GcInventoryElement.xml">
						<Property name="Type" value="GcInventoryType.xml">
						  <Property name="InventoryType" value="Technology" />
						</Property>
						<Property name="Id" value="HYPERDRIVE_SPEC" />
						<Property name="Amount" value="120" />
						<Property name="MaxAmount" value="120" />
						<Property name="DamageFactor" value="0" />
						<Property name="FullyInstalled" value="True" />
						<Property name="Index" value="GcInventoryIndex.xml">
						  <Property name="X" value="-1" />
						  <Property name="Y" value="-1" />
						</Property>
					  </Property>
					  <Property value="GcInventoryElement.xml">
						<Property name="Type" value="GcInventoryType.xml">
						  <Property name="InventoryType" value="Technology" />
						</Property>
						<Property name="Id" value="HDRIVEBOOST3" />
						<Property name="Amount" value="-1" />
						<Property name="MaxAmount" value="100" />
						<Property name="DamageFactor" value="0" />
						<Property name="FullyInstalled" value="True" />
						<Property name="Index" value="GcInventoryIndex.xml">
						  <Property name="X" value="-1" />
						  <Property name="Y" value="-1" />
						</Property>
					  </Property>
					  <Property value="GcInventoryElement.xml">
						<Property name="Type" value="GcInventoryType.xml">
						  <Property name="InventoryType" value="Technology" />
						</Property>
						<Property name="Id" value="SHIPSHOTGUN" />
						<Property name="Amount" value="100" />
						<Property name="MaxAmount" value="100" />
						<Property name="DamageFactor" value="0" />
						<Property name="FullyInstalled" value="True" />
						<Property name="Index" value="GcInventoryIndex.xml">
						  <Property name="X" value="-1" />
						  <Property name="Y" value="-1" />
						</Property>
					  </Property>
					  <Property value="GcInventoryElement.xml">
						<Property name="Type" value="GcInventoryType.xml">
						  <Property name="InventoryType" value="Technology" />
						</Property>
						<Property name="Id" value="T_SHIP_GREEN" />
						<Property name="Amount" value="-1" />
						<Property name="MaxAmount" value="100" />
						<Property name="DamageFactor" value="0" />
						<Property name="FullyInstalled" value="True" />
						<Property name="Index" value="GcInventoryIndex.xml">
						  <Property name="X" value="-1" />
						  <Property name="Y" value="-1" />
						</Property>
					  </Property>
					  <Property value="GcInventoryElement.xml">
						<Property name="Type" value="GcInventoryType.xml">
						  <Property name="InventoryType" value="Technology" />
						</Property>
						<Property name="Id" value="SHIPSCAN_ECON" />
						<Property name="Amount" value="-1" />
						<Property name="MaxAmount" value="100" />
						<Property name="DamageFactor" value="0" />
						<Property name="FullyInstalled" value="True" />
						<Property name="Index" value="GcInventoryIndex.xml">
						  <Property name="X" value="-1" />
						  <Property name="Y" value="-1" />
						</Property>
					  </Property>
					</Property>
					<Property name="ValidSlotIndices" />
					<Property name="Class" value="GcInventoryClass.xml">
					  <Property name="InventoryClass" value="S" />
					</Property>
					<Property name="StackSizeGroup" value="GcInventoryStackSizeGroup.xml">
                      <Property name="InventoryStackSizeGroup" value="Default" />
                    </Property>	   
					<Property name="BaseStatValues" />
					<Property name="SpecialSlots" />
					<Property name="Width" value="0" />
					<Property name="Height" value="0" />
					<Property name="IsCool" value="False" />
					<Property name="Name" value="" />
					<Property name="Version" value="0" />
				  </Property>
				  <Property name="ShipType" value="GcSpaceshipClasses.xml">
				    <Property name="ShipClass" value="Fighter" />
				  </Property>
				  <Property name="NameOverride" value="]]..ShipInfo[i][2]..[[" />
			 	  <Property name="IsGift" value="True" />
				  <Property name="IsRewardShip" value="True" />
				  <Property name="FormatAsSeasonal" value="False" />
			    </Property>
			  <Property name="LabelID" value="" />
			  </Property>
			</Property>
		  </Property>
		</Property>
	  ]]
	FinalRewardEntries = FinalRewardEntries..NewRewardEntry

	NewEmoteEntry = [[
	    <Property value="GcPlayerEmote.xml">
		  <Property name="Title" value="]]..ShipInfo[i][2]..[[" />
		  <Property name="ChatText" value="" />
		  <Property name="ChatUsesPrefix" value="False" />
		  <Property name="EmoteID" value="]]..ShipInfo[i][1]..[[" />
		  <Property name="AnimationName" value="]]..ShipInfo[i][1]..[[" />
		  <Property name="Icon" value="TkTextureResource.xml">
			<Property name="Filename" value="TEXTURES/UI/FRONTEND/COMPONENTS/STAR.DDS" />
			<Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
		  </Property>
		  <Property name="LinkedSpecialID" value="" />
		  <Property name="NeverShowInMenu" value="False" />
		  <Property name="LoopAnimUntilMove" value="" />
		  <Property name="CloseMenuOnSelect" value="True" />
		  <Property name="MoveToCancel" value="False" />
		  <Property name="GekAnimationName" value="" />
		  <Property name="GekLoopAnimUntilMove" value="" />
		  <Property name="AvailableUnderwater" value="False" />
		  <Property name="RidingAnimationName" value="]]..ShipInfo[i][1]..[[" />
		  <Property name="IsPetCommand" value="False" />
		  <Property name="PetCommandTitle" value="" />
		  <Property name="PetCommandIcon" value="TkTextureResource.xml">
			<Property name="Filename" value="" />
			<Property name="ResHandle" value="GcResource.xml">
			  <Property name="ResourceID" value="0" />
			</Property>
		  </Property>
		</Property>
      ]]
	FinalEmoteEntries = FinalEmoteEntries..NewEmoteEntry

	NewPCAnimEntry = [[
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="]]..ShipInfo[i][1]..[[" />
          <Property name="AdditiveBaseAnim" value="" />
		  <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN" />
          <Property name="StartNode" value="" />
		  <Property name="ExtraStartNodes" />
		  <Property name="GameData" value="TkAnimationGameData.xml">
            <Property name="RootMotionEnabled" value="False" />
            <Property name="BlockPlayerMovement" value="False" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
          <Property name="Priority" value="0" />
          <Property name="OffsetMin" value="0" />
          <Property name="OffsetMax" value="0" />
          <Property name="Delay" value="0" />
          <Property name="Speed" value="1" />
          <Property name="ActionStartFrame" value="0" />
          <Property name="ActionFrame" value="-1" />
		  <Property name="AdditiveBaseFrame" value="0" />
		  <Property name="AnimType" value="OneShot" />
          <Property name="CreatureSize" value="AllSizes" />
          <Property name="Additive" value="False" />
          <Property name="Mirrored" value="False" />
          <Property name="Active" value="True" />
		  <Property name="Has30HzFrames" value="False" />
        </Property>
	  ]]
	FinalPCAnimEntries = FinalPCAnimEntries..NewPCAnimEntry

	NewPCTriggerEntry = [[
		<Property value="GcTriggerActionComponentData.xml">
		  <Property name="HideModel" value="False" />
		  <Property name="StartInactive" value="False" />
		  <Property name="States">
			<Property value="GcActionTriggerState.xml">
			  <Property name="StateID" value="BOOT" />
			  <Property name="Triggers">
				<Property value="GcActionTrigger.xml">
				  <Property name="Event" value="GcAnimFrameEvent.xml">
					<Property name="Anim" value="]]..ShipInfo[i][1]..[[" />
					<Property name="FrameStart" value="0" />
					<Property name="StartFromEnd" value="False" />
				  </Property>
				  <Property name="Action">
					<Property value="GcRewardAction.xml">
					  <Property name="Reward" value="]]..ShipInfo[i][1]..[[" />
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
	FinalPCTriggerEntries = FinalPCTriggerEntries..NewPCTriggerEntry

end


NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"] 	= {
		{
			["MBIN_CHANGE_TABLE"] 	= {  
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENTITIES/PLAYERCHARACTER.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Filename","MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/0H_EMOTE_CALL_PET.ANIM.MBIN"}, 
							["REPLACE_TYPE"]        = "ADDAFTERSECTION",
							["ADD"] 				= FinalPCAnimEntries
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LodDistances"}, 
							["LINE_OFFSET"] 		= "-2",
							["ADD"] 				= FinalPCTriggerEntries
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/UI/EMOTEMENU.MBIN",
					["EXML_CHANGE_TABLE"] 	= {
						{
							["PRECEDING_KEY_WORDS"] = {"Emotes"}, 
								
							["ADD"] 				= FinalEmoteEntries
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GenericTable"}, 
								
							["ADD"] 				= FinalRewardEntries
						}
					}
				}
			}
		}
	},
	["ADD_FILES"] = {
		{
			["FILE_DESTINATION"] = [[MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.EXML]],
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