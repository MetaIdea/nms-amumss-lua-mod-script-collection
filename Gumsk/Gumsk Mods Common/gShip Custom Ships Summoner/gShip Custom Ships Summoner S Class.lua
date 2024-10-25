Author = "Mjstral,Gumsk"
ModName = "gShip Custom Ships Summoner"
ModNameSub = "S Class"
BaseDescription = "Summons new ship models from gShip Custom Ships"
GameVersion = "5.2.0.0"
ModVersion = "a"

--[[Files Modified:
MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENTITIES/PLAYERCHARACTER.ENTITY.MBIN
METADATA/UI/EMOTEMENU.MBIN
METADATA/REALITY/TABLES/REWARDTABLE.MBIN
]]--

ShipInfo = 	{
	{"GOLDENVECTOR",		"Golden Vector",			"1"},
	{"SERENITY",			"Serenity",					"3"},
	{"SERENITYGOLD",			"Serenity Gold",					"45"},
  {"SERENITYTWOTONE",			"Serenity Two-Tone",					"62"},
  {"NIMANDO",		"N-1 Fighter",			"31"},
	{"RAZORCREST",			"Razor Crest",				"105"},
	{"XWINGDARK",			"X-Wing Dark",				"34"},
	{"XWINGWHITE",			"X-Wing White",				"11"},
	{"JEDIINTERCEPTOR",		"Jedi Interceptor Yellow",	"5"},
	{"JEDIINTY",			"Jedi Interceptor Green",	"6"},
	{"JEDIINTYRED",			"Jedi Interceptor Red",		"71"},
	{"JEDIINTYBLUE",			"Jedi Interceptor Blue",		"48"},
  {"JEDIINTYORANGE",			"Jedi Interceptor Orange",		"82"},
  -- {"JEDIINTYPURPLE",			"Jedi Interceptor Purple",		"48"},
	{"TIES",				"TIE Silencer",				"98"},
	{"TIEP",				"TIE Phantom",				"52"},
	{"TIED",				"TIE Defender",				"75"},
	{"TIEA",				"TIE Advanced",				"87"},
	{"TIEI",				"TIE Interceptor",			"27"},
	{"TIEIRED",				"TIE Interceptor Red",		"37"},
	{"TIEHU",				"TIE Hunter",				"89"},
	{"DROIDTRIFIGHTER",		"Droid Tri-Fighter",		"10"},
	{"IMPERIALSHUTTLE",		"Imperial Shuttle",			"93"},
	{"SWFURY",				"Sith Fury Interceptor",	"29"},
	{"SLAVE",				"Slave I Firespray",		"103"},
	{"SLAVEUA",				"Slave I Firespray UA",		"109"},
	{"YWINGB",				"Y-Wing BTL-B",				"15"},
	{"X70B",				"X-70B Phantom",			"39"},
  {"X70B25",				"X-70B Phantom",			"96"},
	{"EWING",				"E-Wing",					"32"},
	{"VWING",				"V-Wing",					"50"},
	{"AWING",				"A-Wing",					"101"},
	{"ENTD",				"Enterprise NCC1701-D",		"59"},
	{"DEFIANT",				"USS Defiant",				"132"},
	{"STDANUBE",			"Danube Runabout",			"54"},
	{"FEDERATIONATTACK",	"Federation Attack Fighter","70"},
	{"BIRDOFPREY",			"Klingon Bird of Prey",		"55"},
	{"BATWING",				"Batwing",					"18"},
	{"MILANO",				"Milano",					"61"},
	{"MILANOMARVEL",		"Captain Marvel Milano",	"41"},
	{"VIPERIIB",			"Viper Mk II",				"25"},
	{"CYLON",				"Cylon Raider",				"8"},
	{"B5STARFURY",			"Star Fury",				"7"},
	{"B5SHADOW",			"Shadow",					"9"},
	{"WHITESTAR",			"White Star",				"110"},
	{"SWORDFISH",			"Swordfish II",				"112"},
	{"GUNDAMSAZABI",		"Gundam Sazabi",			"40"},
	{"GUNDAMSAZABIBLUE",	"Gundam Sazabi Blue",		"102"},
	{"GUNDAMSAZABIPINK",	"Gundam Sazabi Pink",		"68"},
	{"LEGOSPACEDARTI",		"LEGO Space Dart I",		"125"},
	{"LEGOSPACESCOOTER",	"LEGO Space Scooter",		"16"},
	{"PHANTOM",				"Phantom",					"13"},
	{"PELICAN",				"Pelican D77-TC",			"47"},
	{"PELICANWHITE",		"Pelican D77-TC White",		"12"},
	{"TARDIS",				"T.A.R.D.I.S.",				"100"},
	{"HOCOTATE",			"Hocotate Rocket",			"78"},
	{"COSMOZERO",			"Yamato Cosmo Zero",		"107"},
	{"COSMOTIGERII",		"Yamato Cosmo Tiger II",	"36"},
	{"TRIMAX",				"Max",						"66"},
	{"METROID",				"Metroid Gunship",			"63"},
	{"ARWING",				"Star Fox Arwing",			"42"},
	{"STARVIPER",			"Star Viper",				"2"},
	{"BLADE",				"Blade Starship",			"4"},
	{"SR71",				"SR71 Blackbird",			"54"},
	{"MALOVSKY",			"Malovsky Gunship",			"57"},
	{"MOLNIA",				"Molnia Racer",				"94"},
	{"PARADISO",			"Avem de Paradiso",			"86"},
	{"UNITRON",				"Unitron",					"64"},
  {"UNITRONBB",				"Unitron",					"14"},
	{"ATLASCORE",			"Atlas Core",				"24"},
	{"POLICE",				"Police",					"84"},
	{"GASEOUSSENTIENCE",	"Gaseous Sentience",		"38"}, --WEIRDOBJECT5
	{"DRONE",				"Drone",					"91"},
	{"LIVINGMETALLOID",		"Living Metalloid",			"73"}, --WEIRDOBJECT2
	{"CORRUPTEDDRONE",		"Corrupted Drone",			"77"},
	{"DYSONLENS",			"Dyson Lens",				"17"},
	{"STELLARINT",			"Stellar Intelligence",		"80"}, --WEIRDOBJECT3
	{"IRONBOUNDRELIC",		"Ironbound Relic",			"114"}, --SPACEGYROSCOPE
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
      <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN" />
      <Property name="AnimType" value="OneShot" />
      <Property name="AnimGroupOverride" value="False" />
      <Property name="Priority" value="0" />
      <Property name="FrameStart" value="0" />
      <Property name="FrameEnd" value="0" />
      <Property name="FrameEndGame" value="0" />
      <Property name="StartNode" value="" />
      <Property name="ExtraStartNodes" />
      <Property name="AdditiveBaseAnim" value="" />
      <Property name="AdditiveBaseFrame" value="0" />
      <Property name="Mask" value="" />
      <Property name="OffsetMin" value="0" />
      <Property name="OffsetMax" value="0" />
      <Property name="Delay" value="0" />
      <Property name="Speed" value="1" />
      <Property name="ActionStartFrame" value="0" />
      <Property name="ActionFrame" value="-1" />
      <Property name="Actions" />
      <Property name="CreatureSize" value="AllSizes" />
      <Property name="Additive" value="False" />
      <Property name="Mirrored" value="False" />
      <Property name="Active" value="True" />
      <Property name="Has30HzFrames" value="False" />
      <Property name="GameData" value="TkAnimationGameData.xml">
        <Property name="RootMotion" value="None" />
        <Property name="BlockPlayerMovement" value="False" />
        <Property name="BlockPlayerWeapon" value="Unblocked" />
      </Property>
    </Property>
	  ]]
	FinalPCAnimEntries = FinalPCAnimEntries..NewPCAnimEntry

	NewPCTriggerEntry = [[
    <Property value="LinkableNMSTemplate.xml">
      <Property name="Template" value="GcTriggerActionComponentData.xml">
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
      <Property name="Linked" value="" />
    </Property>
	  ]]
	FinalPCTriggerEntries = FinalPCTriggerEntries..NewPCTriggerEntry

end


NMS_MOD_DEFINITION_CONTAINER = 
{
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS 	= {
		{
			MBIN_CHANGE_TABLE 	= {  
				{
					MBIN_FILE_SOURCE 	= "MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENTITIES/PLAYERCHARACTER.ENTITY.MBIN",
					EXML_CHANGE_TABLE 	= 
					{
						{
							SPECIAL_KEY_WORDS = {"Anim","1H_FISH_LEAN"}, 
							REPLACE_TYPE = "ADDAFTERSECTION",
							ADD = FinalPCAnimEntries
						},
						{
							PRECEDING_KEY_WORDS = {"LodDistances"}, 
							LINE_OFFSET 		= "-2",
							ADD 				= FinalPCTriggerEntries
						}
					}
				},
				{
					MBIN_FILE_SOURCE 	= "METADATA/UI/EMOTEMENU.MBIN",
					EXML_CHANGE_TABLE 	= {
						{
							PRECEDING_KEY_WORDS = {"Emotes"},
							ADD = FinalEmoteEntries
						}
					}
				},
				{
					MBIN_FILE_SOURCE 	= "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
					EXML_CHANGE_TABLE 	= 
					{
						{
							PRECEDING_KEY_WORDS = {"GenericTable"}, 
							ADD = FinalRewardEntries
						}
					}
				}
			}
		}
	},
	ADD_FILES = {
		{
			FILE_DESTINATION = [[MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.EXML]],
			FILE_CONTENT 	 = 
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