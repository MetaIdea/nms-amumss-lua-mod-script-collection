SHIPTYPE 	= "EXOTIC"
ALTID 		= "_SCLASSSHIP_ROY _ENGINE_C _WINGS_A _COCKPIT_A _LANDINGGEAR_A _TOPWING_C"

COLOR =
{
	["Primary"] 	= { ["R"]="0.1", ["G"]="0.1", ["B"]="0.1" 	},
	["Secondary"] 	= { ["R"]="0.1", ["G"]="0.1", ["B"]="0.1" 	},
	["Tertiary"] 	= { ["R"]="0.1", ["G"]="0.1", ["B"]="0.1" 	},
	["Decal"] 		= { ["R"]="0.1", ["G"]="0.1", ["B"]="0.1" 	},
}
----------------SCRIPT AREA------------------------------

SHIP_TYPE_LIST = { "FIGHTER", "DROPSHIP", "SCIENTIFIC", "SHUTTLE", "EXOTIC" }

SHIP_TYPE_PATH = 
{
	["FIGHTER"]="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN",
	["DROPSHIP"]="MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN",
	["SCIENTIFIC"]="MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN",
	["SHUTTLE"]="MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN",
	["EXOTIC"]="MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN"
}

SHIP_PARTS =
{	
	["_SCLASSSHIP_"] =
	{ 
		["_SCLASSSHIP_ROY"] = 
		{
			["_ENGINE_"] 		= { "_ENGINE_A", "_ENGINE_B", "_ENGINE_C" },
			["_WINGS_"] 		= { "_WINGS_A", "_WINGS_B", "_WINGS_C" },
			["_COCKPIT_"]		= { "_COCKPIT_A" },
			["_LANDINGGEAR_"]	= { "_LANDINGGEAR_A" },
			["_TOPWING_"] 		= { "_TOPWING_A", "_TOPWING_B", "_TOPWING_C" }
		},
		["_SCLASSSHIP_SQU"] 	= {}
	}
}

DROPSHIP =
[[
      >"_COCKPIT_"
          "_COCKPIT_A"
          "_COCKPIT_C"
          "_COCKPIT_D"
          "_COCKPIT_E"
          "_COCKPIT_B"
          "_COCKPIT_F"
          "_COCKPIT_G"
          "_COCKPIT_H"
      >"_HULL_"
          "_HULL_A"
                  >"_WINGS_"
                      "_WINGS_A"
                              >"_THRUSTERS_"
                                  "_THRUSTERS_A"
                                          >"_SUBWINGS_"
                                              "_SUBWINGS_A"
                                              "_SUBWINGS_B"
                                              "_SUBWINGS_C"
                                              "_SUBWINGS_D"
                                              "_SUBWINGS_E"
                                              "_SUBWINGS_F"
                                              "_SUBWINGS_G"
                                              "_SUBWINGS_H"
                                              "_SUBWINGS_I"
                                              "_SUBWINGS_NULL1"
                                  "_THRUSTERS_B"
                                          >"_SUBWINGS_"
                                              "_SUBWINGS_A1"
                                              "_SUBWINGS_B1"
                                              "_SUBWINGS_C1"
                                              "_SUBWINGS_D1"
                                              "_SUBWINGS_E1"
                                              "_SUBWINGS_F1"
                                              "_SUBWINGS_G1"
                                              "_SUBWINGS_H1"
                                              "_SUBWINGS_I1"
                                              "_SUBWINGS_NULL"
                                  "_THRUSTERS_C"
                                          >"_SUBWINGS_"
                                              "_SUBWINGS_A2"
                                              "_SUBWINGS_B2"
                                              "_SUBWINGS_C2"
                                              "_SUBWINGS_D2"
                                              "_SUBWINGS_E2"
                                              "_SUBWINGS_F2"
                                              "_SUBWINGS_G2"
                                              "_SUBWINGS_H2"
                                              "_SUBWINGS_I2"
                                              "_SUBWINGS_NULL2"
                      "_WINGS_B"
                              >"_THRUSTERS_"
                                  "_THRUSTERS_A1"
                                          >"_SUBWINGS_"
                                              "_SUBWINGS_A3"
                                              "_SUBWINGS_B3"
                                              "_SUBWINGS_C3"
                                              "_SUBWINGS_D3"
                                              "_SUBWINGS_E3"
                                              "_SUBWINGS_F3"
                                              "_SUBWINGS_G3"
                                              "_SUBWINGS_H3"
                                              "_SUBWINGS_I3"
                                              "_SUBWINGS_NULL3"
                                  "_THRUSTERS_B1"
                                          >"_SUBWINGS_"
                                              "_SUBWINGS_A4"
                                              "_SUBWINGS_B4"
                                              "_SUBWINGS_C4"
                                              "_SUBWINGS_D4"
                                              "_SUBWINGS_E4"
                                              "_SUBWINGS_F4"
                                              "_SUBWINGS_G4"
                                              "_SUBWINGS_H4"
                                              "_SUBWINGS_I4"
                                              "_SUBWINGS_NULL4"
                                  "_THRUSTERS_C1"
                                          >"_SUBWINGS_"
                                              "_SUBWINGS_A5"
                                              "_SUBWINGS_B5"
                                              "_SUBWINGS_C5"
                                              "_SUBWINGS_D5"
                                              "_SUBWINGS_E5"
                                              "_SUBWINGS_F5"
                                              "_SUBWINGS_G5"
                                              "_SUBWINGS_H5"
                                              "_SUBWINGS_I5"
                                              "_SUBWINGS_NULL5"
                      "_WINGS_C"
                              >"_THRUSTERS_"
                                  "_THRUSTERS_A2"
                                          >"_SUBWINGS_"
                                              "_SUBWINGS_A6"
                                              "_SUBWINGS_B6"
                                              "_SUBWINGS_C6"
                                              "_SUBWINGS_D6"
                                              "_SUBWINGS_E6"
                                              "_SUBWINGS_F6"
                                              "_SUBWINGS_G6"
                                              "_SUBWINGS_H6"
                                              "_SUBWINGS_I6"
                                              "_SUBWINGS_NULL6"
                                  "_THRUSTERS_B2"
                                          >"_SUBWINGS_"
                                              "_SUBWINGS_A7"
                                              "_SUBWINGS_B7"
                                              "_SUBWINGS_C7"
                                              "_SUBWINGS_D7"
                                              "_SUBWINGS_E7"
                                              "_SUBWINGS_F7"
                                              "_SUBWINGS_G7"
                                              "_SUBWINGS_H7"
                                              "_SUBWINGS_I7"
                                              "_SUBWINGS_NULL7"
                                  "_THRUSTERS_C2"
                                          >"_SUBWINGS_"
                                              "_SUBWINGS_A8"
                                              "_SUBWINGS_B8"
                                              "_SUBWINGS_C8"
                                              "_SUBWINGS_D8"
                                              "_SUBWINGS_E8"
                                              "_SUBWINGS_F8"
                                              "_SUBWINGS_G8"
                                              "_SUBWINGS_H8"
                                              "_SUBWINGS_I8"
                                              "_SUBWINGS_NULL8"
                                  "_THRUSTERS_D2"
                                          >"_SUBWINGS_"
                                              "_SUBWINGS_A31"
                                              "_SUBWINGS_B31"
                                              "_SUBWINGS_D27"
                                              "_SUBWINGS_E27"
                                              "_SUBWINGS_F27"
                                              "_SUBWINGS_G27"
                                              "_SUBWINGS_H27"
                                              "_SUBWINGS_I27"
                                              "_SUBWINGS_NULL3"
                      "_WINGS_D"
                      "_WINGS_1"
                      "_WINGS_2"
                      "_WINGS_NONE"
                  >"_ENGINES_"
                      "_ENGINES_A"
                              >"_SUBWINGS_"
                                  "_SUBWINGS_A27"
                                  "_SUBWINGS_B27"
                                  "_SUBWINGS_NULL2"
                      "_ENGINES_B"
                              >"_SUBWINGS_"
                                  "_SUBWINGS_NULL2"
                                  "_SUBWINGS_B28"
                                  "_SUBWINGS_A28"
                      "_ENGINES_C"
]]

function GetRandomAltID(shipType)
	local ALTID = ""
	local MAIN_INIT = false
	local IsPartTable = function(subtable)
	end
	for mainpart1, subpart in SHIP_PARTS[shipType] do
		for mainpart2, subpart2 in subpart1 do
			if not MAIN_INIT then
				ALTID = mainpart2
				MAIN_INIT = true
			end
			ALTID = ALTID .. " " .. subpart[math.random(#subpart2)]
		end
	end
	return ALTID
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "zzzzzzCustomShip.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["MOD_DESCRIPTION"]			= "Build your custom ship with ALTID method in this script and use it ingame",
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
          <Property name="Anim" value="CUSTOMSHIP" />
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
          <Property name="StateID" value="CUSTOMSHIP" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="CUSTOMSHIP" />
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
                <Property name="Anim" value="CUSTOMSHIP" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>			  
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="CUSTOMSHIP" />
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
      <Property name="Title" value="Custom Ship" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="CUSTOMSHIP" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/COMPONENTS/STAR.DDS" />
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
      <Property name="Title" value="Custom Ship" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="CUSTOMSHIP" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/COMPONENTS/STAR.DDS" />
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
      <Property name="Id" value="CUSTOMSHIP" />
      <Property name="Common" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			  <Property name="Reward" value="GcRewardSpecificShip.xml">
				<Property name="ShipResource" value="GcResourceElement.xml">
				  <Property name="Filename" value="]] .. SHIP_TYPE_PATH[SHIPTYPE] .. [[" />
				  <Property name="Seed" value="GcSeed.xml">
					<Property name="Seed" value="0" />
					<Property name="UseSeedValue" value="False" />
				  </Property>
				  <Property name="AltId" value="]] .. ALTID .. [[" />
				  <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
					  <Property name="Samplers">
						<Property value="TkProceduralTextureChosenOptionSampler.xml">
						  <Property name="Options">
							<Property value="TkProceduralTextureChosenOption.xml">
							  <Property name="Layer" value="OVERLAY" />
							  <Property name="Group" value="" />
							  <Property name="Palette" value="TkPaletteTexture.xml">
								<Property name="Palette" value="Rock" />
								<Property name="ColourAlt" value="Primary" />
							  </Property>
							  <Property name="OverrideColour" value="True" />
							  <Property name="Colour" value="Colour.xml">
								<Property name="R" value="1.0" />
								<Property name="G" value="0.0" />
								<Property name="B" value="0.0" />
								<Property name="A" value="1" />
							  </Property>
							  <Property name="OptionName" value="" />
							</Property>
						  </Property>
						</Property>
						<Property value="TkProceduralTextureChosenOptionSampler.xml">
						  <Property name="Options">
							<Property value="TkProceduralTextureChosenOption.xml">
							  <Property name="Layer" value="MARKINGS" />
							  <Property name="Group" value="" />
							  <Property name="Palette" value="TkPaletteTexture.xml">
								<Property name="Palette" value="Rock" />
								<Property name="ColourAlt" value="Alternative1" />
							  </Property>
							  <Property name="OverrideColour" value="True" />
							  <Property name="Colour" value="Colour.xml">
								<Property name="R" value="1.0" />
								<Property name="G" value="0.0" />
								<Property name="B" value="0.0" />
								<Property name="A" value="1" />
							  </Property>
							  <Property name="OptionName" value="" />
							</Property>
						  </Property>
						</Property>
						<Property value="TkProceduralTextureChosenOptionSampler.xml">
						  <Property name="Options">
							<Property value="TkProceduralTextureChosenOption.xml">
							  <Property name="Layer" value="PAINT" />
							  <Property name="Group" value="" />
							  <Property name="Palette" value="TkPaletteTexture.xml">
								<Property name="Palette" value="Paint" />
								<Property name="ColourAlt" value="Primary" />
							  </Property>
							  <Property name="OverrideColour" value="True" />
							  <Property name="Colour" value="Colour.xml">
								<Property name="R" value="1.0" />
								<Property name="G" value="0.0" />
								<Property name="B" value="0.0" />
								<Property name="A" value="1" />
							  </Property>
							  <Property name="OptionName" value="" />
							</Property>
						  </Property>
						</Property>
						<Property value="TkProceduralTextureChosenOptionSampler.xml">
						  <Property name="Options">
							<Property value="TkProceduralTextureChosenOption.xml">
							  <Property name="Layer" value="BASE" />
							  <Property name="Group" value="" />
							  <Property name="Palette" value="TkPaletteTexture.xml">
								<Property name="Palette" value="Metal" />
								<Property name="ColourAlt" value="Primary" />
							  </Property>
							  <Property name="OverrideColour" value="True" />
							  <Property name="Colour" value="Colour.xml">
								<Property name="R" value="1.0" />
								<Property name="G" value="0.0" />
								<Property name="B" value="0.0" />
								<Property name="A" value="1" />
							  </Property>
							  <Property name="OptionName" value="" />
							</Property>
						  </Property>
						</Property>
					  </Property>
				  </Property>
				</Property>
				<Property name="ShipLayout" value="GcInventoryLayout.xml">
				  <Property name="Slots" value="48" />
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
					  <Property name="Id" value="LAUNCHER" />
					  <Property name="Amount" value="0" />
					  <Property name="MaxAmount" value="300" />
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
					  <Property name="Id" value="SHIPJUMP1" />
					  <Property name="Amount" value="0" />
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
					  <Property name="Id" value="SHIPGUN1" />
					  <Property name="Amount" value="1000" />
					  <Property name="MaxAmount" value="1000" />
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
					  <Property name="Id" value="HYPERDRIVE" />
					  <Property name="Amount" value="24" />
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
					  <Property name="Id" value="SHIPLAS1" />
					  <Property name="Amount" value="1000" />
					  <Property name="MaxAmount" value="1000" />
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
				  <Property name="SubstanceMaxStorageMultiplier" value="0" />
				  <Property name="ProductMaxStorageMultiplier" value="0" />
				  <Property name="BaseStatValues" />
				  <Property name="SpecialSlots" />
				  <Property name="Width" value="0" />
				  <Property name="Height" value="0" />
				  <Property name="IsCool" value="False" />
				  <Property name="Version" value="0" />
				</Property>
			  </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
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

