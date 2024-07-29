--These are constants and definitions used by the script.
function sanitizeText(text)
    cleanText = string.gsub(text, "<", "&lt;")
    cleanText = string.gsub(cleanText, ">", "&gt;")
    cleanText = string.gsub(cleanText, "\n", "&#xA;&#xA;")
    return cleanText
end

function createNewConsumeEntry(Id,title_text,subtitle_text)
    return
    [[
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="]]..Id..[[" />
      <Property name="English" value="]]..title_text..[[" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="]]..Id.."_SUB"..[[" />
      <Property name="English" value="]]..subtitle_text..[[" />
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
      <Property name="SimplifiedChinese" value="" />
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
    ]]
end

function openReward(Id)
	return
	[[
	<Property value="GcGenericRewardTableEntry.xml">
	  <Property name="Id" value="]]..Id..[[" />
	  <Property name="List" value="GcRewardTableItemList.xml">
		<Property name="RewardChoice" value="GiveAll" />
		<Property name="OverrideZeroSeed" value="False" />
		<Property name="UseInventoryChoiceOverride" value="False" />
		<Property name="IncrementStat" value="" />
		<Property name="List">
	]]
end

function rewardLife(PercentageChance,Amount)
	return
	[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..PercentageChance..[[" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardEnergy.xml">
              <Property name="Amount" value="]]..Amount..[[" />
            </Property>
          </Property>
	]]
end

function rewardHaz(PercentageChance,Amount,Silent)
	return
	[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..PercentageChance..[[" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardRefreshHazProt.xml">
              <Property name="Amount" value="]]..Amount..[[" />
              <Property name="SetNotAdd" value="False" />
              <Property name="Silent" value="]]..Silent..[[" />
            </Property>
          </Property>
	]]
end

function rewardHealth(PercentageChance,AmountMin,AmountMax,Silent)
	return
	[[
		  <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..PercentageChance..[[" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardHealth.xml">
              <Property name="AmountMin" value="]]..AmountMin..[[" />
              <Property name="AmountMax" value="]]..AmountMax..[[" />
              <Property name="SilentUnlessShieldAtMax" value="]]..Silent..[[" />
            </Property>
          </Property>
	]]
end

function rewardShield(PercentageChance,AmountMin,AmountMax,ShowOSD)
	return
	[[
		  <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..PercentageChance..[[" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardShield.xml">
              <Property name="AmountMin" value="]]..AmountMin..[[" />
              <Property name="AmountMax" value="]]..AmountMax..[[" />
              <Property name="ShowOSDOnSuccess" value="]]..ShowOSD..[[" />
              <Property name="ShowOSDOnFail" value="]]..ShowOSD..[[" />
            </Property>
          </Property>
	]]
end

function rewardDamage(PercentageChance,Size)--size can be "SMALL", "LARGE" or "ENERGY"
	return
	[[
		  <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..PercentageChance..[[" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardDamage.xml">
              <Property name="PlayerDamage" value="INTERACT_]]..Size..[[" />
            </Property>
          </Property>
	]]
end

function rewardMoney(PercentageChance,AmountMin,AmountMax,Currency)
	return
	[[
		  <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..PercentageChance..[[" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="]]..AmountMin..[[" />
              <Property name="AmountMax" value="]]..AmountMax..[[" />
              <Property name="RoundNumber" value="False" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="]]..Currency..[[" />
              </Property>
            </Property>
          </Property>
	]]
end

function rewardWord(PercentageChance,AmountMin,AmountMax,AlienRace)
	return
	[[
		  <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..PercentageChance..[[" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="]]..AlienRace..[[" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="wordcategorytableEnum" value="MISC" />
              </Property>
              <Property name="AmountMin" value="]]..AmountMin..[[" />
              <Property name="AmountMax" value="]]..AmountMax..[[" />
            </Property>
          </Property>
	]]
end

function rewardStamina(PercentageChance,Duration)
	return
	[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..PercentageChance..[[" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardFreeStamina.xml">
              <Property name="Duration" value="]]..Duration..[[" />
            </Property>
          </Property>
	]]
end

function rewardJetpack(PercentageChance,Duration,ForwardBoost,UpBoost,IgnitionBoost)
	return
	[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..PercentageChance..[[" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardJetpackBoost.xml">
              <Property name="Duration" value="]]..Duration..[[" />
              <Property name="ForwardBoost" value="]]..ForwardBoost..[[" />
              <Property name="UpBoost" value="]]..UpBoost..[[" />
              <Property name="IgnitionBoost" value="]]..IgnitionBoost..[[" />
            </Property>
          </Property>
	]]
end

function rewardFiends(PercentageChance)
	return
	[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..PercentageChance..[[" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardActivateFiends.xml" />
          </Property>
	]]
end

function rewardWanted(PercentageChance,Level)
	return
	[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..PercentageChance..[[" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardWantedLevel.xml">
              <Property name="Message" value="" />
              <Property name="Level" value="]]..Level..[[" />
            </Property>
          </Property>
	]]
end

function rewardStorm(PercentageChance,Duration)
	return
	[[
		  <Property value="GcRewardTableItem.xml">
			<Property name="PercentageChance" value="]]..PercentageChance..[[" />
			<Property name="LabelID" value="Trigger Storm" />
			<Property name="Reward" value="GcRewardTriggerStorm.xml">
			  <Property name="Duration" value="]]..Duration..[[" />
			</Property>
		  </Property>
	]]
end

closeReward =
	[[
		</Property>
	  </Property>
	</Property>
	]]

--End constants and definitions

MODULAR_FOOD_REWARDS = {
 	--Fiend rewards
	{"FIEND_1",			"CONSUME",	"<FUEL>WARNING:<> <STELLAR>10%<> chance of summoning <SPECIAL>Biological Horrors<>",												rewardLife("100","15"),		rewardHaz("100","-50","False"),																																										rewardFiends("10")							},
	{"FIEND_2",			"CONSUME",	"<FUEL>WARNING:<> <STELLAR>25%<> chance of summoning <SPECIAL>Biological Horrors<>",												rewardLife("100","25"),		rewardHaz("100","-75","False"),																														rewardMoney("100","50000","200000","Units"),	rewardFiends("25")							},
	{"FIEND_3",			"CONSUME",	"<FUEL>WARNING:<> <STELLAR>50%<> chance of summoning <SPECIAL>Biological Horrors<>",												rewardLife("100","50"),		rewardHaz("100","-100","False"),	rewardShield("100","50","50","True"),	rewardHealth("100","1","3","False"),									rewardMoney("100","200000","500000","Units"),	rewardFiends("50")							},
	{"FIEND_4",			"CONSUME",	"<FUEL>WARNING:<> <STELLAR>90%<> chance of summoning <SPECIAL>Biological Horrors<>",												rewardLife("100","100"),	rewardHaz("100","-100","False"),	rewardShield("100","100","100","True"),	rewardHealth("100","2","4","False"),									rewardMoney("100","500000","1000000","Units"),	rewardFiends("90")							},
	
	--Anomalous rewards
	{"ATLAS_1",			"CONSUME",	"<FUEL>WARNING:<> <STELLAR>10%<> chance of alerting <SPECIAL>Sentinel forces<>",													rewardLife("100","25"),		rewardHaz("100","-25","False"),																														rewardWord("5","1","1","Atlas"),				rewardWanted("10","1")						},
	{"ATLAS_2",			"CONSUME",	"<FUEL>WARNING:<> <STELLAR>25%<> chance of alerting <SPECIAL>Sentinel forces<>",													rewardLife("100","50"),		rewardHaz("100","-50","False"),																														rewardWord("10","1","2","Atlas"),				rewardWanted("25","1")						},
	{"ATLAS_3",			"CONSUME",	"<FUEL>WARNING:<> <STELLAR>50%<> chance of alerting <SPECIAL>Sentinel forces<>",													rewardLife("100","75"),		rewardHaz("100","-75","False"),		rewardShield("100","50","50","True"),	rewardHealth("100","1","3","False"),									rewardWord("25","1","2","Atlas"),				rewardWanted("50","2")						},
	{"ATLAS_4",			"CONSUME",	"<FUEL>WARNING:<> <STELLAR>75%<> chance of alerting <SPECIAL>Sentinel forces<>",													rewardLife("100","100"),	rewardHaz("100","-100","False"),	rewardShield("100","100","100","True"),	rewardHealth("100","2","4","False"),									rewardWord("50","1","3","Atlas"),				rewardWanted("75","3")						},
	
	--Stellar rewards
	{"STELLAR_1",		"CONSUME",	"<FUEL>WARNING:<> <STELLAR>10%<> chance of summoning <SPECIAL>extreme weather<>",													rewardLife("100","25"),		rewardHaz("100","-15","False"),																														rewardMoney("5","10","100","Nanites"),			rewardStorm("10","60")						},
	{"STELLAR_2",		"CONSUME",	"<FUEL>WARNING:<> <STELLAR>25%<> chance of summoning <SPECIAL>extreme weather<>",													rewardLife("100","50"),		rewardHaz("100","-25","False"),																														rewardMoney("25","25","100","Nanites"),			rewardStorm("25","60")						},
	{"STELLAR_3",		"CONSUME",	"<FUEL>WARNING:<> <STELLAR>50%<> chance of summoning <SPECIAL>extreme weather<>",													rewardLife("100","75"),		rewardHaz("100","-50","False"),		rewardShield("100","50","50","True"),	rewardHealth("100","1","3","False"),									rewardMoney("50","50","100","Nanites"),			rewardStorm("50","90")						},
	{"STELLAR_4",		"CONSUME",	"<FUEL>WARNING:<> <STELLAR>90%<> chance of summoning <SPECIAL>extreme weather<>",													rewardLife("100","100"),	rewardHaz("100","-100","False"),	rewardShield("100","100","100","True"),	rewardHealth("100","2","4","False"),									rewardMoney("90","75","100","Nanites"),			rewardStorm("90","120")						},
	
	--Raw reward
	{"RAW_HEALTH",		"CONSUME",	"<FUEL>Painfully<> restores <STELLAR>1 core health<>",																				rewardLife("75","-50"),																					rewardHealth("100","1","1","False"),																																},
	{"RAW_LIFE",		"CONSUME",	"<FUEL>Painfully<> restores <TRADEABLE>15% life support power<>",																	rewardLife("100","15"),																															rewardDamage("75","SMALL"),																									},
	{"RAW_HAZ",			"CONSUME",	"<FUEL>Painfully<> restores <COMMODITY>15% hazard protection<>",																								rewardHaz("100","-15","False"),																						rewardDamage("75","SMALL"),																									},
	{"RAW_SPRINT",		"CONSUME",	"<FUEL>Painfully<> provides <TECHNOLOGY>10 second sprint overload<>",																																																				rewardDamage("75","SMALL"),														rewardStamina("100","10")					},
	{"RAW_SHIELD",		"CONSUME",	"<FUEL>Painfully<> restores <COMMODITY> 25 shield strength<>",																		rewardLife("75","-50"),											rewardShield("100","25","25","True"),																																										},
	
	--Basic rewards
	{"BASE_HEALTH",		"CONSUME",	"Restores <STELLAR>1 core health<>",																								rewardLife("100","10"),																					rewardHealth("100","1","2","False"),																																},
	{"BASE_LIFE",		"CONSUME",	"Restores <TRADEABLE>15% life support power<>",																						rewardLife("100","25"),																																																														},
	{"BASE_HAZ",		"CONSUME",	"Restores <COMMODITY>15% hazard protection<>",																													rewardHaz("100","-25","False"),																																																					},
	{"BASE_SPRINT",		"CONSUME",	"Provides <TECHNOLOGY>10 second sprint overload<>",																					rewardLife("100","10"),																																																			rewardStamina("100","10")					},
	{"BASE_SHIELD",		"CONSUME",	"Restores <COMMODITY>25 shield strength<>",																							rewardLife("100","10"),											rewardShield("100","25","50","True"),																																										},
	
	--Ingredient rewards
	{"INGR_FILLING",	"CONSUME",	"Restores <TRADEABLE>25% life support power<> and <COMMODITY>hazard protection<>",													rewardLife("100","25"),		rewardHaz("100","-25","False"),																																																					},
	{"INGR_HEALING",	"CONSUME",	"Restores <STELLAR>1-3 core health<>",																																																		rewardHealth("100","1","3","False"),																																},
	{"INGR_SHIELD",		"CONSUME",	"Restores <COMMODITY>50 shield strength<>",																																							rewardShield("100","50","50","True"),																																										},
	{"INGR_SPRINT",		"CONSUME",	"Provides <TECHNOLOGY>15 second sprint overload<>",																					rewardLife("100","10"),																																																			rewardStamina("100","15")					},
	{"INGR_JETPACK",	"CONSUME",	"Provides <TECHNOLOGY>5 second jetpack overload<>",																					rewardLife("100","10"),																																																			rewardJetpack("100","5","4.5","0.8", "1.9")	},
	
	--Meat dish rewards
	{"MEAT_MYSTERY",	"CONSUME",	"Mystery meat TODO",																												rewardLife("100","75"),		rewardHaz("100","-25","False"),												rewardHealth("100","1","3","False"),	rewardDamage("75","SMALL"),																									},
	{"MEAT_BASE",		"CONSUME",	"Restores <STELLAR>1-3 core health<>, <TRADEABLE>75% life support power<> and <COMMODITY>25% hazard protection<>",					rewardLife("100","75"),		rewardHaz("100","-25","False"),												rewardHealth("100","1","3","False"),																																},
	{"MEAT_FULL",		"CONSUME",	"Restores <STELLAR>2-3 core health<>, <TRADEABLE>100% life support power<> and <COMMODITY>50% hazard protection<>",					rewardLife("100","100"),	rewardHaz("100","-50","False"),												rewardHealth("100","2","3","False"),																																},
	
	--Plant dish rewards
	{"PLANT_BASE",		"CONSUME",	"Restores <STELLAR>1-3 core health<>, <TRADEABLE>25% life support power<> and <COMMODITY>75% hazard protection<>",					rewardLife("100","25"),		rewardHaz("100","-75","False"),												rewardHealth("100","1","3","False"),																																},
	{"PLANT_FULL",		"CONSUME",	"Restores <STELLAR>1-3 core health<>, <TRADEABLE>50% life support power<> and <COMMODITY>100% hazard protection<>",					rewardLife("100","50"),		rewardHaz("100","-100","False"),											rewardHealth("100","2","3","False"),																																},
	
	--Pie rewards
	{"PIE_BASE",		"CONSUME",	"Restores <TRADEABLE>80% life support power<> and <COMMODITY>80% hazard protection<>",												rewardLife("100","80"),		rewardHaz("100","-80","False"),																																																					},
	{"PIE_SPRINT",		"CONSUME",	"Provides <TECHNOLOGY>20 second sprint overload<>, <TRADEABLE>80% life support power<> and <COMMODITY>80% hazard protection<>",		rewardLife("100","80"),		rewardHaz("100","-80","False"),																																										rewardStamina("100","20")					},
	{"PIE_JETPACK",		"CONSUME",	"Provides <TECHNOLOGY>8 second jetpack overload<>, <TRADEABLE>80% life support power<> and <COMMODITY>80% hazard protection<>",		rewardLife("100","80"),		rewardHaz("100","-80","False"),																																										rewardJetpack("100","8","6","1.2", "2.4")	},
	{"PIE_HEALING",		"CONSUME",	"Restores <STELLAR>4 core health<>, <TRADEABLE>80% life support power<> and <COMMODITY>80% hazard protection<>",					rewardLife("100","80"),		rewardHaz("100","-80","False"),												rewardHealth("100","4","4","False"),																																},
	
	
	--Ice Cream rewards
	{"ICE_CREAM_1",		"CONSUME",	"Provides <TECHNOLOGY>15 second jetpack overload<> and <COMMODITY>75 shield strength<>",																											rewardShield("100","75","75","True"),																															rewardJetpack("100","15","9","1.6", "4")	},
	{"ICE_CREAM_2",		"CONSUME",	"Provides <TECHNOLOGY>25 second jetpack overload<> and <COMMODITY>100 shield strength<>",																											rewardShield("100","100","100","True"),																															rewardJetpack("100","25","9","1.6", "4")	},
	
	--Doughnut rewards
	{"LUMPEN_BASE",		"CONSUME",	"Provides <TECHNOLOGY>10 second jetpack overload<>, <TRADEABLE>50% life support power<> and <COMMODITY>80% hazard protection<>",	rewardLife("100","50"),		rewardHaz("100","-50","False"),																																										rewardJetpack("100","10","9","1.6", "1.9")	},
	{"LUMPEN_TOPPED",	"CONSUME",	"Provides <TECHNOLOGY>20 second jetpack overload<>, <TRADEABLE>50% life support power<> and <COMMODITY>80% hazard protection<>",	rewardLife("100","50"),		rewardHaz("100","-50","False"),																																										rewardJetpack("100","20","9","1.6", "1.9")	},
	{"PROTO_BASE",		"CONSUME",	"Provides <TECHNOLOGY>25 second jetpack overload<>, <TRADEABLE>50% life support power<> and <COMMODITY>80% hazard protection<>",	rewardLife("100","50"),		rewardHaz("100","-50","False"),																																										rewardJetpack("100","25","4.5","0.8", "1.9")},
	{"PROTO_TOPPED",	"CONSUME",	"Provides <TECHNOLOGY>35 second jetpack overload<>, <TRADEABLE>50% life support power<> and <COMMODITY>80% hazard protection<>",	rewardLife("100","50"),		rewardHaz("100","-50","False"),																																										rewardJetpack("100","35","4.5","0.8", "1.9")},
	
	--Cake rewards
	{"BASE_CAKE_1",		"CONSUME",	"Provides <TECHNOLOGY>30 second sprint overload<>, <TRADEABLE>60% life support power<> and <COMMODITY>60% hazard protection<>",		rewardLife("100","60"),		rewardHaz("100","-60","False"),																																										rewardStamina("100","30")					},
	{"BASE_CAKE_2",		"CONSUME",	"Provides <TECHNOLOGY>40 second sprint overload<>, <TRADEABLE>80% life support power<> and <COMMODITY>80% hazard protection<>",		rewardLife("100","80"),		rewardHaz("100","-80","False"),																																										rewardStamina("100","40")					},
	{"CURIOUS_CAKE_1",	"CONSUME",	"Provides <TECHNOLOGY>70 second sprint overload<>, <TRADEABLE>40% life support power<> and <COMMODITY>40% hazard protection<>",		rewardLife("100","40"),		rewardHaz("100","-40","False"),																																										rewardStamina("100","70")					},
	{"CURIOUS_CAKE_2",	"CONSUME",	"Provides <TECHNOLOGY>80 second sprint overload<>, <TRADEABLE>60% life support power<> and <COMMODITY>60% hazard protection<>",		rewardLife("100","60"),		rewardHaz("100","-60","False"),																																										rewardStamina("100","80")					},
	{"HONEY_CAKE_1",	"CONSUME",	"Provides <TECHNOLOGY>50 second sprint overload<>, <STELLAR>5 core health<> and <TRADEABLE>40% life support power<>",				rewardLife("100","40"),																					rewardHealth("100","5","5","False"),																					rewardStamina("100","50")					},
	{"HONEY_CAKE_2",	"CONSUME",	"Provides <TECHNOLOGY>60 second sprint overload<>, <STELLAR>6 core health<> and <TRADEABLE>60% life support power<>",				rewardLife("100","60"),																					rewardHealth("100","6","6","False"),																					rewardStamina("100","60")					},
	{"FLUFFY_CAKE_1",	"CONSUME",	"Provides <TECHNOLOGY>50 second sprint overload<>, <COMMODITY>50 shield strength<> and <TRADEABLE>40% life support power<>",		rewardLife("100","40"),											rewardShield("100","100","100","True"),																															rewardStamina("100","50")					},
	{"FLUFFY_CAKE_2",	"CONSUME",	"Provides <TECHNOLOGY>60 second sprint overload<>, <COMMODITY>50 shield strength<> and <TRADEABLE>60% life support power<>",		rewardLife("100","60"),											rewardShield("100","125","125","True"),																															rewardStamina("100","60")					},
	
	--Biscuit rewards
	{"BISCUIT_BASE",		"CONSUME",	"Restores <TRADEABLE>40% life support power<> and <COMMODITY>40% hazard protection<>",											rewardLife("100","40"),		rewardHaz("100","-40","False"),																																																					},
	{"BISCUIT_SPRINT",		"CONSUME",	"Provides <TECHNOLOGY>40 second sprint overload<>, <TRADEABLE>40% life support power<> and <COMMODITY>40% hazard protection<>",	rewardLife("100","40"),		rewardHaz("100","-40","False"),																																										rewardStamina("100","40")					},
	{"BISCUIT_JETPACK",		"CONSUME",	"Provides <TECHNOLOGY>15 second jetpack overload<>, <TRADEABLE>40% life support power<> and <COMMODITY>40% hazard protection<>",rewardLife("100","40"),		rewardHaz("100","-40","False"),																																										rewardJetpack("100","15","4.5","0.8", "1.9")},
	{"BISCUIT_HEALING",		"CONSUME",	"Restores <STELLAR>5 core health<>, <TRADEABLE>40% life support power<> and <COMMODITY>40% hazard protection<>",				rewardLife("100","40"),		rewardHaz("100","-40","False"),												rewardHealth("100","5","5","False"),																																},
 }

MOD_LANGUAGE = "English"

GOURMET_FOOD_TABLE = {
    --Stellar Food
    { "Silicon Egg", "STELLAR_1", "FOOD_P_STELLAR"},
    { "Stellar Custard", "STELLAR_2", "FOOD_R_SCUSTARD"},
    { "The Stellarator", "STELLAR_4", "FOOD_DNUT_SCUST"},
    { "Stellar Custard Tart", "STELLAR_4", "FOOD_PIE_SCUST"},
    { "Stellar Ice Cream", "STELLAR_3", "FOOD_ICE_STAR"},
    { "Interstellar Fancy", "STELLAR_4", "FOOD_CK_SCUST"},
    { "Interstellar Curiosity",	 "STELLAR_4", "FOOD_CG_SCUST"},
    { "Starbirth Delight", "STELLAR_4", "FOOD_CB_SCUST"},

    --Anomalous Food
    { "Hexaberry", "ATLAS_1", "FOOD_P_GLITCH"},
    { "Anomalous Tart", "ATLAS_2", "FOOD_PIE_WEIRD"},
    { "Perpetual Ice Cream", "ATLAS_2", "FOOD_ICE_GLITCH"},
    { "Anomalous Jam", "ATLAS_1", "FOOD_JAM_GLITCH"},
    { "Anomalous Doughnut", "ATLAS_2", "FOOD_DNUT_AJAM"},
    { "Perpetual Cake", "ATLAS_3", "FOOD_CK_JGLITCH"},
    { "Unsolvable Jam Turnover", "ATLAS_3", "FOOD_CG_JGLITCH"},
    { "Perpetual Honeycake", "ATLAS_3", "FOOD_CB_JGLITCH"},
    { "Perpetual Jam Fluffer", "ATLAS_3", "FOOD_MC_JGLITCH"},
    { "Fiendish Roe", "ATLAS_1", "FOOD_M_FIEND"},
    { "Haunted Pie", "ATLAS_2", "FOOD_PIE_FIEND"},

    --Horrendous Food Mix
    { "Horrifying Mush", "FIEND_1", "FOOD_R_EYEBALLS"},
    { "Monstrous Custard", "FIEND_1", "FOOD_R_MCUSTARD"},
    { "Wailing Batter", "FIEND_2", "FOOD_R_MCAKEMIX"},
    { "Writhing, Roiling Batter", "FIEND_2", "FOOD_R_MMERMIX"},

    --Horrendous Food
    { "Whispering Omelette", "FIEND_2", "FOOD_EGGPIE_M"},
    { "Parasitic Omelette", "FIEND_2", "FOOD_EGGPIE_GM"},
    { "Monstrous Doughnut", "FIEND_3", "FOOD_DNUT_MCUST"},
    { "The Spawning Tart", "FIEND_3", "FOOD_PIE_MCUST"},
    { "Abyssal Stew", "FIEND_2", "FOOD_R_EYESTEW"},
    { "Iced Screams", "FIEND_3", "FOOD_R_EYEICE"},
    { "Deathly-Cold Ice Cream", "FIEND_3", "FOOD_ICE_FIEND"},
    { "Doomed Cream Cake", "FIEND_3", "FOOD_CM_CREAM"},
    { "Haunted Chocolate Dreams", "FIEND_3", "FOOD_CM_CHOC"},
    { "Wailing Caramel Cake", "FIEND_3", "FOOD_CM_CARM"},
    { "Apple Cake of Lost Souls", "FIEND_4", "FOOD_CM_APPLE"},
    { "Choking Monstrosity Cake", "FIEND_3", "FOOD_CM_CACTUS"},
    { "Appalling Jam Sponge", "FIEND_4", "FOOD_CM_JAM"},
    { "Cake of Burning Dread", "FIEND_4", "FOOD_CM_JHOT"},
    { "Tortured Honey Cake", "FIEND_3", "FOOD_MM_HONEY"},
    { "Itching, Creeping Honey Sponge", "FIEND_3", "FOOD_MM_BLOB"},
    { "Unbound Cream Horn", "FIEND_3", "FOOD_MM_CREAM"},
    { "Volatile Chocolate Fancy", "FIEND_3", "FOOD_MM_CHOC"},
    { "Caramelised Nightmare", "FIEND_3", "FOOD_MM_CARM"},
    { "Cake of Sin", "FIEND_4", "FOOD_MM_APPLE"},
    { "Fluffy Throatripper", "FIEND_4", "FOOD_MM_CACTUS"},
    { "Writhing Jam Puff", "FIEND_4", "FOOD_MM_JAM"},
    { "Burning Jam Surprise", "FIEND_4", "FOOD_MM_JHOT"},
    { "Gooey Screamer", "FIEND_4", "FOOD_CM_BLOBBUT"},
    { "Monstrous Honey Cake", "FIEND_3", "FOOD_CM_HONEY"},
    { "Cake of the Lost", "FIEND_3", "FOOD_MM_CUST"},
    { "Horrifying, Gooey Delight", "FIEND_3", "FOOD_CK_MCUST"},

    --Glass Food
    { "Cake of Glass", "ATLAS_4", "FOOD_CM_JGLITCH"},
    { "Unbound Monstrosity", "ATLAS_4", "FOOD_MM_JGLITCH"},

    --Harvested Plant
    { "Impulse Beans", "RAW_HAZ", "FOOD_P_LUSHWILD"},
    { "Fireberry", "RAW_SPRINT", "FOOD_P_HOTWILD"},
    { "Frozen Tubers", "RAW_SPRINT", "FOOD_P_COLDWILD"},
    { "Jade Peas", "RAW_LIFE", "FOOD_P_TOXWILD"},
    { "Grahberry", "RAW_HAZ", "FOOD_P_RADWILD"},
    { "Aloe Flesh", "RAW_HEALTH", "FOOD_P_DUSTWILD"},
    { "Heptaploid Wheat", "RAW_HEALTH", "FOOD_P_ALL1"},
    { "Sweetroot", "RAW_LIFE", "FOOD_P_ALL2"},
    { "Pulpy Roots", "RAW_SHIELD", "FOOD_P_ALL3"},

    --Processed Plant
    { "Pilgrimberry", "BASE_LIFE", "FOOD_P_LUSHFARM"},
    { "Solartillo", "BASE_SPRINT", "FOOD_P_HOTFARM"},
    { "Glass Grains", "BASE_HEALTH", "FOOD_P_COLDFARM"},
    { "Non-Toxic Mushroom", "BASE_HAZ", "FOOD_P_TOXFARM"},
    { "Sievert Beans", "BASE_LIFE", "FOOD_P_RADFARM"},
    { "Cactus Nectar", "BASE_SPRINT", "FOOD_P_DUSTFARM"},
    { "Marrow Flesh", "BASE_HEALTH", "FOOD_P_CAVE"},
    { "Kelp Rice", "BASE_LIFE", "FOOD_P_WATER"},
    { "Wild Yeast", "RAW_HAZ", "FOOD_P_POOP"},
    { "Meat Flakes", "BASE_LIFE", "FOOD_P_DEATH"},

    --Milk
    { "Fresh Milk", "BASE_SHIELD", "FOOD_V_COW"},
    { "Wild Milk", "BASE_SHIELD", "FOOD_V_MILK"},
    { "Craw Milk", "BASE_SHIELD", "FOOD_V_FLYER"},
    { "Warm Proto-Milk", "BASE_SHIELD", "FOOD_V_GEK"},
    { "Bone Milk", "BASE_SHIELD", "FOOD_R_BONEMILK"},

    --Processed CreamsTODO
    { "Cream", "INGR_SHIELD", "FOOD_R_CREAM"},
    { "Proto-Cream", "INGR_SHIELD", "FOOD_R_GCREAM"},
    { "Bone Cream", "INGR_SHIELD", "FOOD_R_BCREAM"},

    --Processed Butter
    { "Churned Butter", "INGR_SHIELD", "FOOD_R_BUTTER"},
    { "Proto-Butter", "INGR_SHIELD", "FOOD_R_GBUTTER"},
    { "Bone Butter", "INGR_SHIELD", "FOOD_R_BBUTTER"},

    --Processed Oil
    { "Clarified Oil", "INGR_FILLING", "FOOD_R_OIL"},
    { "Proto-Oil", "INGR_FILLING", "FOOD_R_GOIL"},

    --Processed Cheese
    { "Tangy Cheese", "INGR_FILLING", "FOOD_R_CHEESE"},
    { "Proto-Cheese", "INGR_FILLING", "FOOD_R_GCHEESE"},
    { "Bone Cheese", "INGR_FILLING", "FOOD_R_BCHEESE"},

    --Egg
    { "Creature Egg", "RAW_LIFE", "FOOD_V_EGG"},
    { "Giant Egg", "RAW_LIFE", "FOOD_V_DIPLO"},
    { "Tall Eggs", "RAW_LIFE", "FOOD_V_STRIDER"},

    --Egg Dish
    { "Baked Eggs", "MEAT_BASE", "FOOD_R_EGGS"},
    { "Omelette", "MEAT_FULL", "FOOD_EGGPIE"},
    { "Proto-Omelette", "MEAT_FULL", "FOOD_EGGPIE_G"},
    { "Scrambled Marrow", "MEAT_FULL", "FOOD_EGGPIE_B"},
    { "Fungal Omelette", "PLANT_FULL", "FOOD_EGGPIE_MU"},
    { "Delicate Meringue", "PLANT_FULL", "FOOD_R_MERINGUE"},

    --Harvested Creature Product
    { "Sticky 'Honey'", "RAW_SPRINT", "FOOD_V_BLOB"},
    { "Regis Grease", "RAW_HAZ", "FOOD_V_REX"},
    { "Leopard-Fruit", "RAW_HEALTH", "FOOD_V_CAT"},
    { "Crab Apple", "RAW_LIFE", "FOOD_V_CRAB"},
    { "Bone Nuggets", "RAW_SHIELD", "FOOD_V_BONE"},
    { "Foraged Mushrooms", "RAW_HAZ", "FOOD_V_MOLE"},
    { "Chewy Wires", "RAW_HEALTH", "FOOD_V_ROBOT"},

    --Meat
    { "Salty Fingers", "RAW_LIFE", "FOOD_M_FISH"},
    { "Meaty Wings", "RAW_LIFE", "FOOD_M_FLYER"},
    { "Offal Sac", "RAW_LIFE", "FOOD_M_BLOB"},
    { "Proto-Sausage", "RAW_LIFE", "FOOD_M_GEK"},
    { "Diplo Chunks", "RAW_LIFE", "FOOD_M_DIPLO"},
    { "Scaly Meat", "RAW_LIFE", "FOOD_M_REX"},
    { "Feline Liver", "RAW_LIFE", "FOOD_M_CAT"},
    { "Strider Sausage", "RAW_LIFE", "FOOD_M_STRIDER"},
    { "Raw Steak", "RAW_LIFE", "FOOD_M_COW"},
    { "Leg Meat", "RAW_LIFE", "FOOD_M_CRAB"},
    { "Meaty Chunks", "RAW_LIFE", "FOOD_M_MEAT"},
    { "Scooped Innards", "RAW_LIFE", "FOOD_M_MOLE"},
    { "Crystal Flesh", "RAW_LIFERAW_LIFE", "FOOD_M_BONE"},
    { "Latticed Sinew", "RAW_LIFE", "FOOD_M_DRILL"},
    { "Crunchy Wings", "RAW_LIFE", "FOOD_M_BEETLE"},
    { "Lumpy Brainstem", "RAW_LIFE", "FOOD_M_BALL"},
    { "Dirty Meat", "RAW_LIFE", "FOOD_M_DIGGER"},

    --Processed Ingredient
    { "Refined Flour", "BASE_HAZ", "FOOD_R_FLOUR"},
    { "Processed Sugar", "BASE_SPRINT", "FOOD_R_SUGAR"},
    { "Synthetic Honey", "BASE_SPRINT", "FOOD_R_HONEY"},
    { "Steamed Vegetables", "BASE_HAZ", "FOOD_R_VEG"},
    { "Processed Meat", "BASE_LIFE", "FOOD_R_MEAT"},
    { "Smoked Meat", "INGR_FILLING", "FOOD_R_SMOKED"},
    { "Crunchy Caramel", "BASE_SHIELD", "FOOD_R_CARAMEL"},
    { "Bittersweet Cocoa", "BASE_HEALTH", "FOOD_R_CHOC"},

    --Processed Jam
    { "Ever-Burning Jam", "INGR_JETPACK", "FOOD_JAM_HOT"},
    { "Grahj'am", "INGR_JETPACK", "FOOD_JAM_RAD"},
    { "Cactus Jelly", "INGR_JETPACK", "FOOD_JAM_DUST"},
    { "Furball Jelly", "INGR_JETPACK", "FOOD_JAM_CAT"},
    { "Wriggling Jam", "INGR_JETPACK", "FOOD_JAM_CRAB"},

    --Processed Dough
    { "Pastry", "INGR_JETPACK", "FOOD_R_PASTRY"},
    { "Dough", "PLANT_BASE", "FOOD_R_DOUGH"},
    { "Pie Case", "INGR_JETPACK", "FOOD_R_PIECASE"},
    { "Bread", "PLANT_FULL", "FOOD_R_BREAD"},
	{ "Sugar Dough", "INGR_JETPACK", "FOOD_B_DOUGH"},

    --Doughnut
    { "Lumpen Doughnut", "LUMPEN_BASE", "FOOD_R_DONUT"},
    { "Proto-Beignet", "PROTO_BASE", "FOOD_R_GONUT"},
    { "Custard Doughnut", "LUMPEN_TOPPED", "FOOD_DNUT_CUST"},
    { "Salty Doughnut", "LUMPEN_TOPPED", "FOOD_DNUT_FCUST"},
    { "Honey Doughnut", "LUMPEN_TOPPED", "FOOD_DNUT_HON"},
    { "Honeybutter Doughnut", "LUMPEN_TOPPED", "FOOD_DNUT_HONB"},
    { "Gooey Proto-Doughnut", "PROTO_TOPPED", "FOOD_DNUT_BLOB"},
    { "Cocoa Doughnut", "LUMPEN_TOPPED", "FOOD_DNUT_CARM"},
    { "Proteinous Doughnut", "PROTO_TOPPED", "FOOD_DNUT_MEAT"},
    { "Jam Doughnut", "LUMPEN_TOPPED", "FOOD_DNUT_JAM"},
    { "Wriggling Doughnut", "PROTO_TOPPED", "FOOD_DNUT_CJAM"},

    --Pie
    { "Mystery Meat Pie", "PIE_BASE", "FOOD_PIE_MEAT"},
    { "Smokey Meat Pie", "PIE_BASE", "FOOD_PIE_SMEAT"},
    { "High-Fibre Pie", "PIE_BASE", "FOOD_PIE_VEG"},
    { "Fish Pie", "PIE_BASE", "FOOD_PIE_FISH"},
    { "Chewy Organ Pie", "PIE_BASE", "FOOD_PIE_ORGAN"},
    { "Proto-Sausage Pie", "PIE_BASE", "FOOD_PIE_GEK"},
    { "Legs-in-Pastry", "PIE_BASE", "FOOD_PIE_CRAB"},
    { "Fruity Pudding", "PIE_HEALING", "FOOD_PIE_BERRY"},
    { "Glowing Pie", "PIE_JETPACK", "FOOD_PIE_GLOW"},
    { "Fungal Tart", "PIE_BASE", "FOOD_PIE_MUSH"},
    { "Jam Tart", "PIE_SPRINT", "FOOD_PIE_JAM"},
    { "Spikey Tart", "PIE_HEALING", "FOOD_PIE_CACTUS"},
    { "Mushed Root Pie", "PIE_BASE", "FOOD_PIE_ROOTS"},
    { "Solidified Grease Pie", "PIE_BASE", "FOOD_PIE_GREASE"},
    { "Jellied Fur Tart", "PIE_BASE", "FOOD_PIE_CAT"},
    { "Wriggling Tart", "PIE_HEALING", "FOOD_PIE_CRABJ"},
    { "Cocoa Tart", "PIE_SPRINT", "FOOD_PIE_CHOC"},
    { "Caramel Tart", "PIE_SPRINT", "FOOD_PIE_CARM"},
    { "Creamy Treat", "PIE_JETPACK", "FOOD_PIE_CREAM"},
    { "Custard Tart", "PIE_JETPACK", "FOOD_PIE_CUST"},
    { "Baked Cheese Tart", "PIE_HEALING", "FOOD_PIE_CHEESE"},
    { "Cheesy Vegetable Tart", "PIE_HEALING", "FOOD_PIE_VCHEE"},
    { "The Toothbreaker", "PIE_BASE", "FOOD_PIE_BONE"},
    { "Gristle Pie", "PIE_BASE", "FOOD_PIE_DRILL"},
    { "Leathery Tart", "PIE_BASE", "FOOD_PIE_BEET"},
    { "The Pie Of Knowledge", "PIE_BASE", "FOOD_PIE_DIG"},
    { "Gritty Meat Pie", "PIE_BASE", "FOOD_PIE_BALL"},
    { "Earthy Pie", "PIE_BASE", "FOOD_PIE_MOLE"},

    --Processed Juice
    { "Root Juice", "BASE_LIFE", "FOOD_J_ALL3"},
    { "Pilgrim's Tonic", "BASE_HAZ", "FOOD_J_LUSH"},
    { "Fire Water", "BASE_SPRINT", "FOOD_J_HOT"},
    { "Refreshing Drink", "BASE_HEALTH", "FOOD_J_DUST"},
    { "Salty Juice", "BASE_HAZ", "FOOD_J_SALT"},

    --Processed Sauce
    { "Flavoursome Sauce", "INGR_FILLING", "FOOD_S_VEG"},
    { "Scorching Sauce", "INGR_FILLING", "FOOD_S_HOT"},
    { "Creamy Sauce", "INGR_FILLING", "FOOD_S_CREAM"},
    { "Partially-Liquid Cheese", "INGR_FILLING", "FOOD_S_CHEESE"},

    --Meat Dish
    { "Mystery Meat Stew", "MEAT_MYSTERY", "FOOD_MEAT_STEW"},
    { "Stewed Organs", "MEAT_BASE", "FOOD_ORGAN_STEW"},
    { "Tangy Organ Surprise", "MEAT_FULL", "FOOD_STEW_O_CH"},
    { "Cheese and Flesh Stew", "MEAT_FULL", "FOOD_STEW_M_CH"},
    { "Creamed Organ Soup", "MEAT_FULL", "FOOD_STEW_O_CR"},
    { "Thick Meat Stew", "MEAT_FULL", "FOOD_STEW_M_CR"},
    { "Deviled Organs", "MEAT_BASE", "FOOD_STEW_O_HOT"},
    { "Spicy Fleshballs", "MEAT_FULL", "FOOD_STEW_M_HOT"},
    { "Flavoursome Organs", "MEAT_FULL", "FOOD_STEW_O_VEG"},
    { "Herb-Encrusted Flesh", "MEAT_FULL", "FOOD_STEW_M_VEG"},
    { "Crystalline Soup", "MEAT_BASE", "FOOD_STEW_BONE"},
    { "Well-Stirred Stew", "MEAT_BASE", "FOOD_STEW_DRILL"},
    { "Gelatinous Goop", "MEAT_BASE", "FOOD_STEW_BEET"},
    { "Soiled Soup", "MEAT_BASE", "FOOD_STEW_DIG"},
    { "Chewy 'Dumpling' Stew", "MEAT_BASE", "FOOD_STEW_BALL"},

    --Vegetable Dish
    { "Fibrous Stew", "PLANT_BASE", "FOOD_VEG_STEW"},
    { "Tangy Vegetable Stew", "PLANT_FULL", "FOOD_STEW_V_CH"},
    { "Cream of Vegetable Soup", "PLANT_FULL", "FOOD_STEW_V_CR"},
    { "Fiery Vegetable Stew", "PLANT_FULL", "FOOD_STEW_V_HOT"},
    { "Delicious Vegetable Stew", "PLANT_FULL", "FOOD_STEW_V_VEG"},

    --Mixed Custard
    { "Viscous Custard", "INGR_JETPACK", "FOOD_R_CUSTARD"},
    { "Salty Custard", "INGR_JETPACK", "FOOD_R_FCUSTARD"},
    { "Very Thick Custard", "INGR_JETPACK", "FOOD_R_BCUSTARD"},

    --Ice Cream
    { "Ice Cream", "ICE_CREAM_1", "FOOD_ICE"},
    { "Briney Rime", "ICE_CREAM_1", "FOOD_ICE_FISH"},
    { "Chocolate Ice Cream", "ICE_CREAM_2", "FOOD_ICE_CHOC"},
    { "Caramel Ice Cream", "ICE_CREAM_2", "FOOD_ICE_CARM"},
    { "Fruity Ice Cream", "ICE_CREAM_2", "FOOD_ICE_FRUIT"},
    { "Apple Ice Cream", "ICE_CREAM_2", "FOOD_ICE_APPLE"},
    { "Honey Ice Cream", "ICE_CREAM_2", "FOOD_ICE_HONEY"},
    { "Vy'ice Cream", "ICE_CREAM_2", "FOOD_ICE_GRAH"},
    { "Spiced Ice", "ICE_CREAM_2", "FOOD_ICE_HOT"},
    { "Icey Marrow", "ICE_CREAM_1", "FOOD_ICE_BONE"},

    --Sweet Butter
    { "Sweetened Butter", "INGR_HEALING", "FOOD_R_SWEETBUT"},
    { "Sweetened Proto-Butter", "INGR_HEALING", "FOOD_R_SWEETGEK"},
    { "Honey Butter", "INGR_HEALING", "FOOD_R_HONEYBUT"},
    { "Honied Proto-Butter", "INGR_HEALING", "FOOD_R_HONEYGEK"},
    { "Gooey Proto-Butter", "INGR_HEALING", "FOOD_R_BLOBGEK"},
    { "Gooey Butter", "INGR_HEALING", "FOOD_R_BLOBBUT"},

    --Processed Batter
    { "Cake Batter", "INGR_SPRINT", "FOOD_R_CAKEMIX"},
    { "Proto-Batter", "INGR_SPRINT", "FOOD_R_GCAKEMIX"},
    { "Thick, Sweet Batter", "INGR_SPRINT", "FOOD_R_BCAKEMIX"},
    { "Extra-Fluffy Batter", "INGR_SPRINT", "FOOD_R_MERMIX"},

    --Delicious Cake: Made fronm Cake Batter
    { "Glittering Honey Cake", "BASE_CAKE_1", "FOOD_CK_HONEY"},
    { "Cream Buns", "BASE_CAKE_1", "FOOD_CK_CREAM"},
    { "Questionably Sweet Cake", "BASE_CAKE_1", "FOOD_CK_BLOBBUT"},
    { "Chocolate Cake", "BASE_CAKE_1", "FOOD_CK_CHOC"},
    { "Caramel-Encrusted Cake", "BASE_CAKE_1", "FOOD_CK_CARM"},
    { "Spiced Apple Cake", "BASE_CAKE_2", "FOOD_CK_APPLE"},
    { "Esophageal Surprise", "BASE_CAKE_2", "FOOD_CK_CACTUS"},
    { "Traditional Cake", "BASE_CAKE_2", "FOOD_CK_JAM"},
    { "Ever-Boiling Cake", "BASE_CAKE_2", "FOOD_CK_JHOT"},
    { "Custard Fancy", "BASE_CAKE_1", "FOOD_CK_CUST"},
    { "Briney Delight", "BASE_CAKE_1", "FOOD_CK_FCUST"},

    --Curious Cake: Made from Proto-Batter
    { "Most Curious Cake", "CURIOUS_CAKE_1", "FOOD_CG_BLOB"},
    { "Cream Curiosity", "CURIOUS_CAKE_1", "FOOD_CG_CREAM"},
    { "Chocolate Curiosity", "CURIOUS_CAKE_1", "FOOD_CG_CHOC"},
    { "Caramel Curiosity", "CURIOUS_CAKE_1", "FOOD_CG_CARM"},
    { "Apple Curiosity", "CURIOUS_CAKE_1", "FOOD_CG_APPLE"},
    { "Prickly Curiosity", "CURIOUS_CAKE_1", "FOOD_CG_CACTUS"},
    { "Jam Curiosity", "CURIOUS_CAKE_2", "FOOD_CG_JAM"},
    { "Startling Fancy", "CURIOUS_CAKE_2", "FOOD_CG_JHOT"},
    { "Custard Curiosity", "CURIOUS_CAKE_1", "FOOD_CG_CUST"},
    { "Salty Surprise", "CURIOUS_CAKE_1", "FOOD_CG_FCUST"},
    { "Honied Proto-Cake", "CURIOUS_CAKE_1", "FOOD_CG_HONEY"},

    --Honey Cake: Made from Thick, Sweet Batter
    { "Honey-Soaked Fancy", "HONEY_CAKE_1", "FOOD_CB_HONEY"},
    { "Sweet Cream Dream", "HONEY_CAKE_1", "FOOD_CB_CREAM"},
    { "Gooey Chocolate Cake", "HONEY_CAKE_1", "FOOD_CB_CHOC"},
    { "Gooey Caramel Cake", "HONEY_CAKE_1", "FOOD_CB_CARM"},
    { "Gooey Fruit Surprise", "HONEY_CAKE_1", "FOOD_CB_APPLE"},
    { "Honied Throat-Sticker", "HONEY_CAKE_2", "FOOD_CB_CACTUS"},
    { "Gooey Mouthburner", "HONEY_CAKE_2", "FOOD_CB_JHOT"},
    { "Gooey Custard Fancy", "HONEY_CAKE_1", "FOOD_CB_CUST"},
    { "Salt-Laced Honey Cake", "HONEY_CAKE_1", "FOOD_CB_FCUST"},

    --Sponge Cake: Made from Extra Fluffy Batter
    { "Honied Angel Cake", "FLUFFY_CAKE_1", "FOOD_MC_HONEY"},
    { "Gooey Honey Puff", "FLUFFY_CAKE_1", "FOOD_MC_BLOB"},
    { "Extra-Fluffy Cream Cake", "FLUFFY_CAKE_1", "FOOD_MC_CREAM"},
    { "Chocolate Dream", "FLUFFY_CAKE_1", "FOOD_MC_CHOC"},
    { "Fluffy Caramel Delight", "FLUFFY_CAKE_1", "FOOD_MC_CARM"},
    { "Angelic Fruitcake", "FLUFFY_CAKE_2", "FOOD_MC_APPLE"},
    { "Soft and Spiky Surprise", "FLUFFY_CAKE_2", "FOOD_MC_CACTUS"},
    { "Jam Fluffer", "FLUFFY_CAKE_2", "FOOD_MC_JAM"},
    { "Burning Jam Fluffer", "FLUFFY_CAKE_2", "FOOD_MC_JHOT",},
    { "Soft Custard Fancy", "FLUFFY_CAKE_2", "FOOD_MC_CUST"},
	
	--Biscuits: Made from Sugar Dough
	{"Simple Biscuit", "BISCUIT_BASE", "FOOD_B_PLAIN"},
	{"Salty Cruncher", "BISCUIT_BASE", "FOOD_B_SALT"},
	{"Jammy Rounds", "BISCUIT_JETPACK", "FOOD_B_JAM"},
	{"Cough Biscuits", "BISCUIT_HEALING", "FOOD_B_CAT"},
	{"Burning Surprise", "BISCUIT_SPRINT", "FOOD_B_HOT"},
	{"Herbal Crunchie", "BISCUIT_HEALING", "FOOD_B_HERB"},
	{"Floral Wafer", "BISCUIT_HEALING", "FOOD_B_FLOWER"},
	{"Questionable Biscuit", "BISCUIT_SPRINT", "FOOD_B_MEAT"},
	{"Honey Waffle", "BISCUIT_SPRINT", "FOOD_B_HONEY"},
	{"Apple Roll", "BISCUIT_JETPACK", "FOOD_B_APPLE"},
	{"Enriched Biscuit", "BISCUIT_HEALING", "FOOD_B_MILK"},
	{"Cream Fingers", "BISCUIT_HEALING", "FOOD_B_CREAM"},
	{"Sticky Finger", "BISCUIT_SPRINT", "FOOD_B_CARAMEL"},
	{"Cocoa Creams", "BISCUIT_SPRINT", "FOOD_B_CHOCO"},
	{"Healthy Wheatblock", "BISCUIT_HEALING", "FOOD_B_VEG"},
	{"Spore Dunkers", "BISCUIT_HEALING", "FOOD_B_MUSHROOM"},
	{"Haunted Wafer", "FIEND_3", "FOOD_B_FIEND"},
	{"Tooth Pickers", "BISCUIT_HEALING", "FOOD_B_CACTUS"},
	{"Fish Biscuit", "BISCUIT_BASE", "FOOD_B_FISH"},
	{"Wriggling Tack", "BISCUIT_BASE", "FOOD_B_WORM"},
	{"Baked Anomaly", "BISCUIT_BASE", "FOOD_B_WEIRD"},
	{"Curdy Cracker", "BISCUIT_HEALING", "FOOD_B_CHEESE"},
	{"Well-Smoked Biscuit", "BISCUIT_BASE", "FOOD_B_BURN"},
}

REWARD_CHANGE_TABLE = {}

for _, description in pairs(GOURMET_FOOD_TABLE) do
	rewardChange = {	["SPECIAL_KEY_WORDS"] = { "Id", description[3] }, 
						["VALUE_CHANGE_TABLE"] = { { "RewardID", description[2] } }--This changes the reward
    }
	consumeChange = {	["SPECIAL_KEY_WORDS"] = { "Id", description[3] },
						["VALUE_CHANGE_TABLE"] = { 
							{ "ButtonLocID", "UI_CONSUME_" .. description[2] },
							{ "ButtonSubLocID", "UI_CONSUME_" .. description[2] .. "_SUB" },
							{ "CloseInventoryWhenUsed", "True" }, -- This fixes an inconsistency where only some food closes the inventory when eaten
						}
    }
	
	table.insert(REWARD_CHANGE_TABLE, rewardChange)
	table.insert(REWARD_CHANGE_TABLE, consumeChange)
end

CONSUME_UI_TO_ADD = ""
for _, entry in pairs(MODULAR_FOOD_REWARDS) do
	CONSUME_UI_TO_ADD = CONSUME_UI_TO_ADD..createNewConsumeEntry("UI_CONSUME_"..entry[1],sanitizeText(entry[2]),sanitizeText(entry[3]))
end

FOOD_REWARDS_TO_ADD = ""
for _, entry in pairs(MODULAR_FOOD_REWARDS) do
	FOOD_REWARDS_TO_ADD = FOOD_REWARDS_TO_ADD..openReward(entry[1])
	for i=4,#entry,1 do
		FOOD_REWARDS_TO_ADD = FOOD_REWARDS_TO_ADD..entry[i]
	end
	FOOD_REWARDS_TO_ADD = FOOD_REWARDS_TO_ADD..closeReward
end

FOOD_CORRECTIONS_LOC4 = { --Most food names are in LOC4
    { "FOOD_R_BLOBGEK_NAME", "Gooey Proto-butter" },
    { "FOOD_R_GCHEESE_NAME", "Proto-Cheese" },
    { "FOOD_DNUT_BLOB_NAME", "Gooey Proto-Doughnut" },
	{ "FOOD_CB_CREAM_NAME", "Sweet Cream Dream" },
	{ "FOOD_B_CAT_NAME", "Cough Biscuit" }
}
CORRECTION_CHANGES_LOC4 = {}
for _, correction in pairs(FOOD_CORRECTIONS_LOC4) do
    correctionUpper = { ["SPECIAL_KEY_WORDS"] = { "Id", correction[1] }, --Upper case change
                        ["VALUE_CHANGE_TABLE"] = { { MOD_LANGUAGE, string.upper(correction[2]) } }
    }
    correctionLower = { ["SPECIAL_KEY_WORDS"] = { "Id", correction[1] .. "_L" }, --Normal case change
                        ["VALUE_CHANGE_TABLE"] = { { MOD_LANGUAGE, correction[2] } }
    }
    table.insert(CORRECTION_CHANGES_LOC4, correctionUpper)
    table.insert(CORRECTION_CHANGES_LOC4, correctionLower)
end

FOOD_CORRECTIONS_LOC6 = { --A few are in LOC6
    { "FOOD_BONECHEESE_NAME", "Bone Cheese" }
}
CORRECTION_CHANGES_LOC6 = {}
for _, correction in pairs(FOOD_CORRECTIONS_LOC6) do
    correctionUpper = { ["SPECIAL_KEY_WORDS"] = { "Id", correction[1] }, --Upper case change
                        ["VALUE_CHANGE_TABLE"] = { { MOD_LANGUAGE, string.upper(correction[2]) } }
    }
    correctionLower = { ["SPECIAL_KEY_WORDS"] = { "Id", correction[1] .. "_L" }, --Normal case change
                        ["VALUE_CHANGE_TABLE"] = { { MOD_LANGUAGE, correction[2] } }
    }
    table.insert(CORRECTION_CHANGES_LOC6, correctionUpper)
    table.insert(CORRECTION_CHANGES_LOC6, correctionLower)
end

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "Gourmet Flavours.pak",
    ["MOD_AUTHOR"] = "CorpInc15",
    ["LUA_AUTHOR"] = "CorpInc15 (based on fluxxdog's script)",
    ["NMS_VERSION"] = "5.01.1",
    ["MOD_DESCRIPTION"] = "Replaces the 10 vanilla rewards for eating food with 54 fully custom ones.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
				{
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\CONSUMABLEITEMTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = REWARD_CHANGE_TABLE
                },
				{
                    ["MBIN_FILE_SOURCE"]    = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
						{
							["PRECEDING_KEY_WORDS"] = {"GenericTable"},
							["ADD"]                 = FOOD_REWARDS_TO_ADD,
						},
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE\NMS_LOC4_ENGLISH.MBIN",
                    ["EXML_CHANGE_TABLE"] = CORRECTION_CHANGES_LOC4
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "LANGUAGE\NMS_LOC5_ENGLISH.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Table"},
							["ADD"]                 = CONSUME_UI_TO_ADD,
						},
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE\NMS_LOC6_ENGLISH.MBIN",
                    ["EXML_CHANGE_TABLE"] = CORRECTION_CHANGES_LOC6
                },
            }
        }
    }
}