NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Fossil and Bartering Overhaul",
["MOD_AUTHOR"]      = "Unedjis",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.61",
["MOD_DESCRIPTION"] = "Completely overhauls Fossils and Bartering (added in RELICS) by reintroducing Rarity into the drop mechanic and making necessary adjustments",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"BoneShop", "GcTradeData"},
              ["PRECEDING_KEY_WORDS"] = {"AlwaysPresentProducts"},
              ["CREATE_HOES"] = "TRUE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"BoneShop", "GcTradeData"},
              ["PRECEDING_KEY_WORDS"] = {"AlwaysPresentProducts"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD_OPTION"] = "ADDafterLINE",
              ["ADD"] =
[[
				<Property name="AlwaysPresentProducts" value="TRIDENT_KEY" />
				<Property name="AlwaysPresentProducts" value="ARTIFACT_KEY" />
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"BoneShop", "GcTradeData"},
              ["PRECEDING_KEY_WORDS"] = {"OptionalProducts"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD_OPTION"] = "ADDafterLINE",
              ["ADD"] =
[[
				<Property name="OptionalProducts" value="FOS_HEAD_AN" _index="0" />
				<Property name="OptionalProducts" value="FOS_HEAD_AA" _index="1" />
				<Property name="OptionalProducts" value="FOS_HEAD_AB" _index="2" />
				<Property name="OptionalProducts" value="FOS_HEAD_AC" _index="3" />
				<Property name="OptionalProducts" value="FOS_HEAD_AD" _index="4" />
				<Property name="OptionalProducts" value="FOS_HEAD_BN" _index="5" />
				<Property name="OptionalProducts" value="FOS_HEAD_BA" _index="6" />
				<Property name="OptionalProducts" value="FOS_HEAD_BB" _index="7" />
				<Property name="OptionalProducts" value="FOS_HEAD_BC" _index="8" />
				<Property name="OptionalProducts" value="FOS_HEAD_BD" _index="9" />
				<Property name="OptionalProducts" value="FOS_HEAD_BE" _index="10" />
				<Property name="OptionalProducts" value="FOS_HEAD_BF" _index="11" />
				<Property name="OptionalProducts" value="FOS_HEAD_BG" _index="12" />
				<Property name="OptionalProducts" value="FOS_HEAD_BH" _index="13" />
				<Property name="OptionalProducts" value="FOS_HEAD_BI" _index="14" />
				<Property name="OptionalProducts" value="FOS_HEAD_BJ" _index="15" />
				<Property name="OptionalProducts" value="FOS_HEAD_CN" _index="16" />
				<Property name="OptionalProducts" value="FOS_HEAD_CA" _index="17" />
				<Property name="OptionalProducts" value="FOS_HEAD_CB" _index="18" />
				<Property name="OptionalProducts" value="FOS_HEAD_CC" _index="19" />
				<Property name="OptionalProducts" value="FOS_HEAD_CD" _index="20" />
				<Property name="OptionalProducts" value="FOS_HEAD_CE" _index="21" />
				<Property name="OptionalProducts" value="FOS_HEAD_CF" _index="22" />
				<Property name="OptionalProducts" value="FOS_HEAD_CG" _index="23" />
				<Property name="OptionalProducts" value="FOS_HEAD_CH" _index="24" />
				<Property name="OptionalProducts" value="FOS_HEAD_CI" _index="25" />
				<Property name="OptionalProducts" value="FOS_HEAD_CJ" _index="26" />
				<Property name="OptionalProducts" value="FOS_HEAD_DN" _index="27" />
				<Property name="OptionalProducts" value="FOS_HEAD_DA" _index="28" />
				<Property name="OptionalProducts" value="FOS_HEAD_DB" _index="29" />
				<Property name="OptionalProducts" value="FOS_HEAD_DC" _index="30" />
				<Property name="OptionalProducts" value="FOS_HEAD_DD" _index="31" />
				<Property name="OptionalProducts" value="FOS_HEAD_DE" _index="32" />
				<Property name="OptionalProducts" value="FOS_HEAD_DF" _index="33" />
				<Property name="OptionalProducts" value="FOS_HEAD_DG" _index="34" />
				<Property name="OptionalProducts" value="FOS_HEAD_DH" _index="35" />
				<Property name="OptionalProducts" value="FOS_HEAD_DI" _index="36" />
				<Property name="OptionalProducts" value="FOS_HEAD_EN" _index="37" />
				<Property name="OptionalProducts" value="FOS_HEAD_EA" _index="38" />
				<Property name="OptionalProducts" value="FOS_HEAD_EB" _index="39" />
				<Property name="OptionalProducts" value="FOS_HEAD_EC" _index="40" />
				<Property name="OptionalProducts" value="FOS_HEAD_ED" _index="41" />
				<Property name="OptionalProducts" value="FOS_HEAD_EE" _index="42" />
				<Property name="OptionalProducts" value="FOS_HEAD_EF" _index="43" />
				<Property name="OptionalProducts" value="FOS_HEAD_EG" _index="44" />
				<Property name="OptionalProducts" value="FOS_HEAD_EH" _index="45" />
				<Property name="OptionalProducts" value="FOS_HEAD_EI" _index="46" />
				<Property name="OptionalProducts" value="FOS_HEAD_EJ" _index="47" />
				<Property name="OptionalProducts" value="FOS_HEAD_FN" _index="48" />
				<Property name="OptionalProducts" value="FOS_HEAD_FA" _index="49" />
				<Property name="OptionalProducts" value="FOS_HEAD_FB" _index="50" />
				<Property name="OptionalProducts" value="FOS_HEAD_FC" _index="51" />
				<Property name="OptionalProducts" value="FOS_HEAD_FD" _index="52" />
				<Property name="OptionalProducts" value="FOS_HEAD_FE" _index="53" />
				<Property name="OptionalProducts" value="FOS_HEAD_FF" _index="54" />
				<Property name="OptionalProducts" value="FOS_HEAD_FG" _index="55" />
				<Property name="OptionalProducts" value="FOS_HEAD_FH" _index="56" />
				<Property name="OptionalProducts" value="FOS_HEAD_FI" _index="57" />
				<Property name="OptionalProducts" value="FOS_HEAD_FJ" _index="58" />
				<Property name="OptionalProducts" value="FOS_HEAD_FK" _index="59" />
				<Property name="OptionalProducts" value="FOS_HEAD_FL" _index="60" />
				<Property name="OptionalProducts" value="FOS_HEAD_FM" _index="61" />
				<Property name="OptionalProducts" value="FOS_HEAD_GN" _index="62" />
				<Property name="OptionalProducts" value="FOS_HEAD_GA" _index="63" />
				<Property name="OptionalProducts" value="FOS_HEAD_GB" _index="64" />
				<Property name="OptionalProducts" value="FOS_HEAD_GC" _index="65" />
				<Property name="OptionalProducts" value="FOS_HEAD_GD" _index="66" />
				<Property name="OptionalProducts" value="FOS_HEAD_GE" _index="67" />
				<Property name="OptionalProducts" value="FOS_HEAD_GF" _index="68" />
				<Property name="OptionalProducts" value="FOS_HEAD_HN" _index="69" />
				<Property name="OptionalProducts" value="FOS_HEAD_HA" _index="70" />
				<Property name="OptionalProducts" value="FOS_HEAD_HB" _index="71" />
				<Property name="OptionalProducts" value="FOS_HEAD_HC" _index="72" />
				<Property name="OptionalProducts" value="FOS_HEAD_HD" _index="73" />
				<Property name="OptionalProducts" value="FOS_HEAD_HE" _index="74" />
				<Property name="OptionalProducts" value="FOS_HEAD_HF" _index="75" />
				<Property name="OptionalProducts" value="FOS_HEAD_HG" _index="76" />
				<Property name="OptionalProducts" value="FOS_HEAD_IN" _index="77" />
				<Property name="OptionalProducts" value="FOS_HEAD_IA" _index="78" />
				<Property name="OptionalProducts" value="FOS_HEAD_IB" _index="79" />
				<Property name="OptionalProducts" value="FOS_HEAD_IC" _index="80" />
				<Property name="OptionalProducts" value="FOS_HEAD_ID" _index="81" />
				<Property name="OptionalProducts" value="FOS_HEAD_IE" _index="82" />
				<Property name="OptionalProducts" value="FOS_HEAD_IF" _index="83" />
				<Property name="OptionalProducts" value="FOS_HEAD_JN" _index="84" />
				<Property name="OptionalProducts" value="FOS_HEAD_JA" _index="85" />
				<Property name="OptionalProducts" value="FOS_HEAD_JB" _index="86" />
				<Property name="OptionalProducts" value="FOS_HEAD_JC" _index="87" />
				<Property name="OptionalProducts" value="FOS_HEAD_JD" _index="88" />
				<Property name="OptionalProducts" value="FOS_HEAD_JE" _index="89" />
				<Property name="OptionalProducts" value="FOS_HEAD_JF" _index="90" />
				<Property name="OptionalProducts" value="FOS_HEAD_JG" _index="91" />
				<Property name="OptionalProducts" value="FOS_HEAD_JH" _index="92" />
				<Property name="OptionalProducts" value="FOS_HEAD_JI" _index="93" />
				<Property name="OptionalProducts" value="FOS_HEAD_JJ" _index="94" />
				<Property name="OptionalProducts" value="FOS_HEAD_KN" _index="95" />
				<Property name="OptionalProducts" value="FOS_HEAD_KA" _index="96" />
				<Property name="OptionalProducts" value="FOS_HEAD_KB" _index="97" />
				<Property name="OptionalProducts" value="FOS_HEAD_KC" _index="98" />
				<Property name="OptionalProducts" value="FOS_HEAD_KD" _index="99" />
				<Property name="OptionalProducts" value="FOS_HEAD_KE" _index="100" />
				<Property name="OptionalProducts" value="FOS_HEAD_KF" _index="101" />
				<Property name="OptionalProducts" value="FOS_HEAD_KG" _index="102" />
				<Property name="OptionalProducts" value="FOS_HEAD_KH" _index="103" />
				<Property name="OptionalProducts" value="FOS_HEAD_KI" _index="104" />
				<Property name="OptionalProducts" value="FOS_HEAD_KJ" _index="105" />
				<Property name="OptionalProducts" value="FOS_HEAD_KK" _index="106" />
				<Property name="OptionalProducts" value="FOS_HEAD_KL" _index="107" />
				<Property name="OptionalProducts" value="FOS_LIMBS_A" _index="108" />
				<Property name="OptionalProducts" value="FOS_LIMBS_B" _index="109" />
				<Property name="OptionalProducts" value="FOS_LIMBS_C" _index="110" />
				<Property name="OptionalProducts" value="FOS_LIMBS_D" _index="111" />
				<Property name="OptionalProducts" value="FOS_LIMBS_E" _index="112" />
				<Property name="OptionalProducts" value="FOS_LIMBS_F" _index="113" />
				<Property name="OptionalProducts" value="FOS_LIMBS_G" _index="114" />
				<Property name="OptionalProducts" value="FOS_LIMBS_H" _index="115" />
				<Property name="OptionalProducts" value="FOS_LIMBS_I" _index="116" />
				<Property name="OptionalProducts" value="FOS_LIMBS_J" _index="117" />
				<Property name="OptionalProducts" value="FOS_BI_BODY_AN" _index="118" />
				<Property name="OptionalProducts" value="FOS_BI_BODY_AA" _index="119" />
				<Property name="OptionalProducts" value="FOS_BI_BODY_AB" _index="120" />
				<Property name="OptionalProducts" value="FOS_BI_BODY_AC" _index="121" />
				<Property name="OptionalProducts" value="FOS_BI_BODY_AD" _index="122" />
				<Property name="OptionalProducts" value="FOS_BI_BODY_AE" _index="123" />
				<Property name="OptionalProducts" value="FOS_BI_BODY_BN" _index="124" />
				<Property name="OptionalProducts" value="FOS_BI_BODY_BA" _index="125" />
				<Property name="OptionalProducts" value="FOS_BI_BODY_BB" _index="126" />
				<Property name="OptionalProducts" value="FOS_BI_BODY_BC" _index="127" />
				<Property name="OptionalProducts" value="FOS_BI_BODY_BD" _index="128" />
				<Property name="OptionalProducts" value="FOS_BI_BODY_BE" _index="129" />
				<Property name="OptionalProducts" value="FOS_BI_TAIL_AA" _index="130" />
				<Property name="OptionalProducts" value="FOS_BI_TAIL_BA" _index="131" />
				<Property name="OptionalProducts" value="FOS_BI_TAIL_CA" _index="132" />
				<Property name="OptionalProducts" value="FOS_BI_TAIL_DA" _index="133" />
				<Property name="OptionalProducts" value="FOS_BI_TAIL_AN" _index="134" />
				<Property name="OptionalProducts" value="FOS_BI_TAIL_BN" _index="135" />
				<Property name="OptionalProducts" value="FOS_BI_TAIL_CN" _index="136" />
				<Property name="OptionalProducts" value="FOS_BI_TAIL_DN" _index="137" />
				<Property name="OptionalProducts" value="FOS_BI_TAIL_E" _index="138" />
				<Property name="OptionalProducts" value="FOS_BI_TAIL_F" _index="139" />
				<Property name="OptionalProducts" value="FOS_BI_TAIL_G" _index="140" />
				<Property name="OptionalProducts" value="FOS_HEAD_DJ" _index="141" />
				<Property name="OptionalProducts" value="FOS_HEAD_IG" _index="142" />
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"BoneShop", "GcTradeData"},
              ["PRECEDING_KEY_WORDS"] = {"AlwaysConsideredBarterProducts"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD_OPTION"] = "ADDendSECTION", 
              ["ADD"] =
[[
				<Property name="AlwaysConsideredBarterProducts" value="FOS_HEAD_BB" />
				<Property name="AlwaysConsideredBarterProducts" value="FOS_BI_TAIL_E" />
				<Property name="AlwaysConsideredBarterProducts" value="FOS_BI_TAIL_F" />
				<Property name="AlwaysConsideredBarterProducts" value="FOS_BI_TAIL_G" />
				<Property name="AlwaysConsideredBarterProducts" value="FOS_HEAD_DJ" />
				<Property name="AlwaysConsideredBarterProducts" value="FOS_HEAD_IG" />
				<Property name="AlwaysConsideredBarterProducts" value="STONE_EYE_PROD" />
				<Property name="AlwaysConsideredBarterProducts" value="STORM_CRYSTAL" />
				<Property name="AlwaysConsideredBarterProducts" value="CAVECUBE" />
				<Property name="AlwaysConsideredBarterProducts" value="ALBUMENPEARL" />
				<Property name="AlwaysConsideredBarterProducts" value="GRAVBALL" />
				<Property name="AlwaysConsideredBarterProducts" value="CLAMPEARL" />
				<Property name="AlwaysConsideredBarterProducts" value="SACVENOM" />
				<Property name="AlwaysConsideredBarterProducts" value="DEEPSEA_PROD" />
				<Property name="AlwaysConsideredBarterProducts" value="VENTGEM" />
				<Property name="AlwaysConsideredBarterProducts" value="GEODE_ASTEROID" />
				<Property name="AlwaysConsideredBarterProducts" value="GEODE_CRYSTAL" />
				<Property name="AlwaysConsideredBarterProducts" value="GEODE_RARE" />
				<Property name="AlwaysConsideredBarterProducts" value="ARTIFACT_KEY" />
				<Property name="AlwaysConsideredBarterProducts" value="TRIDENT_KEY" />
				<Property name="AlwaysConsideredBarterProducts" value="TRA_MINERALS1" />
				<Property name="AlwaysConsideredBarterProducts" value="TRA_MINERALS2" />
				<Property name="AlwaysConsideredBarterProducts" value="TRA_MINERALS3" />
				<Property name="AlwaysConsideredBarterProducts" value="TRA_MINERALS4" />
				<Property name="AlwaysConsideredBarterProducts" value="TRA_MINERALS5" />
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"BoneShop", "GcTradeData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BarterPriceMultiplier", "2.000000"},
                {"MinItemsForSale",       "6"},
                {"MaxItemsForSale",       "16"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"BoneShop", "GcTradeData"},
              ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Poor",    "1"},
                {"Average", "1"},
                {"Wealthy", "1"},
                {"Pirate",  "1"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"BoneShop", "GcTradeData"},
              ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Poor",    "1"},
                {"Average", "2"},
                {"Pirate",  "2"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ChestSmall", "GcInventoryLayoutGenerationDataEntry"},
                {"ChestSmall", "GcInventoryLayoutGenerationDataEntry"},
                {"ChestSmall", "GcInventoryLayoutGenerationDataEntry"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSlots", "70"},
                {"MaxSlots", "70"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ChestSmall", "GcInventoryLayoutGenerationDataEntry", "Bounds", "GcInventoryLayoutGenerationBounds"},
                {"ChestSmall", "GcInventoryLayoutGenerationDataEntry", "Bounds", "GcInventoryLayoutGenerationBounds"},
                {"ChestSmall", "GcInventoryLayoutGenerationDataEntry", "Bounds", "GcInventoryLayoutGenerationBounds"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxHeightSmall",    "7"},
                {"MaxHeightStandard", "7"},
                {"MaxHeightLarge",    "7"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_MODULARCUSTOMISATIONPRODUCTS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_AN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_AA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_AB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_AC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_AD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_BN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_BA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_BB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "1500000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_BC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_BD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_BE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_BF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "1500000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_BG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_BH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_BI"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_BJ"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "1500000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_CN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_CA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_CB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_CC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_CD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_CE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_CF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_CG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "1500000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_CH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "1500000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_CI"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_CJ"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_DN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_DA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_DB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_DC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_DD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_DE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_DF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_DG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_DH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_DI"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_DJ"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_EN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_EA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_EB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_EC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_ED"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_EE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "1500000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_EF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_EG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_EH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_EI"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "1500000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_EJ"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_FN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_FA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "1500000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_FB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_FC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_FD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_FE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_FF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "1500000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_FG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_FH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_FI"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "1500000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_FJ"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_FK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_FL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_FM"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_GN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_GA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_GB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_GC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_GD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_GE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_GF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "1500000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_HN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "1500000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_HA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_HB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_HC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_HD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "1500000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_HE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_HF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_HG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "1500000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_IN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_IA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_IB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_IC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_ID"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_IE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_IF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_IG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_JN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_JA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_JB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_JC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_JD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_JE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_JF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_JG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_JH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_JI"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_JJ"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "1500000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_KN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_KA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_KB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_KC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_KD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_KE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "1500000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_KF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "1500000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_KG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "1500000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_KH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_KI"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_KJ"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_KK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "300000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_HEAD_KL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_LIMBS_A"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "100000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_LIMBS_B"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "50000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_LIMBS_C"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "500000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_LIMBS_D"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "50000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_LIMBS_E"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "250000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_LIMBS_F"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "50000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_LIMBS_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "100000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_LIMBS_H"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "100000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_LIMBS_I"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "50000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_LIMBS_J"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "100000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_BODY_AN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "100000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_BODY_AA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "1000000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_BODY_AB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "500000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_BODY_AC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "100000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_BODY_AD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "200000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_BODY_AE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "200000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_BODY_BN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "100000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_BODY_BA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "100000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_BODY_BB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "500000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_BODY_BC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "1000000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_BODY_BD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "200000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_BODY_BE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "200000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_TAIL_AN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "75000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_TAIL_AA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_TAIL_BN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_TAIL_BA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "75000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_TAIL_CN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "75000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_TAIL_CA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "75000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_TAIL_DN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_TAIL_DA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "150000"},
                {"R", "0.129411772"},
                {"G", "0.466666669"},
                {"B", "0.784313738"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_TAIL_E"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "375000"},
                {"R", "0.301960796"},
                {"G", "0.160784319"},
                {"B", "0.34117648"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_TAIL_F"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "750000"},
                {"R", "0.952941179"},
                {"G", "0.662745118"},
                {"B", "0.137254909"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FOS_BI_TAIL_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue", "75000"},
                {"R", "0.117647059"},
                {"G", "0.541176498"},
                {"B", "0.258823544"},
                {"A", "1.000000"},
                {"LowPriceMod", "-0.200000"},
                {"HighPriceMod", "0.200000"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            { 
              ["SPECIAL_KEY_WORDS"] = {"ID", "STONE_EYE_PROD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BuyBaseMarkup", "2.000000"},
              },
            },
            { 
              ["SPECIAL_KEY_WORDS"] = {"ID", "GEODE_CRYSTAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BuyBaseMarkup", "3.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GEODE_ASTEROID"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BuyBaseMarkup", "3.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GEODE_RARE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BuyBaseMarkup", "3.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ALBUMENPEARL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BuyBaseMarkup", "2.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CAVECUBE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SpaceStationMarkup", "0.000000"},
                {"BuyBaseMarkup",      "2.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CLAMPEARL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BuyBaseMarkup", "4.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GRAVBALL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BuyBaseMarkup", "2.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SACVENOM"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BuyBaseMarkup", "1.500000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "VENTGEM"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BuyBaseMarkup", "2.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ARTIFACT_KEY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue",     "16000"},
                {"BuyBaseMarkup", "3.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TRIDENT_KEY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseValue",     "64000"},
                {"BuyBaseMarkup", "2.000000"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 2,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 3,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 4,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 5,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 6,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 7,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 8,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 9,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 10,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 11,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 12,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 13,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 14,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 15,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 16,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 17,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 18,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 19,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 20,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 21,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 22,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 23,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 24,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 25,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 26,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 27,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 28,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 30,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 32,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 33,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 34,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 35,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 36,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 37,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 38,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 39,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 40,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 41,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 42,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 43,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 44,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 45,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 46,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 47,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 48,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 49,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 50,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 51,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 52,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 53,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 54,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 55,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 56,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 57,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 58,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 59,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 60,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "15.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 61,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 62,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 63,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 64,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 65,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 66,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 67,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 68,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 69,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 70,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 71,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 72,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 73,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 74,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 75,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 76,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 77,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 78,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 79,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 80,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 81,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 82,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 83,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 84,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 85,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 86,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 87,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 88,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 89,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 90,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 91,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 92,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 93,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 94,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 95,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 96,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 97,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 98,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 99,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 100,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 101,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 102,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 103,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 104,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 105,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 106,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 107,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },

            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_BODIES", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_BODIES", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_BODIES", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 2,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_BODIES", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 3,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_BODIES", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 4,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_BODIES", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 5,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_BODIES", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 6,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_BODIES", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 7,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_BODIES", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 8,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_BODIES", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 9,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_BODIES", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 10,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_BODIES", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 11,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_LIMBS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_LIMBS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_LIMBS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 2,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "5.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_LIMBS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 3,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_LIMBS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 4,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance",    "15.000000"},
                {"ForceSpecialMessage", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_LIMBS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 5,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_LIMBS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 6,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_LIMBS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 7,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_LIMBS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 8,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_LIMBS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 9,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_TAILS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_TAILS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_TAILS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 2,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_TAILS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 3,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_TAILS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 4,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_TAILS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 5,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_TAILS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 6,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "50.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_TAILS", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 7,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "30.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_SKULLS", "List", "GcRewardTableItemList"},
              ["PRECEDING_KEY_WORDS"] = {"List"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
          <Property name="List" value="GcRewardTableItem" _index="108">
            <Property name="PercentageChance" value="15.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
                <Property name="Default" value="GcDefaultMissionProductEnum">
                  <Property name="DefaultProductType" value="None" />
                </Property>
                <Property name="ID" value="FOS_HEAD_DJ" />
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
                <Property name="HideAmountInMessage" value="false" />
                <Property name="ForceSpecialMessage" value="true" />
                <Property name="HideInSeasonRewards" value="false" />
                <Property name="Silent" value="false" />
                <Property name="SeasonRewardListFormat" value="" />
                <Property name="RequiresTech" value="" />
              </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem" _index="109">
            <Property name="PercentageChance" value="15.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
                <Property name="Default" value="GcDefaultMissionProductEnum">
                  <Property name="DefaultProductType" value="None" />
                </Property>
                <Property name="ID" value="FOS_HEAD_IG" />
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
                <Property name="HideAmountInMessage" value="false" />
                <Property name="ForceSpecialMessage" value="true" />
                <Property name="HideInSeasonRewards" value="false" />
                <Property name="Silent" value="false" />
                <Property name="SeasonRewardListFormat" value="" />
                <Property name="RequiresTech" value="" />
              </Property>
            </Property>
          </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FOSSIL_TAILS", "List", "GcRewardTableItemList"},
              ["PRECEDING_KEY_WORDS"] = {"List"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
          <Property name="List" value="GcRewardTableItem" _index="8">
            <Property name="PercentageChance" value="15.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
                <Property name="Default" value="GcDefaultMissionProductEnum">
                  <Property name="DefaultProductType" value="None" />
                </Property>
                <Property name="ID" value="FOS_BI_TAIL_E" />
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
                <Property name="HideAmountInMessage" value="false" />
                <Property name="ForceSpecialMessage" value="true" />
                <Property name="HideInSeasonRewards" value="false" />
                <Property name="Silent" value="false" />
                <Property name="SeasonRewardListFormat" value="" />
                <Property name="RequiresTech" value="" />
              </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem" _index="9">
            <Property name="PercentageChance" value="5.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
                <Property name="Default" value="GcDefaultMissionProductEnum">
                  <Property name="DefaultProductType" value="None" />
                </Property>
                <Property name="ID" value="FOS_BI_TAIL_F" />
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
                <Property name="HideAmountInMessage" value="false" />
                <Property name="ForceSpecialMessage" value="true" />
                <Property name="HideInSeasonRewards" value="false" />
                <Property name="Silent" value="false" />
                <Property name="SeasonRewardListFormat" value="" />
                <Property name="RequiresTech" value="" />
              </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem" _index="10">
            <Property name="PercentageChance" value="50.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
                <Property name="Default" value="GcDefaultMissionProductEnum">
                  <Property name="DefaultProductType" value="None" />
                </Property>
                <Property name="ID" value="FOS_BI_TAIL_G" />
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
                <Property name="HideAmountInMessage" value="false" />
                <Property name="ForceSpecialMessage" value="false" />
                <Property name="HideInSeasonRewards" value="false" />
                <Property name="Silent" value="false" />
                <Property name="SeasonRewardListFormat" value="" />
                <Property name="RequiresTech" value="" />
              </Property>
            </Property>
          </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_DIGBARROW", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 3,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AmountMax", "10"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_DIGBARROW", "List", "GcRewardTableItemList"},
              ["PRECEDING_KEY_WORDS"] = {"List"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
          <Property name="List" value="GcRewardTableItem" _index="4">
            <Property name="PercentageChance" value="80.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
                <Property name="Default" value="GcDefaultMissionProductEnum">
                  <Property name="DefaultProductType" value="None" />
                </Property>
                <Property name="ID" value="TRA_MINERALS2" />
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="9" />
                <Property name="HideAmountInMessage" value="false" />
                <Property name="ForceSpecialMessage" value="false" />
                <Property name="HideInSeasonRewards" value="false" />
                <Property name="Silent" value="false" />
                <Property name="SeasonRewardListFormat" value="" />
                <Property name="RequiresTech" value="" />
              </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem" _index="5">
            <Property name="PercentageChance" value="60.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
                <Property name="Default" value="GcDefaultMissionProductEnum">
                  <Property name="DefaultProductType" value="None" />
                </Property>
                <Property name="ID" value="TRA_MINERALS3" />
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="8" />
                <Property name="HideAmountInMessage" value="false" />
                <Property name="ForceSpecialMessage" value="false" />
                <Property name="HideInSeasonRewards" value="false" />
                <Property name="Silent" value="false" />
                <Property name="SeasonRewardListFormat" value="" />
                <Property name="RequiresTech" value="" />
              </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem" _index="6">
            <Property name="PercentageChance" value="40.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
                <Property name="Default" value="GcDefaultMissionProductEnum">
                  <Property name="DefaultProductType" value="None" />
                </Property>
                <Property name="ID" value="TRA_MINERALS4" />
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="7" />
                <Property name="HideAmountInMessage" value="false" />
                <Property name="ForceSpecialMessage" value="false" />
                <Property name="HideInSeasonRewards" value="false" />
                <Property name="Silent" value="false" />
                <Property name="SeasonRewardListFormat" value="" />
                <Property name="RequiresTech" value="" />
              </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem" _index="7">
            <Property name="PercentageChance" value="20.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
                <Property name="Default" value="GcDefaultMissionProductEnum">
                  <Property name="DefaultProductType" value="None" />
                </Property>
                <Property name="ID" value="TRA_MINERALS5" />
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="6" />
                <Property name="HideAmountInMessage" value="false" />
                <Property name="ForceSpecialMessage" value="false" />
                <Property name="HideInSeasonRewards" value="false" />
                <Property name="Silent" value="false" />
                <Property name="SeasonRewardListFormat" value="" />
                <Property name="RequiresTech" value="" />
              </Property>
            </Property>
          </Property>
]]
            },
          }
        },
      }
    },
  }
}