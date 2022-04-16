NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "RoboDogCompanion.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "3.13+",
["DESCRIPTION"]				= "Spawnable rideable robo dog with it's own inventory that will always follow and protect you",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.4C482859.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"]     = 
					{ 
						{ 
							[[MODELS/COMMON/ROBOTS/QUADRUPED.SCENE.MBIN]],
							[[MODELS/COMMON/ROBOTS/ROBOCOMPANION.SCENE.MBIN]],
							"REMOVE"
						}, 
					},
				},
				{
					["MBIN_FILE_SOURCE"]     = { [[MODELS/COMMON/ROBOTS/ROBOCOMPANION.SCENE.MBIN]] },
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[MODELS\COMMON\ROBOTS\QUADRUPED\ENTITIES\QUADRUPED_MESH.ENTITY.MBIN]],
									[[MODELS\COMMON\ROBOTS\QUADRUPED\ENTITIES\ROBOCOMPANION.ENTITY.MBIN]],
								},
								{
									[[MODELS\COMMON\ROBOTS\QUADRUPED\ENTITIES\CRITICAL.ENTITY.MBIN]],
									[[MODELS\COMMON\ROBOTS\QUADRUPED\ENTITIES\ROBOCOMPANION.ENTITY.MBIN]]
								},
							}
						}
					}
				},	
				{
					["MBIN_FILE_SOURCE"]     = 
					{ 
						{ 
							[[MODELS\COMMON\ROBOTS\QUADRUPED\ENTITIES\QUADRUPED_MESH.ENTITY.MBIN]],
							[[MODELS\COMMON\ROBOTS\QUADRUPED\ENTITIES\ROBOCOMPANION.ENTITY.MBIN]]
							"REMOVE"
						}, 
					},
				},
				{
					["MBIN_FILE_SOURCE"]     = { [[MODELS\COMMON\ROBOTS\QUADRUPED\ENTITIES\ROBOCOMPANION.ENTITY.MBIN]] },
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IncreaseWanted", 	"0"},
								{"RepairTime", 		"0"},
								{"NameOverride", 	"Robo Dog Companion"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureComponentData.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Id", 	"CAT"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Components"},
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
    <Property value="GcSimpleInteractionComponentData.xml">
      <Property name="SimpleInteractionType" value="Feed" />
      <Property name="InteractDistance" value="0" />
      <Property name="Use2dInteractDistance" value="False" />
      <Property name="Id" value="" />
      <Property name="Rarity" value="GcRarity.xml">
        <Property name="Rarity" value="Common" />
      </Property>
      <Property name="Size" value="GcSizeIndicator.xml">
        <Property name="SizeIndicator" value="Medium" />
      </Property>
      <Property name="TriggerAction" value="INACTIVE" />
      <Property name="TriggerActionOnPrepare" value="" />
      <Property name="TriggerActionToggle" value="" />
      <Property name="BroadcastTriggerAction" value="False" />
      <Property name="Delay" value="0" />
      <Property name="HideContents" value="True" />
      <Property name="InteractIsCrime" value="False" />
      <Property name="InteractFiendCrimeType" value="GcFiendCrime.xml">
        <Property name="FiendCrime" value="None" />
      </Property>
      <Property name="InteractCrimeLevel" value="0" />
      <Property name="ActivationCost" value="GcInteractionActivationCost.xml">
        <Property name="SubstanceId" value="" />
        <Property name="AltIds" />
        <Property name="Cost" value="0" />
        <Property name="Repeat" value="False" />
        <Property name="RequiredTech" value="" />
      </Property>
      <Property name="StatToTrack" value="GcStatsEnum.xml">
        <Property name="Stat" value="None" />
      </Property>
      <Property name="StartsBuried" value="False" />
      <Property name="MustBeVisibleToInteract" value="False" />
      <Property name="NeedsStorm" value="False" />
      <Property name="Name" value="" />
      <Property name="VRInteractMessage" value="" />
      <Property name="TerminalMessage" value="" />
      <Property name="ScanType" value="BINOC_INTERACTABLE" />
      <Property name="ScanData" value="" />
      <Property name="ScanIcon" value="GcDiscoveryTypes.xml">
        <Property name="DiscoveryType" value="Unknown" />
      </Property>
      <Property name="ActivateLocatorsFromRarity" value="False" />
      <Property name="RarityLocators">
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
      </Property>
      <Property name="BaseBuildingTriggerActions" />
      <Property name="RewardOverrideTable" />
      <Property name="PersistencyBufferOverride" />
      <Property name="UsePersonalPersistentBuffer" value="False" />
      <Property name="ReseedOnRewardSuccess" value="False" />
      <Property name="CanCollectInMech" value="False" />
    </Property>
]]
						}
					}
				},
			}
		}
	}
}