Bool_Police_On = true -- Turn on/off new Sentinel Ship`s rewards
Bool_Sentinels_On = true -- Turn on/off new Sentinel`s rewards
Bool_FreighterResc_On = true -- Turn on/off new Freighter Rescue`s rewards
Bool_Pirate_On = true -- Turn on/off new Pirate Ship`s rewards
Bool_CrashFrei_On = true -- Turn on/off new Crashed Freighter`s rewards
Bool_QuickS_On = true -- Turn on/off QuickSilver rewards

QS_Multiplier = 1 -- Multiplies all QuickSilver reward Amounts
Units_Multiplier = 1 -- Multiplies all Unit reward Amounts
Nanites_Multiplier = 1 -- Multiplies all Nanite reward Amounts
Extra_Words_Stone = 4 -- Number of extra Words Learned from Objects. 0 = vanilla
Extra_Words_Talk = 4 -- Number of extra Words Learned from Dialog. 0 = vanilla

--Minimun And Maximum Guild Standing increase from Missions and Freighter Rescue
  MIN_STAND = 1
  MAX_STAND = 5
--Sentinel Ship new rewards: All Frigate Expedition Boosters
  POLICE_REWARDS =[[]]
  if Bool_Police_On then
  POLICE_REWARDS =
  [[
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="100" />
      <Property name="Reward" value="GcRewardSpecificProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
          <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="Id" value="FRIG_BOOST_EXP" />
        <Property name="AmountMin" value="1" />
        <Property name="AmountMax" value="1" />
        <Property name="ForceSpecialMessage" value="False" />
      </Property>
      <Property name="LabelID" value="" />
    </Property>
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="100" />
      <Property name="Reward" value="GcRewardSpecificProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
          <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="Id" value="FRIG_BOOST_MIN" />
        <Property name="AmountMin" value="1" />
        <Property name="AmountMax" value="1" />
        <Property name="ForceSpecialMessage" value="False" />
      </Property>
      <Property name="LabelID" value="" />
    </Property>
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="100" />
      <Property name="Reward" value="GcRewardSpecificProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
          <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="Id" value="FRIG_BOOST_SPD" />
        <Property name="AmountMin" value="1" />
        <Property name="AmountMax" value="1" />
        <Property name="ForceSpecialMessage" value="False" />
      </Property>
      <Property name="LabelID" value="" />
    </Property>
  ]]
  end

--All Sentinels`s new Rewards:
  --Sentinel Drone new Reward: Suspicious Packet (Weaponry)
  DRONE_REWARDS =[[]]
  if Bool_Sentinels_On then
  DRONE_REWARDS =
  [[
    <Property value="GcRewardTableItem.xml">
    <Property name="PercentageChance" value="35" />
    <Property name="Reward" value="GcRewardSpecificProduct.xml">
      <Property name="Default" value="GcDefaultMissionProductEnum.xml">
        <Property name="DefaultProductType" value="None" />
      </Property>
      <Property name="Id" value="SCRAP_WEAP" />
      <Property name="AmountMin" value="1" />
      <Property name="AmountMax" value="1" />
      <Property name="ForceSpecialMessage" value="False" />
    </Property>
    <Property name="LabelID" value="" />
    </Property>
  ]]
  --Sentinel Quad new Reward: Suspicious Packet (Technology)
  QUAD_REWARDS =
  [[
    <Property value="GcRewardTableItem.xml">
    <Property name="PercentageChance" value="50" />
    <Property name="Reward" value="GcRewardSpecificProduct.xml">
      <Property name="Default" value="GcDefaultMissionProductEnum.xml">
        <Property name="DefaultProductType" value="None" />
      </Property>
      <Property name="Id" value="SCRAP_TECH" />
      <Property name="AmountMin" value="1" />
      <Property name="AmountMax" value="1" />
      <Property name="ForceSpecialMessage" value="False" />
    </Property>
    <Property name="LabelID" value="" />
    </Property>
  ]]
  --Sentinel Walker new Reward: Suspicious Packet (Technology)
  WALKER_REWARDS =
  [[
    <Property value="GcRewardTableItem.xml">
    <Property name="PercentageChance" value="100" />
    <Property name="Reward" value="GcRewardSpecificProduct.xml">
      <Property name="Default" value="GcDefaultMissionProductEnum.xml">
        <Property name="DefaultProductType" value="None" />
      </Property>
      <Property name="Id" value="SCRAP_TECH" />
      <Property name="AmountMin" value="1" />
      <Property name="AmountMax" value="1" />
      <Property name="ForceSpecialMessage" value="False" />
    </Property>
    <Property name="LabelID" value="" />
    </Property>
  ]]
  end
--Rescue Freighter new Rewards: 1x Salvaged Frigate Module, 1x Cargo Bulkhead,  1-3x Frigate Fuel (200 TONNES ),RNG Chance for Freighter Tech Modules
  RESCUEFRT_REWARDS =[[]]
  if Bool_FreighterResc_On then
  RESCUEFRT_REWARDS =
  [[
      <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="30" />
      <Property name="Reward" value="GcRewardProceduralProduct.xml">
        <Property name="Type" value="GcProceduralProductCategory.xml">
          <Property name="ProceduralProductCategory" value="FreighterTechHyp" />
        </Property>
        <Property name="OSDMessage" value="" />
        <Property name="SubIfPlayerAlreadyHasOne" value="False" />
        <Property name="OverrideRarity" value="False" />
        <Property name="Rarity" value="GcRarity.xml">
          <Property name="Rarity" value="Common" />
        </Property>
      </Property>
      <Property name="LabelID" value="" />
    </Property>
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="30" />
      <Property name="Reward" value="GcRewardProceduralProduct.xml">
        <Property name="Type" value="GcProceduralProductCategory.xml">
          <Property name="ProceduralProductCategory" value="FreighterTechSpeed" />
        </Property>
        <Property name="OSDMessage" value="" />
        <Property name="SubIfPlayerAlreadyHasOne" value="False" />
        <Property name="OverrideRarity" value="False" />
        <Property name="Rarity" value="GcRarity.xml">
          <Property name="Rarity" value="Common" />
        </Property>
      </Property>
      <Property name="LabelID" value="" />
    </Property>
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="30" />
      <Property name="Reward" value="GcRewardProceduralProduct.xml">
        <Property name="Type" value="GcProceduralProductCategory.xml">
          <Property name="ProceduralProductCategory" value="FreighterTechFuel" />
        </Property>
        <Property name="OSDMessage" value="" />
        <Property name="SubIfPlayerAlreadyHasOne" value="False" />
        <Property name="OverrideRarity" value="False" />
        <Property name="Rarity" value="GcRarity.xml">
          <Property name="Rarity" value="Common" />
        </Property>
      </Property>
      <Property name="LabelID" value="" />
    </Property>
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="30" />
      <Property name="Reward" value="GcRewardProceduralProduct.xml">
        <Property name="Type" value="GcProceduralProductCategory.xml">
          <Property name="ProceduralProductCategory" value="FreighterTechTrade" />
        </Property>
        <Property name="OSDMessage" value="" />
        <Property name="SubIfPlayerAlreadyHasOne" value="False" />
        <Property name="OverrideRarity" value="False" />
        <Property name="Rarity" value="GcRarity.xml">
          <Property name="Rarity" value="Common" />
        </Property>
      </Property>
      <Property name="LabelID" value="" />
    </Property>
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="30" />
      <Property name="Reward" value="GcRewardProceduralProduct.xml">
        <Property name="Type" value="GcProceduralProductCategory.xml">
          <Property name="ProceduralProductCategory" value="FreighterTechCombat" />
        </Property>
        <Property name="OSDMessage" value="" />
        <Property name="SubIfPlayerAlreadyHasOne" value="False" />
        <Property name="OverrideRarity" value="False" />
        <Property name="Rarity" value="GcRarity.xml">
          <Property name="Rarity" value="Common" />
        </Property>
      </Property>
      <Property name="LabelID" value="" />
    </Property>
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="30" />
      <Property name="Reward" value="GcRewardProceduralProduct.xml">
        <Property name="Type" value="GcProceduralProductCategory.xml">
          <Property name="ProceduralProductCategory" value="FreighterTechMine" />
        </Property>
        <Property name="OSDMessage" value="" />
        <Property name="SubIfPlayerAlreadyHasOne" value="False" />
        <Property name="OverrideRarity" value="False" />
        <Property name="Rarity" value="GcRarity.xml">
          <Property name="Rarity" value="Common" />
        </Property>
      </Property>
      <Property name="LabelID" value="" />
    </Property>
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="30" />
      <Property name="Reward" value="GcRewardProceduralProduct.xml">
        <Property name="Type" value="GcProceduralProductCategory.xml">
          <Property name="ProceduralProductCategory" value="FreighterTechExp" />
        </Property>
        <Property name="OSDMessage" value="" />
        <Property name="SubIfPlayerAlreadyHasOne" value="False" />
        <Property name="OverrideRarity" value="False" />
        <Property name="Rarity" value="GcRarity.xml">
          <Property name="Rarity" value="Common" />
        </Property>
      </Property>
      <Property name="LabelID" value="" />
    </Property>
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="30" />
      <Property name="Reward" value="GcRewardSpecificProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
          <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="Id" value="FREI_INV_TOKEN" />
        <Property name="AmountMin" value="1" />
        <Property name="AmountMax" value="1" />
        <Property name="ForceSpecialMessage" value="True" />
      </Property>
      <Property name="LabelID" value="" />
    </Property>
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="30" />
      <Property name="Reward" value="GcRewardSpecificProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
          <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="Id" value="FRIG_TOKEN" />
        <Property name="AmountMin" value="1" />
        <Property name="AmountMax" value="1" />
        <Property name="ForceSpecialMessage" value="True" />
      </Property>
      <Property name="LabelID" value="" />
    </Property>
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="100" />
      <Property name="Reward" value="GcRewardSpecificProduct.xml">
      <Property name="Default" value="GcDefaultMissionProductEnum.xml">
        <Property name="DefaultProductType" value="None" />
      </Property>
      <Property name="Id" value="FRIGATE_FUEL_3" />
      <Property name="AmountMin" value="1" />
      <Property name="AmountMax" value="3" />
      <Property name="ForceSpecialMessage" value="True" />
      </Property>
      <Property name="LabelID" value="" />
    </Property>
  ]]
  end
--Pirate Ship new rewards: 
  PIRATE_REWARDS =[[]]
  if Bool_Pirate_On then
  PIRATE_REWARDS =
  [[
    <Property value="GcRewardTableItem.xml">
    <Property name="PercentageChance" value="40" />
    <Property name="Reward" value="GcRewardSpecificProduct.xml">
      <Property name="Default" value="GcDefaultMissionProductEnum.xml">
        <Property name="DefaultProductType" value="None" />
      </Property>
      <Property name="Id" value="U_PULSEX" />
      <Property name="AmountMin" value="1" />
      <Property name="AmountMax" value="1" />
      <Property name="ForceSpecialMessage" value="False" />
    </Property>
    <Property name="LabelID" value="" />
    </Property>

    <Property value="GcRewardTableItem.xml">
    <Property name="PercentageChance" value="40" />
    <Property name="Reward" value="GcRewardSpecificProduct.xml">
      <Property name="Default" value="GcDefaultMissionProductEnum.xml">
        <Property name="DefaultProductType" value="None" />
      </Property>
      <Property name="Id" value="U_HYPERX" />
      <Property name="AmountMin" value="1" />
      <Property name="AmountMax" value="1" />
      <Property name="ForceSpecialMessage" value="False" />
    </Property>
    <Property name="LabelID" value="" />
    </Property>

    <Property value="GcRewardTableItem.xml">
    <Property name="PercentageChance" value="40" />
    <Property name="Reward" value="GcRewardSpecificProduct.xml">
      <Property name="Default" value="GcDefaultMissionProductEnum.xml">
        <Property name="DefaultProductType" value="None" />
      </Property>
      <Property name="Id" value="U_SHIPSHIELDX" />
      <Property name="AmountMin" value="1" />
      <Property name="AmountMax" value="1" />
      <Property name="ForceSpecialMessage" value="False" />
    </Property>
    <Property name="LabelID" value="" />
    </Property>

    <Property value="GcRewardTableItem.xml">
    <Property name="PercentageChance" value="40" />
    <Property name="Reward" value="GcRewardSpecificProduct.xml">
      <Property name="Default" value="GcDefaultMissionProductEnum.xml">
        <Property name="DefaultProductType" value="None" />
      </Property>
      <Property name="Id" value="U_SHIPGUNX" />
      <Property name="AmountMin" value="1" />
      <Property name="AmountMax" value="1" />
      <Property name="ForceSpecialMessage" value="False" />
    </Property>
    <Property name="LabelID" value="" />
    </Property>
    
    <Property value="GcRewardTableItem.xml">
    <Property name="PercentageChance" value="40" />
    <Property name="Reward" value="GcRewardSpecificProduct.xml">
      <Property name="Default" value="GcDefaultMissionProductEnum.xml">
        <Property name="DefaultProductType" value="None" />
      </Property>
      <Property name="Id" value="U_SHIPLASX" />
      <Property name="AmountMin" value="1" />
      <Property name="AmountMax" value="1" />
      <Property name="ForceSpecialMessage" value="False" />
    </Property>
    <Property name="LabelID" value="" />
    </Property>

    <Property value="GcRewardTableItem.xml">
    <Property name="PercentageChance" value="40" />
    <Property name="Reward" value="GcRewardSpecificProduct.xml">
      <Property name="Default" value="GcDefaultMissionProductEnum.xml">
        <Property name="DefaultProductType" value="None" />
      </Property>
      <Property name="Id" value="U_SHIPSHOTX" />
      <Property name="AmountMin" value="1" />
      <Property name="AmountMax" value="1" />
      <Property name="ForceSpecialMessage" value="False" />
    </Property>
    <Property name="LabelID" value="" />
    </Property>

    <Property value="GcRewardTableItem.xml">
    <Property name="PercentageChance" value="40" />
    <Property name="Reward" value="GcRewardSpecificProduct.xml">
      <Property name="Default" value="GcDefaultMissionProductEnum.xml">
        <Property name="DefaultProductType" value="None" />
      </Property>
      <Property name="Id" value="U_SHIPMINIX" />
      <Property name="AmountMin" value="1" />
      <Property name="AmountMax" value="1" />
      <Property name="ForceSpecialMessage" value="False" />
    </Property>
    <Property name="LabelID" value="" />
    </Property>

    <Property value="GcRewardTableItem.xml">
    <Property name="PercentageChance" value="40" />
    <Property name="Reward" value="GcRewardSpecificProduct.xml">
      <Property name="Default" value="GcDefaultMissionProductEnum.xml">
        <Property name="DefaultProductType" value="None" />
      </Property>
      <Property name="Id" value="U_SHIPBLOBX" />
      <Property name="AmountMin" value="1" />
      <Property name="AmountMax" value="1" />
      <Property name="ForceSpecialMessage" value="False" />
    </Property>
    <Property name="LabelID" value="" />
    </Property>
  ]]
  end
--Crashed Freighter new rewards: 
  CRASHEDFREIG_REWARDS =[[]]
  if Bool_CrashFrei_On then
  CRASHEDFREIG_REWARDS =
  [[
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="35" />
      <Property name="Reward" value="GcRewardSpecificSubstance.xml">
        <Property name="Default" value="GcDefaultMissionProduct.xml">
          <Property name="Product" value="GcProductTableEnum.xml">
            <Property name="Product" value="None" />
          </Property>
        </Property>
        <Property name="Id" value="ASTEROID1" />
        <Property name="AmountMin" value="100" />
        <Property name="AmountMax" value="200" />
        <Property name="HardModeMultiplier" value="1" />
        <Property name="DisableMultiplier" value="False" />
        <Property name="RewardAsBlobs" value="False" />
        <Property name="UseFuelMultiplier" value="False" />
      </Property>
      <Property name="LabelID" value="" />
    </Property>
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="30" />
      <Property name="Reward" value="GcRewardSpecificSubstance.xml">
        <Property name="Default" value="GcDefaultMissionProduct.xml">
          <Property name="Product" value="GcProductTableEnum.xml">
            <Property name="Product" value="None" />
          </Property>
        </Property>
        <Property name="Id" value="ASTEROID2" />
        <Property name="AmountMin" value="100" />
        <Property name="AmountMax" value="200" />
        <Property name="HardModeMultiplier" value="1" />
        <Property name="DisableMultiplier" value="False" />
        <Property name="RewardAsBlobs" value="False" />
        <Property name="UseFuelMultiplier" value="False" />
      </Property>
      <Property name="LabelID" value="" />
    </Property>
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="30" />
      <Property name="Reward" value="GcRewardProceduralProduct.xml">
        <Property name="Type" value="GcProceduralProductCategory.xml">
          <Property name="ProceduralProductCategory" value="FreighterTechHyp" />
        </Property>
        <Property name="OSDMessage" value="" />
        <Property name="SubIfPlayerAlreadyHasOne" value="False" />
        <Property name="OverrideRarity" value="False" />
        <Property name="Rarity" value="GcRarity.xml">
          <Property name="Rarity" value="Common" />
        </Property>
      </Property>
      <Property name="LabelID" value="" />
    </Property>
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="5" />
      <Property name="Reward" value="GcRewardProceduralProduct.xml">
        <Property name="Type" value="GcProceduralProductCategory.xml">
          <Property name="ProceduralProductCategory" value="FreighterTechSpeed" />
        </Property>
        <Property name="OSDMessage" value="" />
        <Property name="SubIfPlayerAlreadyHasOne" value="False" />
        <Property name="OverrideRarity" value="False" />
        <Property name="Rarity" value="GcRarity.xml">
          <Property name="Rarity" value="Common" />
        </Property>
      </Property>
      <Property name="LabelID" value="" />
    </Property>
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="5" />
      <Property name="Reward" value="GcRewardProceduralProduct.xml">
        <Property name="Type" value="GcProceduralProductCategory.xml">
          <Property name="ProceduralProductCategory" value="FreighterTechFuel" />
        </Property>
        <Property name="OSDMessage" value="" />
        <Property name="SubIfPlayerAlreadyHasOne" value="False" />
        <Property name="OverrideRarity" value="False" />
        <Property name="Rarity" value="GcRarity.xml">
          <Property name="Rarity" value="Common" />
        </Property>
      </Property>
      <Property name="LabelID" value="" />
    </Property>
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="5" />
      <Property name="Reward" value="GcRewardProceduralProduct.xml">
        <Property name="Type" value="GcProceduralProductCategory.xml">
          <Property name="ProceduralProductCategory" value="FreighterTechTrade" />
        </Property>
        <Property name="OSDMessage" value="" />
        <Property name="SubIfPlayerAlreadyHasOne" value="False" />
        <Property name="OverrideRarity" value="False" />
        <Property name="Rarity" value="GcRarity.xml">
          <Property name="Rarity" value="Common" />
        </Property>
      </Property>
      <Property name="LabelID" value="" />
    </Property>
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="5" />
      <Property name="Reward" value="GcRewardProceduralProduct.xml">
        <Property name="Type" value="GcProceduralProductCategory.xml">
          <Property name="ProceduralProductCategory" value="FreighterTechCombat" />
        </Property>
        <Property name="OSDMessage" value="" />
        <Property name="SubIfPlayerAlreadyHasOne" value="False" />
        <Property name="OverrideRarity" value="False" />
        <Property name="Rarity" value="GcRarity.xml">
          <Property name="Rarity" value="Common" />
        </Property>
      </Property>
      <Property name="LabelID" value="" />
    </Property>
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="5" />
      <Property name="Reward" value="GcRewardProceduralProduct.xml">
        <Property name="Type" value="GcProceduralProductCategory.xml">
          <Property name="ProceduralProductCategory" value="FreighterTechMine" />
        </Property>
        <Property name="OSDMessage" value="" />
        <Property name="SubIfPlayerAlreadyHasOne" value="False" />
        <Property name="OverrideRarity" value="False" />
        <Property name="Rarity" value="GcRarity.xml">
          <Property name="Rarity" value="Common" />
        </Property>
      </Property>
      <Property name="LabelID" value="" />
    </Property>
    <Property value="GcRewardTableItem.xml">
      <Property name="PercentageChance" value="5" />
      <Property name="Reward" value="GcRewardProceduralProduct.xml">
        <Property name="Type" value="GcProceduralProductCategory.xml">
          <Property name="ProceduralProductCategory" value="FreighterTechExp" />
        </Property>
        <Property name="OSDMessage" value="" />
        <Property name="SubIfPlayerAlreadyHasOne" value="False" />
        <Property name="OverrideRarity" value="False" />
        <Property name="Rarity" value="GcRarity.xml">
          <Property name="Rarity" value="Common" />
        </Property>
      </Property>
      <Property name="LabelID" value="" />
    </Property>
  ]]
  end
--QuickSilver rewards: 50-250 From MissionBoard 5/10/25 from Drone/Quad/Walker Chance of 10-100 from freighter Treasure 150 From Nada Achievment
  QS_MB_LOW =[[]]
  if Bool_QuickS_On then
  QS_MB_LOW =
  [[
        <Property value="GcRewardTableItem.xml">
          <Property name="PercentageChance" value="100" />
          <Property name="Reward" value="GcRewardMoney.xml">
            <Property name="AmountMin" value="50" />
            <Property name="AmountMax" value="80" />
            <Property name="Currency" value="GcCurrency.xml">
              <Property name="Currency" value="Specials" />
            </Property>
          </Property>
          <Property name="LabelID" value="" />
        </Property>
  ]]
  end

  QS_MB_MED =[[]]
  if Bool_QuickS_On then
  QS_MB_MED =
  [[
        <Property value="GcRewardTableItem.xml">
          <Property name="PercentageChance" value="100" />
          <Property name="Reward" value="GcRewardMoney.xml">
            <Property name="AmountMin" value="100" />
            <Property name="AmountMax" value="150" />
            <Property name="Currency" value="GcCurrency.xml">
              <Property name="Currency" value="Specials" />
            </Property>
          </Property>
          <Property name="LabelID" value="" />
        </Property>
  ]]
  end

  QS_MB_HIGH =[[]]
  if Bool_QuickS_On then
  QS_MB_HIGH =
  [[
        <Property value="GcRewardTableItem.xml">
          <Property name="PercentageChance" value="100" />
          <Property name="Reward" value="GcRewardMoney.xml">
            <Property name="AmountMin" value="150" />
            <Property name="AmountMax" value="250" />
            <Property name="Currency" value="GcCurrency.xml">
              <Property name="Currency" value="Specials" />
            </Property>
          </Property>
          <Property name="LabelID" value="" />
        </Property>
  ]]
  end

  QS_MB_MEGA =[[]]
  if Bool_QuickS_On then
  QS_MB_MEGA =
  [[
        <Property value="GcRewardTableItem.xml">
          <Property name="PercentageChance" value="100" />
          <Property name="Reward" value="GcRewardMoney.xml">
            <Property name="AmountMin" value="250" />
            <Property name="AmountMax" value="500" />
            <Property name="Currency" value="GcCurrency.xml">
              <Property name="Currency" value="Specials" />
            </Property>
          </Property>
          <Property name="LabelID" value="" />
        </Property>
  ]]
  end

  QS_DRONE =[[]]
  if Bool_QuickS_On then
  QS_DRONE =
  [[
        <Property value="GcRewardTableItem.xml">
          <Property name="PercentageChance" value="100" />
          <Property name="Reward" value="GcRewardMoney.xml">
            <Property name="AmountMin" value="15" />
            <Property name="AmountMax" value="25" />
            <Property name="Currency" value="GcCurrency.xml">
              <Property name="Currency" value="Specials" />
            </Property>
          </Property>
          <Property name="LabelID" value="" />
        </Property>
  ]]
  end

  QS_QUAD =[[]]
  if Bool_QuickS_On then
  QS_QUAD =
  [[
        <Property value="GcRewardTableItem.xml">
          <Property name="PercentageChance" value="100" />
          <Property name="Reward" value="GcRewardMoney.xml">
            <Property name="AmountMin" value="25" />
            <Property name="AmountMax" value="50" />
            <Property name="Currency" value="GcCurrency.xml">
              <Property name="Currency" value="Specials" />
            </Property>
          </Property>
          <Property name="LabelID" value="" />
        </Property>
  ]]
  end

  QS_WALKER =[[]]
  if Bool_QuickS_On then
  QS_WALKER =
  [[
        <Property value="GcRewardTableItem.xml">
          <Property name="PercentageChance" value="100" />
          <Property name="Reward" value="GcRewardMoney.xml">
            <Property name="AmountMin" value="50" />
            <Property name="AmountMax" value="500" />
            <Property name="Currency" value="GcCurrency.xml">
              <Property name="Currency" value="Specials" />
            </Property>
          </Property>
          <Property name="LabelID" value="" />
        </Property>
  ]]
  end

  QS_NADA =[[]]
  if Bool_QuickS_On then
  QS_NADA =
  [[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardStatDiff.xml">
              <Property name="CoreStat" value="JM" />
              <Property name="CompareAndSetStat" value="JM_BANKED" />
              <Property name="SubstanceID" value="" />
              <Property name="RewardCurrency" value="GcCurrency.xml">
                <Property name="Currency" value="Specials" />
              </Property>
              <Property name="AmountPerStat" value="150" />
              <Property name="StatRewardCap" value="-1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
  ]]
  end

  QS_FREIGHTER =[[]]
  if Bool_QuickS_On then
  QS_FREIGHTER =
  [[
        <Property value="GcRewardTableItem.xml">
          <Property name="PercentageChance" value="100" />
          <Property name="Reward" value="GcRewardMoney.xml">
            <Property name="AmountMin" value="10" />
            <Property name="AmountMax" value="100" />
            <Property name="Currency" value="GcCurrency.xml">
              <Property name="Currency" value="Specials" />
            </Property>
          </Property>
          <Property name="LabelID" value="" />
        </Property>
  ]]
  end
--Extra Words Strings Objects
  W_STONE = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="None" />
                </Property>
                <Property name="UseCategory" value="False" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="MISC" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_STONE = string.rep(W_STONE, Extra_Words_Stone)

  W_STONE_TRA = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="None" />
                </Property>
                <Property name="UseCategory" value="False" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="MISC" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_STONE_TRA = string.rep(W_STONE_TRA, Extra_Words_Stone)

  W_STONE_EXP = 
  [[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Explorers" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="WordCategory" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
  ]] W_STONE_EXP = string.rep(W_STONE_EXP, Extra_Words_Stone)

  W_STONE_WAR = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Warriors" />
                </Property>
                <Property name="UseCategory" value="False" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="MISC" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_STONE_WAR = string.rep(W_STONE_WAR, Extra_Words_Stone)

  W_ATLAS = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Atlas" />
                </Property>
                <Property name="UseCategory" value="False" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="MISC" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_ATLAS = string.rep(W_ATLAS, Extra_Words_Stone)
--Extra Words Strings NPC Traders(Gek)
  W_TRA_DIRECT = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Traders" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="DIRECTIONS" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_TRA_DIRECT = string.rep(W_TRA_DIRECT, Extra_Words_Talk)

  W_TRA_HELP = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Traders" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="HELP" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_TRA_HELP = string.rep(W_TRA_HELP, Extra_Words_Talk)

  W_TRA_TRADE = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Traders" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="TRADE" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_TRA_TRADE = string.rep(W_TRA_TRADE, Extra_Words_Talk)

  W_TRA_LORE = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Traders" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="LORE" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_TRA_LORE = string.rep(W_TRA_LORE, Extra_Words_Talk)

  W_TRA_TECH = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Traders" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="TECH" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_TRA_TECH = string.rep(W_TRA_TECH, Extra_Words_Talk)

  W_TRA_THREAT = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Traders" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="THREAT" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_TRA_THREAT = string.rep(W_TRA_THREAT, Extra_Words_Talk)

  W_TRA_MISC = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Traders" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="MISC" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_TRA_MISC = string.rep(W_TRA_MISC, Extra_Words_Talk)
--Extra Words Strings NPC Explorers(Korvax)
  W_EXP_DIRECT = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Explorers" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="DIRECTIONS" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_EXP_DIRECT = string.rep(W_EXP_DIRECT, Extra_Words_Talk)

  W_EXP_HELP = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Explorers" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="HELP" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_EXP_HELP = string.rep(W_EXP_HELP, Extra_Words_Talk)

  W_EXP_TRADE = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Explorers" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="TRADE" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_EXP_TRADE = string.rep(W_EXP_TRADE, Extra_Words_Talk)

  W_EXP_LORE = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Explorers" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="LORE" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_EXP_LORE = string.rep(W_EXP_LORE, Extra_Words_Talk)

  W_EXP_TECH = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Explorers" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="TECH" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_EXP_TECH = string.rep(W_EXP_TECH, Extra_Words_Talk)

  W_EXP_THREAT = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Explorers" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="THREAT" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_EXP_THREAT = string.rep(W_EXP_THREAT, Extra_Words_Talk)

  W_EXP_MISC = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Traders" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="MISC" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_EXP_MISC = string.rep(W_EXP_MISC, Extra_Words_Talk)

--Extra Words Strings NPC Warriors(Vy'keen)
  W_WAR_DIRECT = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Warriors" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="DIRECTIONS" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_WAR_DIRECT = string.rep(W_WAR_DIRECT, Extra_Words_Talk)

  W_WAR_HELP = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Warriors" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="HELP" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_WAR_HELP = string.rep(W_WAR_HELP, Extra_Words_Talk)

  W_WAR_TRADE = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Warriors" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="TRADE" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_WAR_TRADE = string.rep(W_WAR_TRADE, Extra_Words_Talk)

  W_WAR_LORE = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Warriors" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="LORE" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_WAR_LORE = string.rep(W_WAR_LORE, Extra_Words_Talk)

  W_WAR_TECH = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Warriors" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="TECH" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_WAR_TECH = string.rep(W_WAR_TECH, Extra_Words_Talk)

  W_WAR_THREAT = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Warriors" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="THREAT" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_WAR_THREAT = string.rep(W_WAR_THREAT, Extra_Words_Talk)

  W_WAR_MISC = 
  [[
            <Property value="GcRewardTableItem.xml">
              <Property name="PercentageChance" value="100" />
              <Property name="Reward" value="GcRewardTeachWord.xml">
                <Property name="Race" value="GcAlienRace.xml">
                  <Property name="AlienRace" value="Warriors" />
                </Property>
                <Property name="UseCategory" value="True" />
                <Property name="Category" value="GcWordCategoryTableEnum.xml">
                  <Property name="WordCategory" value="MISC" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
              </Property>
              <Property name="LabelID" value="" />
            </Property>
  ]] W_WAR_MISC = string.rep(W_WAR_MISC, Extra_Words_Talk)
--Start of Mod Definition Container
NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] = "RewardRework.pak",
  ["MOD_AUTHOR"] = "Kiiritsugu",
  ["MOD_DESCRIPTION"] =
  [[
    Adds new item rewards to multiple interactions.
  ]],
  ["NMS_VERSION"] = "3.10",
  ["MODIFICATIONS"] =
  {
    {
      ["PAK_FILE_SOURCE"] = "",
      ["MBIN_CHANGE_TABLE"] =
      {
        {--Words Multiply
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {--Words Fix Duplicate
              ["SPECIAL_KEY_WORDS"]	= {"RewardChoice","TryEach","Reward","GcRewardTeachWord.xml","UseCategory","False"},
              ["SECTION_UP"] = 1,
              ["REPLACE_TYPE"] = "ALL",
              ["REMOVE"] = "SECTION",
            },

            {--Words Give All
              ["SPECIAL_KEY_WORDS"]	= {"Reward","GcRewardTeachWord.xml"},
              ["SECTION_UP"] = 2,
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
							{
								{"RewardChoice",	"GiveAll"},
							}
            },

            {--Knowledge Stones
              ["SPECIAL_KEY_WORDS"]	= {"Id","WORD","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_STONE,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },
            {--Knowledge Stones Traders
              ["SPECIAL_KEY_WORDS"]	= {"Id","TRA_WORD","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_STONE_TRA,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },
            {--Knowledge Stones Explorers
              ["SPECIAL_KEY_WORDS"]	= {"Id","EXP_WORD","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_STONE_EXP,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },
            {--Knowledge Stones Warriors
              ["SPECIAL_KEY_WORDS"]	= {"Id","WAR_WORD","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_STONE_WAR,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Ancient Traders
              ["SPECIAL_KEY_WORDS"]	= {"Id","TEACHWORD_TRA","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_STONE_TRA,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },
            {--Ancient Explorers
              ["SPECIAL_KEY_WORDS"]	= {"Id","TEACHWORD_EXP","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_STONE_EXP,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },
            {--Ancient Warriors
              ["SPECIAL_KEY_WORDS"]	= {"Id","TEACHWORD_WAR","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_STONE_WAR,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },
            {--Ancient Atlas
              ["SPECIAL_KEY_WORDS"]	= {"Id","TEACHWORD_ATLAS","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_ATLAS,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Traders Directions
              ["SPECIAL_KEY_WORDS"]	= {"Id","TRA_WORD_DIRECT","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_TRA_DIRECT,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Traders Help
              ["SPECIAL_KEY_WORDS"]	= {"Id","TRA_WORD_HELP","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_TRA_HELP,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Traders Trade
              ["SPECIAL_KEY_WORDS"]	= {"Id","TRA_WORD_TRADE","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_TRA_TRADE,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Traders Lore
              ["SPECIAL_KEY_WORDS"]	= {"Id","TRA_WORD_LORE","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_TRA_LORE,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Traders Tech
              ["SPECIAL_KEY_WORDS"]	= {"Id","TRA_WORD_TECH","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_TRA_TECH,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Traders Threat
              ["SPECIAL_KEY_WORDS"]	= {"Id","TRA_WORD_THREAT","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_TRA_THREAT,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Traders Misc
              ["SPECIAL_KEY_WORDS"]	= {"Id","TRA_WORD_MISC","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_TRA_MISC,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Explorers Directions
              ["SPECIAL_KEY_WORDS"]	= {"Id","EXP_WORD_DIRECT","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_EXP_DIRECT,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Explorers Help
              ["SPECIAL_KEY_WORDS"]	= {"Id","EXP_WORD_HELP","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_EXP_HELP,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Explorers Trade
              ["SPECIAL_KEY_WORDS"]	= {"Id","EXP_WORD_TRADE","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_EXP_TRADE,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Explorers Lore
              ["SPECIAL_KEY_WORDS"]	= {"Id","EXP_WORD_LORE","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_EXP_LORE,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Explorers Tech
              ["SPECIAL_KEY_WORDS"]	= {"Id","EXP_WORD_TECH","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_EXP_TECH,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Explorers Threat
              ["SPECIAL_KEY_WORDS"]	= {"Id","EXP_WORD_THREAT","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_EXP_THREAT,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Explorers Misc
              ["SPECIAL_KEY_WORDS"]	= {"Id","EXP_WORD_MISC","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_EXP_MISC,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Warriors Directions
              ["SPECIAL_KEY_WORDS"]	= {"Id","WAR_WORD_DIRECT","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_WAR_DIRECT,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Warriors Help
              ["SPECIAL_KEY_WORDS"]	= {"Id","WAR_WORD_HELP","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_WAR_HELP,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Warriors Trade
              ["SPECIAL_KEY_WORDS"]	= {"Id","WAR_WORD_TRADE","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_WAR_TRADE,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Warriors Lore
              ["SPECIAL_KEY_WORDS"]	= {"Id","WAR_WORD_LORE","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_WAR_LORE,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Warriors Tech
              ["SPECIAL_KEY_WORDS"]	= {"Id","WAR_WORD_TECH","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_WAR_TECH,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Warriors Threat
              ["SPECIAL_KEY_WORDS"]	= {"Id","WAR_WORD_THREAT","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_WAR_THREAT,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

            {--Talk Warriors Misc
              ["SPECIAL_KEY_WORDS"]	= {"Id","WAR_WORD_MISC","Reward","GcRewardTeachWord.xml"},
              ["ADD"] = W_WAR_MISC,
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
            },

          }
        },

        {--Police Loot
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id","POLICELOOT",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = POLICE_REWARDS
            }
          }
        },
        
        {--Drone Loot
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id","DRONE_LOOT",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = DRONE_REWARDS
            }
          }
        },
        
        {--Quad Loot
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id","QUAD_LOOT",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = QUAD_REWARDS
            }
          }
        },
        
        {--Walker Loot
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id","WALKER_LOOT",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = WALKER_REWARDS
            }
          }
        },
        
        {--Mission Guild Standing
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"]	= {"Id", "STANDING"},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
                {"AmountMin",	MIN_STAND},
                {"AmountMax",	MAX_STAND}
							}
            }
          }
        },

        {--Freighter Rescue Guild Standing
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"]	= {"Id", "FREIGHT_STAND"},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
                {"AmountMin",	MIN_STAND},
                {"AmountMax",	MAX_STAND}
							}
            }
          }
        },

        {--Freighter Rescue new Loot
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id","FREIGHT_STAND",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = RESCUEFRT_REWARDS
            }
          }
        },

        {--Pirate Ship new Loot Default(?)
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id","PIRATELOOT",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = PIRATE_REWARDS
            }
          }
        },

        {--Pirate Ship new Loot Easy
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id","PIRAT_LOOT_EASY",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = PIRATE_REWARDS
            }
          }
        },

        {--Pirate Ship new Loot Medium
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id","PIRAT_LOOT_MED",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = PIRATE_REWARDS
            }
          }
        },

        {--Pirate Ship new Loot Hard
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id","PIRAT_LOOT_HARD",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = PIRATE_REWARDS
            }
          }
        },

        {--Crashed Freighter 
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {--Remove Old Loot Medium
              ["SPECIAL_KEY_WORDS"] = {"Id","CRASHCONT_M",},
              ["MATH_OPERATION"] 		= "*",
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", 0},
              },
            },

            {--Remove Old Loot Small
              ["SPECIAL_KEY_WORDS"] = {"Id","CRASHCONT_S",},
              ["MATH_OPERATION"] 		= "*",
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", 0},
              },
            },

            {--new Loot Medium
              ["SPECIAL_KEY_WORDS"] = {"Id","CRASHCONT_M",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = CRASHEDFREIG_REWARDS
            },

            {--Loot Medium = 2 Loot Small
              ["SPECIAL_KEY_WORDS"] = {"Id","CRASHCONT_M",},
              ["MATH_OPERATION"] 		= "*",
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AmountMin", 2},
                {"AmountMax", 2}
              },
            },

            {--new Loot Small
              ["SPECIAL_KEY_WORDS"] = {"Id","CRASHCONT_S",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = CRASHEDFREIG_REWARDS
            }
          }
        },
        
        {--QuickSilver Mission
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id","MB_STAND_LOW",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = QS_MB_LOW
            },

            {
              ["SPECIAL_KEY_WORDS"] = {"Id","MB_STAND_MED",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = QS_MB_MED
            },

            {
              ["SPECIAL_KEY_WORDS"] = {"Id","MB_STAND_HIGH",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = QS_MB_HIGH
            },

            {
              ["SPECIAL_KEY_WORDS"] = {"Id","R_MB_MEGA",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = QS_MB_MEGA
            },

          }
        },

        { --QuickSilver Sentinels
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {--QuickSilver Drone
              ["SPECIAL_KEY_WORDS"] = {"Id","DRONE_LOOT",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = QS_DRONE
            },

            {--QuickSilver Quad
              ["SPECIAL_KEY_WORDS"] = {"Id","QUAD_LOOT",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = QS_QUAD
            },

            {--QuickSilver Walker
              ["SPECIAL_KEY_WORDS"] = {"Id","WALKER_LOOT",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = QS_WALKER
            },
          }
        },

        {--QuickSilver Freighter
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {--QuickSilver Crate
              ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_CRATE",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = QS_FREIGHTER
            },

            {--QuickSilver Case
              ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_CASE",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = QS_FREIGHTER
            },

            {--QuickSilver Caps
              ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_CAPS",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = QS_FREIGHTER
            },

            {--QuickSilver Lock
              ["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_LOCK",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = QS_FREIGHTER
            },
          }
        },

        {--QuickSilver Nada
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id","R_NADA_JM",},
              ["PRECEDING_KEY_WORDS"] = {"List",},
              ["REPLACE_TYPE"] = "",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "IGNORE",}
              },
              ["ADD"] = QS_NADA
            },

          }
        },
        

        {--QuickSilver Multiply
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"]	= {"Currency", "Specials"},
              ["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	QS_Multiplier},
								{"AmountMax",	QS_Multiplier}
							}
						}
          }
        },

        {--Units Multiply
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"]	= {"Currency", "Units"},
              ["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	Units_Multiplier},
								{"AmountMax",	Units_Multiplier}
							}
						}
          }
        },

        {--Nanites Multiply
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"]	= {"Currency", "Nanites"},
              ["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	Nanites_Multiplier},
								{"AmountMax",	Nanites_Multiplier}
							}
            },

            {
              ["SPECIAL_KEY_WORDS"]	= {"Id","R_NADA_JM", "Currency", "Nanites"},
              ["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
                {"AmountPerStat",	Nanites_Multiplier},
							}
						}
          }
        }

      --Table Changes End Here
      }
    }
  }
}
