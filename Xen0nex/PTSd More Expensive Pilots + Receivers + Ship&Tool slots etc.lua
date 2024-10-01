ModName = "PTSd More Expensive Pilots + Receivers + Ship&Tool slots etc"
GameVersion = "5_12"
Description = "Changes costs for Starship or Multi-Tool inventory slots, Broadcast Receivers, Pilot Slots, etc."

--Allows salvaging Reactor Cores from Shuttle & Exotic starships (Also requires changes in "PTSd Rewards Remixer.lua")
ReactorSalvage = 		true				--false

--Unlocks the special Discordant Interface terminals at Korvax Monoliths for buying Atlantid Multi-Tools during the "Leap in the Dark" mission instead of after completing "The Purge" and starting the Autophage missions
AtlantidToolsEarlier =	true				--false
DiscordantInterfaceCost =	36				--19	The amount of Atlantideum needed to charge the 3 glyph slots on Discordant Interface terminals at Korvax Monoliths. Must be paired with an edit in "PTSd Tech + Upgrade + Recipe + Blueprint cost Rebalance.lua"

--This is the price paid in Nanites to buy a random chart/map or to trade to Travelers for a small gift
SmallNaniteCost =		20					--15

--This is the price paid in Nanites during certain dialog choices rarely used in certain alien NPC interactions
MedNaniteCost =			200					--100

--This will be the price paid in Nanites to a Traveller NPC when asking directions to a grave or to get memory fragments (In vanilla just uses the same value as MedNaniteCost)
TravellerNaniteCost =	800					--100

--This is the price paid in Units to "Bargain for Relic" with space traders or to trade for an S Class Radiation hazard upgrade in a specific NPC interaction
HighUnitCost =			400000				--850000		Actual price paid seems to be either this value, or 1% of the total vlaue of your cargo, whicever is higher

--Costs for certain expedition interventions for Trade related frigate expedition activities
LowTradeExpCost =		100000				--50000
MedTradeExpCost =		150000				--75000
HighTradeExpCost =		300000				--150000

--Adds a cost to opening the containers at crashed freighters
CrashedContSubstance =	"STELLAR2"			--""			Chromatic Metal
CrashedContAmount =		10					--0

--Adds a cost to using the Scanner Room on freighters
ScannerRoomSubstance =	"NAV_DATA"			--""			Navigation Data
ScannerRoomAmount =		3					--0

--Adds a cost to claim a Pirate Dreadnought (cost is paid each time you begin the freighter exchange menu, not when you complete it like with other freighters)
DreadnoughtFlatCost =	350000000			--0

--WIP
--Adds a cost to opening the sentinel weapon cabinets at Abandoned Camps
--AbandonedCabinetItem =	"SALVAGE_TECH7"		--""			SALVAGE_TECH7 is Recycled Circuitry
--AbandonedCabinetAmount = 1					--0

--Prices to upgrade the Class of Starships / Multi-Tools at Space Stations
UpgShipCtoB =			8000				--10000
UpgShipBtoA =			16000				--25000
UpgShipAtoS =			32000				--50000
UpgToolCtoB =			4000				--10000
UpgToolBtoA =			8000				--25000
UpgToolAtoS =			16000				--50000

--Makes Emergency Broadcast Receivers for finding Derelict Freighters start out a little more expensive and continue increasing in price up until the twelfth daily purchase, instead of stopping at the fourth.
--Receiver prices reset each day
FirstReceiverCost = 	6000000				--5000000
SecondReceiverCost = 	12000000			--10000000
ThirdReceiverCost = 	16000000			--20000000
FourthReceiverCost = 	20000000			--30000000
FifthReceiverCost = 	25000000			--30000000
SixthReceiverCost = 	30000000			--30000000
SeventhReceiverCost = 	35000000			--30000000
EigthReceiverCost = 	40000000			--30000000
NinthReceiverCost = 	46000000			--30000000
TenthReceiverCost = 	52000000			--30000000
EleventhReceiverCost = 	58000000			--30000000
TwelfthReceiverCost = 	64000000			--30000000
--All Receivers after this one will have this same price

--Pilot slot costs
FirstPilot =			1200				--800
SecondPilot =			5000				--3500
ThirdPilot =			10000				--7500
FourthPilot =			16000				--10000

--Changes the prices for buying additional pet slots in the Companion Registry. Costs repeat the final price in this list after reaching the end of the list
	--Unlike most changes, this reduces the max cost for pet slots from 20,000 to 16,000, and makes the costs rise more gradually than vanilla
PetSlotPrices = [[<Property name="Costs">
          <Property value="500" />
          <Property value="500" />
          <Property value="1000" />
          <Property value="2000" />
          <Property value="4000" />
          <Property value="6000" />
		  <Property value="8000" />
          <Property value="10000" />
		  <Property value="12000" />
          <Property value="14000" />
		  <Property value="16000" />
        </Property>]]

--Changes the prices for expanding Multi-Tool inventory slots. Prices are listed in order of how many slots the tool currently has, starting from 1. If the tool has more slots than entries in this list, it just keeps repeating the final price.
NewToolInvCost =
[[<Property name="Costs">
          <Property value="161616" />
          <Property value="161616" />
          <Property value="161616" />
          <Property value="161616" />
          <Property value="161616" />
          <Property value="161616" />
          <Property value="110000" />
          <Property value="120000" />
          <Property value="130000" />
          <Property value="140000" />
          <Property value="160000" />
          <Property value="180000" />
          <Property value="200000" />
          <Property value="300000" />
          <Property value="500000" />
          <Property value="750000" />
          <Property value="1000000" />
          <Property value="2000000" />
          <Property value="4000000" />
          <Property value="6000000" />
          <Property value="8000000" />
          <Property value="10000000" />
          <Property value="12000000" />
          <Property value="16000000" />
          <Property value="20000000" />
          <Property value="50000000" />
          <Property value="70000000" />
          <Property value="80000000" />
          <Property value="90000000" />
          <Property value="100000000" />
          <Property value="110000000" />
          <Property value="120000000" />
          <Property value="130000000" />
          <Property value="140000000" />
          <Property value="150000000" />
          <Property value="160000000" />
          <Property value="170000000" />
          <Property value="180000000" />
          <Property value="190000000" />
          <Property value="200000000" />
          <Property value="250000000" />
          <Property value="300000000" />
          <Property value="350000000" />
          <Property value="400000000" />
          <Property value="450000000" />
          <Property value="500000000" />
          <Property value="550000000" />
          <Property value="600000000" />
        </Property>]]

--Changes the prices for expanding ship inventory slots. Prices are listed in order of how many total slots the ship currently has, starting from 1. If the ship has more slots than entries in this list, it just keeps repeating the final price.
	--E.G. if the ship current has a total of 20 slots (combining Cargo & Tech), unlocking the 21st slot will cost 300000
NewShipInvCost =
[[<Property name="Costs">
          <Property value="161616" />
          <Property value="161616" />
          <Property value="161616" />
          <Property value="161616" />
          <Property value="161616" />
          <Property value="161616" />
          <Property value="161616" />
          <Property value="161616" />
          <Property value="161616" />
          <Property value="161616" />
          <Property value="161616" />
          <Property value="161616" />
          <Property value="161616" />
          <Property value="161616" />
          <Property value="161616" />
          <Property value="100000" />
          <Property value="110000" />
          <Property value="130000" />
          <Property value="160000" />
          <Property value="200000" />
          <Property value="300000" />
          <Property value="400000" />
          <Property value="500000" />
          <Property value="700000" />
          <Property value="900000" />
          <Property value="1100000" />
          <Property value="1300000" />
          <Property value="1600000" />
          <Property value="1650000" />
          <Property value="1700000" />
          <Property value="1750000" />
          <Property value="1800000" />
          <Property value="1850000" />
          <Property value="1900000" />
          <Property value="1950000" />
          <Property value="2000000" />
          <Property value="2100000" />
          <Property value="2200000" />
          <Property value="2300000" />
          <Property value="2400000" />
          <Property value="2500000" />
          <Property value="3000000" />
          <Property value="3500000" />
          <Property value="4000000" />
          <Property value="4500000" />
          <Property value="5000000" />
          <Property value="6000000" />
          <Property value="7000000" />
          <Property value="8000000" />
          <Property value="9000000" />
          <Property value="16000000" />
          <Property value="20000000" />
          <Property value="25000000" />
          <Property value="30000000" />
          <Property value="35000000" />
          <Property value="40000000" />
          <Property value="45000000" />
          <Property value="50000000" />
          <Property value="55000000" />
          <Property value="60000000" />
          <Property value="65000000" />
          <Property value="70000000" />
          <Property value="75000000" />
          <Property value="80000000" />
          <Property value="85000000" />
          <Property value="90000000" />
          <Property value="95000000" />
		  <Property value="100000000" />
        </Property>]]

--Nothing below this should need to be changed. All values can be edited in the sections above this line

NewShipClassCosts =
[[<Property name="Costs">
          <Property value="]]..UpgShipCtoB..[[" />
		  <Property value="]]..UpgShipBtoA..[[" />
		  <Property value="]]..UpgShipAtoS..[[" />
        </Property>]]

NewToolClassCosts =
[[<Property name="Costs">
          <Property value="]]..UpgToolCtoB..[[" />
		  <Property value="]]..UpgToolBtoA..[[" />
		  <Property value="]]..UpgToolAtoS..[[" />
        </Property>]]

NewReceiverCosts =
[[<Property name="Costs">
          <Property value="]]..FirstReceiverCost..[[" />
		  <Property value="]]..SecondReceiverCost..[[" />
		  <Property value="]]..ThirdReceiverCost..[[" />
		  <Property value="]]..FourthReceiverCost..[[" />
		  <Property value="]]..FifthReceiverCost..[[" />
		  <Property value="]]..SixthReceiverCost..[[" />
		  <Property value="]]..SeventhReceiverCost..[[" />
		  <Property value="]]..EigthReceiverCost..[[" />
		  <Property value="]]..NinthReceiverCost..[[" />
		  <Property value="]]..TenthReceiverCost..[[" />
		  <Property value="]]..EleventhReceiverCost..[[" />
		  <Property value="]]..TwelfthReceiverCost..[[" />
        </Property>]]

NewTravellerCost=
[[<Property value="GcCostTableEntry.xml">
      <Property name="Id" value="TECHFRAG_TRAV" />
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
      <Property name="Cost" value="GcCostMoney.xml">
        <Property name="Cost" value="]]..TravellerNaniteCost..[[" />
        <Property name="CostCurrency" value="GcCurrency.xml">
          <Property name="Currency" value="Nanites" />
        </Property>
      </Property>
    </Property>]]
	
SalvageExoticCost =
[[<Property value="GcCostTableEntry.xml">
      <Property name="Id" value="C_SALVAGE_ROY" />
      <Property name="DisplayCost" value="True" />
      <Property name="DontCharge" value="False" />
      <Property name="HideOptionAndDisplayCostOnly" value="True" />
      <Property name="DisplayOnlyCostIfCantAfford" value="False" />
      <Property name="HideCostStringIfCanAfford" value="False" />
      <Property name="RemoveOptionIfCantAfford" value="True" />
      <Property name="InvertCanAffordOutcome" value="False" />
      <Property name="MustAffordInCreative" value="False" />
      <Property name="CommunityContributionValue" value="0" />
      <Property name="CommunityContributionCapLocID" value="UI_COMMUNITY_CAP_REACHED" />
      <Property name="CannotAffordOSDMsg" value="" />
      <Property name="MissionMessageWhenCharged" value="" />
      <Property name="Cost" value="GcCostSalvageShip.xml">
        <Property name="WillGiveShipParts" value="False" />
        <Property name="ShipClassStringOverride">
          <Property name="Freighter" value="NMSString0x20.xml">
            <Property name="Value" value="" />
          </Property>
          <Property name="Dropship" value="NMSString0x20.xml">
            <Property name="Value" value="" />
          </Property>
          <Property name="Fighter" value="NMSString0x20.xml">
            <Property name="Value" value="" />
          </Property>
          <Property name="Scientific" value="NMSString0x20.xml">
            <Property name="Value" value="" />
          </Property>
          <Property name="Shuttle" value="NMSString0x20.xml">
            <Property name="Value" value="" />
          </Property>
          <Property name="PlayerFreighter" value="NMSString0x20.xml">
            <Property name="Value" value="" />
          </Property>
          <Property name="Royal" value="NMSString0x20.xml">
            <Property name="Value" value="Salvage some Scrap + Reactor" />
          </Property>
          <Property name="Alien" value="NMSString0x20.xml">
            <Property name="Value" value="" />
          </Property>
          <Property name="Sail" value="NMSString0x20.xml">
            <Property name="Value" value="" />
          </Property>
          <Property name="Robot" value="NMSString0x20.xml">
            <Property name="Value" value="" />
          </Property>
        </Property>
        <Property name="CannotAffordIfStringOverrideIsNull" value="True" />
      </Property>
    </Property>]]

SalvageShuttleCost =
[[<Property value="GcCostTableEntry.xml">
      <Property name="Id" value="C_SALVAGE_SHT" />
      <Property name="DisplayCost" value="True" />
      <Property name="DontCharge" value="False" />
      <Property name="HideOptionAndDisplayCostOnly" value="True" />
      <Property name="DisplayOnlyCostIfCantAfford" value="False" />
      <Property name="HideCostStringIfCanAfford" value="False" />
      <Property name="RemoveOptionIfCantAfford" value="True" />
      <Property name="InvertCanAffordOutcome" value="False" />
      <Property name="MustAffordInCreative" value="False" />
      <Property name="CommunityContributionValue" value="0" />
      <Property name="CommunityContributionCapLocID" value="UI_COMMUNITY_CAP_REACHED" />
      <Property name="CannotAffordOSDMsg" value="" />
      <Property name="MissionMessageWhenCharged" value="" />
      <Property name="Cost" value="GcCostSalvageShip.xml">
        <Property name="WillGiveShipParts" value="False" />
        <Property name="ShipClassStringOverride">
          <Property name="Freighter" value="NMSString0x20.xml">
            <Property name="Value" value="" />
          </Property>
          <Property name="Dropship" value="NMSString0x20.xml">
            <Property name="Value" value="" />
          </Property>
          <Property name="Fighter" value="NMSString0x20.xml">
            <Property name="Value" value="" />
          </Property>
          <Property name="Scientific" value="NMSString0x20.xml">
            <Property name="Value" value="" />
          </Property>
          <Property name="Shuttle" value="NMSString0x20.xml">
            <Property name="Value" value="Salvage some Scrap + Reactor" />
          </Property>
          <Property name="PlayerFreighter" value="NMSString0x20.xml">
            <Property name="Value" value="" />
          </Property>
          <Property name="Royal" value="NMSString0x20.xml">
            <Property name="Value" value="" />
          </Property>
          <Property name="Alien" value="NMSString0x20.xml">
            <Property name="Value" value="" />
          </Property>
          <Property name="Sail" value="NMSString0x20.xml">
            <Property name="Value" value="" />
          </Property>
          <Property name="Robot" value="NMSString0x20.xml">
            <Property name="Value" value="" />
          </Property>
        </Property>
        <Property name="CannotAffordIfStringOverrideIsNull" value="True" />
      </Property>
    </Property>]]

AddDreadnoughtFlatCost =
[[<Property value="GcCostTableEntry.xml">
      <Property name="Id" value="C_DREAD_FLAT" />
      <Property name="DisplayCost" value="True" />
      <Property name="DontCharge" value="False" />
      <Property name="HideOptionAndDisplayCostOnly" value="False" />
      <Property name="DisplayOnlyCostIfCantAfford" value="False" />
      <Property name="HideCostStringIfCanAfford" value="False" />
      <Property name="RemoveOptionIfCantAfford" value="False" />
      <Property name="InvertCanAffordOutcome" value="False" />
      <Property name="MustAffordInCreative" value="True" />
      <Property name="CommunityContributionValue" value="0" />
      <Property name="CommunityContributionCapLocID" value="UI_COMMUNITY_CAP_REACHED" />
      <Property name="CannotAffordOSDMsg" value="" />
      <Property name="MissionMessageWhenCharged" value="" />
      <Property name="Cost" value="GcCostMoney.xml">
        <Property name="Cost" value="]]..DreadnoughtFlatCost..[[" />
        <Property name="CostCurrency" value="GcCurrency.xml">
          <Property name="Currency" value="Units" />
        </Property>
      </Property>
    </Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= Description,
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\COSTTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["PRECEDING_KEY_WORDS"] = {"GcCostTableEntry.xml"},
				["ADD"] = NewTravellerCost,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","TECHFRAG_SM"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Cost", SmallNaniteCost},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","TECHFRAG_MD"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Cost", MedNaniteCost},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","TRADE_M_HIGH"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"MinimumValue", HighUnitCost},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","C_FLT_TRADE_9",		"Cost", "GcCostMoney.xml"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Cost", LowTradeExpCost},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","C_FLT_TRADE_10",		"Cost", "GcCostMoney.xml"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Cost", MedTradeExpCost},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","C_FLT_TRADE_11",		"Cost", "GcCostMoney.xml"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Cost", HighTradeExpCost},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_CLASS_UPGRADE"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["ADD"] = NewShipClassCosts,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_CLASS_UPGRADE"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["REMOVE"] = "SECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_WEAP_UPGRADE"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["ADD"] = NewToolClassCosts,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_WEAP_UPGRADE"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["REMOVE"] = "SECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_ABAND_START"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["ADD"] = NewReceiverCosts,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_ABAND_START"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["REMOVE"] = "SECTION",
			},
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["SPECIAL_KEY_WORDS"] = {"Id","C_PILOT_SLOT"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{800, FirstPilot},
					{3500, SecondPilot},
					{10000, FourthPilot},	--Have to do fourth pilot before third pilot to avoid having two costs at 10,000 at the same time
					{7500, ThirdPilot},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_PET_SLOT"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["ADD"] = PetSlotPrices,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_PET_SLOT"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["REMOVE"] = "SECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_INV_WEAP_C"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["ADD"] = NewToolInvCost,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_INV_WEAP_C"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["REMOVE"] = "SECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_INV_WEAP_CR"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["ADD"] = NewToolInvCost,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_INV_WEAP_CR"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["REMOVE"] = "SECTION",
			},
			--Remove the following 4 entries to keep ship inventory slot upgrades at the same price
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_INV_SAL_CASH"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["ADD"] = NewShipInvCost,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_INV_SAL_CASH"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["REMOVE"] = "SECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_INV_SAL_CASHR"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["ADD"] = NewShipInvCost,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_INV_SAL_CASHR"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["REMOVE"] = "SECTION",
			},
			{
				["PRECEDING_KEY_WORDS"] = {"GcCostTableEntry.xml"},
				["ADD"] = AddDreadnoughtFlatCost,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_MONO_NUB_OPEN"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Amount", DiscordantInterfaceCost},
				}
			}
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRASHEDFREIGHTER\PARTS\CONTAINERTERMINAL\ENTITIES\TERMINALCHAR.ENTITY.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"ActivationCost","GcInteractionActivationCost.xml"},
				["REPLACE_TYPE"] = "",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"SubstanceId", CrashedContSubstance},
					{"Cost", CrashedContAmount},
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/SCANROOM/PARTS/FLOOR0/ENTITIES/SCANROOMINTERACTION.ENTITY.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"ActivationCost","GcInteractionActivationCost.xml"},
				["REPLACE_TYPE"] = "",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"SubstanceId", ScannerRoomSubstance},
					{"Cost", ScannerRoomAmount},
				}
			},
		}
	},
	--[[
	{
		["MBIN_FILE_SOURCE"] 	= {"MODELS/PLANETS/COMMON/BUILDINGS/ROBOT/ROBOTBASE/ENTITIES/ROBOTWEAPONCRATE.ENTITY.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"ActivationCost","GcInteractionActivationCost.xml"},
				["REPLACE_TYPE"] = "",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"SubstanceId", AbandonedCabinetItem},
					{"Cost", AbandonedCabinetAmount},
				}
			},
		}
	},
	]]
}}}}


local ChangesToCostTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

if ReactorSalvage then
			ChangesToCostTable[#ChangesToCostTable+1] =
			{
				["PRECEDING_KEY_WORDS"] = {"GcCostTableEntry.xml"},
				["ADD"] = SalvageExoticCost,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			}
			
			ChangesToCostTable[#ChangesToCostTable+1] =
			{
				["PRECEDING_KEY_WORDS"] = {"GcCostTableEntry.xml"},
				["ADD"] = SalvageShuttleCost,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			}
			
			ChangesToCostTable[#ChangesToCostTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id","C_SALVAGEPROD"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"DontCharge", "False"},			--False
					{"WillGiveShipParts", "True"},		--True		Try making false???
					
					--{"CannotAffordOSDMsg", "Extract Reactor Core"},
					{"InvertCanAffordOutcome", "True"},			--False		Try making both of these true, and then only put in override strings for ones I don't want to salvage ie Alien
					{"CannotAffordIfStringOverrideIsNull", "True"},	--False		Setting these both to true works!
				}
			}
			
			ChangesToCostTable[#ChangesToCostTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id","C_SALVAGEPROD",		"Freighter", "NMSString0x20.xml"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Value", "No"},			--""
				}
			}
			
			ChangesToCostTable[#ChangesToCostTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id","C_SALVAGEPROD",		"PlayerFreighter", "NMSString0x20.xml"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Value", "No"},			--""
				}
			}
			
			ChangesToCostTable[#ChangesToCostTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id","C_SALVAGEPROD",		"Alien", "NMSString0x20.xml"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Value", "No"},			--""
				}
			}
end

if AtlantidToolsEarlier then
			ChangesToCostTable[#ChangesToCostTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id","C_MONO_NUB_ON"},
				["PRECEDING_KEY_WORDS"] = {"GcCostMissionComplete.xml"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Cost", "ACT1_STEP12"},			--"MONO_NUB_DUMMY"
				}
			}
end