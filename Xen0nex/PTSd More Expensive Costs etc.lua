ModName = "PTSd More Expensive Costs etc"
GameVersion = "6_03"
Description = "Changes costs for Starship or Multi-Tool inventory slots, Broadcast Receivers, Pilot Slots, etc."

--Allows salvaging Reactor Cores from Shuttle & Exotic starships (Also requires changes in "PTSd Rewards Remixer.lua")
ReactorSalvage = 		true				--false

--Unlocks the special Discordant Interface terminals at Korvax Monoliths for buying Atlantid Multi-Tools during the "Leap in the Dark" mission instead of after completing "The Purge" and starting the Autophage missions
AtlantidToolsEarlier =	true				--false
DiscordantInterfaceCost =	36				--19	The amount of Atlantideum needed to charge the 3 glyph slots on Discordant Interface terminals at Korvax Monoliths. Must be paired with an edit in "PTSd Tech + Upgrade + Recipe + Blueprint cost Rebalance.lua"

AtlantidToolsAbandonedMode = true			--false		Set to true to enable using Discordant Interfaces in Abandoned Mode right from the start

--This is the price paid in Nanites to buy a random chart/map or to trade to Travelers for a small gift
SmallNaniteCost =		20					--15

--This is the price paid in Nanites during certain dialog choices rarely used in certain alien NPC interactions
MedNaniteCost =			200					--100

--This will be the price paid in Nanites to a Traveller NPC when asking directions to a grave or to get memory fragments (In vanilla just uses the same value as MedNaniteCost)
TravellerNaniteCost =	800					--100

--This is the price paid in Units to "Bargain for Relic" with space traders or to trade for an S Class Radiation hazard upgrade in a specific NPC interaction
HighUnitCost =			400000				--850000		Actual price paid seems to be either this value, or 1% of the total value of your cargo, whicever is higher

--Costs for certain expedition interventions for Trade related frigate expedition activities
LowTradeExpCost =		100000				--50000
MedTradeExpCost =		150000				--75000
HighTradeExpCost =		300000				--150000

--Adds a cost to opening the containers at crashed freighters
CrashedContSubstance =	"STELLAR2"			--""			Chromatic Metal
CrashedContAmount =		10					--0

--Adds a cost to using the Scanner Room on freighters
ScannerRoomSubstance =	"NAV_DATA"			--""			Navigation Data
ScannerRoomAmount =		2					--0

--Adds a cost to returning to a Corvette from a planet's surface via the temporary Corvette teleporter
	--NOTE: This feature can also be disabled by simply deleting "No Man's Sky\GAMEDATA\MODS\PTSd Prices and Tech etc\MODELS\COMMON\SPACECRAFT\BIGGS\TELEPORTER\ENTITIES\TELEPORTER.ENTITY.MBIN"
CovetteTeleportCost =	true				--false			Set to true to make the teleporter cost 1 Navigation Data when returning to a Corvette from a planet's surface via the temporary Corvette teleporter (can continually re-use the same temporary teleporter for free)
CorvetteTeleportSubstance =	"NAV_DATA"			--""			Navigation Data
CorvetteTeleportAmount =	1					--0

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
          <Property name="Costs" value="500" />
          <Property name="Costs" value="500" />
          <Property name="Costs" value="1000" />
          <Property name="Costs" value="2000" />
          <Property name="Costs" value="4000" />
          <Property name="Costs" value="6000" />
		  <Property name="Costs" value="8000" />
          <Property name="Costs" value="10000" />
		  <Property name="Costs" value="12000" />
          <Property name="Costs" value="14000" />
		  <Property name="Costs" value="16000" />
        </Property>]]

--Changes the prices for expanding Multi-Tool inventory slots. Prices are listed in order of how many slots the tool currently has, starting from 1. If the tool has more slots than entries in this list, it just keeps repeating the final price.
NewToolInvCost =
[[<Property name="Costs">
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="140000" />
          <Property name="Costs" value="190000" />
          <Property name="Costs" value="250000" />
          <Property name="Costs" value="310000" />
          <Property name="Costs" value="380000" />
          <Property name="Costs" value="450000" />
          <Property name="Costs" value="500000" />
          <Property name="Costs" value="550000" />
          <Property name="Costs" value="600000" />
          <Property name="Costs" value="750000" />
          <Property name="Costs" value="1000000" />
          <Property name="Costs" value="2000000" />
          <Property name="Costs" value="4000000" />
          <Property name="Costs" value="6000000" />
          <Property name="Costs" value="8000000" />
          <Property name="Costs" value="10000000" />
          <Property name="Costs" value="12000000" />
          <Property name="Costs" value="16000000" />
          <Property name="Costs" value="18000000" />
          <Property name="Costs" value="20000000" />
          <Property name="Costs" value="24000000" />
          <Property name="Costs" value="28000000" />
          <Property name="Costs" value="32000000" />
          <Property name="Costs" value="36000000" />
        </Property>]]

--Changes the prices for expanding ship inventory slots. Prices are listed in order of how many total slots the ship currently has, starting from 1. If the ship has more slots than entries in this list, it just keeps repeating the final price.
	--E.G. if the ship current has a total of 20 slots (combining Cargo & Tech), unlocking the 21st slot will cost 300000
NewShipInvCost =
[[<Property name="Costs">
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="161616" />
          <Property name="Costs" value="1300000" />
          <Property name="Costs" value="1600000" />
          <Property name="Costs" value="1900000" />
          <Property name="Costs" value="2100000" />
          <Property name="Costs" value="2400000" />
          <Property name="Costs" value="2800000" />
          <Property name="Costs" value="3100000" />
          <Property name="Costs" value="3400000" />
          <Property name="Costs" value="3600000" />
          <Property name="Costs" value="3800000" />
          <Property name="Costs" value="4200000" />
          <Property name="Costs" value="4600000" />
          <Property name="Costs" value="5000000" />
          <Property name="Costs" value="5400000" />
          <Property name="Costs" value="5900000" />
          <Property name="Costs" value="6400000" />
          <Property name="Costs" value="7000000" />
          <Property name="Costs" value="7500000" />
          <Property name="Costs" value="8100000" />
          <Property name="Costs" value="8800000" />
          <Property name="Costs" value="9500000" />
          <Property name="Costs" value="10000000" />
          <Property name="Costs" value="10700000" />
          <Property name="Costs" value="11300000" />
          <Property name="Costs" value="11800000" />
          <Property name="Costs" value="12400000" />
          <Property name="Costs" value="12300000" />
          <Property name="Costs" value="13500000" />
          <Property name="Costs" value="14000000" />
          <Property name="Costs" value="14500000" />
          <Property name="Costs" value="15000000" />
          <Property name="Costs" value="15500000" />
          <Property name="Costs" value="16100000" />
          <Property name="Costs" value="16800000" />
          <Property name="Costs" value="17500000" />
          <Property name="Costs" value="18300000" />
          <Property name="Costs" value="19000000" />
          <Property name="Costs" value="19800000" />
          <Property name="Costs" value="20800000" />
          <Property name="Costs" value="22500000" />
          <Property name="Costs" value="23400000" />
          <Property name="Costs" value="24200000" />
          <Property name="Costs" value="24900000" />
          <Property name="Costs" value="25500000" />
          <Property name="Costs" value="26000000" />
          <Property name="Costs" value="26500000" />
          <Property name="Costs" value="27000000" />
          <Property name="Costs" value="27500000" />
          <Property name="Costs" value="28000000" />
          <Property name="Costs" value="28500000" />
          <Property name="Costs" value="29500000" />
          <Property name="Costs" value="31000000" />
          <Property name="Costs" value="33000000" />
          <Property name="Costs" value="35500000" />
          <Property name="Costs" value="38500000" />
          <Property name="Costs" value="42000000" />
          <Property name="Costs" value="45000000" />
          <Property name="Costs" value="48000000" />
          <Property name="Costs" value="51000000" />
          <Property name="Costs" value="53500000" />
          <Property name="Costs" value="55500000" />
          <Property name="Costs" value="57000000" />
          <Property name="Costs" value="58000000" />
          <Property name="Costs" value="59000000" />
          <Property name="Costs" value="60000000" />
          <Property name="Costs" value="61000000" />
          <Property name="Costs" value="62000000" />
          <Property name="Costs" value="63000000" />
          <Property name="Costs" value="64000000" />
          <Property name="Costs" value="65000000" />
          <Property name="Costs" value="66000000" />
          <Property name="Costs" value="67000000" />
          <Property name="Costs" value="68000000" />
          <Property name="Costs" value="69000000" />
          <Property name="Costs" value="70000000" />
          <Property name="Costs" value="71000000" />
        </Property>]]

--Nothing below this should need to be changed. All values can be edited in the sections above this line

NewShipClassCosts =
[[<Property name="Costs">
          <Property name="Costs" value="]]..UpgShipCtoB..[[" />
		  <Property name="Costs" value="]]..UpgShipBtoA..[[" />
		  <Property name="Costs" value="]]..UpgShipAtoS..[[" />
        </Property>]]

NewToolClassCosts =
[[<Property name="Costs">
          <Property name="Costs" value="]]..UpgToolCtoB..[[" />
		  <Property name="Costs" value="]]..UpgToolBtoA..[[" />
		  <Property name="Costs" value="]]..UpgToolAtoS..[[" />
        </Property>]]

NewPilotCosts =
[[<Property name="Costs">
          <Property name="Costs" value="]]..FirstPilot..[[" />
		  <Property name="Costs" value="]]..SecondPilot..[[" />
		  <Property name="Costs" value="]]..ThirdPilot..[[" />
		  <Property name="Costs" value="]]..FourthPilot..[[" />
        </Property>]]

NewReceiverCosts =
[[<Property name="Costs">
          <Property name="Costs" value="]]..FirstReceiverCost..[[" />
		  <Property name="Costs" value="]]..SecondReceiverCost..[[" />
		  <Property name="Costs" value="]]..ThirdReceiverCost..[[" />
		  <Property name="Costs" value="]]..FourthReceiverCost..[[" />
		  <Property name="Costs" value="]]..FifthReceiverCost..[[" />
		  <Property name="Costs" value="]]..SixthReceiverCost..[[" />
		  <Property name="Costs" value="]]..SeventhReceiverCost..[[" />
		  <Property name="Costs" value="]]..EigthReceiverCost..[[" />
		  <Property name="Costs" value="]]..NinthReceiverCost..[[" />
		  <Property name="Costs" value="]]..TenthReceiverCost..[[" />
		  <Property name="Costs" value="]]..EleventhReceiverCost..[[" />
		  <Property name="Costs" value="]]..TwelfthReceiverCost..[[" />
        </Property>]]

NewTravellerCost=
[[<Property name="InteractionTable" value="GcCostTableEntry">
      <Property name="Id" value="TECHFRAG_TRAV" />
      <Property name="DisplayCost" value="true" />
      <Property name="DontCharge" value="false" />
      <Property name="HideOptionAndDisplayCostOnly" value="false" />
      <Property name="DisplayOnlyCostIfCantAfford" value="false" />
      <Property name="HideCostStringIfCanAfford" value="false" />
      <Property name="RemoveOptionIfCantAfford" value="false" />
      <Property name="InvertCanAffordOutcome" value="false" />
      <Property name="MustAffordInCreative" value="false" />
      <Property name="CommunityContributionValue" value="0" />
      <Property name="CommunityContributionCapLocID" value="UI_COMMUNITY_CAP_REACHED" />
      <Property name="CannotAffordOSDMsg" value="" />
      <Property name="MissionMessageWhenCharged" value="" />
	  <Property name="Cost" value="GcCostMoney">
		  <Property name="GcCostMoney">
			  <Property name="Cost" value="]]..TravellerNaniteCost..[[" />
			  <Property name="CostCurrency" value="GcCurrency">
				  <Property name="Currency" value="Nanites" />
			  </Property>
		  </Property>
	  </Property>
    </Property>]]
	
SalvageExoticCost =
[[<Property name="InteractionTable" value="GcCostTableEntry">
      <Property name="Id" value="C_SALVAGE_ROY" />
      <Property name="DisplayCost" value="true" />
      <Property name="DontCharge" value="false" />
      <Property name="HideOptionAndDisplayCostOnly" value="true" />
      <Property name="DisplayOnlyCostIfCantAfford" value="false" />
      <Property name="HideCostStringIfCanAfford" value="false" />
      <Property name="RemoveOptionIfCantAfford" value="true" />
      <Property name="InvertCanAffordOutcome" value="false" />
      <Property name="MustAffordInCreative" value="false" />
      <Property name="CommunityContributionValue" value="0" />
      <Property name="CommunityContributionCapLocID" value="UI_COMMUNITY_CAP_REACHED" />
      <Property name="CannotAffordOSDMsg" value="" />
      <Property name="MissionMessageWhenCharged" value="" />
	  <Property name="Cost" value="GcCostSalvageShip">
		  <Property name="GcCostSalvageShip">
			  <Property name="WillGiveShipParts" value="false" />
			  <Property name="ShipClassStringOverride">
				  <Property name="Freighter" value="" />
				  <Property name="Dropship" value="" />
				  <Property name="Fighter" value="" />
				  <Property name="Scientific" value="" />
				  <Property name="Shuttle" value="" />
				  <Property name="PlayerFreighter" value="" />
				  <Property name="Royal" value="Salvage some Scrap + Reactor" />
				  <Property name="Alien" value="" />
				  <Property name="Sail" value="" />
				  <Property name="Robot" value="" />
				  <Property name="Corvette" value="" />
			  </Property>
			  <Property name="CannotAffordIfStringOverrideIsNull" value="true" />
		  </Property>
	  </Property>
    </Property>]]

SalvageShuttleCost =
[[<Property name="InteractionTable" value="GcCostTableEntry">
      <Property name="Id" value="C_SALVAGE_SHT" />
      <Property name="DisplayCost" value="true" />
      <Property name="DontCharge" value="false" />
      <Property name="HideOptionAndDisplayCostOnly" value="true" />
      <Property name="DisplayOnlyCostIfCantAfford" value="false" />
      <Property name="HideCostStringIfCanAfford" value="false" />
      <Property name="RemoveOptionIfCantAfford" value="true" />
      <Property name="InvertCanAffordOutcome" value="false" />
      <Property name="MustAffordInCreative" value="false" />
      <Property name="CommunityContributionValue" value="0" />
      <Property name="CommunityContributionCapLocID" value="UI_COMMUNITY_CAP_REACHED" />
      <Property name="CannotAffordOSDMsg" value="" />
      <Property name="MissionMessageWhenCharged" value="" />
	  <Property name="Cost" value="GcCostSalvageShip">
		  <Property name="GcCostSalvageShip">
			  <Property name="WillGiveShipParts" value="false" />
			  <Property name="ShipClassStringOverride">
				  <Property name="Freighter" value="" />
				  <Property name="Dropship" value="" />
				  <Property name="Fighter" value="" />
				  <Property name="Scientific" value="" />
				  <Property name="Shuttle" value="Salvage some Scrap + Reactor" />
				  <Property name="PlayerFreighter" value="" />
				  <Property name="Royal" value="" />
				  <Property name="Alien" value="" />
				  <Property name="Sail" value="" />
				  <Property name="Robot" value="" />
				  <Property name="Corvette" value="" />
			  </Property>
			  <Property name="CannotAffordIfStringOverrideIsNull" value="true" />
		  </Property>
	  </Property>
    </Property>]]

AddDreadnoughtFlatCost =
[[<Property name="InteractionTable" value="GcCostTableEntry">
      <Property name="Id" value="C_DREAD_FLAT" />
      <Property name="DisplayCost" value="true" />
      <Property name="DontCharge" value="false" />
      <Property name="HideOptionAndDisplayCostOnly" value="false" />
      <Property name="DisplayOnlyCostIfCantAfford" value="false" />
      <Property name="HideCostStringIfCanAfford" value="false" />
      <Property name="RemoveOptionIfCantAfford" value="false" />
      <Property name="InvertCanAffordOutcome" value="false" />
      <Property name="MustAffordInCreative" value="true" />
      <Property name="CommunityContributionValue" value="0" />
      <Property name="CommunityContributionCapLocID" value="UI_COMMUNITY_CAP_REACHED" />
      <Property name="CannotAffordOSDMsg" value="" />
      <Property name="MissionMessageWhenCharged" value="" />
	  <Property name="Cost" value="GcCostMoney">
		  <Property name="GcCostMoney">
			  <Property name="Cost" value="]]..DreadnoughtFlatCost..[[" />
			  <Property name="CostCurrency" value="GcCurrency">
				  <Property name="Currency" value="Units" />
			  </Property>
		  </Property>
	  </Property>
    </Property>]]

AddPurpCost =
[[<Property name="InteractionTable" value="GcCostTableEntry">
			<Property name="Id" value="PURP_COST" />
			<Property name="DisplayCost" value="false" />
			<Property name="DontCharge" value="false" />
			<Property name="HideOptionAndDisplayCostOnly" value="false" />
			<Property name="DisplayOnlyCostIfCantAfford" value="false" />
			<Property name="HideCostStringIfCanAfford" value="false" />
			<Property name="RemoveOptionIfCantAfford" value="false" />
			<Property name="InvertCanAffordOutcome" value="false" />
			<Property name="MustAffordInCreative" value="false" />
			<Property name="CommunityContributionValue" value="0" />
			<Property name="CommunityContributionCapLocID" value="UI_COMMUNITY_CAP_REACHED" />
			<Property name="CannotAffordOSDMsg" value="PURPCOSTFAIL" />
			<Property name="MissionMessageWhenCharged" value="" />
			<Property name="Cost" value="GcCostProduct">
				<Property name="GcCostProduct">
					<Property name="Default" value="GcDefaultMissionProductEnum">
						<Property name="DefaultProductType" value="None" />
					</Property>
					<Property name="Id" value="PURPTOKEN" />
					<Property name="Amount" value="1" />
					<Property name="UseDefaultAmount" value="false" />
					<Property name="TakeIDFromSeasonData" value="false" />
				</Property>
			</Property>
		</Property>]]

AddAbandChestCost =
[[<Property name="ItemCostsTable" value="GcCostTableEntry">
			<Property name="Id" value="ABANDC_COST" />
			<Property name="DisplayCost" value="true" />
			<Property name="DontCharge" value="false" />
			<Property name="HideOptionAndDisplayCostOnly" value="false" />
			<Property name="DisplayOnlyCostIfCantAfford" value="false" />
			<Property name="HideCostStringIfCanAfford" value="false" />
			<Property name="RemoveOptionIfCantAfford" value="false" />
			<Property name="InvertCanAffordOutcome" value="false" />
			<Property name="MustAffordInCreative" value="false" />
			<Property name="CommunityContributionValue" value="0" />
			<Property name="CommunityContributionCapLocID" value="UI_COMMUNITY_CAP_REACHED" />
			<Property name="CannotAffordOSDMsg" value="" />
			<Property name="MissionMessageWhenCharged" value="" />
			<Property name="Cost" value="GcCostProduct">
				<Property name="GcCostProduct">
					<Property name="Default" value="GcDefaultMissionProductEnum">
						<Property name="DefaultProductType" value="None" />
					</Property>
					<Property name="Id" value="SALVAGE_TECH7" />
					<Property name="Amount" value="6" />
					<Property name="UseDefaultAmount" value="false" />
					<Property name="TakeIDFromSeasonData" value="false" />
				</Property>
			</Property>
		</Property>]]

AbandonedModeCompleteCost =
[[<Property name="Cost" value="GcCostInstalledTech">
				<Property name="GcCostInstalledTech">
					<Property name="Id" value="DISCORDKEY" />
					<Property name="MinChargePercent" value="0.000000" />
					<Property name="BurnCharge" value="false" />
					<Property name="InventoryToCheck" value="All" />
				</Property>
			</Property>]]
			
AddCorvTeleportCost =
[[<Property name="ItemCostsTable" value="GcCostTableEntry" _id="CORV_COST">
			<Property name="Id" value="CORV_COST" />
			<Property name="DisplayCost" value="true" />
			<Property name="DontCharge" value="false" />
			<Property name="HideOptionAndDisplayCostOnly" value="false" />
			<Property name="DisplayOnlyCostIfCantAfford" value="false" />
			<Property name="HideCostStringIfCanAfford" value="false" />
			<Property name="RemoveOptionIfCantAfford" value="false" />
			<Property name="InvertCanAffordOutcome" value="false" />
			<Property name="MustAffordInCreative" value="false" />
			<Property name="CommunityContributionValue" value="0" />
			<Property name="CommunityContributionCapLocID" value="UI_COMMUNITY_CAP_REACHED" />
			<Property name="CannotAffordOSDMsg" value="CORVCOSTFAIL" />
			<Property name="MissionMessageWhenCharged" value="" />
			<Property name="Cost" value="GcCostProduct">
				<Property name="GcCostProduct">
					<Property name="Default" value="GcDefaultMissionProductEnum">
						<Property name="DefaultProductType" value="None" />
					</Property>
					<Property name="Id" value="NAV_DATA" />
					<Property name="Amount" value="1" />
					<Property name="UseDefaultAmount" value="false" />
					<Property name="TakeIDFromSeasonData" value="false" />
				</Property>
			</Property>
		</Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= Description,
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["EXML_CREATE"] = "FALSE",
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\COSTTABLE.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"InteractionTable","GcCostTableEntry"},
				["ADD"] = NewTravellerCost,
				["ADD_OPTION"] = "ADDafterSECTION",
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
				["SPECIAL_KEY_WORDS"] = {"Id","C_FLT_TRADE_9"},
				["PRECEDING_KEY_WORDS"] = {"GcCostMoney"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Cost", LowTradeExpCost},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","C_FLT_TRADE_10"},
				["PRECEDING_KEY_WORDS"] = {"GcCostMoney"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Cost", MedTradeExpCost},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id","C_FLT_TRADE_11"},
				["PRECEDING_KEY_WORDS"] = {"GcCostMoney"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Cost", HighTradeExpCost},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_CLASS_UPGRADE"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["ADD"] = NewShipClassCosts,
				["ADD_OPTION"] = "ADDafterSECTION",
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
				["ADD_OPTION"] = "ADDafterSECTION",
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
				["ADD_OPTION"] = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_ABAND_START"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["REMOVE"] = "SECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_PILOT_SLOT"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["ADD"] = NewPilotCosts,
				["ADD_OPTION"] = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_PILOT_SLOT"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["REMOVE"] = "SECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_PET_SLOT"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["ADD"] = PetSlotPrices,
				["ADD_OPTION"] = "ADDafterSECTION",
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
				["ADD_OPTION"] = "ADDafterSECTION",
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
				["ADD_OPTION"] = "ADDafterSECTION",
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
				["ADD_OPTION"] = "ADDafterSECTION",
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
				["ADD_OPTION"] = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_INV_SAL_CASHR"},
				["PRECEDING_KEY_WORDS"] = {"Costs"},
				["REMOVE"] = "SECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"InteractionTable","GcCostTableEntry"},
				["ADD"] = AddDreadnoughtFlatCost,
				["ADD_OPTION"] = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "C_MONO_NUB_OPEN"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Amount", DiscordantInterfaceCost},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"InteractionTable","GcCostTableEntry"},
				["ADD"] = AddPurpCost,
				["ADD_OPTION"] = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ItemCostsTable","GcCostTableEntry"},
				["ADD"] = AddAbandChestCost,
				["ADD_OPTION"] = "ADDafterSECTION",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ItemCostsTable","GcCostTableEntry"},
				["ADD"] = AddCorvTeleportCost,
				["ADD_OPTION"] = "ADDafterSECTION",
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRASHEDFREIGHTER\PARTS\CONTAINERTERMINAL\ENTITIES\TERMINALCHAR.ENTITY.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"ActivationCost","GcInteractionActivationCost"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"SubstanceId", CrashedContSubstance},
					{"Cost", CrashedContAmount},
				}
			},
			{
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Name", "Cargo Pod"},
					{"ScanName", "Cargo Pod"},
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/SCANROOM/PARTS/FLOOR0/ENTITIES/SCANROOMINTERACTION.ENTITY.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"ActivationCost","GcInteractionActivationCost"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"SubstanceId", ScannerRoomSubstance},
					{"Cost", ScannerRoomAmount},
					--{"Repeat", "true"},		--"false"
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"MODELS/COMMON/SPACECRAFT/BIGGS/TELEPORTER/ENTITIES/TELEPORTER.ENTITY.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			--Intentionally left blank
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"MODELS/COMMON/SPACECRAFT/BIGGS/TELEWATER/ENTITIES/TELEWATER.ENTITY.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			--Intentionally left blank
		}
	},
	--[[
	{
		["MBIN_FILE_SOURCE"] 	= {"MODELS/PLANETS/COMMON/BUILDINGS/ROBOT/ROBOTBASE/ENTITIES/ROBOTWEAPONCRATE.ENTITY.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"ActivationCost","GcInteractionActivationCost"},
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


local ChangesToCostTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]

if ReactorSalvage then
			ChangesToCostTable[#ChangesToCostTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"InteractionTable","GcCostTableEntry"},
				["ADD"] = SalvageExoticCost,
				["ADD_OPTION"] = "ADDafterSECTION",
			}
			
			ChangesToCostTable[#ChangesToCostTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"InteractionTable","GcCostTableEntry"},
				["ADD"] = SalvageShuttleCost,
				["ADD_OPTION"] = "ADDafterSECTION",
			}
			
			ChangesToCostTable[#ChangesToCostTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id","C_SALVAGEPROD"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"DontCharge", "false"},			--False
					{"WillGiveShipParts", "true"},		--True		Try making false???
					
					--{"CannotAffordOSDMsg", "Extract Reactor Core"},
					{"InvertCanAffordOutcome", "true"},			--False		Try making both of these true, and then only put in override strings for ones I don't want to salvage ie Alien
					{"CannotAffordIfStringOverrideIsNull", "true"},	--False		Setting these both to true works!
				}
			}
			
			ChangesToCostTable[#ChangesToCostTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id","C_SALVAGEPROD"},
				["PRECEDING_KEY_WORDS"] = {"ShipClassStringOverride"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Freighter", "No"},			--""
				}
			}
			
			ChangesToCostTable[#ChangesToCostTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id","C_SALVAGEPROD"},
				["PRECEDING_KEY_WORDS"] = {"ShipClassStringOverride"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"PlayerFreighter", "No"},			--""
				}
			}
			
			ChangesToCostTable[#ChangesToCostTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id","C_SALVAGEPROD"},
				["PRECEDING_KEY_WORDS"] = {"ShipClassStringOverride"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Alien", "No"},			--""
				}
			}
end

if AtlantidToolsEarlier then
			ChangesToCostTable[#ChangesToCostTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id","C_MONO_NUB_ON"},
				["PRECEDING_KEY_WORDS"] = {"GcCostMissionComplete"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Cost", "ACT1_STEP12"},			--"MONO_NUB_DUMMY"
				}
			}
end

if AtlantidToolsAbandonedMode then
			ChangesToCostTable[#ChangesToCostTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id","C_MONO_NUB_ON"},
				["PRECEDING_KEY_WORDS"] = {"GcCostGroup"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"ConditionTest", "AnyTrue"},			--"AllTrue"
				}
			}
			ChangesToCostTable[#ChangesToCostTable+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id","C_MONO_NUB_ON",		"Costs", "GcCostMissionComplete"},
				["ADD"] = AbandonedModeCompleteCost,
				["ADD_OPTION"] = "ADDafterSECTION",
			}
end

local ChangesToCorvTeleporter = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["MXML_CHANGE_TABLE"]

if CovetteTeleportCost then
			ChangesToCorvTeleporter[#ChangesToCorvTeleporter+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ActivationCost","GcInteractionActivationCost"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"SubstanceId", CorvetteTeleportSubstance},
					{"Cost", CorvetteTeleportAmount},
					--{"UseCostID", "CORV_COST"},
					--{"Repeat", "true"},		--"false"
				}
			}
end

local ChangesToCorvTeleporterWater = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][5]["MXML_CHANGE_TABLE"]

if CovetteTeleportCost then
			ChangesToCorvTeleporterWater[#ChangesToCorvTeleporterWater+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ActivationCost","GcInteractionActivationCost"},
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"SubstanceId", CorvetteTeleportSubstance},
					{"Cost", CorvetteTeleportAmount},
					--{"UseCostID", "CORV_COST"},
					--{"Repeat", "true"},		--"false"
				}
			}
end