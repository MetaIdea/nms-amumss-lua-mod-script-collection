ModName = "PTSd More Expensive Pilots + Receivers + Ship&Tool slots etc"
GameVersion = "4_46"
Description = "Changes costs for Starship or Multi-Tool inventory slots, Broadcast Receivers, Pilot Slots, etc."

--This is the price paid in Nanites during certain dialog choices rarely used in certain alien NPC interactions
MedNaniteCost =			200					--100

--This will be the price paid in Nanites to a Traveller NPC when asking directions to a grave or to get memory fragments (In vanilla just uses the same value as MedNaniteCost)
TravellerNaniteCost =	800					--100

--Adds a cost to opening the containers at crashed freighters
CrashedContSubstance =	"STELLAR2"			--""			STELLAR2 is Chromatic Metal
CrashedContAmount =		10					--0

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

--Makes Emergency Broadcast Receivers for finding Derelict Freighters start out a little more expensive and continue increasing in price up until the eleventh daily purchase, instead of stopping at the fourth.
--Receiver prices reset each day
FirstReceiverCost = 	8000000				--5000000
SecondReceiverCost = 	16000000			--10000000
ThirdReceiverCost = 	24000000			--20000000
FourthReceiverCost = 	32000000			--30000000
FifthReceiverCost = 	40000000			--30000000
SixthReceiverCost = 	50000000			--30000000
SeventhReceiverCost = 	60000000			--30000000
EigthReceiverCost = 	70000000			--30000000
NinthReceiverCost = 	80000000			--30000000
TenthReceiverCost = 	90000000			--30000000
EleventhReceiverCost = 	100000000			--30000000
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
				["SPECIAL_KEY_WORDS"] = {"Id","TECHFRAG_MD"},
				["REPLACE_TYPE"] = "",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Cost", MedNaniteCost},
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
				["REPLACE_TYPE"] 		= "",
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
				["REPLACE_TYPE"] 		= "",
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
				["REPLACE_TYPE"] 		= "",
				["REMOVE"] = "SECTION",
			},
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["SPECIAL_KEY_WORDS"] = {"Id","C_PILOT_SLOT"},
				["REPLACE_TYPE"] = "",
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
				["REPLACE_TYPE"] 		= "",
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
				["REPLACE_TYPE"] 		= "",
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
				["REPLACE_TYPE"] 		= "",
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
				["REPLACE_TYPE"] 		= "",
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
				["REPLACE_TYPE"] 		= "",
				["REMOVE"] = "SECTION",
			},
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