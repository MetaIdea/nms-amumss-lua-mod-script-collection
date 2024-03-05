----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "LiminalOpportunities"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "452"
METADATA_MOD_DESC       = 
[[
This mod adds a custom Nexus mission revolving around exploring a derelict freighter.  
WARNING: this mission does not support Multiplayer functionality. Modified files:

LANGUAGE\\NMS_LOC7_ENGLISH.MBIN, 

METADATA\\SIMULATION\\MISSIONS\\MULTIPLAYERMISSIONTABLE.MBIN, 
METADATA\\SIMULATION\\MISSIONS\\COMMUNITYMISSIONTABLE.MBIN, 

MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\SPACEBASE\\PROPS\\DATA_PAD\\ENTITIES\\DATA_PAD.ENTITY.MBIN, 
MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\NPCROOMS\\NPC_ABANDFRIGATECAPTAIN\\ENTITIES\\ABANFRIGATETERMINALCAPTAIN.ENTITY.MBIN
]]



----------------------------------------------------------------------------------------------------
-- language entries
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- general
--------------------------------------------------

-- mission titles
TEXT_MP_DERELICT_TITLE_1 = "Liminal Opportunities"
TEXT_MP_DERELICT_TITLE_2 = "Interstellar Parallax"
TEXT_MP_DERELICT_TITLE_3 = "The Lost Expedition"
TEXT_MP_DERELICT_TITLE_4 = "A Freighter Blighted"
TEXT_MP_DERELICT_TITLE_5 = "Stardust Scavengers"

-- mission subtitle and objective
TEXT_MP_DERELICT_OBJECTIVE = "Retrieve Lost Artifact"
TEXT_MP_DERELICT_SUBTITLE = "Retrieve Lost Artifact"

-- mission description
TEXT_MP_DERELICT_DESC = 
[[
A freighter carrying an elusive artifact has dissapeared from Space Anomaly's radars. Nada and Polo are looking for brave Travellers ready to embark on a &lt;COMMODITY&gt;scavenger hunt&lt;&gt; in deep space. The explorers will be tasked with surviving the dangers lurking in the lost freighter and retrieving the mysterious item.&#xA;
Custom Nexus mission created by &lt;SPECIAL&gt;FriendlyFirePL&lt;&gt;.
]]

-- scan event
TEXT_MP_DERELICT_SCAN_OSD = "Lost Freighter Signal Acquired"
TEXT_MP_DERELICT_SCAN_MARKER = "Freighter Coordinates"



--------------------------------------------------
-- stage 1
--------------------------------------------------

TEXT_MP_DERELICT_STAGE1_OBJ = "Locate the freighter wreck"

TEXT_MP_DERELICT_STAGE1_DESC = 
[[
Space Anomaly recorded last transmission from the &lt;TECHNOLOGY&gt;lost freighter&lt;&gt;.&#xA;
Locate the wreck in deep space. Reach the &lt;STELLAR&gt;approximate coordinates&lt;&gt;.
]]

TEXT_MP_DERELICT_STAGE1_TIP1 = 
[[
&lt;TECHNOLOGY&gt;Lost freighter&lt;&gt; signal detected&#xA;
Activate Pulse Jump (&lt;IMG&gt;PULSEJUMP&lt;&gt;) to reach the &lt;STELLAR&gt;approximate coordinates&lt;&gt;
]]

TEXT_MP_DERELICT_STAGE1_TIP2 = 
[[
Board the lost freighter in search of the artifact&#xA;
Freighter crew status: &lt;FUEL&gt;unknown&lt;&gt;
]]

TEXT_MP_DERELICT_STAGE1_TIP3 = 
[[
Airlock status: &lt;RARE&gt;emergency protocols engaged&lt;&gt;&#xA;
Activate the Scanner (&lt;IMG&gt;SCAN&lt;&gt;) to initiate system override
]]

TEXT_MP_DERELICT_STAGE1_DOOR = "EXTRINSIC SIGNAL DETECTED &lt;IMG&gt;SLASH&lt;&gt; SYSTEM OVERRIDE IN PROGRESS"

TEXT_MP_DERELICT_STAGE1_TIP4A = 
[[
System override initiated&#xA;
Releasing mag-locks: %NUM%%
]]

TEXT_MP_DERELICT_STAGE1_TIP4B = 
[[
Error: force supervision exceed&#xA;
Reseating mag-locks: %NUM%kP
]]



--------------------------------------------------
-- stage 2
--------------------------------------------------

TEXT_MP_DERELICT_STAGE2_OBJ = "Retrieve the artifact"

TEXT_MP_DERELICT_STAGE2_DESC = 
[[
Search the wreck for the lost artifact.&#xA;
Interact with the &lt;TRADE&gt;Secure Mainframe&lt;&gt; to get access to secure databanks.
]]

TEXT_MP_DERELICT_STAGE2_TIP1 = 
[[
Search the wreck for the lost artifact&#xA;
Access the databanks from the &lt;TRADE&gt;Secure Mainframe&lt;&gt;
]]

TEXT_MP_DERELICT_INTER1_STORY1 = 
[[
WARNING &lt;IMG&gt;SLASH&lt;&gt; &lt;FUEL&gt;EMERGENCY PROTOCOLS ACTIVATED&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&lt;DELAY&gt;1&lt;&gt;&lt;NEWLINE&gt;
WARNING &lt;IMG&gt;SLASH&lt;&gt;   PRIMARY DATABANKS ENCRYPTED   &lt;IMG&gt;SLASH&lt;&gt;&lt;DELAY&gt;1&lt;&gt;&lt;NEWLINE&gt;
Physical encryption keys required to proceed
]]

TEXT_MP_DERELICT_INTER1_OPTA = "Access databanks"

TEXT_MP_DERELICT_STAGE2_TIP2A = 
[[
The secure databanks require &lt;RARE&gt;encryption keys&lt;&gt;: 1 / 3&#xA;
Collect additional keys from the scattered data logs&#xA;
Use the Scanner (&lt;IMG&gt;SCAN&lt;&gt;) to highlight the data logs (&lt;IMG&gt;SALVAGE&lt;&gt;)
]]

TEXT_MP_DERELICT_STAGE2_TIP2B = 
[[
The secure databanks require &lt;RARE&gt;encryption keys&lt;&gt;: %CURRENT% / %AMOUNT%&#xA;
Collect additional keys from the scattered data logs&#xA;
Use the Scanner (&lt;IMG&gt;SCAN&lt;&gt;) to highlight the data logs (&lt;IMG&gt;SALVAGE&lt;&gt;)
]]

TEXT_MP_DERELICT_STAGE2_TIP3 = 
[[
Encryption keys obtained&#xA;
Return to the &lt;TRADE&gt;Secure Mainframe&lt;&gt;
]]

TEXT_MP_DERELICT_INTER2_STORY1 = 
[[
WARNING &lt;IMG&gt;SLASH&lt;&gt; &lt;FUEL&gt;EMERGENCY PROTOCOLS ACTIVATED&lt;&gt; &lt;IMG&gt;SLASH&lt;&gt;&lt;DELAY&gt;1&lt;&gt;&lt;NEWLINE&gt;
WARNING &lt;IMG&gt;SLASH&lt;&gt;   PRIMARY DATABANKS ENCRYPTED   &lt;IMG&gt;SLASH&lt;&gt;&lt;DELAY&gt;1&lt;&gt;&lt;NEWLINE&gt;
Physical encryption keys required to proceed
]]

TEXT_MP_DERELICT_INTER2_OPTA = "Access databanks"

TEXT_MP_DERELICT_INTER2_STORY2 = "Decrypting databanks ... &lt;DELAY&gt;1&lt;&gt;&lt;TRADE&gt;success&lt;&gt;"

TEXT_MP_DERELICT_INTER3_STORY1 =
[[
Scanning cargo manifest ... records of trading goods available&lt;DELAY&gt;2&lt;&gt;&lt;NEWLINE&gt;
NOTICE &lt;IMG&gt;SLASH&lt;&gt; &lt;RARE&gt;unknown item&lt;&gt; deposited in secure compartment
]]

TEXT_MP_DERELICT_INTER3_OPTA = "Unlock compartment"

TEXT_MP_DERELICT_INTER3_STORY2= 
[[
... access granted ...&lt;NEWLINE&gt;
Stand by for mag-locks release
]]

TEXT_MP_DERELICT_STAGE2_TIP4 = 
[[
The &lt;RARE&gt;%PRIMARYITEM%&lt;&gt; has been secured&#xA;
Deliver it to Space Anomaly to receive the reward&#xA;
You are free to explore the rest of the freighter
]]

TEXT_MP_DERELICT_STAGE2_TIP5 = 
[[
Deliver the artifact to Space Anomaly&#xA;
Launch your ship and leave the freighter
]]

TEXT_MP_DERELICT_STAGE2_OSD = "Lost Artifact Recovered"

--------------------------------------------------
-- stage 3 - vanilla text only
--------------------------------------------------



----------------------------------------------------------------------------------------------------
-- main Nexus mission
----------------------------------------------------------------------------------------------------

PROPERTY_MISSION_DERELICT =
[[
<Property value="GcGenericMissionSequence.xml">
  <Property name="MissionID" value="MP_DERELICT" />
  <Property name="MissionClass" value="Secondary" />
  <Property name="MissionIsCritical" value="False" />
  <Property name="MissionObjective" value="TEXT_MP_DERELICT_OBJECTIVE" />
  <Property name="MissionTitles" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_MP_DERELICT_TITLE_%d" />
    <Property name="Count" value="5" />
  </Property>
  <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_MP_DERELICT_SUBTITLE" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
    <Property name="Format" value="TEXT_MP_DERELICT_DESC" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides.xml">
    <Property name="ApplicableSeasonNumbers" />
    <Property name="MissionTitle" value="" />
    <Property name="MissionSubtitle" value="" />
    <Property name="MissionDescription" value="" />
  </Property>
  <Property name="MissionDescSwitchOverride" value="" />
  <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="0" />
  </Property>
  <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="0" />
  </Property>
  <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="0" />
  </Property>
  <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="0" />
  </Property>
  <Property name="UseScanEventDetailsInLogInfo" value="False" />
  <Property name="MissionIcon" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FREIGHTER.MSHOP.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionIconSelected" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FREIGHTER.ON.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FREIGHTER.OFF.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionPriority" value="99" />
  <Property name="MissionCategory" value="GcMissionCategory.xml">
    <Property name="MissionCategory" value="Mission" />
  </Property>
  <Property name="MissionPageHint" value="GcMissionPageHint.xml">
    <Property name="MissionPageHint" value="None" />
  </Property>
  <Property name="MissionPageLocID" value="" />
  <Property name="MissionBuildMenuHint" value="" />
  <Property name="MissionHasColourOverride" value="False" />
  <Property name="MissionColourOverride" value="Colour.xml">
    <Property name="R" value="1" />
    <Property name="G" value="1" />
    <Property name="B" value="1" />
    <Property name="A" value="1" />
  </Property>
  <Property name="BeginCheckFrequency" value="1" />
  <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
    <Property name="PrimarySubstances" />
    <Property name="SecondarySubstances" />
    <Property name="PrimaryProducts">
      <Property value="GcDefaultMissionProduct.xml">
        <Property name="Product" value="EXP_CURIO3" />
      </Property>
      <Property value="GcDefaultMissionProduct.xml">
        <Property name="Product" value="ROGUE_KEY" />
      </Property>
      <Property value="GcDefaultMissionProduct.xml">
        <Property name="Product" value="WORMBOOK" />
      </Property>
    </Property>
    <Property name="SecondaryProducts" />
    <Property name="AmountMin" value="0" />
    <Property name="AmountMax" value="0" />
    <Property name="AmountShouldBeRoundNumber" value="False" />
  </Property>
  <Property name="PrefixTitle" value="False" />
  <Property name="NextMissionHint" value="" />
  <Property name="MessageComplete" value="Never" />
  <Property name="MessageStart" value="Never" />
  <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
    <Property name="Type" value="GcMissionType.xml">
      <Property name="MissionType" value="SpaceCombat" />
    </Property>
    <Property name="Difficulty" value="GcMissionDifficulty.xml">
      <Property name="MissionDifficulty" value="Hard" />
    </Property>
    <Property name="MinRank" value="0" />
    <Property name="CloseMissionGiver" value="False" />
    <Property name="IsGuildShopMission" value="False" />
    <Property name="IsPlanetProcMission" value="False" />
    <Property name="IsMultiplayerEventMission" value="False" />
    <Property name="RewardPenaltyOnAbandon" value="" />
    <Property name="Faction">
      <Property value="GcMissionFaction.xml">
        <Property name="MissionFaction" value="Nexus" />
      </Property>
    </Property>
    <Property name="Weighting" value="100" />
    <Property name="IgnoreCalculatedObjective" value="False" />
    <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
    <Property name="DefaultItemInitialWarpScanEvents" />
    <Property name="DefaultItemTypeForInitialWarp" value="None" />
    <Property name="BasePartBlueprints" />
  </Property>
  <Property name="AutoStart" value="None" />
  <Property name="RestartOnCompletion" value="False" />
  <Property name="CancelSetsComplete" value="False" />
  <Property name="Dialog" value="GcAlienPuzzleTable.xml">
    <Property name="Table">

      <Property value="GcAlienPuzzleEntry.xml">
        <Property name="ProgressionIndex" value="-1" />
        <Property name="MinProgressionForSelection" value="0" />
        <Property name="Id" value="I_MPDERELICT_1" />
        <Property name="Race" value="GcAlienRace.xml">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="Type" value="GcInteractionType.xml">
          <Property name="InteractionType" value="None" />
        </Property>
        <Property name="Category" value="GcAlienPuzzleCategory.xml">
          <Property name="AlienPuzzleCategory" value="Default" />
        </Property>
        <Property name="AdditionalOptions" value="None" />
        <Property name="Title" value="" />
        <Property name="Text" value="" />
        <Property name="TextAlien" value="TEXT_MP_DERELICT_INTER1_STORY1" />
        <Property name="TranslateAlienText" value="False" />
        <Property name="TranslationBrackets" value="False" />
        <Property name="ProgressiveDialogue" value="True" />
        <Property name="RequiresScanEvent" value="" />
        <Property name="Options">
          <Property value="GcAlienPuzzleOption.xml">
            <Property name="Name" value="TEXT_MP_DERELICT_INTER1_OPTA" />
            <Property name="Text" value="" />
            <Property name="IsAlien" value="False" />
            <Property name="Cost" value="C_LOGKEYS" />
            <Property name="Rewards" />
            <Property name="Mood" value="GcAlienMood.xml">
              <Property name="Mood" value="Neutral" />
            </Property>
            <Property name="Prop" value="GcNPCPropType.xml">
              <Property name="NPCProp" value="DontCare" />
            </Property>
            <Property name="OverrideWithAlienWord" value="False" />
            <Property name="ReseedInteractionOnUse" value="False" />
            <Property name="KeepOpen" value="False" />
            <Property name="DisplayCost" value="True" />
            <Property name="TruncateCost" value="False" />
            <Property name="MarkInteractionComplete" value="False" />
            <Property name="NextInteraction" value="" />
            <Property name="SelectedOnBackOut" value="False" />
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="TitleOverride" value="" />
            <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="EnablingConditions" />
            <Property name="EnablingConditionId" value="" />
            <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
              <Property name="wordcategorytableEnum" value="MISC" />
            </Property>
          </Property>
          <Property value="GcAlienPuzzleOption.xml">
            <Property name="Name" value="ALL_REQUEST_LEAVE" />
            <Property name="Text" value="" />
            <Property name="IsAlien" value="False" />
            <Property name="Cost" value="" />
            <Property name="Rewards">
              <Property value="NMSString0x10.xml">
                <Property name="Value" value="R_FIRSTKEY" />
              </Property>
            </Property>
            <Property name="Mood" value="GcAlienMood.xml">
              <Property name="Mood" value="Neutral" />
            </Property>
            <Property name="Prop" value="GcNPCPropType.xml">
              <Property name="NPCProp" value="DontCare" />
            </Property>
            <Property name="OverrideWithAlienWord" value="False" />
            <Property name="ReseedInteractionOnUse" value="False" />
            <Property name="KeepOpen" value="False" />
            <Property name="DisplayCost" value="True" />
            <Property name="TruncateCost" value="False" />
            <Property name="MarkInteractionComplete" value="False" />
            <Property name="NextInteraction" value="I_MPDERELICT_2" />
            <Property name="SelectedOnBackOut" value="True" />
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="TitleOverride" value="" />
            <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="EnablingConditions" />
            <Property name="EnablingConditionId" value="" />
            <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
              <Property name="wordcategorytableEnum" value="MISC" />
            </Property>
          </Property>
        </Property>
        <Property name="AdditionalText" />
        <Property name="AdditionalTextAlien" />
        <Property name="Mood" value="GcAlienMood.xml">
          <Property name="Mood" value="Neutral" />
        </Property>
        <Property name="Prop" value="GcNPCPropType.xml">
          <Property name="NPCProp" value="DontCare" />
        </Property>
        <Property name="AdvancedInteractionFlow" />
        <Property name="PersistancyBufferOverride" value="None" />
        <Property name="CustomFreighterTextIndex" value="-1" />
        <Property name="RadialInteraction" value="False" />
        <Property name="UseTitleOverrideInLabel" value="True" />
        <Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="INVALID_EVENT" />
        </Property>
      </Property>

      <Property value="GcAlienPuzzleEntry.xml">
        <Property name="ProgressionIndex" value="-1" />
        <Property name="MinProgressionForSelection" value="0" />
        <Property name="Id" value="I_MPDERELICT_2" />
        <Property name="Race" value="GcAlienRace.xml">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="Type" value="GcInteractionType.xml">
          <Property name="InteractionType" value="None" />
        </Property>
        <Property name="Category" value="GcAlienPuzzleCategory.xml">
          <Property name="AlienPuzzleCategory" value="Default" />
        </Property>
        <Property name="AdditionalOptions" value="None" />
        <Property name="Title" value="" />
        <Property name="Text" value="" />
        <Property name="TextAlien" value="TEXT_MP_DERELICT_INTER2_STORY1" />
        <Property name="TranslateAlienText" value="False" />
        <Property name="TranslationBrackets" value="False" />
        <Property name="ProgressiveDialogue" value="True" />
        <Property name="RequiresScanEvent" value="" />
        <Property name="Options">
          <Property value="GcAlienPuzzleOption.xml">
            <Property name="Name" value="TEXT_MP_DERELICT_INTER2_OPTA" />
            <Property name="Text" value="TEXT_MP_DERELICT_INTER2_STORY2" />
            <Property name="IsAlien" value="True" />
            <Property name="Cost" value="C_LOGKEYS" />
            <Property name="Rewards" />
            <Property name="Mood" value="GcAlienMood.xml">
              <Property name="Mood" value="Neutral" />
            </Property>
            <Property name="Prop" value="GcNPCPropType.xml">
              <Property name="NPCProp" value="DontCare" />
            </Property>
            <Property name="OverrideWithAlienWord" value="False" />
            <Property name="ReseedInteractionOnUse" value="False" />
            <Property name="KeepOpen" value="True" />
            <Property name="DisplayCost" value="True" />
            <Property name="TruncateCost" value="False" />
            <Property name="MarkInteractionComplete" value="False" />
            <Property name="NextInteraction" value="I_MPDERELICT_3" />
            <Property name="SelectedOnBackOut" value="False" />
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="TitleOverride" value="" />
            <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="EnablingConditions" />
            <Property name="EnablingConditionId" value="" />
            <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
              <Property name="wordcategorytableEnum" value="MISC" />
            </Property>
          </Property>
          <Property value="GcAlienPuzzleOption.xml">
            <Property name="Name" value="ALL_REQUEST_LEAVE" />
            <Property name="Text" value="" />
            <Property name="IsAlien" value="False" />
            <Property name="Cost" value="" />
            <Property name="Rewards" />
            <Property name="Mood" value="GcAlienMood.xml">
              <Property name="Mood" value="Neutral" />
            </Property>
            <Property name="Prop" value="GcNPCPropType.xml">
              <Property name="NPCProp" value="DontCare" />
            </Property>
            <Property name="OverrideWithAlienWord" value="False" />
            <Property name="ReseedInteractionOnUse" value="False" />
            <Property name="KeepOpen" value="False" />
            <Property name="DisplayCost" value="True" />
            <Property name="TruncateCost" value="False" />
            <Property name="MarkInteractionComplete" value="False" />
            <Property name="NextInteraction" value="" />
            <Property name="SelectedOnBackOut" value="True" />
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="TitleOverride" value="" />
            <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="EnablingConditions" />
            <Property name="EnablingConditionId" value="" />
            <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
              <Property name="wordcategorytableEnum" value="MISC" />
            </Property>
          </Property>
        </Property>
        <Property name="AdditionalText" />
        <Property name="AdditionalTextAlien" />
        <Property name="Mood" value="GcAlienMood.xml">
          <Property name="Mood" value="Neutral" />
        </Property>
        <Property name="Prop" value="GcNPCPropType.xml">
          <Property name="NPCProp" value="DontCare" />
        </Property>
        <Property name="AdvancedInteractionFlow" />
        <Property name="PersistancyBufferOverride" value="None" />
        <Property name="CustomFreighterTextIndex" value="-1" />
        <Property name="RadialInteraction" value="False" />
        <Property name="UseTitleOverrideInLabel" value="True" />
        <Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="INVALID_EVENT" />
        </Property>
      </Property>

      <Property value="GcAlienPuzzleEntry.xml">
        <Property name="ProgressionIndex" value="-1" />
        <Property name="MinProgressionForSelection" value="0" />
        <Property name="Id" value="I_MPDERELICT_3" />
        <Property name="Race" value="GcAlienRace.xml">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="Type" value="GcInteractionType.xml">
          <Property name="InteractionType" value="None" />
        </Property>
        <Property name="Category" value="GcAlienPuzzleCategory.xml">
          <Property name="AlienPuzzleCategory" value="Default" />
        </Property>
        <Property name="AdditionalOptions" value="None" />
        <Property name="Title" value="" />
        <Property name="Text" value="" />
        <Property name="TextAlien" value="TEXT_MP_DERELICT_INTER3_STORY1" />
        <Property name="TranslateAlienText" value="False" />
        <Property name="TranslationBrackets" value="False" />
        <Property name="ProgressiveDialogue" value="True" />
        <Property name="RequiresScanEvent" value="" />
        <Property name="Options">
          <Property value="GcAlienPuzzleOption.xml">
            <Property name="Name" value="TEXT_MP_DERELICT_INTER3_OPTA" />
            <Property name="Text" value="TEXT_MP_DERELICT_INTER3_STORY2" />
            <Property name="IsAlien" value="True" />
            <Property name="Cost" value="" />
            <Property name="Rewards">
              <Property value="NMSString0x10.xml">
                <Property name="Value" value="R_TERMINAL" />
              </Property>
            </Property>
            <Property name="Mood" value="GcAlienMood.xml">
              <Property name="Mood" value="Neutral" />
            </Property>
            <Property name="Prop" value="GcNPCPropType.xml">
              <Property name="NPCProp" value="DontCare" />
            </Property>
            <Property name="OverrideWithAlienWord" value="False" />
            <Property name="ReseedInteractionOnUse" value="False" />
            <Property name="KeepOpen" value="False" />
            <Property name="DisplayCost" value="True" />
            <Property name="TruncateCost" value="False" />
            <Property name="MarkInteractionComplete" value="True" />
            <Property name="NextInteraction" value="" />
            <Property name="SelectedOnBackOut" value="False" />
            <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
              <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="TitleOverride" value="" />
            <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
              <Property name="ConditionTest" value="AnyFalse" />
            </Property>
            <Property name="EnablingConditions" />
            <Property name="EnablingConditionId" value="" />
            <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
              <Property name="wordcategorytableEnum" value="MISC" />
            </Property>
          </Property>
        </Property>
        <Property name="AdditionalText" />
        <Property name="AdditionalTextAlien" />
        <Property name="Mood" value="GcAlienMood.xml">
          <Property name="Mood" value="Neutral" />
        </Property>
        <Property name="Prop" value="GcNPCPropType.xml">
          <Property name="NPCProp" value="DontCare" />
        </Property>
        <Property name="AdvancedInteractionFlow" />
        <Property name="PersistancyBufferOverride" value="None" />
        <Property name="CustomFreighterTextIndex" value="-1" />
        <Property name="RadialInteraction" value="False" />
        <Property name="UseTitleOverrideInLabel" value="True" />
        <Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="INVALID_EVENT" />
        </Property>
      </Property>

    </Property>
  </Property>
  <Property name="ScanEvents">

    <Property value="GcScanEventData.xml">
      <Property name="Name" value="SE_MP_DERELICT_FIND" />
      <Property name="ForceInteraction" value="" />
      <Property name="ForceInteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="None" />
      </Property>
      <Property name="RequireInteractionRace" value="GcAlienRace.xml">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="OverrideInteractionRace" value="GcAlienRace.xml">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="MustMatchStoryUtilityPuzzle" value="" />
      <Property name="ForceBroken" value="False" />
      <Property name="ForceFixed" value="False" />
      <Property name="ForceOverridesAll" value="True" />
      <Property name="ForceOverrideEncounter" value="" />
      <Property name="IsCommunityPortalOverride" value="False" />
      <Property name="ClearForcedInteractionOnCompletion" value="False" />
      <Property name="BuildingPreventionRadius" value="0" />
      <Property name="UseMissionTradingDataOverride" value="False" />
      <Property name="AlwaysShow" value="False" />
      <Property name="NeverShow" value="False" />
      <Property name="ShowOnlyIfSequenceTarget" value="False" />
      <Property name="PlanetLabelText" value="" />
      <Property name="SurveyDistance" value="0" />
      <Property name="SurveyDiscoveryOSDMessage" value="UI_MISSIONMARKER_DISC_OSD" />
      <Property name="EventStartType" value="Special" />
      <Property name="EventEndType" value="Interact" />
      <Property name="EventPriority" value="Regular" />
      <Property name="CanEndFromOutsideMission" value="False" />
      <Property name="DisableMultiplayerSync" value="False" />
      <Property name="BlockStartedOnUseEvents" value="False" />
      <Property name="ReplaceEventIfAlreadyActive" value="False" />
      <Property name="BuildingLocation" value="Nearest" />
      <Property name="BuildingType" value="SpaceMarker" />
      <Property name="BuildingClass" value="GcBuildingClassification.xml">
        <Property name="BuildingClass" value="None" />
      </Property>
      <Property name="AllowFriendsBases" value="False" />
      <Property name="ForceWideRandom" value="False" />
      <Property name="MustFindSystem" value="False" />
      <Property name="AllowOverriddenBuildings" value="True" />
      <Property name="TargetMustMatchMissionSeed" value="False" />
      <Property name="SolarSystemLocation" value="LocalOrNear" />
      <Property name="SolarSystemAttributes" value="GcScanEventSolarSystemLookup.xml">
        <Property name="UseStarType" value="False" />
        <Property name="UseWealth" value="False" />
        <Property name="UseTrading" value="False" />
        <Property name="UseRace" value="GcAlienRace.xml">
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
        <Property name="AllowUnsafeMatches" value="False" />
        <Property name="NeverAllowEmpty" value="False" />
        <Property name="NeverAllowAbandoned" value="False" />
        <Property name="RequireUndiscovered" value="False" />
        <Property name="NeedsWaterPlanet" value="False" />
        <Property name="NeedsPrimePlanet" value="False" />
        <Property name="NeedsSentinels" value="False" />
        <Property name="NeedsCorruptSentinelPlanet" value="False" />
        <Property name="NeedsExtremeSentinelPlanet" value="False" />
        <Property name="NeverAllowExtremeSentinelPlanet" value="False" />
        <Property name="NeedsExtremeWeatherPlanet" value="False" />
        <Property name="NeedsExtremeHazardPlanet" value="False" />
        <Property name="AnyBiomeNotWeirdOrDead" value="False" />
        <Property name="AnyRGBBiome" value="False" />
        <Property name="AnyInfestedBiome" value="False" />
        <Property name="NeedsBiome" value="False" />
        <Property name="NeedsBiomeType" value="GcBiomeType.xml">
          <Property name="Biome" value="Lush" />
        </Property>
        <Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
          <Property name="BiomeSubType" value="None" />
        </Property>
        <Property name="NeedsEmptySystem" value="False" />
        <Property name="NeedsAbandonedSystem" value="False" />
        <Property name="NeedsResourceHint" value="" />
        <Property name="SuitableForCreatureDiscovery" value="False" />
        <Property name="SuitableForCreatureTaming" value="False" />
        <Property name="SamePlanetAsEvent" value="" />
        <Property name="SamePlanetAsSeasonParty" value="0" />
      </Property>
      <Property name="SolarSystemAttributesFallback" value="GcScanEventSolarSystemLookup.xml">
        <Property name="UseStarType" value="False" />
        <Property name="UseWealth" value="False" />
        <Property name="UseTrading" value="False" />
        <Property name="UseRace" value="GcAlienRace.xml">
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
        <Property name="AllowUnsafeMatches" value="False" />
        <Property name="NeverAllowEmpty" value="False" />
        <Property name="NeverAllowAbandoned" value="False" />
        <Property name="RequireUndiscovered" value="False" />
        <Property name="NeedsWaterPlanet" value="False" />
        <Property name="NeedsPrimePlanet" value="False" />
        <Property name="NeedsSentinels" value="False" />
        <Property name="NeedsCorruptSentinelPlanet" value="False" />
        <Property name="NeedsExtremeSentinelPlanet" value="False" />
        <Property name="NeverAllowExtremeSentinelPlanet" value="False" />
        <Property name="NeedsExtremeWeatherPlanet" value="False" />
        <Property name="NeedsExtremeHazardPlanet" value="False" />
        <Property name="AnyBiomeNotWeirdOrDead" value="False" />
        <Property name="AnyRGBBiome" value="False" />
        <Property name="AnyInfestedBiome" value="False" />
        <Property name="NeedsBiome" value="False" />
        <Property name="NeedsBiomeType" value="GcBiomeType.xml">
          <Property name="Biome" value="Lush" />
        </Property>
        <Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
          <Property name="BiomeSubType" value="None" />
        </Property>
        <Property name="NeedsEmptySystem" value="False" />
        <Property name="NeedsAbandonedSystem" value="False" />
        <Property name="NeedsResourceHint" value="" />
        <Property name="SuitableForCreatureDiscovery" value="False" />
        <Property name="SuitableForCreatureTaming" value="False" />
        <Property name="SamePlanetAsEvent" value="" />
        <Property name="SamePlanetAsSeasonParty" value="0" />
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
      <Property name="OSDMessage" value="TEXT_MP_DERELICT_SCAN_OSD" />
      <Property name="InterstellarOSDMessage" value="" />
      <Property name="MarkerLabel" value="TEXT_MP_DERELICT_SCAN_MARKER" />
      <Property name="MarkerIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.FREIGHTER.DDS" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionMarkerHighlightStyleOverride" value="GcScannerIconHighlightTypes.xml">
        <Property name="ScannerIconHighlightType" value="Diamond" />
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
      <Property name="MissionMessageOnInteract" value="" />
      <Property name="ResourceOverride" value="GcResourceElement.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="AltId" value="" />
        <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
          <Property name="Samplers" />
        </Property>
      </Property>
    </Property>

    <Property value="GcScanEventData.xml">
      <Property name="Name" value="SE_MP_DERELICT_DONE" />
      <Property name="ForceInteraction" value="" />
      <Property name="ForceInteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="MPMissionGiver" />
      </Property>
      <Property name="RequireInteractionRace" value="GcAlienRace.xml">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="OverrideInteractionRace" value="GcAlienRace.xml">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="MustMatchStoryUtilityPuzzle" value="" />
      <Property name="ForceBroken" value="False" />
      <Property name="ForceFixed" value="False" />
      <Property name="ForceOverridesAll" value="True" />
      <Property name="ForceOverrideEncounter" value="" />
      <Property name="IsCommunityPortalOverride" value="False" />
      <Property name="ClearForcedInteractionOnCompletion" value="False" />
      <Property name="BuildingPreventionRadius" value="0" />
      <Property name="UseMissionTradingDataOverride" value="False" />
      <Property name="AlwaysShow" value="False" />
      <Property name="NeverShow" value="False" />
      <Property name="ShowOnlyIfSequenceTarget" value="False" />
      <Property name="PlanetLabelText" value="" />
      <Property name="SurveyDistance" value="0" />
      <Property name="SurveyDiscoveryOSDMessage" value="UI_MISSIONMARKER_DISC_OSD" />
      <Property name="EventStartType" value="Special" />
      <Property name="EventEndType" value="Interact" />
      <Property name="EventPriority" value="Regular" />
      <Property name="CanEndFromOutsideMission" value="False" />
      <Property name="DisableMultiplayerSync" value="False" />
      <Property name="BlockStartedOnUseEvents" value="False" />
      <Property name="ReplaceEventIfAlreadyActive" value="False" />
      <Property name="BuildingLocation" value="Nearest" />
      <Property name="BuildingType" value="Nexus" />
      <Property name="BuildingClass" value="GcBuildingClassification.xml">
        <Property name="BuildingClass" value="None" />
      </Property>
      <Property name="AllowFriendsBases" value="False" />
      <Property name="ForceWideRandom" value="False" />
      <Property name="MustFindSystem" value="False" />
      <Property name="AllowOverriddenBuildings" value="True" />
      <Property name="TargetMustMatchMissionSeed" value="False" />
      <Property name="SolarSystemLocation" value="LocalOrNear" />
      <Property name="SolarSystemAttributes" value="GcScanEventSolarSystemLookup.xml">
        <Property name="UseStarType" value="False" />
        <Property name="UseWealth" value="False" />
        <Property name="UseTrading" value="False" />
        <Property name="UseRace" value="GcAlienRace.xml">
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
        <Property name="AllowUnsafeMatches" value="False" />
        <Property name="NeverAllowEmpty" value="False" />
        <Property name="NeverAllowAbandoned" value="False" />
        <Property name="RequireUndiscovered" value="False" />
        <Property name="NeedsWaterPlanet" value="False" />
        <Property name="NeedsPrimePlanet" value="False" />
        <Property name="NeedsSentinels" value="False" />
        <Property name="NeedsCorruptSentinelPlanet" value="False" />
        <Property name="NeedsExtremeSentinelPlanet" value="False" />
        <Property name="NeverAllowExtremeSentinelPlanet" value="False" />
        <Property name="NeedsExtremeWeatherPlanet" value="False" />
        <Property name="NeedsExtremeHazardPlanet" value="False" />
        <Property name="AnyBiomeNotWeirdOrDead" value="False" />
        <Property name="AnyRGBBiome" value="False" />
        <Property name="AnyInfestedBiome" value="False" />
        <Property name="NeedsBiome" value="False" />
        <Property name="NeedsBiomeType" value="GcBiomeType.xml">
          <Property name="Biome" value="Lush" />
        </Property>
        <Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
          <Property name="BiomeSubType" value="None" />
        </Property>
        <Property name="NeedsEmptySystem" value="False" />
        <Property name="NeedsAbandonedSystem" value="False" />
        <Property name="NeedsResourceHint" value="" />
        <Property name="SuitableForCreatureDiscovery" value="False" />
        <Property name="SuitableForCreatureTaming" value="False" />
        <Property name="SamePlanetAsEvent" value="" />
        <Property name="SamePlanetAsSeasonParty" value="0" />
      </Property>
      <Property name="SolarSystemAttributesFallback" value="GcScanEventSolarSystemLookup.xml">
        <Property name="UseStarType" value="False" />
        <Property name="UseWealth" value="False" />
        <Property name="UseTrading" value="False" />
        <Property name="UseRace" value="GcAlienRace.xml">
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
        <Property name="AllowUnsafeMatches" value="False" />
        <Property name="NeverAllowEmpty" value="False" />
        <Property name="NeverAllowAbandoned" value="False" />
        <Property name="RequireUndiscovered" value="False" />
        <Property name="NeedsWaterPlanet" value="False" />
        <Property name="NeedsPrimePlanet" value="False" />
        <Property name="NeedsSentinels" value="False" />
        <Property name="NeedsCorruptSentinelPlanet" value="False" />
        <Property name="NeedsExtremeSentinelPlanet" value="False" />
        <Property name="NeverAllowExtremeSentinelPlanet" value="False" />
        <Property name="NeedsExtremeWeatherPlanet" value="False" />
        <Property name="NeedsExtremeHazardPlanet" value="False" />
        <Property name="AnyBiomeNotWeirdOrDead" value="False" />
        <Property name="AnyRGBBiome" value="False" />
        <Property name="AnyInfestedBiome" value="False" />
        <Property name="NeedsBiome" value="False" />
        <Property name="NeedsBiomeType" value="GcBiomeType.xml">
          <Property name="Biome" value="Lush" />
        </Property>
        <Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
          <Property name="BiomeSubType" value="None" />
        </Property>
        <Property name="NeedsEmptySystem" value="False" />
        <Property name="NeedsAbandonedSystem" value="False" />
        <Property name="NeedsResourceHint" value="" />
        <Property name="SuitableForCreatureDiscovery" value="False" />
        <Property name="SuitableForCreatureTaming" value="False" />
        <Property name="SamePlanetAsEvent" value="" />
        <Property name="SamePlanetAsSeasonParty" value="0" />
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
      <Property name="OSDMessage" value="UI_RETURN_MPMISSION_OBJ1_OSD" />
      <Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
      <Property name="MarkerLabel" value="UI_RETURN_MPMISSION_OBJ1_MARKER" />
      <Property name="MarkerIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.FREIGHTER.DDS" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionMarkerHighlightStyleOverride" value="GcScannerIconHighlightTypes.xml">
        <Property name="ScannerIconHighlightType" value="Diamond" />
      </Property>
      <Property name="StartTime" value="0" />
      <Property name="MessageTime" value="0" />
      <Property name="MessageDisplayTime" value="4" />
      <Property name="MessageAudio" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="UI_NEW_DISCOVERY" />
      </Property>
      <Property name="IconTime" value="4" />
      <Property name="TooltipTime" value="10" />
      <Property name="TooltipRepeats" value="False" />
      <Property name="ShowEndTooltip" value="True" />
      <Property name="TooltipMessage" value="" />
      <Property name="MissionMessageOnInteract" value="" />
      <Property name="ResourceOverride" value="GcResourceElement.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="AltId" value="" />
        <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
          <Property name="Samplers" />
        </Property>
      </Property>
    </Property>

  </Property>
  <Property name="Rewards">

    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_FIRSTKEY" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="LOG_KEY" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="True" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>

    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_OTHERKEY" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="SelectAlways" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="50" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="LOG_KEY" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="50" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="0" />
              <Property name="AmountMax" value="5" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="Nanites" />
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>

    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_MP_LOGKEY" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMissionSeeded.xml">
              <Property name="Mission" value="MP_LOGKEY" />
              <Property name="MissionNoGroundCombat" value="" />
              <Property name="MissionNoSpaceCombat" value="" />
              <Property name="InheritActiveMultiplayerMissionSeed" value="True" />
              <Property name="SelectMissionAsLocalMissionBoard" value="False" />
              <Property name="ForceUseConversationSeed" value="False" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>

    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_TERMINAL" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMissionMessage.xml">
              <Property name="MessageID" value="MSG_TERMINAL" />
              <Property name="BroadcastInMultiplayer" value="False" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>

    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_ARTIFACT" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardOSDMessage.xml">
              <Property name="Time" value="0" />
              <Property name="Message" value="" />
              <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_27" />
              </Property>
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="MessageColour" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="0.141" />
                <Property name="B" value="0.141" />
                <Property name="A" value="0.8" />
              </Property>
              <Property name="UseTimedMessage" value="False" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="PrimaryProduct" />
              </Property>
              <Property name="ID" value="" />
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
              <Property name="HideAmountInMessage" value="False" />
              <Property name="ForceSpecialMessage" value="True" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
              <Property name="SeasonRewardListFormat" value="" />
              <Property name="RequiresTech" value="" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>

  </Property>
  <Property name="Costs">

    <Property value="GcCostTableEntry.xml">
      <Property name="Id" value="C_LOGKEYS" />
      <Property name="DisplayCost" value="True" />
      <Property name="DontCharge" value="False" />
      <Property name="HideOptionAndDisplayCostOnly" value="False" />
      <Property name="DisplayOnlyCostIfCantAfford" value="False" />
      <Property name="HideCostStringIfCanAfford" value="False" />
      <Property name="RemoveOptionIfCantAfford" value="False" />
      <Property name="InvertCanAffordOutcome" value="False" />
      <Property name="MustAffordInCreative" value="False" />
      <Property name="CommunityContributionValue" value="0" />
      <Property name="CommunityContributionCapLocID" value="UI_COMMUNITY_CAP_REACHED" />
      <Property name="CannotAffordOSDMsg" value="" />
      <Property name="MissionMessageWhenCharged" value="" />
      <Property name="Cost" value="GcCostProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
          <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="Id" value="LOG_KEY" />
        <Property name="Amount" value="3" />
        <Property name="UseDefaultAmount" value="False" />
      </Property>
    </Property>

  </Property>
  <Property name="TradingDataOverride" value="GcTradeData.xml">
    <Property name="AlwaysPresentProducts" />
    <Property name="AlwaysPresentSubstances" />
    <Property name="OptionalProducts" />
    <Property name="OptionalSubstances" />
    <Property name="MinItemsForSale" value="5" />
    <Property name="MaxItemsForSale" value="15" />
    <Property name="PercentageOfItemsAreProducts" value="0.3" />
    <Property name="BuyPriceIncreaseRedThreshold" value="20" />
    <Property name="BuyPriceDecreaseGreenThreshold" value="-10" />
    <Property name="SellPriceIncreaseGreenThreshold" value="10" />
    <Property name="SellPriceDecreaseRedThreshold" value="-20" />
    <Property name="ShowSeasonRewards" value="False" />
    <Property name="MinAmountOfProductAvailable">
      <Property name="Poor" value="10" />
      <Property name="Average" value="10" />
      <Property name="Wealthy" value="10" />
      <Property name="Pirate" value="10" />
    </Property>
    <Property name="MaxAmountOfProductAvailable">
      <Property name="Poor" value="100" />
      <Property name="Average" value="100" />
      <Property name="Wealthy" value="100" />
      <Property name="Pirate" value="100" />
    </Property>
    <Property name="MinAmountOfSubstanceAvailable">
      <Property name="Poor" value="100" />
      <Property name="Average" value="100" />
      <Property name="Wealthy" value="100" />
      <Property name="Pirate" value="100" />
    </Property>
    <Property name="MaxAmountOfSubstanceAvailable">
      <Property name="Poor" value="1000" />
      <Property name="Average" value="1000" />
      <Property name="Wealthy" value="1000" />
      <Property name="Pirate" value="1000" />
    </Property>
    <Property name="MinExtraSystemProducts">
      <Property name="Poor" value="2" />
      <Property name="Average" value="2" />
      <Property name="Wealthy" value="2" />
      <Property name="Pirate" value="2" />
    </Property>
    <Property name="MaxExtraSystemProducts">
      <Property name="Poor" value="4" />
      <Property name="Average" value="4" />
      <Property name="Wealthy" value="4" />
      <Property name="Pirate" value="4" />
    </Property>
    <Property name="TradeProductsPriceImprovements">
      <Property name="Poor" value="0" />
      <Property name="Average" value="0" />
      <Property name="Wealthy" value="0" />
      <Property name="Pirate" value="0" />
    </Property>
  </Property>
  <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="StartIsCancel" value="False" />
  <Property name="StartingConditions" />
  <Property name="CancelingConditions" />
  <Property name="FinalStageVersions" />
  <Property name="Stages">

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceReward.xml">
        <Property name="Message" value="UI_REWARD_FAILED_MSG" />
        <Property name="Reward" value="R_MP_MIS_START" />
        <Property name="DoMissionBoardOverride" value="False" />
        <Property name="Silent" value="False" />
        <Property name="RewardInventoryOverride" value="None" />
        <Property name="DebugText" value="[FF] set flag: MP mission in progress" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceGroup.xml">
        <Property name="Silent" value="False" />
        <Property name="Icon" value="TkTextureResource.xml">
          <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.FREIGHTER.DDS" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
        </Property>
        <Property name="PageHint" value="GcMissionPageHint.xml">
          <Property name="MissionPageHint" value="None" />
        </Property>
        <Property name="PageDataLocID" value="" />
        <Property name="BuildMenuHint" value="" />
        <Property name="InventoryHint" value="" />
        <Property name="TerrainTarget" value="" />
        <Property name="DebugText" value="[FF] stage 1: spawn derelict freighter and enter airlock" />
        <Property name="ObjectiveID" value="TEXT_MP_DERELICT_STAGE1_OBJ" />
        <Property name="ObjectiveTipID" value="TEXT_MP_DERELICT_STAGE1_DESC" />
        <Property name="HasCategoryOverride" value="False" />
        <Property name="OverrideCategory" value="GcMissionCategory.xml">
          <Property name="MissionCategory" value="Mission" />
        </Property>
        <Property name="HasColourOverride" value="False" />
        <Property name="ColourOverride" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="PrefixTitle" value="False" />
        <Property name="PrefixTitleText" value="" />
        <Property name="BlockPinning" value="False" />
        <Property name="AutoPinRepairs" value="False" />
        <Property name="BlockSpaceBattles" value="False" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyFalse" />
        </Property>
        <Property name="HideFromLogIfConditionsMet" value="False" />
        <Property name="RepeatLogic" value="None" />
        <Property name="IconStyle" value="Default" />
        <Property name="GalMapPathOverride" value="None" />
        <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
          <Property name="InputButton" value="None" />
        </Property>
        <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
          <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
          <Property name="FormattableObjective" value="" />
          <Property name="FormattableObjectiveTip" value="" />
        </Property>
        <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
          <Property name="ApplicableSeasonNumbers" />
          <Property name="OverrideObjective" value="" />
          <Property name="OverrideObjectiveTip" value="" />
        </Property>
        <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
          <Property name="TargetMissionSurveyId" value="" />
          <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
          <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
          <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
          <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
          <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
        </Property>
        <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
          <Property name="HasCustomNotifyTimer" value="False" />
          <Property name="NotifyDisplayTime" value="20" />
          <Property name="NotifyPauseTime" value="30" />
        </Property>
        <Property name="Conditions" />
        <Property name="Consequences" />
        <Property name="Stages">

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceShowMessage.xml">
              <Property name="Category" value="GcMissionCategory.xml">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="Time" value="6" />
              <Property name="Message" value="" />
              <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                <Property name="AkEvent" value="MUS_STATUS_UPDATE" />
              </Property>
              <Property name="OSDTime" value="6" />
              <Property name="OSDMessage" value="UI_MISSION_STARTED" />
              <Property name="OSDMessageSubtitle" value="" />
              <Property name="OSDMessageColour" value="Colour.xml">
                <Property name="R" value="0.086" />
                <Property name="G" value="0.68" />
                <Property name="B" value="1" />
                <Property name="A" value="0.5" />
              </Property>
              <Property name="OSDMessageStyle" value="Stats" />
              <Property name="OSDUseMissionIcon" value="False" />
              <Property name="DisableIcon" value="False" />
              <Property name="DisableTitlePrefix" value="False" />
              <Property name="UseConditionsForTextFormatting" />
              <Property name="DebugText" value="[FF] show OSD message: Nexus mission start" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
              <Property name="MissionUpdateMessage" value="Start" />
              <Property name="CustomMessageLocID" value="" />
              <Property name="CustomObjectiveLocID" value="" />
              <Property name="SetMissionSelected" value="True" />
              <Property name="WaitForMessageOver" value="False" />
              <Property name="ShowChangeMissionNotify" value="False" />
              <Property name="PlayMusicSting" value="None" />
              <Property name="DebugText" value="[FF] show notification: mission start" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceGroup.xml">
              <Property name="Silent" value="True" />
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="PageHint" value="GcMissionPageHint.xml">
                <Property name="MissionPageHint" value="None" />
              </Property>
              <Property name="PageDataLocID" value="" />
              <Property name="BuildMenuHint" value="" />
              <Property name="InventoryHint" value="" />
              <Property name="TerrainTarget" value="" />
              <Property name="DebugText" value="[FF] logic: exit Nexus + spawn derelict" />
              <Property name="ObjectiveID" value="" />
              <Property name="ObjectiveTipID" value="" />
              <Property name="HasCategoryOverride" value="False" />
              <Property name="OverrideCategory" value="GcMissionCategory.xml">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="HasColourOverride" value="False" />
              <Property name="ColourOverride" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="PrefixTitle" value="False" />
              <Property name="PrefixTitleText" value="" />
              <Property name="BlockPinning" value="False" />
              <Property name="AutoPinRepairs" value="False" />
              <Property name="BlockSpaceBattles" value="False" />
              <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AnyFalse" />
              </Property>
              <Property name="HideFromLogIfConditionsMet" value="False" />
              <Property name="RepeatLogic" value="None" />
              <Property name="IconStyle" value="Default" />
              <Property name="GalMapPathOverride" value="None" />
              <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                <Property name="InputButton" value="None" />
              </Property>
              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                <Property name="FormattableObjective" value="" />
                <Property name="FormattableObjectiveTip" value="" />
              </Property>
              <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
                <Property name="ApplicableSeasonNumbers" />
                <Property name="OverrideObjective" value="" />
                <Property name="OverrideObjectiveTip" value="" />
              </Property>
              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                <Property name="TargetMissionSurveyId" value="" />
                <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
              </Property>
              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                <Property name="HasCustomNotifyTimer" value="False" />
                <Property name="NotifyDisplayTime" value="20" />
                <Property name="NotifyPauseTime" value="30" />
              </Property>
              <Property name="Conditions" />
              <Property name="Consequences" />
              <Property name="Stages">

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceLeaveNexusMP.xml">
                    <Property name="Message" value="UI_MP_MISSION_LEAVE_NEXUS_TIMER" />
                    <Property name="MessageNoWarp" value="UI_MP_MISSION_LEAVE_NEXUS_TIMER" />
                    <Property name="Timeout" value="90" />
                    <Property name="DebugText" value="[FF] start Nexus exit timer" />
                  </Property>
                </Property>
  
                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AllFalse" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionLocation.xml">
                        <Property name="MissionPlayerLocation" value="InNexus" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="[FF] condition: player not in Nexus" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWait.xml">
                    <Property name="Time" value="3" />
                    <Property name="DebugText" value="[FF] wait 3s" />
                    <Property name="SuppressMessages" value="False" />
                    <Property name="MultiplyTimeBySeasonValue" value="False" />
                  </Property>
                </Property>
      
                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceStartScanEvent.xml">
                    <Property name="Table" value="GcScanEventTableType.xml">
                      <Property name="ScanTable" value="Tutorial" />
                    </Property>
                    <Property name="Participant" value="GcPlayerMissionParticipantType.xml">
                      <Property name="ParticipantType" value="None" />
                    </Property>
                    <Property name="Event" value="SE_MP_DERELICT_FIND" />
                    <Property name="Time" value="0" />
                    <Property name="DoAerialScan" value="False" />
                    <Property name="AllowOtherPlayersBase" value="False" />
                    <Property name="IgnoreIfAlreadyActive" value="False" />
                    <Property name="DebugText" value="[FF] start scan event for space marker" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionLocation.xml">
                        <Property name="MissionPlayerLocation" value="InShipInSpace" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="[FF] condition: player in space" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceGetToScanEvent.xml">
                    <Property name="Message" value="TEXT_MP_DERELICT_STAGE1_TIP1" />
                    <Property name="GalaxyMapMessage" value="" />
                    <Property name="GalaxyMapMessageNotSpace" value="" />
                    <Property name="Event" value="SE_MP_DERELICT_FIND" />
                    <Property name="Distance" value="2000" />
                    <Property name="EndEventWhenReached" value="True" />
                    <Property name="Timeout" value="0" />
                    <Property name="DistanceTimeout" value="False" />
                    <Property name="TimeoutOSD" value="SIGNAL_TIME_FAIL" />
                    <Property name="UseGPSInText" value="GcScanEventGPSHint.xml">
                      <Property name="ScanEventGPSHint" value="None" />
                    </Property>
                    <Property name="CanFormatObjectives" value="True" />
                    <Property name="AlwaysAllowInShip" value="False" />
                    <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                    <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                    <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                    <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
                    <Property name="DebugText" value="[FF] player travels towards the marker" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceCreateSpecificPulseEncounter.xml">
                    <Property name="Message" value="TEXT_MP_DERELICT_STAGE1_TIP1" />
                    <Property name="MessageNoShip" value="" />
                    <Property name="MessageNotPulsing" value="TEXT_MP_DERELICT_STAGE1_TIP1" />
                    <Property name="MessageSignalBlocked" value="" />
                    <Property name="MinTimeInPulse" value="0.1" />
                    <Property name="PulseEncounterID" value="ABAND_FREIGHTER" />
                    <Property name="TakeEncounterIDFromSeasonData" value="False" />
                    <Property name="AllowAnyEncounter" value="False" />
                    <Property name="Silent" value="True" />
                    <Property name="AllowOutsideShip" value="False" />
                    <Property name="DebugText" value="[FF] spawn derelict freighter" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceCompleteMission.xml">
                    <Property name="Mission" value="ABAND_FREIGHT" />
                    <Property name="UseSeed" value="False" />
                    <Property name="DebugText" value="[FF] force close Lost in Space mission" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="TEXT_MP_DERELICT_STAGE1_TIP2" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionLocation.xml">
                        <Property name="MissionPlayerLocation" value="AbandonedFreighterAirlock" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="[FF] condition: player in airlock" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWait.xml">
                    <Property name="Time" value="3" />
                    <Property name="DebugText" value="[FF] wait 3s" />
                    <Property name="SuppressMessages" value="False" />
                    <Property name="MultiplyTimeBySeasonValue" value="False" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceGroup.xml">
                    <Property name="Silent" value="True" />
                    <Property name="Icon" value="TkTextureResource.xml">
                      <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.FREIGHTABAND.DDS" />
                      <Property name="ResHandle" value="GcResource.xml">
                        <Property name="ResourceID" value="0" />
                      </Property>
                    </Property>
                    <Property name="PageHint" value="GcMissionPageHint.xml">
                      <Property name="MissionPageHint" value="None" />
                    </Property>
                    <Property name="PageDataLocID" value="" />
                    <Property name="BuildMenuHint" value="" />
                    <Property name="InventoryHint" value="" />
                    <Property name="TerrainTarget" value="" />
                    <Property name="DebugText" value="[FF] set new icon for door opening sequence" />
                    <Property name="ObjectiveID" value="" />
                    <Property name="ObjectiveTipID" value="" />
                    <Property name="HasCategoryOverride" value="False" />
                    <Property name="OverrideCategory" value="GcMissionCategory.xml">
                      <Property name="MissionCategory" value="Mission" />
                    </Property>
                    <Property name="HasColourOverride" value="False" />
                    <Property name="ColourOverride" value="Colour.xml">
                      <Property name="R" value="1" />
                      <Property name="G" value="1" />
                      <Property name="B" value="1" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="PrefixTitle" value="False" />
                    <Property name="PrefixTitleText" value="" />
                    <Property name="BlockPinning" value="False" />
                    <Property name="AutoPinRepairs" value="False" />
                    <Property name="BlockSpaceBattles" value="False" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyFalse" />
                    </Property>
                    <Property name="HideFromLogIfConditionsMet" value="False" />
                    <Property name="RepeatLogic" value="None" />
                    <Property name="IconStyle" value="Default" />
                    <Property name="GalMapPathOverride" value="None" />
                    <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                      <Property name="InputButton" value="None" />
                    </Property>
                    <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                      <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                      <Property name="FormattableObjective" value="" />
                      <Property name="FormattableObjectiveTip" value="" />
                    </Property>
                    <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
                      <Property name="ApplicableSeasonNumbers" />
                      <Property name="OverrideObjective" value="" />
                      <Property name="OverrideObjectiveTip" value="" />
                    </Property>
                    <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                      <Property name="TargetMissionSurveyId" value="" />
                      <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                      <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                      <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                      <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                      <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
                    </Property>
                    <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                      <Property name="HasCustomNotifyTimer" value="False" />
                      <Property name="NotifyDisplayTime" value="20" />
                      <Property name="NotifyPauseTime" value="30" />
                    </Property>
                    <Property name="Conditions" />
                    <Property name="Consequences" />
                    <Property name="Stages">

                      <Property value="GcGenericMissionStage.xml">
                        <Property name="Versions" />
                        <Property name="Stage" value="GcMissionSequenceScan.xml">
                          <Property name="Message" value="TEXT_MP_DERELICT_STAGE1_TIP3" />
                          <Property name="WaitTime" value="0" />
                          <Property name="BlockTimedScans" value="True" />
                          <Property name="ScanTypesToOverride">
                            <Property name="Tool" value="False" />
                            <Property name="Beacon" value="False" />
                            <Property name="RadioTower" value="False" />
                            <Property name="Observatory" value="False" />
                            <Property name="DistressSignal" value="False" />
                            <Property name="Waypoint" value="False" />
                            <Property name="Ship" value="False" />
                            <Property name="DebugPlanet" value="False" />
                            <Property name="DebugSpace" value="False" />
                            <Property name="VisualOnly" value="True" />
                            <Property name="VisualOnlyAerial" value="False" />
                          </Property>
                          <Property name="ScanOverrideData" value="" />
                          <Property name="RequiresMissionActive" value="True" />
                          <Property name="DebugText" value="[FF] wait for player to scan" />
                        </Property>
                      </Property>
            
                      <Property value="GcGenericMissionStage.xml">
                        <Property name="Versions" />
                        <Property name="Stage" value="GcMissionSequenceWait.xml">
                          <Property name="Time" value="3" />
                          <Property name="DebugText" value="[FF] wait 3s" />
                          <Property name="SuppressMessages" value="False" />
                          <Property name="MultiplyTimeBySeasonValue" value="False" />
                        </Property>
                      </Property>

                      <Property value="GcGenericMissionStage.xml">
                        <Property name="Versions" />
                        <Property name="Stage" value="GcMissionSequenceShowMessage.xml">
                          <Property name="Category" value="GcMissionCategory.xml">
                            <Property name="MissionCategory" value="Info" />
                          </Property>
                          <Property name="Time" value="0" />
                          <Property name="Message" value="" />
                          <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                            <Property name="AkEvent" value="INVALID_EVENT " />
                          </Property>
                          <Property name="OSDTime" value="8" />
                          <Property name="OSDMessage" value="TEXT_MP_DERELICT_STAGE1_DOOR" />
                          <Property name="OSDMessageSubtitle" value="" />
                          <Property name="OSDMessageColour" value="Colour.xml">
                            <Property name="R" value="0.086" />
                            <Property name="G" value="0.68" />
                            <Property name="B" value="1" />
                            <Property name="A" value="0.5" />
                          </Property>
                          <Property name="OSDMessageStyle" value="Standard" />
                          <Property name="OSDUseMissionIcon" value="True" />
                          <Property name="DisableIcon" value="True" />
                          <Property name="DisableTitlePrefix" value="False" />
                          <Property name="UseConditionsForTextFormatting" />
                          <Property name="DebugText" value="[FF] show OSD message: open door" />
                        </Property>
                      </Property>

                      <Property value="GcGenericMissionStage.xml">
                        <Property name="Versions" />
                        <Property name="Stage" value="GcMissionSequenceWaitForAbandFreighterDoorOpen.xml">
                          <Property name="Message" value="TEXT_MP_DERELICT_STAGE1_TIP4A" />
                          <Property name="MessageOvertime" value="TEXT_MP_DERELICT_STAGE1_TIP4B" />
                          <Property name="MinTime" value="6" />
                          <Property name="DebugText" value="[FF] wait for door open" />
                        </Property>
                      </Property>

                    </Property>
                  </Property>
                </Property>
                
              </Property>
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWait.xml">
              <Property name="Time" value="2" />
              <Property name="DebugText" value="[FF] wait 2s" />
              <Property name="SuppressMessages" value="False" />
              <Property name="MultiplyTimeBySeasonValue" value="False" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
              <Property name="MissionUpdateMessage" value="End" />
              <Property name="CustomMessageLocID" value="" />
              <Property name="CustomObjectiveLocID" value="" />
              <Property name="SetMissionSelected" value="True" />
              <Property name="WaitForMessageOver" value="False" />
              <Property name="ShowChangeMissionNotify" value="False" />
              <Property name="PlayMusicSting" value="None" />
              <Property name="DebugText" value="[FF] show notification: objective complete" />
            </Property>
          </Property>

        </Property>
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWait.xml">
        <Property name="Time" value="1" />
        <Property name="DebugText" value="[FF] wait 1s" />
        <Property name="SuppressMessages" value="False" />
        <Property name="MultiplyTimeBySeasonValue" value="False" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceGroup.xml">
        <Property name="Silent" value="False" />
        <Property name="Icon" value="TkTextureResource.xml">
          <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.FREIGHTER.DDS" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
        </Property>
        <Property name="PageHint" value="GcMissionPageHint.xml">
          <Property name="MissionPageHint" value="None" />
        </Property>
        <Property name="PageDataLocID" value="" />
        <Property name="BuildMenuHint" value="" />
        <Property name="InventoryHint" value="" />
        <Property name="TerrainTarget" value="" />
        <Property name="DebugText" value="[FF] container stage 2: explore the wreck" />
        <Property name="ObjectiveID" value="TEXT_MP_DERELICT_STAGE2_OBJ" />
        <Property name="ObjectiveTipID" value="TEXT_MP_DERELICT_STAGE2_DESC" />
        <Property name="HasCategoryOverride" value="False" />
        <Property name="OverrideCategory" value="GcMissionCategory.xml">
          <Property name="MissionCategory" value="Mission" />
        </Property>
        <Property name="HasColourOverride" value="False" />
        <Property name="ColourOverride" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="PrefixTitle" value="False" />
        <Property name="PrefixTitleText" value="" />
        <Property name="BlockPinning" value="False" />
        <Property name="AutoPinRepairs" value="False" />
        <Property name="BlockSpaceBattles" value="False" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyFalse" />
        </Property>
        <Property name="HideFromLogIfConditionsMet" value="False" />
        <Property name="RepeatLogic" value="None" />
        <Property name="IconStyle" value="Default" />
        <Property name="GalMapPathOverride" value="None" />
        <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
          <Property name="InputButton" value="None" />
        </Property>
        <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
          <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
          <Property name="FormattableObjective" value="" />
          <Property name="FormattableObjectiveTip" value="" />
        </Property>
        <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
          <Property name="ApplicableSeasonNumbers" />
          <Property name="OverrideObjective" value="" />
          <Property name="OverrideObjectiveTip" value="" />
        </Property>
        <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
          <Property name="TargetMissionSurveyId" value="" />
          <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
          <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
          <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
          <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
          <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
        </Property>
        <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
          <Property name="HasCustomNotifyTimer" value="False" />
          <Property name="NotifyDisplayTime" value="20" />
          <Property name="NotifyPauseTime" value="30" />
        </Property>
        <Property name="Conditions" />
        <Property name="Consequences" />
        <Property name="Stages">

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
              <Property name="MissionUpdateMessage" value="Start" />
              <Property name="CustomMessageLocID" value="UI_MISSION_START_PRIMARY" />
              <Property name="CustomObjectiveLocID" value="" />
              <Property name="SetMissionSelected" value="True" />
              <Property name="WaitForMessageOver" value="True" />
              <Property name="ShowChangeMissionNotify" value="False" />
              <Property name="PlayMusicSting" value="None" />
              <Property name="DebugText" value="[FF] show notification: mission update" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceGroup.xml">
              <Property name="Silent" value="True" />
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="PageHint" value="GcMissionPageHint.xml">
                <Property name="MissionPageHint" value="None" />
              </Property>
              <Property name="PageDataLocID" value="" />
              <Property name="BuildMenuHint" value="" />
              <Property name="InventoryHint" value="" />
              <Property name="TerrainTarget" value="" />
              <Property name="DebugText" value="[FF] player explores derelict" />
              <Property name="ObjectiveID" value="" />
              <Property name="ObjectiveTipID" value="" />
              <Property name="HasCategoryOverride" value="False" />
              <Property name="OverrideCategory" value="GcMissionCategory.xml">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="HasColourOverride" value="False" />
              <Property name="ColourOverride" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="PrefixTitle" value="False" />
              <Property name="PrefixTitleText" value="" />
              <Property name="BlockPinning" value="False" />
              <Property name="AutoPinRepairs" value="False" />
              <Property name="BlockSpaceBattles" value="False" />
              <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AnyTrue" />
              </Property>
              <Property name="HideFromLogIfConditionsMet" value="False" />
              <Property name="RepeatLogic" value="None" />
              <Property name="IconStyle" value="Square" />
              <Property name="GalMapPathOverride" value="None" />
              <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                <Property name="InputButton" value="None" />
              </Property>
              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                <Property name="FormattableObjective" value="" />
                <Property name="FormattableObjectiveTip" value="" />
              </Property>
              <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
                <Property name="ApplicableSeasonNumbers" />
                <Property name="OverrideObjective" value="" />
                <Property name="OverrideObjectiveTip" value="" />
              </Property>
              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                <Property name="TargetMissionSurveyId" value="" />
                <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
              </Property>
              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                <Property name="HasCustomNotifyTimer" value="False" />
                <Property name="NotifyDisplayTime" value="20" />
                <Property name="NotifyPauseTime" value="30" />
              </Property>
              <Property name="Conditions" />
              <Property name="Consequences" />
              <Property name="Stages">

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="TEXT_MP_DERELICT_STAGE2_TIP1" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionHasProduct.xml">
                        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                          <Property name="DefaultProductType" value="None" />
                        </Property>
                        <Property name="Product" value="LOG_KEY" />
                        <Property name="Amount" value="1" />
                        <Property name="UseDefaultAmount" value="False" />
                        <Property name="SyncWithMissionFireteam" value="False" />
                        <Property name="MustBeImmediatelyAccessible" value="False" />
                        <Property name="ForceSearchFreighterAndChests" value="False" />
                        <Property name="SearchEveryShip" value="False" />
                        <Property name="SearchGrave" value="False" />
                        <Property name="SearchCookingIngredients" value="False" />
                        <Property name="TakeAmountFromSeasonData" value="False" />
                        <Property name="TakeIdFromSeasonData" value="False" />
                        <Property name="DependentOnSeasonMilestone" value="False" />
                        <Property name="UseAmountToAffordRecipe" value="" />
                        <Property name="TakeAffordRecipeFromSeasonData" value="False" />
                        <Property name="UseAffordRecipeForTextFormatting" value="False" />
                        <Property name="Purpose" value="GcItemNeedPurpose.xml">
                          <Property name="ItemPurpose" value="None" />
                        </Property>
                        <Property name="AllowedToSetInventoryHint" value="False" />
                        <Property name="ForceInventoryHintAtAllTimes" value="False" />
                        <Property name="UseProductIconAsMissionIcon" value="False" />
                        <Property name="DoNotFormatText" value="False" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="[FF] condition: player got 1st key from terminal" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceReward.xml">
                    <Property name="Message" value="" />
                    <Property name="Reward" value="R_MP_LOGKEY" />
                    <Property name="DoMissionBoardOverride" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="RewardInventoryOverride" value="None" />
                    <Property name="DebugText" value="[FF] start mission to override datapads" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWait.xml">
                    <Property name="Time" value="1" />
                    <Property name="DebugText" value="[FF] wait 1s" />
                    <Property name="SuppressMessages" value="False" />
                    <Property name="MultiplyTimeBySeasonValue" value="False" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceGroup.xml">
                    <Property name="Silent" value="True" />
                    <Property name="Icon" value="TkTextureResource.xml">
                      <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PRODUCT.LOGKEY.DDS" />
                      <Property name="ResHandle" value="GcResource.xml">
                        <Property name="ResourceID" value="0" />
                      </Property>
                    </Property>
                    <Property name="PageHint" value="GcMissionPageHint.xml">
                      <Property name="MissionPageHint" value="None" />
                    </Property>
                    <Property name="PageDataLocID" value="" />
                    <Property name="BuildMenuHint" value="" />
                    <Property name="InventoryHint" value="" />
                    <Property name="TerrainTarget" value="" />
                    <Property name="DebugText" value="[FF] set icon for datapads" />
                    <Property name="ObjectiveID" value="" />
                    <Property name="ObjectiveTipID" value="" />
                    <Property name="HasCategoryOverride" value="False" />
                    <Property name="OverrideCategory" value="GcMissionCategory.xml">
                      <Property name="MissionCategory" value="Mission" />
                    </Property>
                    <Property name="HasColourOverride" value="False" />
                    <Property name="ColourOverride" value="Colour.xml">
                      <Property name="R" value="1" />
                      <Property name="G" value="1" />
                      <Property name="B" value="1" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="PrefixTitle" value="False" />
                    <Property name="PrefixTitleText" value="" />
                    <Property name="BlockPinning" value="False" />
                    <Property name="AutoPinRepairs" value="False" />
                    <Property name="BlockSpaceBattles" value="False" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyFalse" />
                    </Property>
                    <Property name="HideFromLogIfConditionsMet" value="False" />
                    <Property name="RepeatLogic" value="None" />
                    <Property name="IconStyle" value="Square" />
                    <Property name="GalMapPathOverride" value="None" />
                    <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                      <Property name="InputButton" value="None" />
                    </Property>
                    <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                      <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                      <Property name="FormattableObjective" value="" />
                      <Property name="FormattableObjectiveTip" value="" />
                    </Property>
                    <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
                      <Property name="ApplicableSeasonNumbers" />
                      <Property name="OverrideObjective" value="" />
                      <Property name="OverrideObjectiveTip" value="" />
                    </Property>
                    <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                      <Property name="TargetMissionSurveyId" value="" />
                      <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                      <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                      <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                      <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                      <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
                    </Property>
                    <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                      <Property name="HasCustomNotifyTimer" value="False" />
                      <Property name="NotifyDisplayTime" value="20" />
                      <Property name="NotifyPauseTime" value="30" />
                    </Property>
                    <Property name="Conditions" />
                    <Property name="Consequences" />
                    <Property name="Stages">

                      <Property value="GcGenericMissionStage.xml">
                        <Property name="Versions" />
                        <Property name="Stage" value="GcMissionSequenceShowMessage.xml">
                          <Property name="Category" value="GcMissionCategory.xml">
                            <Property name="MissionCategory" value="Urgent" />
                          </Property>
                          <Property name="Time" value="6" />
                          <Property name="Message" value="TEXT_MP_DERELICT_STAGE2_TIP2A" />
                          <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                            <Property name="AkEvent" value="INVALID_EVENT" />
                          </Property>
                          <Property name="OSDTime" value="0" />
                          <Property name="OSDMessage" value="" />
                          <Property name="OSDMessageSubtitle" value="" />
                          <Property name="OSDMessageColour" value="Colour.xml">
                            <Property name="R" value="0.086" />
                            <Property name="G" value="0.68" />
                            <Property name="B" value="1" />
                            <Property name="A" value="0.5" />
                          </Property>
                          <Property name="OSDMessageStyle" value="Standard" />
                          <Property name="OSDUseMissionIcon" value="False" />
                          <Property name="DisableIcon" value="False" />
                          <Property name="DisableTitlePrefix" value="False" />
                          <Property name="UseConditionsForTextFormatting" />
                          <Property name="DebugText" value="[FF] one time only urgent message" />
                        </Property>
                      </Property>

                      <Property value="GcGenericMissionStage.xml">
                        <Property name="Versions" />
                        <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                          <Property name="Message" value="TEXT_MP_DERELICT_STAGE2_TIP2B" />
                          <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                            <Property name="ConditionTest" value="AnyTrue" />
                          </Property>
                          <Property name="Conditions">
                            <Property value="GcMissionConditionHasProduct.xml">
                              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                                <Property name="DefaultProductType" value="None" />
                              </Property>
                              <Property name="Product" value="LOG_KEY" />
                              <Property name="Amount" value="3" />
                              <Property name="UseDefaultAmount" value="False" />
                              <Property name="SyncWithMissionFireteam" value="True" />
                              <Property name="MustBeImmediatelyAccessible" value="False" />
                              <Property name="ForceSearchFreighterAndChests" value="False" />
                              <Property name="SearchEveryShip" value="False" />
                              <Property name="SearchGrave" value="False" />
                              <Property name="SearchCookingIngredients" value="False" />
                              <Property name="TakeAmountFromSeasonData" value="False" />
                              <Property name="TakeIdFromSeasonData" value="False" />
                              <Property name="DependentOnSeasonMilestone" value="False" />
                              <Property name="UseAmountToAffordRecipe" value="" />
                              <Property name="TakeAffordRecipeFromSeasonData" value="False" />
                              <Property name="UseAffordRecipeForTextFormatting" value="False" />
                              <Property name="Purpose" value="GcItemNeedPurpose.xml">
                                <Property name="ItemPurpose" value="None" />
                              </Property>
                              <Property name="AllowedToSetInventoryHint" value="False" />
                              <Property name="ForceInventoryHintAtAllTimes" value="False" />
                              <Property name="UseProductIconAsMissionIcon" value="False" />
                              <Property name="DoNotFormatText" value="False" />
                            </Property>
                          </Property>
                          <Property name="AllowedToFormatObjectives" value="True" />
                          <Property name="ForceAllowMissionRestart" value="False" />
                          <Property name="ForceAllowMissionRestartEvent" value="" />
                          <Property name="DebugText" value="[FF] get keys from datapads" />
                          <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                            <Property name="MissionMarkup" value="None" />
                          </Property>
                        </Property>
                      </Property>

                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWait.xml">
                    <Property name="Time" value="1" />
                    <Property name="DebugText" value="[FF] wait 1s" />
                    <Property name="SuppressMessages" value="False" />
                    <Property name="MultiplyTimeBySeasonValue" value="False" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceShowMessage.xml">
                    <Property name="Category" value="GcMissionCategory.xml">
                      <Property name="MissionCategory" value="Urgent" />
                    </Property>
                    <Property name="Time" value="6" />
                    <Property name="Message" value="TEXT_MP_DERELICT_STAGE2_TIP3" />
                    <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                      <Property name="AkEvent" value="INVALID_EVENT" />
                    </Property>
                    <Property name="OSDTime" value="0" />
                    <Property name="OSDMessage" value="" />
                    <Property name="OSDMessageSubtitle" value="" />
                    <Property name="OSDMessageColour" value="Colour.xml">
                      <Property name="R" value="0.086" />
                      <Property name="G" value="0.68" />
                      <Property name="B" value="1" />
                      <Property name="A" value="0.5" />
                    </Property>
                    <Property name="OSDMessageStyle" value="Standard" />
                    <Property name="OSDUseMissionIcon" value="False" />
                    <Property name="DisableIcon" value="False" />
                    <Property name="DisableTitlePrefix" value="False" />
                    <Property name="UseConditionsForTextFormatting" />
                    <Property name="DebugText" value="[FF] one time only urgent message" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="TEXT_MP_DERELICT_STAGE2_TIP3" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionMissionMessage.xml">
                        <Property name="Message" value="MSG_TERMINAL" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="[FF] condition: interaction finished message" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceReward.xml">
                    <Property name="Message" value="" />
                    <Property name="Reward" value="R_ARTIFACT" />
                    <Property name="DoMissionBoardOverride" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="RewardInventoryOverride" value="None" />
                    <Property name="DebugText" value="[FF] give player the artifact" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceCollectProduct.xml">
                    <Property name="Message" value="" />
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="PrimaryProduct" />
                    </Property>
                    <Property name="UseDefaultValue" value="False" />
                    <Property name="Product" value="" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="WaitForSelected" value="True" />
                    <Property name="ForBuild" value="" />
                    <Property name="ForRepair" value="" />
                    <Property name="Purpose" value="GcItemNeedPurpose.xml">
                      <Property name="ItemPurpose" value="None" />
                    </Property>
                    <Property name="TeachIfNotKnown" value="False" />
                    <Property name="FromNow" value="False" />
                    <Property name="TakeAmountFromSeasonData" value="False" />
                    <Property name="DependentOnSeasonMilestone" value="False" />
                    <Property name="HintAtCraftTree" value="False" />
                    <Property name="SearchCookingIngredients" value="False" />
                    <Property name="CanSetIcon" value="False" />
                    <Property name="CanFormatObjectives" value="False" />
                    <Property name="DebugText" value="[FF] check player has the artifact" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWait.xml">
                    <Property name="Time" value="1" />
                    <Property name="DebugText" value="[FF] wait 1s" />
                    <Property name="SuppressMessages" value="False" />
                    <Property name="MultiplyTimeBySeasonValue" value="False" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceShowMessage.xml">
                    <Property name="Category" value="GcMissionCategory.xml">
                      <Property name="MissionCategory" value="Urgent" />
                    </Property>
                    <Property name="Time" value="6" />
                    <Property name="Message" value="TEXT_MP_DERELICT_STAGE2_TIP4" />
                    <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                      <Property name="AkEvent" value="INVALID_EVENT" />
                    </Property>
                    <Property name="OSDTime" value="0" />
                    <Property name="OSDMessage" value="" />
                    <Property name="OSDMessageSubtitle" value="" />
                    <Property name="OSDMessageColour" value="Colour.xml">
                      <Property name="R" value="0.086" />
                      <Property name="G" value="0.68" />
                      <Property name="B" value="1" />
                      <Property name="A" value="0.5" />
                    </Property>
                    <Property name="OSDMessageStyle" value="Standard" />
                    <Property name="OSDUseMissionIcon" value="False" />
                    <Property name="DisableIcon" value="False" />
                    <Property name="DisableTitlePrefix" value="False" />
                    <Property name="UseConditionsForTextFormatting" />
                    <Property name="DebugText" value="[FF] one time only urgent message" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="TEXT_MP_DERELICT_STAGE2_TIP4" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AllFalse" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionLocation.xml">
                        <Property name="MissionPlayerLocation" value="AbandonedFreighterInterior" />
                      </Property>
                      <Property value="GcMissionConditionLocation.xml">
                        <Property name="MissionPlayerLocation" value="AbandonedFreighterAirlock" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="[FF] condition: player is back outside" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
                    <Property name="Message" value="TEXT_MP_DERELICT_STAGE2_TIP5" />
                    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                      <Property name="ConditionTest" value="AnyTrue" />
                    </Property>
                    <Property name="Conditions">
                      <Property value="GcMissionConditionLocation.xml">
                        <Property name="MissionPlayerLocation" value="InShipInSpace" />
                      </Property>
                    </Property>
                    <Property name="AllowedToFormatObjectives" value="True" />
                    <Property name="ForceAllowMissionRestart" value="False" />
                    <Property name="ForceAllowMissionRestartEvent" value="" />
                    <Property name="DebugText" value="[FF] condition: player in ship in space" />
                    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
                      <Property name="MissionMarkup" value="None" />
                    </Property>
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWait.xml">
                    <Property name="Time" value="1" />
                    <Property name="DebugText" value="[FF] wait 1s" />
                    <Property name="SuppressMessages" value="False" />
                    <Property name="MultiplyTimeBySeasonValue" value="False" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceShowMessage.xml">
                    <Property name="Category" value="GcMissionCategory.xml">
                      <Property name="MissionCategory" value="Mission" />
                    </Property>
                    <Property name="Time" value="6" />
                    <Property name="Message" value="" />
                    <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
                      <Property name="AkEvent" value="MUS_COMMUNITYRESEARCH" />
                    </Property>
                    <Property name="OSDTime" value="6" />
                    <Property name="OSDMessage" value="TEXT_MP_DERELICT_STAGE2_OSD" />
                    <Property name="OSDMessageSubtitle" value="UI_MISSION_COMPLETE_U" />
                    <Property name="OSDMessageColour" value="Colour.xml">
                      <Property name="R" value="0.086" />
                      <Property name="G" value="0.68" />
                      <Property name="B" value="1" />
                      <Property name="A" value="0.5" />
                    </Property>
                    <Property name="OSDMessageStyle" value="Stats" />
                    <Property name="OSDUseMissionIcon" value="False" />
                    <Property name="DisableIcon" value="False" />
                    <Property name="DisableTitlePrefix" value="False" />
                    <Property name="UseConditionsForTextFormatting" />
                    <Property name="DebugText" value="[FF] show Nexus style OSD message" />
                  </Property>
                </Property>

              </Property>
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceWait.xml">
              <Property name="Time" value="1" />
              <Property name="DebugText" value="[FF] wait 1s" />
              <Property name="SuppressMessages" value="False" />
              <Property name="MultiplyTimeBySeasonValue" value="False" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
              <Property name="MissionUpdateMessage" value="End" />
              <Property name="CustomMessageLocID" value="" />
              <Property name="CustomObjectiveLocID" value="" />
              <Property name="SetMissionSelected" value="True" />
              <Property name="WaitForMessageOver" value="True" />
              <Property name="ShowChangeMissionNotify" value="False" />
              <Property name="PlayMusicSting" value="None" />
              <Property name="DebugText" value="[FF] show notification: objective complete" />
            </Property>
          </Property>

        </Property>
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWait.xml">
        <Property name="Time" value="1" />
        <Property name="DebugText" value="[FF] wait 1s" />
        <Property name="SuppressMessages" value="False" />
        <Property name="MultiplyTimeBySeasonValue" value="False" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceGroup.xml">
        <Property name="Silent" value="False" />
        <Property name="Icon" value="TkTextureResource.xml">
          <Property name="Filename" value="" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
        </Property>
        <Property name="PageHint" value="GcMissionPageHint.xml">
          <Property name="MissionPageHint" value="None" />
        </Property>
        <Property name="PageDataLocID" value="" />
        <Property name="BuildMenuHint" value="" />
        <Property name="InventoryHint" value="" />
        <Property name="TerrainTarget" value="" />
        <Property name="DebugText" value="[FF] stage 3: return to Space Anomaly" />
        <Property name="ObjectiveID" value="UI_RETURN_MPMISSION_OBJ" />
        <Property name="ObjectiveTipID" value="UI_RETURN_MPMISSION_OBJ_TIP" />
        <Property name="HasCategoryOverride" value="False" />
        <Property name="OverrideCategory" value="GcMissionCategory.xml">
          <Property name="MissionCategory" value="Mission" />
        </Property>
        <Property name="HasColourOverride" value="False" />
        <Property name="ColourOverride" value="Colour.xml">
          <Property name="R" value="1" />
          <Property name="G" value="1" />
          <Property name="B" value="1" />
          <Property name="A" value="1" />
        </Property>
        <Property name="PrefixTitle" value="False" />
        <Property name="PrefixTitleText" value="" />
        <Property name="BlockPinning" value="False" />
        <Property name="AutoPinRepairs" value="False" />
        <Property name="BlockSpaceBattles" value="False" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AnyFalse" />
        </Property>
        <Property name="HideFromLogIfConditionsMet" value="False" />
        <Property name="RepeatLogic" value="None" />
        <Property name="IconStyle" value="Default" />
        <Property name="GalMapPathOverride" value="None" />
        <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
          <Property name="InputButton" value="None" />
        </Property>
        <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
          <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
          <Property name="FormattableObjective" value="" />
          <Property name="FormattableObjectiveTip" value="" />
        </Property>
        <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
          <Property name="ApplicableSeasonNumbers" />
          <Property name="OverrideObjective" value="" />
          <Property name="OverrideObjectiveTip" value="" />
        </Property>
        <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
          <Property name="TargetMissionSurveyId" value="" />
          <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
          <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
          <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
          <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
          <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
        </Property>
        <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
          <Property name="HasCustomNotifyTimer" value="False" />
          <Property name="NotifyDisplayTime" value="20" />
          <Property name="NotifyPauseTime" value="30" />
        </Property>
        <Property name="Conditions" />
        <Property name="Consequences" />
        <Property name="Stages">

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
              <Property name="MissionUpdateMessage" value="Start" />
              <Property name="CustomMessageLocID" value="UI_MISSION_START_PRIMARY" />
              <Property name="CustomObjectiveLocID" value="" />
              <Property name="SetMissionSelected" value="True" />
              <Property name="WaitForMessageOver" value="True" />
              <Property name="ShowChangeMissionNotify" value="False" />
              <Property name="PlayMusicSting" value="None" />
              <Property name="DebugText" value="[FF] show notification: mission update" />
            </Property>
          </Property>

          <Property value="GcGenericMissionStage.xml">
            <Property name="Versions" />
            <Property name="Stage" value="GcMissionSequenceGroup.xml">
              <Property name="Silent" value="True" />
              <Property name="Icon" value="TkTextureResource.xml">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="PageHint" value="GcMissionPageHint.xml">
                <Property name="MissionPageHint" value="None" />
              </Property>
              <Property name="PageDataLocID" value="" />
              <Property name="BuildMenuHint" value="" />
              <Property name="InventoryHint" value="" />
              <Property name="TerrainTarget" value="" />
              <Property name="DebugText" value="[FF] clean up scan event" />
              <Property name="ObjectiveID" value="" />
              <Property name="ObjectiveTipID" value="" />
              <Property name="HasCategoryOverride" value="False" />
              <Property name="OverrideCategory" value="GcMissionCategory.xml">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="HasColourOverride" value="False" />
              <Property name="ColourOverride" value="Colour.xml">
                <Property name="R" value="1" />
                <Property name="G" value="1" />
                <Property name="B" value="1" />
                <Property name="A" value="1" />
              </Property>
              <Property name="PrefixTitle" value="False" />
              <Property name="PrefixTitleText" value="" />
              <Property name="BlockPinning" value="False" />
              <Property name="AutoPinRepairs" value="False" />
              <Property name="BlockSpaceBattles" value="False" />
              <Property name="ConditionTest" value="GcMissionConditionTest.xml">
                <Property name="ConditionTest" value="AnyFalse" />
              </Property>
              <Property name="HideFromLogIfConditionsMet" value="False" />
              <Property name="RepeatLogic" value="None" />
              <Property name="IconStyle" value="Default" />
              <Property name="GalMapPathOverride" value="None" />
              <Property name="SpecialButtonIcon" value="TkInputEnum.xml">
                <Property name="InputButton" value="None" />
              </Property>
              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions.xml">
                <Property name="ObjectivesCanBeFormattedBySequences" value="False" />
                <Property name="FormattableObjective" value="" />
                <Property name="FormattableObjectiveTip" value="" />
              </Property>
              <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides.xml">
                <Property name="ApplicableSeasonNumbers" />
                <Property name="OverrideObjective" value="" />
                <Property name="OverrideObjectiveTip" value="" />
              </Property>
              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions.xml">
                <Property name="TargetMissionSurveyId" value="" />
                <Property name="TargetMissionSurveyDefinitelyExists" value="False" />
                <Property name="SurveyInactiveHint" value="NOTIFY_MISSION_SURVEY_INACTIVE" />
                <Property name="SurveySwapHint" value="NOTIFY_MISSION_SURVEY_SWAP" />
                <Property name="SurveyHint" value="NOTIFY_MISSION_SURVEY" />
                <Property name="SurveyVehicleHint" value="NOTIFY_MISSION_SURVEY_CAR" />
              </Property>
              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions.xml">
                <Property name="HasCustomNotifyTimer" value="False" />
                <Property name="NotifyDisplayTime" value="20" />
                <Property name="NotifyPauseTime" value="30" />
              </Property>
              <Property name="Conditions" />
              <Property name="Consequences" />
              <Property name="Stages">

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceEndScanEvent.xml">
                    <Property name="Event" value="SE_MP_DERELICT_FIND" />
                    <Property name="DebugText" value="[FF] end scan event for freighter" />
                  </Property>
                </Property>

                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceStartScanEvent.xml">
                    <Property name="Table" value="GcScanEventTableType.xml">
                      <Property name="ScanTable" value="Tutorial" />
                    </Property>
                    <Property name="Participant" value="GcPlayerMissionParticipantType.xml">
                      <Property name="ParticipantType" value="None" />
                    </Property>
                    <Property name="Event" value="SE_MP_DERELICT_DONE" />
                    <Property name="Time" value="3" />
                    <Property name="DoAerialScan" value="False" />
                    <Property name="AllowOtherPlayersBase" value="False" />
                    <Property name="IgnoreIfAlreadyActive" value="False" />
                    <Property name="DebugText" value="[FF] start scan event for Nexus" />
                  </Property>
                </Property>
      
                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWaitForCompletionMessage.xml">
                    <Property name="Message" value="UI_RETURN_MPMISSION_OBJ1_MSG" />
                    <Property name="ReturnToOptionalScanEvent" value="" />
                    <Property name="MessageWhenInterstellar" value="" />
                    <Property name="CompletionCost" value="" />
                    <Property name="DebugText" value="[FF] wait for Nexus mission hand-in" />
                  </Property>
                </Property>
      
                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceEndScanEvent.xml">
                    <Property name="Event" value="SE_MP_DERELICT_DONE" />
                    <Property name="DebugText" value="[FF] end scan event for Nexus" />
                  </Property>
                </Property>
      
                <Property value="GcGenericMissionStage.xml">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage.xml">
                    <Property name="MissionUpdateMessage" value="End" />
                    <Property name="CustomMessageLocID" value="UI_MISSION_END_SECONDARY" />
                    <Property name="CustomObjectiveLocID" value="" />
                    <Property name="SetMissionSelected" value="True" />
                    <Property name="WaitForMessageOver" value="False" />
                    <Property name="ShowChangeMissionNotify" value="False" />
                    <Property name="PlayMusicSting" value="End" />
                    <Property name="DebugText" value="[FF] show notification: mission completed" />
                  </Property>
                </Property>

              </Property>
            </Property>
          </Property>

        </Property>
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceReward.xml">
        <Property name="Message" value="UI_REWARD_FAILED_MSG" />
        <Property name="Reward" value="R_NEXUS_MED" />
        <Property name="DoMissionBoardOverride" value="True" />
        <Property name="Silent" value="False" />
        <Property name="RewardInventoryOverride" value="None" />
        <Property name="DebugText" value="[FF] get reward" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceBroadcastMessage.xml">
        <Property name="DebugText" value="" />
        <Property name="MessageID" value="MSG_NEXUS_MP" />
        <Property name="Seeded" value="False" />
        <Property name="SendToAllMatchingSeeds" value="False" />
        <Property name="Multiplayer" value="False" />
        <Property name="CanSendToInactive" value="False" />
        <Property name="BroadcastToActiveMultiplayerMission" value="False" />
      </Property>
    </Property>

    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceReward.xml">
        <Property name="Message" value="UI_REWARD_FAILED_MSG" />
        <Property name="Reward" value="R_MP_MIS_END" />
        <Property name="DoMissionBoardOverride" value="False" />
        <Property name="Silent" value="False" />
        <Property name="RewardInventoryOverride" value="None" />
        <Property name="DebugText" value="[FF] reset flag: MP mission in progress" />
      </Property>
    </Property>

  </Property>
  <Property name="ForcesPageHint" value="False" />
  <Property name="ForcesBuildMenuHint" value="False" />
  <Property name="IsProceduralAllowed" value="False" />
  <Property name="IsRecurring" value="False" />
  <Property name="IsLegacy" value="False" />
  <Property name="BlocksPinning" value="False" />
  <Property name="CanRenounce" value="False" />
  <Property name="UseCommunityMissionForLog" value="" />
  <Property name="TakeCommunityMissionIDFromSeasonData" value="False" />
  <Property name="TelemetryUpload" value="False" />
  <Property name="UseSeasonTitleOverride" value="False" />
</Property>
]]



----------------------------------------------------------------------------------------------------
-- loot override mission
----------------------------------------------------------------------------------------------------

PROPERTY_MISSION_LOGKEY =
[[
<Property value="GcGenericMissionSequence.xml">
  <Property name="MissionID" value="MP_LOGKEY" />
  <Property name="MissionClass" value="Secondary" />
  <Property name="MissionIsCritical" value="False" />
  <Property name="MissionObjective" value="" />
  <Property name="MissionTitles" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionSubtitles" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionDescriptions" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides.xml">
    <Property name="ApplicableSeasonNumbers" />
    <Property name="MissionTitle" value="" />
    <Property name="MissionSubtitle" value="" />
    <Property name="MissionDescription" value="" />
  </Property>
  <Property name="MissionDescSwitchOverride" value="" />
  <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionA" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionB" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="MissionProcDescriptionC" value="GcNumberedTextList.xml">
    <Property name="Format" value="" />
    <Property name="Count" value="1" />
  </Property>
  <Property name="UseScanEventDetailsInLogInfo" value="False" />
  <Property name="MissionIcon" value="TkTextureResource.xml">
    <Property name="Filename" value="" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionIconSelected" value="TkTextureResource.xml">
    <Property name="Filename" value="" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionIconNotSelected" value="TkTextureResource.xml">
    <Property name="Filename" value="" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="MissionPriority" value="-1" />
  <Property name="MissionCategory" value="GcMissionCategory.xml">
    <Property name="MissionCategory" value="Mission" />
  </Property>
  <Property name="MissionPageHint" value="GcMissionPageHint.xml">
    <Property name="MissionPageHint" value="None" />
  </Property>
  <Property name="MissionPageLocID" value="" />
  <Property name="MissionBuildMenuHint" value="" />
  <Property name="MissionHasColourOverride" value="False" />
  <Property name="MissionColourOverride" value="Colour.xml">
    <Property name="R" value="1" />
    <Property name="G" value="1" />
    <Property name="B" value="1" />
    <Property name="A" value="1" />
  </Property>
  <Property name="BeginCheckFrequency" value="1" />
  <Property name="DefaultItems" value="GcDefaultMissionItemsTable.xml">
    <Property name="PrimarySubstances" />
    <Property name="SecondarySubstances" />
    <Property name="PrimaryProducts" />
    <Property name="SecondaryProducts" />
    <Property name="AmountMin" value="0" />
    <Property name="AmountMax" value="0" />
    <Property name="AmountShouldBeRoundNumber" value="False" />
  </Property>
  <Property name="PrefixTitle" value="True" />
  <Property name="NextMissionHint" value="" />
  <Property name="MessageComplete" value="Never" />
  <Property name="MessageStart" value="Never" />
  <Property name="MissionBoardOptions" value="GcMissionBoardOptions.xml">
    <Property name="Type" value="GcMissionType.xml">
      <Property name="MissionType" value="SpaceCombat" />
    </Property>
    <Property name="Difficulty" value="GcMissionDifficulty.xml">
      <Property name="MissionDifficulty" value="Normal" />
    </Property>
    <Property name="MinRank" value="0" />
    <Property name="CloseMissionGiver" value="False" />
    <Property name="IsGuildShopMission" value="False" />
    <Property name="IsPlanetProcMission" value="False" />
    <Property name="IsMultiplayerEventMission" value="False" />
    <Property name="RewardPenaltyOnAbandon" value="" />
    <Property name="Faction" />
    <Property name="Weighting" value="100" />
    <Property name="IgnoreCalculatedObjective" value="False" />
    <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
    <Property name="DefaultItemInitialWarpScanEvents" />
    <Property name="DefaultItemTypeForInitialWarp" value="None" />
    <Property name="BasePartBlueprints" />
  </Property>
  <Property name="AutoStart" value="None" />
  <Property name="RestartOnCompletion" value="False" />
  <Property name="CancelSetsComplete" value="True" />
  <Property name="Dialog" value="GcAlienPuzzleTable.xml">
    <Property name="Table" />
  </Property>
  <Property name="ScanEvents" />
  <Property name="Rewards" />
  <Property name="Costs" />
  <Property name="TradingDataOverride" value="GcTradeData.xml">
    <Property name="AlwaysPresentProducts" />
    <Property name="AlwaysPresentSubstances" />
    <Property name="OptionalProducts" />
    <Property name="OptionalSubstances" />
    <Property name="MinItemsForSale" value="5" />
    <Property name="MaxItemsForSale" value="15" />
    <Property name="PercentageOfItemsAreProducts" value="0.3" />
    <Property name="BuyPriceIncreaseRedThreshold" value="20" />
    <Property name="BuyPriceDecreaseGreenThreshold" value="-10" />
    <Property name="SellPriceIncreaseGreenThreshold" value="10" />
    <Property name="SellPriceDecreaseRedThreshold" value="-20" />
    <Property name="ShowSeasonRewards" value="False" />
    <Property name="MinAmountOfProductAvailable">
      <Property name="Poor" value="10" />
      <Property name="Average" value="10" />
      <Property name="Wealthy" value="10" />
      <Property name="Pirate" value="10" />
    </Property>
    <Property name="MaxAmountOfProductAvailable">
      <Property name="Poor" value="100" />
      <Property name="Average" value="100" />
      <Property name="Wealthy" value="100" />
      <Property name="Pirate" value="100" />
    </Property>
    <Property name="MinAmountOfSubstanceAvailable">
      <Property name="Poor" value="100" />
      <Property name="Average" value="100" />
      <Property name="Wealthy" value="100" />
      <Property name="Pirate" value="100" />
    </Property>
    <Property name="MaxAmountOfSubstanceAvailable">
      <Property name="Poor" value="1000" />
      <Property name="Average" value="1000" />
      <Property name="Wealthy" value="1000" />
      <Property name="Pirate" value="1000" />
    </Property>
    <Property name="MinExtraSystemProducts">
      <Property name="Poor" value="2" />
      <Property name="Average" value="2" />
      <Property name="Wealthy" value="2" />
      <Property name="Pirate" value="2" />
    </Property>
    <Property name="MaxExtraSystemProducts">
      <Property name="Poor" value="4" />
      <Property name="Average" value="4" />
      <Property name="Wealthy" value="4" />
      <Property name="Pirate" value="4" />
    </Property>
    <Property name="TradeProductsPriceImprovements">
      <Property name="Poor" value="0" />
      <Property name="Average" value="0" />
      <Property name="Wealthy" value="0" />
      <Property name="Pirate" value="0" />
    </Property>
  </Property>
  <Property name="StartConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="CancelConditionTest" value="GcMissionConditionTest.xml">
    <Property name="ConditionTest" value="AnyFalse" />
  </Property>
  <Property name="StartIsCancel" value="False" />
  <Property name="StartingConditions" />
  <Property name="CancelingConditions">
    <Property value="GcMissionConditionIsMissionInProgress.xml">
      <Property name="MissionID" value="MP_DERELICT" />
      <Property name="MustBeSelectedMission" value="False" />
    </Property>
  </Property>
  <Property name="FinalStageVersions" />
  <Property name="Stages">
    <Property value="GcGenericMissionStage.xml">
      <Property name="Versions" />
      <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
        <Property name="Message" value="" />
        <Property name="ConditionTest" value="GcMissionConditionTest.xml">
          <Property name="ConditionTest" value="AllFalse" />
        </Property>
        <Property name="Conditions">
          <Property value="GcMissionConditionLocation.xml">
            <Property name="MissionPlayerLocation" value="AbandonedFreighterInterior" />
          </Property>
          <Property value="GcMissionConditionLocation.xml">
            <Property name="MissionPlayerLocation" value="AbandonedFreighterAirlock" />
          </Property>
        </Property>
        <Property name="AllowedToFormatObjectives" value="True" />
        <Property name="ForceAllowMissionRestart" value="False" />
        <Property name="ForceAllowMissionRestartEvent" value="" />
        <Property name="DebugText" value="[FF] condition: player is back outside" />
        <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
          <Property name="MissionMarkup" value="None" />
        </Property>
      </Property>
    </Property>
  </Property>
  <Property name="ForcesPageHint" value="False" />
  <Property name="ForcesBuildMenuHint" value="False" />
  <Property name="IsProceduralAllowed" value="False" />
  <Property name="IsRecurring" value="False" />
  <Property name="IsLegacy" value="False" />
  <Property name="BlocksPinning" value="False" />
  <Property name="CanRenounce" value="False" />
  <Property name="UseCommunityMissionForLog" value="" />
  <Property name="TakeCommunityMissionIDFromSeasonData" value="False" />
  <Property name="TelemetryUpload" value="False" />
  <Property name="UseSeasonTitleOverride" value="False" />
</Property>
]]



----------------------------------------------------------------------------------------------------
-- script data and functions
----------------------------------------------------------------------------------------------------

LIST_TEXT_DERELICT =
{
    -- general
    TEXT_MP_DERELICT_TITLE_1 =        TEXT_MP_DERELICT_TITLE_1,
    TEXT_MP_DERELICT_TITLE_2 =        TEXT_MP_DERELICT_TITLE_2,
    TEXT_MP_DERELICT_TITLE_3 =        TEXT_MP_DERELICT_TITLE_3,
    TEXT_MP_DERELICT_TITLE_4 =        TEXT_MP_DERELICT_TITLE_4,
    TEXT_MP_DERELICT_TITLE_5 =        TEXT_MP_DERELICT_TITLE_5,

    TEXT_MP_DERELICT_SUBTITLE =       TEXT_MP_DERELICT_SUBTITLE,
    TEXT_MP_DERELICT_OBJECTIVE =      TEXT_MP_DERELICT_OBJECTIVE,
    TEXT_MP_DERELICT_DESC =           TEXT_MP_DERELICT_DESC,
    TEXT_MP_DERELICT_SCAN_OSD =       TEXT_MP_DERELICT_SCAN_OSD,
    TEXT_MP_DERELICT_SCAN_MARKER =    TEXT_MP_DERELICT_SCAN_MARKER,

    -- stage 1
    TEXT_MP_DERELICT_STAGE1_OBJ =     TEXT_MP_DERELICT_STAGE1_OBJ,
    TEXT_MP_DERELICT_STAGE1_DESC =    TEXT_MP_DERELICT_STAGE1_DESC,
    TEXT_MP_DERELICT_STAGE1_TIP1 =    TEXT_MP_DERELICT_STAGE1_TIP1,
    TEXT_MP_DERELICT_STAGE1_TIP2 =    TEXT_MP_DERELICT_STAGE1_TIP2,
    TEXT_MP_DERELICT_STAGE1_TIP3 =    TEXT_MP_DERELICT_STAGE1_TIP3,
    TEXT_MP_DERELICT_STAGE1_DOOR =    TEXT_MP_DERELICT_STAGE1_DOOR,
    TEXT_MP_DERELICT_STAGE1_TIP4A =   TEXT_MP_DERELICT_STAGE1_TIP4A,
    TEXT_MP_DERELICT_STAGE1_TIP4B =   TEXT_MP_DERELICT_STAGE1_TIP4B,

    -- stage 2
    TEXT_MP_DERELICT_STAGE2_OBJ =     TEXT_MP_DERELICT_STAGE2_OBJ,
    TEXT_MP_DERELICT_STAGE2_DESC =    TEXT_MP_DERELICT_STAGE2_DESC,
    TEXT_MP_DERELICT_STAGE2_TIP1 =    TEXT_MP_DERELICT_STAGE2_TIP1,
    TEXT_MP_DERELICT_STAGE2_TIP2A =   TEXT_MP_DERELICT_STAGE2_TIP2A,
    TEXT_MP_DERELICT_STAGE2_TIP2B =   TEXT_MP_DERELICT_STAGE2_TIP2B,
    TEXT_MP_DERELICT_STAGE2_TIP3 =    TEXT_MP_DERELICT_STAGE2_TIP3,
    TEXT_MP_DERELICT_STAGE2_TIP4 =    TEXT_MP_DERELICT_STAGE2_TIP4,
    TEXT_MP_DERELICT_STAGE2_TIP5 =    TEXT_MP_DERELICT_STAGE2_TIP5,
    TEXT_MP_DERELICT_STAGE2_OSD =     TEXT_MP_DERELICT_STAGE2_OSD,

    -- terminal interactions
    TEXT_MP_DERELICT_INTER1_STORY1 =  TEXT_MP_DERELICT_INTER1_STORY1,
    TEXT_MP_DERELICT_INTER1_OPTA =    TEXT_MP_DERELICT_INTER1_OPTA,
    TEXT_MP_DERELICT_INTER2_STORY1 =  TEXT_MP_DERELICT_INTER2_STORY1,
    TEXT_MP_DERELICT_INTER2_OPTA =    TEXT_MP_DERELICT_INTER2_OPTA,
    TEXT_MP_DERELICT_INTER2_STORY2 =  TEXT_MP_DERELICT_INTER2_STORY2,
    TEXT_MP_DERELICT_INTER3_STORY1 =  TEXT_MP_DERELICT_INTER3_STORY1,
    TEXT_MP_DERELICT_INTER3_OPTA =    TEXT_MP_DERELICT_INTER3_OPTA,
    TEXT_MP_DERELICT_INTER3_STORY2 =  TEXT_MP_DERELICT_INTER3_STORY2,
}

--------------------------------------------------
-- functions to build the text entries
--------------------------------------------------

function BuildTextProperty(id,value) return
[[
<Property value="TkLocalisationEntry.xml">
    <Property name="Id" value="]]..id..[[" />
    <Property name="English" value="VariableSizeString.xml">
        <Property name="Value" value="]]..value..[[" />
    </Property>
</Property>
]]
end

function BuildLocList(list)
  local FileTable = {}
  for id,value in pairs(list) do
      FileTable[#FileTable+1] = BuildTextProperty(id,value)
  end
  return table.concat(FileTable)
end



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by the mod
--------------------------------------------------

FILE_LANGUAGE_LOC7 =                "LANGUAGE\\NMS_LOC7_ENGLISH.MBIN"

FILE_MISSIONS_MULTIPLAYER =         "METADATA\\SIMULATION\\MISSIONS\\MULTIPLAYERMISSIONTABLE.MBIN"
FILE_MISSIONS_COMMUNITY =           "METADATA\\SIMULATION\\MISSIONS\\COMMUNITYMISSIONTABLE.MBIN"

FILE_MODELS_DERELICT_DATAPAD =      "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\SPACEBASE\\PROPS\\DATA_PAD\\ENTITIES\\DATA_PAD.ENTITY.MBIN"
FILE_MODELS_DERELICT_TERMINAL =     "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\NPCROOMS\\NPC_ABANDFRIGATECAPTAIN\\ENTITIES\\ABANFRIGATETERMINALCAPTAIN.ENTITY.MBIN"

-- not modified
FILE_MODELS_STORMCRYSTAL_ENTITY =   "MODELS\\PLANETS\\BIOMES\\COMMON\\RARERESOURCE\\CRYSTALS\\STORMCRYSTALS\\ENTITIES\\STORMCRYSTALS.ENTITY.MBIN"
FILE_MODELS_CORRUPTLOOT_ENTITY =    "MODELS\\COMMON\\ROBOTS\\LOOTDROP\\CORRUPTLOOT\\ENTITIES\\CORRUPTLOOT.ENTITY.MBIN"



--------------------------------------------------
-- mod container
--------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]   = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    --------------------------------------------------
                    -- language file
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_LANGUAGE_LOC7,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- small change to one vanilla item name
                        {   ["SKW"] = {"Id","UI_ROGUE_GRAVE_KEY_NAME",},      ["VCT"] = {{"Value","DREADFUL WAILING"},},    },
                        {   ["SKW"] = {"Id","UI_ROGUE_GRAVE_KEY_NAME_L",},    ["VCT"] = {{"Value","Dreadful Wailing"},},    },

                        -- add all the new text entries
                        {   ["PKW"] = "Table",    ["ADD"] = BuildLocList(LIST_TEXT_DERELICT),   },
                    },
                },

                {
                    --------------------------------------------------
                    -- multiplayer mission table
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MISSIONS_MULTIPLAYER,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- add new Nexus mission to the list
                            ["PKW"] = "Missions",
                            ["ADD"] = PROPERTY_MISSION_DERELICT,
                        },
                    },
                },

                {
                    --------------------------------------------------
                    -- community misison table
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MISSIONS_COMMUNITY,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- add new override mission to the list
                            ["PKW"] = "Missions",
                            ["ADD"] = PROPERTY_MISSION_LOGKEY,
                        },
                    },
                },

                {
                    --------------------------------------------------
                    -- derelict freighter 2nd terminal file
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_DERELICT_TERMINAL,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- add new terminal dialogue override
                        {   ["PKW"] = "GcAlienPuzzleMissionOverride.xml",     ["SEC_SAVE_TO"] = "SEC_DIALOGUE",                       },
                        {   ["SEC_EDIT"] = "SEC_DIALOGUE",    ["VCT"] = {{"Mission","MP_DERELICT",},{"Puzzle","I_MPDERELICT_1",},},   },
                        {   ["PKW"] = "PuzzleMissionOverrideTable",     ["SEC_ADD_NAMED"] = "SEC_DIALOGUE",                           },
                    },
                },

                {
                    --------------------------------------------------
                    -- corrupted drone loot entity file
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_CORRUPTLOOT_ENTITY,
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- create reward override
                        {   ["PKW"] = "GcRewardMissionOverride.xml",    ["SEC_SAVE_TO"] = "SEC_REWARD",                         },
                        {   ["SEC_EDIT"] = "SEC_REWARD",    ["VCT"] = {{"Mission","MP_LOGKEY",},{"Reward","R_OTHERKEY",},},     },   
                    },
                },

                {
                    --------------------------------------------------
                    -- storm crystal entity file
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_STORMCRYSTAL_ENTITY,
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- create interaction override
                        {   ["PKW"] = "GcSimpleInteractionComponentData.xml",     ["SEC_SAVE_TO"] = "SEC_INTER",                                                                                        },
                        {   ["SEC_EDIT"] = "SEC_INTER",     ["VCT"] = {{"Id","",},{"SizeIndicator","Small",},{"TriggerAction","",},{"StatEnum","None",},{"NeedsStorm","False",},
                                                            {"Name","UI_ABAND_LOG_LABEL",},{"ScanType","BINOC_INTERACTABLE",}, {"Mission","MP_DERELICT",},{"UsePersonalPersistentBuffer","True",},},    },
                        {   ["SEC_EDIT"] = "SEC_INTER",     ["PKW"] = "RewardOverrideTable",     ["CREATE_HOS"] = "TRUE",      ["SEC_ADD_NAMED"] = "SEC_REWARD",                                        },
                    },
                },

                {
                    --------------------------------------------------
                    -- derelict datapad entity file
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_DERELICT_DATAPAD,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- add the interaction override
                            ["PKW"] = "Components",
                            ["SEC_ADD_NAMED"] = "SEC_INTER",
                        },
                    },
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------