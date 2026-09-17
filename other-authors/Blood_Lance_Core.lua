-- ISI BLOOD LANCE 1.0.7
-- UNIQUE STAMP: V1_0_7_TT_LEECH
-- NMS 7.01 Cosmos / AMUMSS 5.6.2.0w+
-- Author: IronSlasher
-- Weapon names and descriptions are author copy. Do not rewrite.




local UNLOCK_BRANCH = [[
                    <Property value="GcUnlockableItemTreeNode">
                        <Property name="Unlockable" value="ISI_BLOODLANCE" />
                        <Property name="Children">
                            <Property value="GcUnlockableItemTreeNode">
                                <Property name="Unlockable" value="ISI_BL_TYPE_T" />
                                <Property name="Children" />
                            </Property>
                        </Property>
                    </Property>]]

local PRODUCT_BRANCH = [[
                    <Property value="GcUnlockableItemTreeNode">
                        <Property name="Unlockable" value="ISI_RUBEDO" />
                        <Property name="Children">
                            <Property value="GcUnlockableItemTreeNode">
                                <Property name="Unlockable" value="ISI_RUBY_RUBIX" />
                                <Property name="Children" />
                            </Property>
                        </Property>
                    </Property>]]

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "ISI Blood Lance.pak",
    ["MOD_DESCRIPTION"] = "IronSlasher Industries Blood Lance 1.0.7",
    ["MOD_AUTHOR"]      = "IronSlasher",
    ["NMS_VERSION"]     = "7.01",

    ["ADD_FILES"] =
    {
        { ["FILE_DESTINATION"]="BLOODLANCE/BLOODLANCE_STANDARD_ICON.DDS", ["EXTERNAL_FILE_SOURCE"]="BLOODLANCE_STANDARD_ICON.DDS" },
        { ["FILE_DESTINATION"]="BLOODLANCE/BLOODLANCE_TYPE_T_ICON.DDS", ["EXTERNAL_FILE_SOURCE"]="BLOODLANCE_TYPE_T_ICON.DDS" },
        { ["FILE_DESTINATION"]="BLOODLANCE/ISI_TESSERACT_ICON.DDS", ["EXTERNAL_FILE_SOURCE"]="ISI_TESSERACT_ICON.DDS" },
        { ["FILE_DESTINATION"]="BLOODLANCE/ISI_RUBEDO_CRYSTAL_ICON.DDS", ["EXTERNAL_FILE_SOURCE"]="ISI_RUBEDO_CRYSTAL_ICON.DDS" },
        { ["FILE_DESTINATION"]="BLOODLANCE/ISI_RUBY_RUBIX_ICON.DDS", ["EXTERNAL_FILE_SOURCE"]="ISI_RUBY_RUBIX_ICON.DDS" },
    },

    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                -- =================================================================
                -- STARSHIP TECHNOLOGIES
                -- =================================================================
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        -- Clone the vanilla Phase Beam twice so both custom emitters retain
                        -- the proven working primary-weapon schema.
                        { ["SPECIAL_KEY_WORDS"]={"ID","SHIPLAS1"}, ["SEC_SAVE_TO"]="ISI_BLOODLANCE_TECH" },
                        { ["SPECIAL_KEY_WORDS"]={"ID","SHIPLAS1"}, ["SEC_SAVE_TO"]="ISI_TYPE_T_TECH" },

                        -- BLOOD LANCE -------------------------------------------------
                        -- ExclusivePrimaryStat True is the POC-A conversion lock.
                        -- RC3.1 also sets it on live vanilla SHIPLAS1 after the clones are added.
                        {
                            ["SEC_EDIT"]="ISI_BLOODLANCE_TECH",
                            ["SPECIAL_KEY_WORDS"]={"ID","SHIPLAS1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ID","ISI_BLOODLANCE"},
                                {"Group","ISI_BLOODLANCE"},
                                {"Name","ISI_BL_NAME"},
                                {"NameLower","ISI_BL_NAMEL"},
                                {"Subtitle","ISI_BL_SUB"},
                                {"Description","ISI_BL_DESC"},
                                {"RequiredTech","SHIPLAS1"},
                                {"ExclusivePrimaryStat","True"},
                                {"Core","False"},
                            },
                        },
                        { ["SEC_EDIT"]="ISI_BLOODLANCE_TECH", ["PRECEDING_KEY_WORDS"]={"Icon"}, ["VALUE_CHANGE_TABLE"]={{"Filename","BLOODLANCE/BLOODLANCE_STANDARD_ICON.DDS"}} },
                        {
                            ["SEC_EDIT"]="ISI_BLOODLANCE_TECH",
                            ["PRECEDING_KEY_WORDS"]={"UpgradeColour"},
                            ["VALUE_CHANGE_TABLE"]={{"R",1.0},{"G",0.035},{"B",0.035},{"A",1.0}},
                        },
                        -- Three Product install (research UI only paints three rows):
                        -- Walker Brain, Fusion Ignitor, Stasis Device.
                        -- Slot 1 is Tritium/Substance on the SHIPLAS1 donor; flip to Product.
                        { ["SEC_EDIT"]="ISI_BLOODLANCE_TECH", ["SPECIAL_KEY_WORDS"]={"ID","ROCKETSUB"}, ["VALUE_CHANGE_TABLE"]={{"ID","WALKER_PROD"},{"Amount","1"}} },
                        {
                            ["SEC_EDIT"]="ISI_BLOODLANCE_TECH",
                            ["SPECIAL_KEY_WORDS"]={"ID","WALKER_PROD"},
                            ["VALUE_MATCH"]="Substance",
                            ["VALUE_CHANGE_TABLE"]={{"InventoryType","Product"}},
                        },
                        { ["SEC_EDIT"]="ISI_BLOODLANCE_TECH", ["SPECIAL_KEY_WORDS"]={"ID","TECH_COMP"}, ["VALUE_CHANGE_TABLE"]={{"ID","ULTRAPROD1"},{"Amount","2"}} },
                        -- Third slot: clone the live Product requirement (ULTRAPROD1 was TECH_COMP).
                        { ["SEC_EDIT"]="ISI_BLOODLANCE_TECH", ["SPECIAL_KEY_WORDS"]={"ID","ULTRAPROD1"}, ["SEC_SAVE_TO"]="BL_REQ_S" },
                        { ["SEC_EDIT"]="BL_REQ_S", ["VALUE_CHANGE_TABLE"]={{"ID","ULTRAPROD2"},{"Amount","2"}} },
                        { ["SEC_EDIT"]="ISI_BLOODLANCE_TECH", ["PRECEDING_KEY_WORDS"]={"Requirements"}, ["ADD_OPTION"]="ADDendSECTION", ["SEC_ADD_NAMED"]="BL_REQ_S" },

                        -- TYPE-T ------------------------------------------------------
                        -- Same ExclusivePrimaryStat lock vs Blood Lance (and vs Phase Beam).
                        {
                            ["SEC_EDIT"]="ISI_TYPE_T_TECH",
                            ["SPECIAL_KEY_WORDS"]={"ID","SHIPLAS1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ID","ISI_BL_TYPE_T"},
                                {"Group","ISI_BL_TYPE_T"},
                                {"Name","ISI_TT_NAME"},
                                {"NameLower","ISI_TT_NAMEL"},
                                {"Subtitle","ISI_TT_SUB"},
                                {"Description","ISI_TT_DESC"},
                                {"RequiredTech","ISI_BLOODLANCE"},
                                {"ExclusivePrimaryStat","True"},
                                {"Core","False"},
                            },
                        },
                        { ["SEC_EDIT"]="ISI_TYPE_T_TECH", ["PRECEDING_KEY_WORDS"]={"Icon"}, ["VALUE_CHANGE_TABLE"]={{"Filename","BLOODLANCE/BLOODLANCE_TYPE_T_ICON.DDS"}} },
                        {
                            ["SEC_EDIT"]="ISI_TYPE_T_TECH",
                            ["PRECEDING_KEY_WORDS"]={"UpgradeColour"},
                            ["VALUE_CHANGE_TABLE"]={{"R",1.0},{"G",0.01},{"B",0.16},{"A",1.0}},
                        },
                        -- SHIPLAS1 currently has two build requirements. Reuse those known-good
                        -- slots: completed ISI Ruby Rubix x1 (Product) + Quantum Processor x5 (Product).
                        { ["SEC_EDIT"]="ISI_TYPE_T_TECH", ["SPECIAL_KEY_WORDS"]={"ID","ROCKETSUB"}, ["VALUE_CHANGE_TABLE"]={{"ID","ISI_RUBY_RUBIX"},{"Amount","1"}} },
                        -- ID rewrite leaves InventoryType=Substance (Tritium/Uranium class).
                        -- VALUE_MATCH Substance so the outer GcInventoryType wrapper is not destroyed.
                        {
                            ["SEC_EDIT"]="ISI_TYPE_T_TECH",
                            ["SPECIAL_KEY_WORDS"]={"ID","ISI_RUBY_RUBIX"},
                            ["VALUE_MATCH"]="Substance",
                            ["VALUE_CHANGE_TABLE"]={{"InventoryType","Product"}},
                        },
                        { ["SEC_EDIT"]="ISI_TYPE_T_TECH", ["SPECIAL_KEY_WORDS"]={"ID","TECH_COMP"}, ["VALUE_CHANGE_TABLE"]={{"ID","MEGAPROD2"},{"Amount","5"}} },

                        -- Add the saved technologies to the live table before editing their stat sections.
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="ISI_BLOODLANCE_TECH" },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="ISI_TYPE_T_TECH" },

                        -- A2: vanilla Phase Beam must refuse while Blood Lance or Type-T is installed.
                        -- Applied after the clones are retargeted, so this hits live SHIPLAS1 only.
                        { ["SPECIAL_KEY_WORDS"]={"ID","SHIPLAS1"}, ["VALUE_CHANGE_TABLE"]={{"ExclusivePrimaryStat","True"}} },

                        -- Standard Blood Lance combat values.
                        { ["SPECIAL_KEY_WORDS"]={"ID","ISI_BLOODLANCE"}, ["PRECEDING_KEY_WORDS"]={"Ship_Weapons_Lasers_HeatTime"}, ["SECTION_UP"]=1, ["VALUE_CHANGE_TABLE"]={{"Bonus",6.0}} },
                        { ["SPECIAL_KEY_WORDS"]={"ID","ISI_BLOODLANCE"}, ["PRECEDING_KEY_WORDS"]={"Ship_Weapons_Lasers_Damage"}, ["SECTION_UP"]=1, ["VALUE_CHANGE_TABLE"]={{"Bonus",450}} },
                        { ["SPECIAL_KEY_WORDS"]={"ID","ISI_BLOODLANCE"}, ["PRECEDING_KEY_WORDS"]={"Ship_Weapons_ShieldLeech"}, ["SECTION_UP"]=1, ["VALUE_CHANGE_TABLE"]={{"Bonus",0.0}} },

                        { ["SPECIAL_KEY_WORDS"]={"ID","ISI_BL_TYPE_T"}, ["PRECEDING_KEY_WORDS"]={"Ship_Weapons_Lasers_HeatTime"}, ["SECTION_UP"]=1, ["VALUE_CHANGE_TABLE"]={{"Bonus",999999}} },
                        { ["SPECIAL_KEY_WORDS"]={"ID","ISI_BL_TYPE_T"}, ["PRECEDING_KEY_WORDS"]={"Ship_Weapons_Lasers_Damage"}, ["SECTION_UP"]=1, ["VALUE_CHANGE_TABLE"]={{"Bonus",1666}} },
                        { ["SPECIAL_KEY_WORDS"]={"ID","ISI_BL_TYPE_T"}, ["PRECEDING_KEY_WORDS"]={"Ship_Weapons_ShieldLeech"}, ["SECTION_UP"]=1, ["VALUE_CHANGE_TABLE"]={{"Bonus",1.0}} },
                    },
                },

                -- =================================================================
                -- PRODUCTS / COMPONENTS
                -- =================================================================
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        -- TESSERACT: non-craftable recovered artifact.
                        { ["SPECIAL_KEY_WORDS"]={"ID","HEXCORE","Name","UI_HEX_CORE_NAME"}, ["SEC_SAVE_TO"]="ISI_TESSERACT_PRODUCT" },
                        {
                            ["SEC_EDIT"]="ISI_TESSERACT_PRODUCT", ["SPECIAL_KEY_WORDS"]={"ID","HEXCORE","Name","UI_HEX_CORE_NAME"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ID","ISI_TESSERACT"}, {"Name","ISI_TESS_NAME"}, {"NameLower","ISI_TESS_NAMEL"},
                                {"Subtitle","ISI_TESS_SUB"}, {"Description","ISI_TESS_DESC"}, {"BaseValue","16000000"},
                                {"Consumable","false"}, {"IsCraftable","false"}, {"GoodForSelling","false"}, {"WikiCategory","Curio"},
                                {"StackMultiplier","1"}, {"DefaultCraftAmount","1"},
                            },
                        },
                        { ["SEC_EDIT"]="ISI_TESSERACT_PRODUCT", ["PRECEDING_KEY_WORDS"]={"Icon"}, ["VALUE_CHANGE_TABLE"]={{"Filename","BLOODLANCE/ISI_TESSERACT_ICON.DDS"}} },
                        { ["SEC_EDIT"]="ISI_TESSERACT_PRODUCT", ["PRECEDING_KEY_WORDS"]={"HeroIcon"}, ["VALUE_CHANGE_TABLE"]={{"Filename","BLOODLANCE/ISI_TESSERACT_ICON.DDS"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="ISI_TESSERACT_PRODUCT" },

                        -- K-17 wreckage logs: HEXCORE clones, keep the hex-core icon (data core).
                        { ["SPECIAL_KEY_WORDS"]={"ID","HEXCORE","Name","UI_HEX_CORE_NAME"}, ["SEC_SAVE_TO"]="ISI_LOG_K17_PRODUCT" },
                        {
                            ["SEC_EDIT"]="ISI_LOG_K17_PRODUCT", ["SPECIAL_KEY_WORDS"]={"ID","HEXCORE","Name","UI_HEX_CORE_NAME"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ID","ISI_LOG_K17"}, {"Name","ISI_LOGK_NAME"}, {"NameLower","ISI_LOGK_NAMEL"},
                                {"Subtitle","ISI_LOGK_SUB"}, {"Description","ISI_LOGK_DESC"}, {"BaseValue","0"},
                                {"Consumable","false"}, {"IsCraftable","false"}, {"GoodForSelling","false"}, {"WikiCategory","Curio"},
                            },
                        },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="ISI_LOG_K17_PRODUCT" },

                        { ["SPECIAL_KEY_WORDS"]={"ID","HEXCORE","Name","UI_HEX_CORE_NAME"}, ["SEC_SAVE_TO"]="ISI_LOG_RAID_PRODUCT" },
                        {
                            ["SEC_EDIT"]="ISI_LOG_RAID_PRODUCT", ["SPECIAL_KEY_WORDS"]={"ID","HEXCORE","Name","UI_HEX_CORE_NAME"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ID","ISI_LOG_RAID"}, {"Name","ISI_LOGR_NAME"}, {"NameLower","ISI_LOGR_NAMEL"},
                                {"Subtitle","ISI_LOGR_SUB"}, {"Description","ISI_LOGR_DESC"}, {"BaseValue","0"},
                                {"Consumable","false"}, {"IsCraftable","false"}, {"GoodForSelling","false"}, {"WikiCategory","Curio"},
                            },
                        },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="ISI_LOG_RAID_PRODUCT" },

                        { ["SPECIAL_KEY_WORDS"]={"ID","HEXCORE","Name","UI_HEX_CORE_NAME"}, ["SEC_SAVE_TO"]="ISI_LOG_EMRG_PRODUCT" },
                        {
                            ["SEC_EDIT"]="ISI_LOG_EMRG_PRODUCT", ["SPECIAL_KEY_WORDS"]={"ID","HEXCORE","Name","UI_HEX_CORE_NAME"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ID","ISI_LOG_EMRG"}, {"Name","ISI_LOGE_NAME"}, {"NameLower","ISI_LOGE_NAMEL"},
                                {"Subtitle","ISI_LOGE_SUB"}, {"Description","ISI_LOGE_DESC"}, {"BaseValue","0"},
                                {"Consumable","false"}, {"IsCraftable","false"}, {"GoodForSelling","false"}, {"WikiCategory","Curio"},
                            },
                        },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="ISI_LOG_EMRG_PRODUCT" },

                        -- RUBEDO CRYSTAL: clone Antimatter because its live schema already has
                        -- exactly two Substance requirements: Chromatic Metal + Condensed Carbon.
                        -- Root anchor uses ID + current vanilla BaseValue. Nested crafting requirements
                        -- can contain ID=ANTIMATTER, but they cannot contain product-level BaseValue=5233.
                        { ["SPECIAL_KEY_WORDS"]={"ID","ANTIMATTER","BaseValue","5233"}, ["SEC_SAVE_TO"]="ISI_RUBEDO_PRODUCT" },
                        {
                            ["SEC_EDIT"]="ISI_RUBEDO_PRODUCT", ["SPECIAL_KEY_WORDS"]={"ID","ANTIMATTER","BaseValue","5233"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ID","ISI_RUBEDO"}, {"Name","ISI_RUBEDO_NAME"}, {"NameLower","ISI_RUBEDO_NAMEL"},
                                {"Subtitle","ISI_RUBEDO_SUB"}, {"Description","ISI_RUBEDO_DESC"}, {"BaseValue","0"},
                                {"Consumable","false"}, {"IsCraftable","true"}, {"GoodForSelling","false"}, {"RecipeCost","500"},
                            },
                        },
                        -- Antimatter already uses STELLAR2 and FUEL2. Change quantities only,
                        -- preserving the correct Substance inventory types in the current schema.
                        { ["SEC_EDIT"]="ISI_RUBEDO_PRODUCT", ["SPECIAL_KEY_WORDS"]={"ID","STELLAR2"}, ["VALUE_CHANGE_TABLE"]={{"Amount","250"}} },
                        { ["SEC_EDIT"]="ISI_RUBEDO_PRODUCT", ["SPECIAL_KEY_WORDS"]={"ID","FUEL2"}, ["VALUE_CHANGE_TABLE"]={{"Amount","500"}} },
                        { ["SEC_EDIT"]="ISI_RUBEDO_PRODUCT", ["PRECEDING_KEY_WORDS"]={"Icon"}, ["VALUE_CHANGE_TABLE"]={{"Filename","BLOODLANCE/ISI_RUBEDO_CRYSTAL_ICON.DDS"}} },
                        { ["SEC_EDIT"]="ISI_RUBEDO_PRODUCT", ["PRECEDING_KEY_WORDS"]={"HeroIcon"}, ["VALUE_CHANGE_TABLE"]={{"Filename","BLOODLANCE/ISI_RUBEDO_CRYSTAL_ICON.DDS"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="ISI_RUBEDO_PRODUCT" },

                        -- RUBY RUBIX: clone Quantum Processor because it has two Product-type
                        -- requirements. Key casing retained from the live 7.01 product-table schema.
                        { ["SPECIAL_KEY_WORDS"]={"ID","MEGAPROD2","Name","UI_MEGAPROD_2_NAME"}, ["SEC_SAVE_TO"]="ISI_RUBY_PRODUCT" },
                        {
                            ["SEC_EDIT"]="ISI_RUBY_PRODUCT", ["SPECIAL_KEY_WORDS"]={"ID","MEGAPROD2","Name","UI_MEGAPROD_2_NAME"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ID","ISI_RUBY_RUBIX"}, {"Name","ISI_RUBY_NAME"}, {"NameLower","ISI_RUBY_NAMEL"},
                                {"Subtitle","ISI_RUBY_SUB"}, {"Description","ISI_RUBY_DESC"}, {"BaseValue","0"},
                                {"Consumable","false"}, {"IsCraftable","true"}, {"GoodForSelling","false"}, {"RecipeCost","1000"},
                            },
                        },
                        { ["SEC_EDIT"]="ISI_RUBY_PRODUCT", ["SPECIAL_KEY_WORDS"]={"ID","FARMPROD9"}, ["VALUE_CHANGE_TABLE"]={{"ID","ISI_RUBEDO"},{"Amount","6"}} },
                        { ["SEC_EDIT"]="ISI_RUBY_PRODUCT", ["SPECIAL_KEY_WORDS"]={"ID","COMPOUND5"}, ["VALUE_CHANGE_TABLE"]={{"ID","ISI_TESSERACT"},{"Amount","1"}} },
                        { ["SEC_EDIT"]="ISI_RUBY_PRODUCT", ["PRECEDING_KEY_WORDS"]={"Icon"}, ["VALUE_CHANGE_TABLE"]={{"Filename","BLOODLANCE/ISI_RUBY_RUBIX_ICON.DDS"}} },
                        { ["SEC_EDIT"]="ISI_RUBY_PRODUCT", ["PRECEDING_KEY_WORDS"]={"HeroIcon"}, ["VALUE_CHANGE_TABLE"]={{"Filename","BLOODLANCE/ISI_RUBY_RUBIX_ICON.DDS"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="ISI_RUBY_PRODUCT" },
                    },
                },

                -- =================================================================
                -- RESEARCH TREES
                -- =================================================================
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\\REALITY\\TABLES\\UNLOCKABLEITEMTREES.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        -- One and only one ship branch: Phase Beam -> Blood Lance -> Type-T.
                        {
                            ["SPECIAL_KEY_WORDS"]={"Unlockable","SHIPLAS1"}, ["PRECEDING_KEY_WORDS"]={"Children"},
                            ["REPLACE_TYPE"]="ONCE", ["ADD_OPTION"]="ADDendSECTION", ["ADD"]=UNLOCK_BRANCH,
                        },
                        -- Manufactured products: Quantum Processor -> Rubedo Crystal -> ISI Ruby Rubix.
                        {
                            ["SPECIAL_KEY_WORDS"]={"Unlockable","MEGAPROD2"}, ["PRECEDING_KEY_WORDS"]={"Children"},
                            ["REPLACE_TYPE"]="ONCE", ["ADD_OPTION"]="ADDendSECTION", ["ADD"]=PRODUCT_BRANCH,
                        },
                    },
                },

                -- =================================================================
                -- ENGLISH LOCALIZATION
                -- =================================================================
                {
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE\\NMS_LOC1_ENGLISH.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        -- BLOOD LANCE
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME"}, ["SEC_SAVE_TO"]="LOC_BL_NAME" },
                        { ["SEC_EDIT"]="LOC_BL_NAME", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_BL_NAME"},{"English","ISI - BLOOD LANCE"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_BL_NAME" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME_L"}, ["SEC_SAVE_TO"]="LOC_BL_NAMEL" },
                        { ["SEC_EDIT"]="LOC_BL_NAMEL", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME_L"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_BL_NAMEL"},{"English","ISI - Blood Lance"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_BL_NAMEL" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_SUBTITLE"}, ["SEC_SAVE_TO"]="LOC_BL_SUB" },
                        { ["SEC_EDIT"]="LOC_BL_SUB", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_SUBTITLE"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_BL_SUB"},{"English","Auto-Tracking Phase-Beam Prototype"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_BL_SUB" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_DESCRIPTION"}, ["SEC_SAVE_TO"]="LOC_BL_DESC" },
                        {
                            ["SEC_EDIT"]="LOC_BL_DESC", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_DESCRIPTION"},
                            ["VALUE_CHANGE_TABLE"]={{"Id","ISI_BL_DESC"},{"English","The pinnacle of modern ISI weapons engineering. A reinforced phase-beam emitter, advanced cooling system, and predictive targeting array deliver a sustained crimson beam with an aggressive lock that refuses to let go."}},
                        },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_BL_DESC" },

                        -- TYPE-T
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME"}, ["SEC_SAVE_TO"]="LOC_TT_NAME" },
                        { ["SEC_EDIT"]="LOC_TT_NAME", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_TT_NAME"},{"English","ISI - BLOOD LANCE - TYPE-T"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_TT_NAME" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME_L"}, ["SEC_SAVE_TO"]="LOC_TT_NAMEL" },
                        { ["SEC_EDIT"]="LOC_TT_NAMEL", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME_L"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_TT_NAMEL"},{"English","ISI - Blood Lance - Type-T"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_TT_NAMEL" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_SUBTITLE"}, ["SEC_SAVE_TO"]="LOC_TT_SUB" },
                        { ["SEC_EDIT"]="LOC_TT_SUB", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_SUBTITLE"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_TT_SUB"},{"English","Auto-Tracking Exotic-Energy Beam"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_TT_SUB" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_DESCRIPTION"}, ["SEC_SAVE_TO"]="LOC_TT_DESC" },
                        {
                            ["SEC_EDIT"]="LOC_TT_DESC", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_DESCRIPTION"},
                            ["VALUE_CHANGE_TABLE"]={{"Id","ISI_TT_DESC"},{"English","The Blood Lance pushed beyond conventional engineering through an ISI Ruby Rubix containing the recovered Tesseract. Its exotic energy drives the emitter past known limits, unleashing a relentless crimson beam that tears through shields and hull."}},
                        },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_TT_DESC" },

                        -- TESSERACT
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME"}, ["SEC_SAVE_TO"]="LOC_TESS_NAME" },
                        { ["SEC_EDIT"]="LOC_TESS_NAME", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_TESS_NAME"},{"English","TESSERACT"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_TESS_NAME" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME_L"}, ["SEC_SAVE_TO"]="LOC_TESS_NAMEL" },
                        { ["SEC_EDIT"]="LOC_TESS_NAMEL", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME_L"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_TESS_NAMEL"},{"English","Tesseract"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_TESS_NAMEL" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_SUBTITLE"}, ["SEC_SAVE_TO"]="LOC_TESS_SUB" },
                        { ["SEC_EDIT"]="LOC_TESS_SUB", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_SUBTITLE"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_TESS_SUB"},{"English","Extra-Universal Artifact"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_TESS_SUB" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_DESCRIPTION"}, ["SEC_SAVE_TO"]="LOC_TESS_DESC" },
                        {
                            ["SEC_EDIT"]="LOC_TESS_DESC", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_DESCRIPTION"},
                            ["VALUE_CHANGE_TABLE"]={{"Id","ISI_TESS_DESC"},{"English","Pulled from wreckage that should not exist, this impossibly intact blue cube became the focus of classified ISI research at K-17 before it was stolen in a pirate raid. It radiates extraordinary energy and distorts local space."}},
                        },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_TESS_DESC" },

                        -- RUBEDO CRYSTAL
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME"}, ["SEC_SAVE_TO"]="LOC_RUBEDO_NAME" },
                        { ["SEC_EDIT"]="LOC_RUBEDO_NAME", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_RUBEDO_NAME"},{"English","RUBEDO CRYSTAL"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_RUBEDO_NAME" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME_L"}, ["SEC_SAVE_TO"]="LOC_RUBEDO_NAMEL" },
                        { ["SEC_EDIT"]="LOC_RUBEDO_NAMEL", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME_L"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_RUBEDO_NAMEL"},{"English","Rubedo Crystal"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_RUBEDO_NAMEL" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_SUBTITLE"}, ["SEC_SAVE_TO"]="LOC_RUBEDO_SUB" },
                        { ["SEC_EDIT"]="LOC_RUBEDO_SUB", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_SUBTITLE"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_RUBEDO_SUB"},{"English","Transmutative Crystalline Medium"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_RUBEDO_SUB" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_DESCRIPTION"}, ["SEC_SAVE_TO"]="LOC_RUBEDO_DESC" },
                        {
                            ["SEC_EDIT"]="LOC_RUBEDO_DESC", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_DESCRIPTION"},
                            ["VALUE_CHANGE_TABLE"]={{"Id","ISI_RUBEDO_DESC"},{"English","A crimson crystal formed in a closed conversion array from condensed carbon and chromatic metal. During synthesis, the lattice acquires an energy reserve that cannot be traced to either input.&#xA;&#xA;ISI researchers call the effect the Equivalent Exchange Principle. The exchange is occurring. They have not determined who, or what, is paying the difference."}},
                        },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_RUBEDO_DESC" },

                        -- ISI RUBY RUBIX
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME"}, ["SEC_SAVE_TO"]="LOC_RUBY_NAME" },
                        { ["SEC_EDIT"]="LOC_RUBY_NAME", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_RUBY_NAME"},{"English","ISI RUBY RUBIX"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_RUBY_NAME" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME_L"}, ["SEC_SAVE_TO"]="LOC_RUBY_NAMEL" },
                        { ["SEC_EDIT"]="LOC_RUBY_NAMEL", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME_L"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_RUBY_NAMEL"},{"English","ISI Ruby Rubix"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_RUBY_NAMEL" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_SUBTITLE"}, ["SEC_SAVE_TO"]="LOC_RUBY_SUB" },
                        { ["SEC_EDIT"]="LOC_RUBY_SUB", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_SUBTITLE"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_RUBY_SUB"},{"English","Tesseract Containment Cuboid"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_RUBY_SUB" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_DESCRIPTION"}, ["SEC_SAVE_TO"]="LOC_RUBY_DESC" },
                        {
                            ["SEC_EDIT"]="LOC_RUBY_DESC", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_DESCRIPTION"},
                            ["VALUE_CHANGE_TABLE"]={{"Id","ISI_RUBY_DESC"},{"English","ISI-built containment assembly: 6 × Rubedo Crystal + 1 × Tesseract. Isolates the Tesseract and feeds its output through the conversion lattice. Blood Lance - Type-T uses this completed ISI Ruby Rubix."}},
                        },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_RUBY_DESC" },

                        -- K-17 LOG 1
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME"}, ["SEC_SAVE_TO"]="LOC_LOGK_NAME" },
                        { ["SEC_EDIT"]="LOC_LOGK_NAME", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_LOGK_NAME"},{"English","ISI RECOVERY RECORD K-17"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_LOGK_NAME" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME_L"}, ["SEC_SAVE_TO"]="LOC_LOGK_NAMEL" },
                        { ["SEC_EDIT"]="LOC_LOGK_NAMEL", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME_L"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_LOGK_NAMEL"},{"English","ISI Recovery Record K-17"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_LOGK_NAMEL" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_SUBTITLE"}, ["SEC_SAVE_TO"]="LOC_LOGK_SUB" },
                        { ["SEC_EDIT"]="LOC_LOGK_SUB", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_SUBTITLE"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_LOGK_SUB"},{"English","Damaged Data Core"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_LOGK_SUB" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_DESCRIPTION"}, ["SEC_SAVE_TO"]="LOC_LOGK_DESC" },
                        {
                            ["SEC_EDIT"]="LOC_LOGK_DESC", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_DESCRIPTION"},
                            ["VALUE_CHANGE_TABLE"]={{"Id","ISI_LOGK_DESC"},{"English","Boundary Failure. Nine seconds of the wrong sky. Then wreckage, as if a ship had been torn apart somewhere else and thrown through.&#xA;&#xA;Recovered identifiers: S.H.I.E.L.D. / PROJECT P.E.G.A.S.U.S. / DR. ERIK SELVIG&#xA;&#xA;At the centre: a blue cube with no scratch. One file named it TESSERACT.&#xA;&#xA;Korvax: debris from another reality. ISI: the cube caused the rupture."}},
                        },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_LOGK_DESC" },

                        -- K-17 LOG 2
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME"}, ["SEC_SAVE_TO"]="LOC_LOGR_NAME" },
                        { ["SEC_EDIT"]="LOC_LOGR_NAME", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_LOGR_NAME"},{"English","PIRATE RAID RECORD"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_LOGR_NAME" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME_L"}, ["SEC_SAVE_TO"]="LOC_LOGR_NAMEL" },
                        { ["SEC_EDIT"]="LOC_LOGR_NAMEL", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME_L"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_LOGR_NAMEL"},{"English","Pirate Raid Record"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_LOGR_NAMEL" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_SUBTITLE"}, ["SEC_SAVE_TO"]="LOC_LOGR_SUB" },
                        { ["SEC_EDIT"]="LOC_LOGR_SUB", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_SUBTITLE"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_LOGR_SUB"},{"English","Intercepted Outlaw Log"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_LOGR_SUB" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_DESCRIPTION"}, ["SEC_SAVE_TO"]="LOC_LOGR_DESC" },
                        {
                            ["SEC_EDIT"]="LOC_LOGR_DESC", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_DESCRIPTION"},
                            ["VALUE_CHANGE_TABLE"]={{"Id","ISI_LOGR_DESC"},{"English","The lab was emptying. They missed BLOOD LANCE. We fired it once. After that, nothing else in the facility mattered.&#xA;&#xA;A blue cube sat behind more security than the weapons lab. No trigger. Dren wanted to leave it. The captain thought it looked expensive.&#xA;&#xA;The Lance is in the weapons bay under guard. The cube is on the command deck, holding down the charts."}},
                        },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_LOGR_DESC" },

                        -- K-17 LOG 3
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME"}, ["SEC_SAVE_TO"]="LOC_LOGE_NAME" },
                        { ["SEC_EDIT"]="LOC_LOGE_NAME", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_LOGE_NAME"},{"English","ISI EMERGENCY ARCHIVE K-17"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_LOGE_NAME" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME_L"}, ["SEC_SAVE_TO"]="LOC_LOGE_NAMEL" },
                        { ["SEC_EDIT"]="LOC_LOGE_NAMEL", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_NAME_L"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_LOGE_NAMEL"},{"English","ISI Emergency Archive K-17"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_LOGE_NAMEL" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_SUBTITLE"}, ["SEC_SAVE_TO"]="LOC_LOGE_SUB" },
                        { ["SEC_EDIT"]="LOC_LOGE_SUB", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_SUBTITLE"}, ["VALUE_CHANGE_TABLE"]={{"Id","ISI_LOGE_SUB"},{"English","Recover the Cube"}} },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_LOGE_SUB" },
                        { ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_DESCRIPTION"}, ["SEC_SAVE_TO"]="LOC_LOGE_DESC" },
                        {
                            ["SEC_EDIT"]="LOC_LOGE_DESC", ["SPECIAL_KEY_WORDS"]={"Id","SHIPLAS1_DESCRIPTION"},
                            ["VALUE_CHANGE_TABLE"]={{"Id","ISI_LOGE_DESC"},{"English","They think they stole the weapon. Footage: three cradle the prototype. One carries the cube under his arm.&#xA;&#xA;The Tesseract is a container. One still: a cube over a machine, a hole in a sky, a city underneath. One name: LOKI.&#xA;&#xA;We thought AVENGERS was a verb. The last audio is four words. I am Iron Man.&#xA;&#xA;The Lance can be rebuilt. RECOVER THE CUBE."}},
                        },
                        { ["PRECEDING_KEY_WORDS"]={"Table"}, ["SEC_ADD_NAMED"]="LOC_LOGE_DESC" },
                    },
                },

                -- =================================================================
                -- LASER AUTO-TRACK (shared Laser slot — Phase Beam included)
                -- =================================================================
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\\REALITY\\DEFAULTREALITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipWeapons","Laser"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AutoAimAngle", 25},
                                {"AutoAimExtraAngle", 70},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings","SmugglerStation","AlwaysPresentProducts"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = [[                    <Property name="AlwaysPresentProducts" value="ISI_TESSERACT" />]],
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings","SmugglerStation","MinAmountOfProductAvailable"},
                            ["REPLACE_TYPE"] = "ALLINSIDESECTION",
                            ["VALUE_CHANGE_TABLE"] = {{"IGNORE","1"}},
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings","SmugglerStation","MaxAmountOfProductAvailable"},
                            ["REPLACE_TYPE"] = "ALLINSIDESECTION",
                            ["VALUE_CHANGE_TABLE"] = {{"IGNORE","1"}},
                        },
                    },
                },
            },
        },
    },
}
