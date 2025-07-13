NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFixLOC_Wiki.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Fixes for wiki text and messages",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC1_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC1_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Разное
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PIN_RECIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАКРЕПИТЬ
                                -- PIN
                                { "Russian", "ЗАКРЕПИТЬ ИНСТРУКЦИЮ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PIN_RECIP_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Закрепите инструкции по созданию в журнале заданий
                                -- Pin crafting instructions to Mission Log
                                { "Russian", "Добавить инструкции изготовления в журнал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "PIN_RECIP_DESC_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Закрепите путевые инструкции в журнале заданий
                                -- Pin location instructions to Mission Log
                                { "Russian", "Добавить информацию о местоположении в журнал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UNPIN_RECIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Открепить схему
                                -- Unpin formula
                                { "Russian", "Открепить инструкцию" },
                            }
                        },
                        --#endregion

                        --#region Создать:
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "MISSION_PIN_TECH_NAME" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Создать: %TECH%
                        --         -- Build %TECH%
                        --         { "Russian", "Создать1: %TECH%" },
                        --     }
                        -- },
                        { -- заголовок миссии
                            ["SPECIAL_KEY_WORDS"] = { "Id", "MISSION_PIN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать: %PRODUCT%
                                -- Craft %PRODUCT%
                                { "Russian", "%PRODUCT%" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "TECH_CRAFT_NEW_TITLE" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Создать: %PRODUCT%
                        --         -- Craft %PRODUCT%
                        --         { "Russian", "Создать3: %PRODUCT%" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "TECH_BUILD_NEW_TITLE" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Создать: &lt;TITLE&gt;%TECH%&lt;&gt;
                        --         -- &lt;TITLE&gt;Build %TECH%&lt;&gt;
                        --         { "Russian", "Создать4: &lt;TITLE&gt;%TECH%&lt;&gt;" },
                        --     }
                        -- },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC4_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC4_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Установить:
                        { -- заголовок миссии + заголовок уведомления
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_INSTALL_MISS_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установить: %TECH%
                                -- Install %TECH%
                                { "Russian", "%TECH%" },
                            }
                        },
                        { -- начало описания в уведомлении
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_TECH_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Установить: &lt;TECHNOLOGY&gt;%TECH%&lt;&gt;
                                -- Install &lt;TECHNOLOGY&gt;%TECH%&lt;&gt;
                                { "Russian", "Установите: &lt;TECHNOLOGY&gt;%TECH%&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Очистить:
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_REFINE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистить: %ITEM%
                                -- Refine %ITEM%
                                { "Russian", "Рафинировать: %ITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REFINE_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистить: %ITEM%
                                -- Refine %ITEM%
                                { "Russian", "Рафинировать: %ITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GATHER_REFINE_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать или очистить: %ITEM%
                                -- Gather or refine %ITEM%
                                { "Russian", "Собрать или рафинировать: %ITEM%" },
                            }
                        },
                        --#endregion

                        --#region Отремонтировать:
                        { -- заголовок миссии
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_REPAIR_MISS_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтировать: %TECH%
                                -- Repair %TECH%
                                { "Russian", "%TECH%" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_TECH_REPAIR_TITLE" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Отремонтировать: %ITEM%
                        --         -- Repair %ITEM%
                        --         { "Russian", "Ремонт1: %ITEM%" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_TECH_REPAIR_HINT" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Отремонтировать: %TECH%
                        --         -- Repair %TECH%
                        --         { "Russian", "Ремонт2: %TECH%" },
                        --     }
                        -- },
                        --#endregion

                        --#region Создать:
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_CRAFT" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Создать: %ITEM%
                        --         -- Craft %ITEM%
                        --         { "Russian", "Создать123: %ITEM%" },
                        --     }
                        -- },
                        --#endregion

                        --#region Разное
                        { -- слишком длинное
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUY_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Купить %ITEM% в торговом терминале на космической станции.
                                -- Purchase %ITEM% from Space Station Trade Terminals
                                { "Russian", "Купить на космической станции: %ITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_REPAIR_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтировать поврежденную технологию
                                -- Repair Damaged Technology
                                { "Russian", "Отремонтировать технологию" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_BUTTON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАКРЕПИТЬ СВЕДЕНИЯ
                                -- PIN DETAILS
                                { "Russian", "ЗАКРЕПИТЬ ИНСТРУКЦИЮ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_BUTTON_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добавить схему в журнал
                                -- Add recipe instructions to the Log
                                { "Russian", "Добавить инструкции изготовления в журнал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PROD_FINAL_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать компоненты
                                -- Assemble Components
                                { "Russian", "Создать предмет из компонентов" },
                            }
                        },
                        { -- прим. есть еще UI_PIN_PROGRESS_SUB_MSG_ALT
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PROGRESS_SUB_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;%CURRENT% / %AMOUNT%&lt;&gt;&#xA;%TIP%&#xA;Чтобы получить подробные инструкции, выберите «Обнаружить вещество» в &lt;COMMODITY&gt;каталоге&lt;&gt;.
                                -- &lt;STELLAR&gt;%CURRENT% / %AMOUNT%&lt;&gt;&#xA;%TIP%&#xA;Select 'Locate Substance' in the &lt;COMMODITY&gt;Catalogue&lt;&gt; for more guidance
                                { "Russian", "(&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;%TIP%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PROD_FINAL_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря&lt;&gt;, используйте &lt;IMG&gt;PRODMENU&lt;&gt;.
                                -- Use &lt;IMG&gt;PRODMENU&lt;&gt; to craft in empty &lt;TECHNOLOGY&gt;Inventory Slots&lt;&gt;.
                                { "Russian", "Нажмите &lt;IMG&gt;PRODMENU&lt;&gt; в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря&lt;&gt;, чтобы создать предмет." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_TECH_INSTALL_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря&lt;&gt;, используйте &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;Установите технологию рядом с соответствующими компонентами, чтобы получить бонус к характеристике.
                                -- Use &lt;IMG&gt;TECHMENU&lt;&gt; to craft in empty &lt;TECHNOLOGY&gt;Inventory Slots&lt;&gt;.&#xA;Install technology next to related components for a stat bonus.
                                { "Russian", "Нажмите &lt;IMG&gt;PRODMENU&lt;&gt; в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря&lt;&gt;, чтобы создать предмет.&#xA;Установите технологию рядом с соответствующими компонентами, чтобы получить бонус к характеристикам." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_TECH_FINAL_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы осмотреть частично установленную технологию.&#xA;Добавьте собранные компоненты, чтобы завершить установку.
                                -- Use &lt;IMG&gt;TECHMENU&lt;&gt; to inspect partially-installed technology.&#xA;Insert gathered components to complete installation.
                                { "Russian", "Используйте &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы осмотреть частично установленную технологию.&#xA;Примените собранные компоненты, чтобы завершить установку." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_REPAIR_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы осмотреть поврежденную технологию.&#xA;Добавьте собранные компоненты, чтобы завершить ремонтные работы.
                                -- Use &lt;IMG&gt;TECHMENU&lt;&gt; to inspect damaged technology.&#xA;Insert gathered components to complete repair work.
                                { "Russian", "Используйте &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы осмотреть поврежденную технологию.&#xA;Примените собранные компоненты, чтобы завершить ремонтные работы." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_VENTGEM_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собрать %ITEM% рядом с гидротермальными выходами на дне моря
                                -- Gather %ITEM% from around sea vents
                                { "Russian", "Собрать под водой: %ITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_BUILD_FINAL_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Откройте меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;) и разместите готовый объект в подходящей точке.
                                -- Access the Build Menu with &lt;IMG&gt;BUILD_MENU&lt;&gt; and place in a suitable location.
                                { "Russian", "Откройте меню строительства с помощью &lt;IMG&gt;BUILD_MENU&lt;&gt; и разместите объект в подходящем месте." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_JELLY_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Дигидрогенный гель&lt;&gt; можно создать или получить из синих &lt;TECHNOLOGY&gt;кристаллов дигидрогена&lt;&gt;, которые встречаются на всех планетах. Используйте сканер (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти кристаллы.
                                -- Refine or craft &lt;TECHNOLOGY&gt;Di-hydrogen Jelly&lt;&gt; from the blue &lt;TECHNOLOGY&gt;Di-hydrogen Crystals&lt;&gt; found on all worlds. Use the Scanner (&lt;IMG&gt;SCAN&lt;&gt;) to locate crystals.
                                { "Russian", "&lt;TECHNOLOGY&gt;Дигидрогенный гель&lt;&gt; можно создать или получить из синих &lt;TECHNOLOGY&gt;кристаллов дигидрогена﻿,&lt;&gt; которые встречаются на всех планетах. Используйте сканер (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти кристаллы." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ANTIMATTER_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% производится из &lt;FUEL&gt;сжатого углерода&lt;&gt; и &lt;SPECIAL&gt;хроматического металла&lt;&gt;. Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря&lt;&gt;, используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Получить сжатый углерод можно очисткой обычного планетарного &lt;FUEL&gt;углерода&lt;&gt;. Получить &lt;STELLAR&gt;хроматический металл&lt;&gt; можно в ходе очистки материалов из крупных залежей минералов. Найти их можно с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                -- Craft %ITEM% from &lt;FUEL&gt;Condensed Carbon&lt;&gt; and &lt;SPECIAL&gt;Chromatic Metal&lt;&gt;. Use &lt;IMG&gt;PRODMENU&lt;&gt; to craft in empty &lt;TECHNOLOGY&gt;Inventory Slots&lt;&gt;.&#xA;Refine &lt;FUEL&gt;Condensed Carbon&lt;&gt; from regular, plant-based carbon. Refine &lt;STELLAR&gt;Chromatic Metal&lt;&gt; from large mineral deposits found with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;.
                                { "Russian", "%ITEM% производится из &lt;FUEL&gt;сжатого углерода&lt;&gt; и &lt;SPECIAL&gt;хроматического металла﻿.&lt;&gt; Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря﻿,&lt;&gt; используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Очистите обычный &lt;FUEL&gt;углерод﻿,&lt;&gt; чтобы получить сжатый углерод. Рафинируйте &lt;STELLAR&gt;хроматический металл&lt;&gt; из крупных залежей минералов, которые можно найти с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ALBUMENPEARL_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите %ITEM% с редких &lt;TRADEABLE&gt;разумных растений&lt;&gt;, которые иногда встречаются на &lt;TRADEABLE&gt;лесистых планетах&lt;&gt;.&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; За разумными растениями наблюдают стражи.
                                { "Russian", "Соберите %ITEM% с редких &lt;TRADEABLE&gt;разумных растений﻿,&lt;&gt; которые иногда встречаются на &lt;TRADEABLE&gt;лесистых планетах﻿.&lt;&gt;&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; За разумными растениями наблюдают стражи." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_POWERCELL_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% производится из &lt;TECHNOLOGY&gt;кобальта&lt;&gt; и &lt;EARTH&gt;ферритной пыли&lt;&gt;. Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря&lt;&gt;, используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Кобальт можно найти под землей. Найдите входы в пещеры. &lt;RED&gt;ВНИМАНИЕ!&lt;&gt; Во многих пещерах обитает опасная флора.&#xA;Припасы иногда можно найти в &lt;TECHNOLOGY&gt;тайниках с припасами&lt;&gt; на поверхности планет.
                                { "Russian", "%ITEM% производится из &lt;TECHNOLOGY&gt;кобальта&lt;&gt; и &lt;EARTH&gt;ферритной пыли﻿.&lt;&gt; Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря﻿,&lt;&gt; используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Кобальт можно найти под землей. Найдите входы в пещеры. &lt;RED&gt;ВНИМАНИЕ!&lt;&gt; Во многих пещерах обитает опасная флора.&#xA;Иногда припасы можно найти в &lt;TECHNOLOGY&gt;тайниках&lt;&gt; на поверхности планет." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_WATERPLANT_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Цитофосфаты&lt;&gt; добываются напрямую из &lt;EARTH&gt;подводных растений&lt;&gt;.&#xA;Чтобы повысить свою эффективность под водой, улучшите &lt;TECHNOLOGY&gt;аэрационную мембрану&lt;&gt; экзокостюма, пополняйте запас кислорода с помощью &lt;TRADEABLE&gt;водорослевых мешков&lt;&gt; или используйте для перемещения &lt;STELLAR&gt;подводную лодку «Наутилон»&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Цитофосфаты&lt;&gt; добываются напрямую из &lt;EARTH&gt;подводных растений﻿.&lt;&gt;&#xA;Чтобы повысить свою эффективность под водой, улучшите &lt;TECHNOLOGY&gt;аэрационную мембрану&lt;&gt; экзокостюма, пополняйте запас кислорода с помощью &lt;TRADEABLE&gt;водорослевых мешков&lt;&gt; или путешествуйте в &lt;STELLAR&gt;подводной лодке Наутилон﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_CLAMPEARL_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Живые жемчужины&lt;&gt; добываются из &lt;STELLAR&gt;панцирных устриц&lt;&gt;, обитающих на морском дне. Используйте галактическую карту, чтобы найти системы с морской жизнью.&#xA;Чтобы найти &lt;STELLAR&gt;панцирных устриц&lt;&gt;, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; во время плавания.&#xA;Чтобы лучше действовать под водой, улучшите &lt;TECHNOLOGY&gt;аэрационную мембрану&lt;&gt; экзокостюма, пополняйте запас кислорода с помощью &lt;TRADEABLE&gt;водорослевых мешков&lt;&gt; или используйте для перемещения &lt;STELLAR&gt;подводную лодку «Наутилон»&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Живые жемчужины&lt;&gt; добываются из &lt;STELLAR&gt;панцирных устриц﻿,&lt;&gt; обитающих на морском дне. Используйте галактическую карту, чтобы найти системы с морской жизнью.&#xA;Чтобы найти &lt;STELLAR&gt;панцирных устриц﻿,&lt;&gt; используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; во время плавания.&#xA;Чтобы лучше действовать под водой, улучшите &lt;TECHNOLOGY&gt;аэрационную мембрану&lt;&gt; экзокостюма, пополняйте запас кислорода с помощью &lt;TRADEABLE&gt;водорослевых мешков&lt;&gt; или путешествуйте в &lt;STELLAR&gt;подводной лодке Наутилон﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_VENTGEM_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Кристаллический сульфид&lt;&gt; можно найти около &lt;FUEL&gt;гидротермических выходов&lt;&gt; на морском дне. Используйте галактическую карту, чтобы найти системы с планетами, на которых есть океан.&#xA;Во время плавания ищите светящиеся или пузырящиеся &lt;FUEL&gt;гидротермальные выходы&lt;&gt; на морском дне.&#xA;Чтобы лучше действовать под водой, улучшите &lt;TECHNOLOGY&gt;аэрационную мембрану&lt;&gt; экзокостюма, пополняйте запас кислорода с помощью &lt;TRADEABLE&gt;водорослевых мешков&lt;&gt; или используйте для перемещения &lt;STELLAR&gt;подводную лодку «Наутилон»&lt;&gt;.
                                { "Russian", "&lt;COMMODITY&gt;Кристаллический сульфид&lt;&gt; можно найти около &lt;FUEL&gt;гидротермических выходов&lt;&gt; на морском дне. Используйте галактическую карту, чтобы найти системы с планетами, на которых есть океан.&#xA;Во время плавания ищите светящиеся или пузырящиеся &lt;FUEL&gt;гидротермальные выходы&lt;&gt; на морском дне.&#xA;Чтобы лучше действовать под водой, улучшите &lt;TECHNOLOGY&gt;аэрационную мембрану&lt;&gt; экзокостюма, пополняйте запас кислорода с помощью &lt;TRADEABLE&gt;водорослевых мешков&lt;&gt; или путешествуйте в &lt;STELLAR&gt;подводной лодке Наутилон﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_FISHCORE_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Ядра бездны&lt;&gt; встречаются рядом с &lt;COMMODITY&gt;соблазнительными экземплярами растений&lt;&gt; на морском дне. Используйте галактическую карту, чтобы найти системы с планетами, на которых есть океан.&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Ядра бездны привлекают биологические аномалии.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; во время плавания, чтобы найти &lt;STELLAR&gt;соблазнительные экземпляры&lt;&gt;.&#xA;Чтобы повысить свою эффективность под водой, улучшите &lt;TECHNOLOGY&gt;аэрационную мембрану&lt;&gt; экзокостюма, пополняйте запас кислорода с помощью &lt;TRADEABLE&gt;водорослевых мешков&lt;&gt; или используйте для перемещения &lt;STELLAR&gt;подводную лодку «Наутилон»&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Ядра бездны&lt;&gt; встречаются рядом с &lt;COMMODITY&gt;соблазнительными экземплярами растений&lt;&gt; на морском дне. Используйте галактическую карту, чтобы найти системы с планетами, на которых есть океан.&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Ядра бездны привлекают биологические аномалии.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; во время плавания, чтобы найти &lt;STELLAR&gt;соблазнительные экземпляры﻿.&lt;&gt;&#xA;Чтобы повысить свою эффективность под водой, улучшите &lt;TECHNOLOGY&gt;аэрационную мембрану&lt;&gt; экзокостюма, пополняйте запас кислорода с помощью &lt;TRADEABLE&gt;водорослевых мешков&lt;&gt; или путешествуйте в &lt;STELLAR&gt;подводной лодке Наутилон﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_CASING_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;COMMODITY&gt;металлическую обшивку&lt;&gt; из &lt;EARTH&gt;ферритной пыли&lt;&gt;. Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря&lt;&gt;, используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Добывайте &lt;EARTH&gt;ферритную пыль&lt;&gt; из небольших камней с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;. Нажмите &lt;IMG&gt;ATTACK&lt;&gt;, чтобы выстрелить лазером.
                                { "Russian", "Создайте &lt;COMMODITY&gt;металлическую обшивку&lt;&gt; из &lt;EARTH&gt;ферритной пыли﻿.&lt;&gt; Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря﻿,&lt;&gt; используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Добывайте &lt;EARTH&gt;ферритную пыль&lt;&gt; из небольших камней с помощью &lt;TECHNOLOGY&gt;расщепителя﻿.&lt;&gt; Нажмите &lt;IMG&gt;ATTACK&lt;&gt;, чтобы выстрелить лазером." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_NANOTUBES_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;COMMODITY&gt;углеродные нанотрубки&lt;&gt; из &lt;FUEL&gt;углерода&lt;&gt;. Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря&lt;&gt;, используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Добудьте &lt;FUEL&gt;углерод&lt;&gt; из растений и деревьев с &lt;TECHNOLOGY&gt;помощью расщепителя&lt;&gt;. Нажмите &lt;IMG&gt;ATTACK&lt;&gt;, чтобы выстрелить из лазера.
                                { "Russian", "Создайте &lt;COMMODITY&gt;углеродные нанотрубки&lt;&gt; из &lt;FUEL&gt;углерода﻿.&lt;&gt; Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря﻿,&lt;&gt; используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Добудьте &lt;FUEL&gt;углерод&lt;&gt; из растений и деревьев с &lt;TECHNOLOGY&gt;помощью расщепителя﻿.&lt;&gt; Нажмите &lt;IMG&gt;ATTACK&lt;&gt;, чтобы выстрелить из лазера." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_CARBON_SEAL_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;COMMODITY&gt;герметик&lt;&gt; из &lt;FUEL&gt;сжатого углерода&lt;&gt;. Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря&lt;&gt;, используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Получить сжатый углерод можно из &lt;FUEL&gt;углерода&lt;&gt;. Сжатый углерод иногда встречается в виде кристаллов на поверхности планет.
                                { "Russian", "Создайте &lt;COMMODITY&gt;герметик&lt;&gt; из &lt;FUEL&gt;сжатого углерода﻿.&lt;&gt; Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря﻿,&lt;&gt; используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Получить сжатый углерод можно из &lt;FUEL&gt;углерода﻿.&lt;&gt; Сжатый углерод иногда встречается в виде кристаллов на поверхности планет." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_MICROCHIP_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте %ITEM% или купите этот предмет в &lt;TECHNOLOGY&gt;торговом терминале&lt;&gt;. Ищите торговые терминалы на планетарных аванпостах и на космических станциях.
                                { "Russian", "Создайте %ITEM% или купите этот предмет в &lt;TECHNOLOGY&gt;торговом терминале﻿.&lt;&gt; Ищите торговые терминалы на планетарных аванпостах и на космических станциях." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "WIKI_MISSION_TRADE5_OSD" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружена доска заданий
                                -- Mission Board Located
                                { "Russian", "НАЙДЕНА ДОСКА ЗАДАНИЙ" },
                            }
                        },
                        --#endregion

                        --#region UI_PIN_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_MSG_SURVEY" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;%CURRENT% / %AMOUNT%&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;, чтобы обнаружить цель (%ITEM%).
                                -- &lt;STELLAR&gt;%CURRENT% / %AMOUNT%&lt;&gt;&#xA;Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to locate %ITEM%
                                { "Russian", "(&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Найдите %ITEM%, используя &lt;TECHNOLOGY&gt;разведку цели&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_MSG_SURVEY_SWAP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;%CURRENT% / %AMOUNT%&lt;&gt;&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                -- &lt;STELLAR&gt;%CURRENT% / %AMOUNT%&lt;&gt;&#xA;Activate a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
                                { "Russian", "(&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Активируйте &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; с помощью &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_MSG_SURVEY_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;%CURRENT% / %AMOUNT%&lt;&gt;&#xA;Активируйте &lt;STELLAR&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы найти цель (%ITEM%).
                                -- &lt;STELLAR&gt;%CURRENT% / %AMOUNT%&lt;&gt;&#xA;Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to locate %ITEM%
                                { "Russian", "(&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Найдите %ITEM%, используя &lt;TECHNOLOGY&gt;разведку цели&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_MSG_FORMAT" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- %OBJ%&#xA;%PROGRESS%
                        --         { "Russian", "%OBJ%&#xA;%PROGRESS%" },
                        --     }
                        -- },
                        { -- см. UI_PIN_PROGRESS_SUB_MSG - в нем описывается весь %PROGRESS%
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_MSG_FORMAT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %OBJ%: %PROGRESS%
                                -- %OBJ%: %PROGRESS%
                                { "Russian", "%OBJ% %PROGRESS%" },
                            }
                        },
                        --#endregion

                        --#region UI_PIN_.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_WATERPLANT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Цитофосфаты&lt;&gt; добываются из &lt;EARTH&gt;подводных растений&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Цитофосфаты&lt;&gt; добываются из &lt;EARTH&gt;подводных растений&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PROD_FINAL_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря&lt;&gt;, используйте &lt;IMG&gt;PRODMENU&lt;&gt;.
                                -- Use &lt;IMG&gt;PRODMENU&lt;&gt; to craft in empty &lt;TECHNOLOGY&gt;Inventory Slots&lt;&gt;
                                { "Russian", "Нажмите &lt;IMG&gt;PRODMENU&lt;&gt; в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря&lt;&gt;, чтобы создать предмет" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_BUILD_FINAL_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Откройте меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;) и разместите готовый объект в подходящей точке.
                                -- Access the Build Menu with &lt;IMG&gt;BUILD_MENU&lt;&gt; and place in a suitable location
                                { "Russian", "Разместите объект из меню строительства (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_TECH_FINAL_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;), чтобы завершить установку.&#xA;Используйте &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы осмотреть частично установленную технологию.&#xA;Добавьте собранные компоненты, чтобы завершить установку.
                                -- Open the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;) to complete installation&#xA;Use &lt;IMG&gt;TECHMENU&lt;&gt; to inspect partially-installed technology&#xA;Insert gathered components to complete installation
                                { "Russian", "Завершите установку, открыв инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Используйте &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы осмотреть технологию&#xA;Примените собранные компоненты для завершения установки" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_TECH_REPAIR_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;), чтобы завершить ремонт.&#xA;Используйте &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы осмотреть поврежденную технологию.&#xA;Добавьте собранные компоненты, чтобы завершить ремонт.
                                { "Russian", "Завершите ремонт, открыв инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Используйте &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы осмотреть технологию&#xA;Примените собранные компоненты для завершения ремонта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_TECH_INSTALL_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;), используйте &lt;IMG&gt;TECHMENU&lt;&gt;.&#xA;Установите его рядом с соответствующими компонентами, чтобы получить бонус к характеристике.
                                -- Use &lt;IMG&gt;TECHMENU&lt;&gt; to craft in empty &lt;TECHNOLOGY&gt;Inventory Slots&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Install next to related components for a stat bonus
                                { "Russian", "Нажмите &lt;IMG&gt;PRODMENU&lt;&gt; в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря&lt;&gt; (&lt;IMG&gt;INVENTORY&lt;&gt;), чтобы создать предмет&#xA;Установите его рядом с соответствующими компонентами,&#xA;чтобы получить бонус к характеристикам" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PROGRESS_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Более подробные указания приведены в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;Посмотрите &lt;TECHNOLOGY&gt;шаги создания&lt;&gt; или закрепите подкомпоненты, чтобы получить подробную информацию.
                                { "Russian", "Более подробные указания приведены в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Изучите &lt;TECHNOLOGY&gt;шаги создания&lt;&gt; или закрепите инструкцию,&#xA;чтобы узнать больше" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_SUB_TIP_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В каталоге перечислены все увиденные объекты и даны советы по нахождению элементов.
                                -- The Catalogue records all seen items, and offers guidance on how to locate substances
                                { "Russian", "В каталоге перечислены все увиденные объекты&#xA;и даны советы по нахождению субстанций" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_REFINER_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместите очиститель, воспользовавшись меню созидания (&lt;IMG&gt;BUILD_MENU&lt;&gt;).
                                { "Russian", "Разместите очиститель из меню строительства (&lt;IMG&gt;BUILD_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_FUEL1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;FUEL&gt;углерод&lt;&gt; из растений с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;).
                                { "Russian", "Добудьте &lt;FUEL&gt;углерод&lt;&gt; из растений с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_FUEL2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите кристаллы &lt;FUEL&gt;сжатого углерода&lt;&gt; с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;).&#xA;Сжатый углерод можно получить, обработав углерод в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;.
                                { "Russian", "Найдите кристаллы &lt;FUEL&gt;сжатого углерода&lt;&gt; с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Сжатый углерод можно получить, обработав углерод в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_OXYGEN_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Кислород&lt;&gt; можно добыть из красных растений на любой планете.&#xA;Найдите поблизости насыщенные кислородом растения, используя &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;).
                                { "Russian", "&lt;FUEL&gt;Кислород&lt;&gt; можно добыть из красных растений на любой планете&#xA;Найдите насыщенные кислородом растения, используя &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_LAUNCHSUB_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите кристаллы &lt;TECHNOLOGY&gt;дигидрогена&lt;&gt; с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;).&#xA;Соберите кристаллы с помощью расщепителя (&lt;IMG&gt;ATTACK&lt;&gt;).
                                { "Russian", "Найдите кристаллы &lt;TECHNOLOGY&gt;дигидрогена&lt;&gt; с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Соберите кристаллы с помощью расщепителя (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_LAUNCHSUB2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переработайте &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; и &lt;TECHNOLOGY&gt;тритий&lt;&gt; или &lt;EARTH&gt;силикатный порошок&lt;&gt; в &lt;TECHNOLOGY&gt;очистителе с несколькими камерами загрузки сырья&lt;&gt;.&#xA;Добыть тритий можно на &lt;STELLAR&gt;астероидах&lt;&gt;, а силикатный порошок — &lt;EARTH&gt;из ландшафта&lt;&gt;.
                                -- Process &lt;TECHNOLOGY&gt;Di-hydrogen&lt;&gt; with &lt;TECHNOLOGY&gt;Tritium&lt;&gt; or &lt;EARTH&gt;Silicate Powder&lt;&gt; in a &lt;TECHNOLOGY&gt;multi-input refiner&lt;&gt;&#xA;Obtain tritium from &lt;STELLAR&gt;asteroids&lt;&gt;, or silicate powder from &lt;EARTH&gt;terrain extraction&lt;&gt;
                                { "Russian", "Совместите &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; с &lt;TECHNOLOGY&gt;тритием&lt;&gt; или &lt;EARTH&gt;силикатным порошком&lt;&gt; в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;&#xA;Тритий можно добыть из &lt;STELLAR&gt;астероидов&lt;&gt;, а силикатный порошок — &lt;EARTH&gt;из ландшафта&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ROCKETSUB_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Тритий&lt;&gt; можно в изобилии найти в полях астероидов.&#xA;Проведите сканирование (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;TECHNOLOGY&gt;богатые тритием астероиды&lt;&gt;.
                                -- &lt;VAL_ON&gt;Tritium&lt;&gt; is abundant in asteroid fields&#xA;In space, scan (&lt;IMG&gt;SCAN&lt;&gt;) to search for &lt;TECHNOLOGY&gt;tritium-rich asteroids&lt;&gt;
                                { "Russian", "&lt;VAL_ON&gt;Тритий&lt;&gt; можно найти в полях астероидов&#xA;Находите &lt;TECHNOLOGY&gt;богатые тритием астероиды&lt;&gt; с помощью сканирования (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_SAND1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывайте из почвы любой планеты с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                -- Extract from the earth of any planet with a &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;
                                { "Russian", "Добывайте силикатный порошок из почвы &lt;TECHNOLOGY&gt;ландшафтным манипулятором&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_LAND1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывайте &lt;EARTH&gt;ферритную пыль&lt;&gt; из небольших камней с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;).
                                -- Harvest &lt;EARTH&gt;Ferrite Dust&lt;&gt; from small rocks using the &lt;TECHNOLOGY&gt;Mining Laser&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;)
                                { "Russian", "Добывайте &lt;EARTH&gt;ферритную пыль&lt;&gt; из небольших камней с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_LAND2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;EARTH&gt;чистый феррит&lt;&gt;, обработав ферритную пыль в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;.&#xA;Добудьте ферритную пыль из небольших камней с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;).
                                { "Russian", "Создайте &lt;EARTH&gt;чистый феррит&lt;&gt;, обработав ферритную пыль в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;&#xA;Добудьте ферритную пыль из небольших камней с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_LAND3_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;EARTH&gt;намагниченный феррит&lt;&gt;, обработав чистый феррит в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;.&#xA;Добудьте ферритную пыль из небольших камней с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;).
                                { "Russian", "Создайте &lt;EARTH&gt;намагниченный феррит&lt;&gt;, обработав чистый феррит в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;&#xA;Добудьте ферритную пыль из небольших камней с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt; (&lt;IMG&gt;ATTACK&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_CATALYST1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;CATALYST&gt;Натрий&lt;&gt; можно добыть из желтых растений на любой планете.&#xA;Найдите поблизости насыщенные натрием растения, используя &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;).
                                { "Russian", "&lt;CATALYST&gt;Натрий&lt;&gt; можно добыть из желтых растений на любой планете&#xA;Найдите насыщенные натрием растения, используя &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_CATALYST2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите кристаллы &lt;CATALYST&gt;нитрата натрия&lt;&gt; с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;).&#xA;Нитрат натрия можно получить, если обработать натрий в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;.
                                { "Russian", "Найдите кристаллы &lt;CATALYST&gt;нитрата натрия&lt;&gt; с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Нитрат натрия можно получить, обработав натрий в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_CAVE1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Кобальт&lt;&gt; добывается напрямую из &lt;EARTH&gt;подземных скальных отложений&lt;&gt;.&#xA;Ищите входы в пещеры.
                                -- &lt;TECHNOLOGY&gt;Cobalt&lt;&gt; is readily extracted from &lt;EARTH&gt;subterranean rock deposits&lt;&gt;&#xA;Search the environment for cave entrances
                                { "Russian", "&lt;TECHNOLOGY&gt;Кобальт&lt;&gt; добывается напрямую из &lt;EARTH&gt;подземных скальных отложений&lt;&gt;&#xA;Ищите входы в пещеры" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_CAVE2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Ионизированный кобальт&lt;&gt; производится из кобальта в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;.&#xA;Найдите кобальт под землей в природных пещерах.
                                { "Russian", "&lt;TECHNOLOGY&gt;Ионизированный кобальт&lt;&gt; производится из кобальта в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;&#xA;Найдите кобальт под землей в природных пещерах" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_WATER1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Извлеките &lt;TRADEABLE&gt;соль&lt;&gt; из &lt;EARTH&gt;подводных каменных отложений&lt;&gt;.
                                { "Russian", "Извлеките &lt;TRADEABLE&gt;соль&lt;&gt; из &lt;EARTH&gt;подводных каменных отложений&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_WATER2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Хлор&lt;&gt; производится в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из соли.&#xA;Извлеките &lt;TRADEABLE&gt;соль&lt;&gt; из &lt;EARTH&gt;подводных каменных отложений&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Хлор&lt;&gt; производится в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из соли&#xA;Извлеките &lt;TRADEABLE&gt;соль&lt;&gt; из &lt;EARTH&gt;подводных каменных отложений&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_YELLOW2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Медь&lt;&gt; добывается из крупных месторождений с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Найдите залежи меди с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Медь&lt;&gt; добывается из крупных месторождений&#xA;с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;&#xA;Находите залежи меди с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_RED2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Кадмий&lt;&gt; добывается из крупных месторождений с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Найдите залежи кадмия с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; на планетах, вращающихся вокруг &lt;FUEL&gt;красных звезд&lt;&gt;.
                                { "Russian", "Добывайте &lt;STELLAR&gt;кадмий&lt;&gt; из месторождений на планетах,&#xA;вращающихся вокруг &lt;FUEL&gt;красных звезд&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_GREEN2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Эмерил&lt;&gt; добывается из крупных месторождений с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Найдите залежи эмерила с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; на планетах, вращающихся вокруг &lt;TRADEABLE&gt;зеленых звезд&lt;&gt;.
                                { "Russian", "Добывайте &lt;STELLAR&gt;эмерил&lt;&gt; из месторождений на планетах,&#xA;вращающихся вокруг &lt;TRADEABLE&gt;зелёных звёзд&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_BLUE2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Индий&lt;&gt; добывается из крупных месторождений с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Найдите залежи индия с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; на планетах, вращающихся вокруг &lt;TECHNOLOGY&gt;синих звезд&lt;&gt;.
                                { "Russian", "Добывайте &lt;STELLAR&gt;индий&lt;&gt; из месторождений на планетах,&#xA;вращающихся вокруг &lt;TECHNOLOGY&gt;синих звёзд&lt;&gt;" },
                            }
                        },
                        -- первая строчка в русск. 74 буквы (!) - разраб идиот, думает, что если блять в англ. влезло, то и на др. языках влезет
                        -- еще добавил цветастные выражения "stellar metals" бла-бла-бла
                        -- как будто в миллипиздрический интерфейс это влезет!
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_STELLAR2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Хроматический металл&lt;&gt; создается в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из &lt;STELLAR&gt;звездных металлов&lt;&gt;: &lt;COMMODITY&gt;меди&lt;&gt;, &lt;FUEL&gt;кадмия&lt;&gt;, &lt;TRADEABLE&gt;эмерила&lt;&gt; и &lt;TECHNOLOGY&gt;индия&lt;&gt;.&#xA;Найдите залежи металлов на поверхности планет с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                -- &lt;SPECIAL&gt;Chromatic Metal&lt;&gt; is created in a &lt;TECHNOLOGY&gt;Refiner&lt;&gt; from &lt;STELLAR&gt;stellar metals&lt;&gt;: &lt;COMMODITY&gt;Copper&lt;&gt;, &lt;FUEL&gt;Cadmium&lt;&gt;, &lt;TRADEABLE&gt;Emeril&lt;&gt; or &lt;TECHNOLOGY&gt;Indium&lt;&gt;&#xA;Find metal deposits on planets using the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;
                                { "Russian", "&lt;SPECIAL&gt;Хроматический металл&lt;&gt; создается в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;&#xA;из &lt;COMMODITY&gt;меди&lt;&gt;, &lt;FUEL&gt;кадмия&lt;&gt;, &lt;TRADEABLE&gt;эмерила&lt;&gt; и &lt;TECHNOLOGY&gt;индия&lt;&gt;" },
                            }
                        },
                        -- и тут переводчик стал писателем, блять, а че ж ты, сука, точки везде расставляешь когда, блять, разраб их специально не ставит?
                        -- или переводчик считает, что разраб идиот и не знает правил пунктуации??? ты че бля самый умный что ли на Земле, а, бля?!
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_TECHFRAG_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Скопления нанитов&lt;&gt; — таинственное вещество с большим потенциалом. Скопления встречаются там, где ослабевают границы вселенной.&#xA;Обыскивайте &lt;VAL_ON&gt;заброшенные здания&lt;&gt; и другие интересные места.
                                -- A strange and potent substance, &lt;TECHNOLOGY&gt;nanite clusters&lt;&gt; are found where the boundaries of the universe weaken&#xA;Seek &lt;VAL_ON&gt;abandoned buildings&lt;&gt; and other sites of interest
                                { "Russian", "&lt;TECHNOLOGY&gt;Скопления нанитов&lt;&gt; можно найти там, где ослабевают границы вселенной&#xA;Обыскивайте &lt;VAL_ON&gt;заброшенные здания&lt;&gt; и другие интересные места" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_LUSH1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Парафиний&lt;&gt; в первую очередь нужно искать на планетах с &lt;TRADEABLE&gt;тропическим климатом&lt;&gt;.&#xA;Встречается преимущественно в виде крупных месторождений, которые обнаруживаются с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                -- &lt;EARTH&gt;Paraffinium&lt;&gt; is found primarily on worlds with a &lt;TRADEABLE&gt;tropical environment&lt;&gt;&#xA;Typically found in large deposits and located with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;
                                { "Russian", "&lt;EARTH&gt;Парафиний&lt;&gt; нужно искать на &lt;TRADEABLE&gt;тропических&lt;&gt; планетах&#xA;в виде крупных месторождений" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_DUSTY1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Пирит&lt;&gt; в первую очередь нужно искать на планетах с &lt;FUEL&gt;пустынным климатом&lt;&gt;.&#xA;Встречается преимущественно в виде крупных месторождений, которые обнаруживаются с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                -- &lt;EARTH&gt;Pyrite&lt;&gt; is found primarily on worlds with a &lt;FUEL&gt;desert environment&lt;&gt;&#xA;Typically found in large deposits and located with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;
                                { "Russian", "&lt;EARTH&gt;Пирит&lt;&gt; нужно искать на &lt;FUEL&gt;пустынных&lt;&gt; планетах&#xA;в виде крупных месторождений" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_TOXIC1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Аммиак&lt;&gt; в первую очередь нужно искать на планетах с &lt;TRADEABLE&gt;токсичной средой&lt;&gt;.&#xA;Встречается преимущественно в виде крупных месторождений, которые обнаруживаются с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                -- &lt;EARTH&gt;Ammonia&lt;&gt; is found primarily on worlds with a &lt;TRADEABLE&gt;toxic environment&lt;&gt;&#xA;Typically found in large deposits and located with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;
                                { "Russian", "&lt;EARTH&gt;Аммиак&lt;&gt; нужно искать на &lt;TRADEABLE&gt;токсичных&lt;&gt; планетах&#xA;в виде крупных месторождений" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_RADIO1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Уран&lt;&gt; в первую очередь нужно искать на планетах с &lt;COMMODITY&gt;радиоактивной средой&lt;&gt;.&#xA;Встречается преимущественно в виде крупных месторождений, которые обнаруживаются с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "&lt;EARTH&gt;Уран&lt;&gt; нужно искать на &lt;COMMODITY&gt;радиоактивных&lt;&gt; планетах&#xA;в виде крупных месторождений" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_COLD1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Диоксит&lt;&gt; в первую очередь нужно искать на планетах с &lt;TECHNOLOGY&gt;низкотемпературной средой&lt;&gt;.&#xA;Встречается преимущественно в виде крупных месторождений, которые обнаруживаются с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "&lt;EARTH&gt;Диоксит&lt;&gt; нужно искать на &lt;TECHNOLOGY&gt;холодных&lt;&gt; планетах&#xA;в виде крупных месторождений" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_HOT1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Фосфор&lt;&gt; в первую очередь нужно искать на планетах с &lt;FUEL&gt;высокотемпературной средой&lt;&gt;.&#xA;Встречается преимущественно в виде крупных месторождений, которые обнаруживаются с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "&lt;EARTH&gt;Фосфор&lt;&gt; нужно искать на &lt;FUEL&gt;горячих&lt;&gt; планетах&#xA;в виде крупных месторождений" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_CREATURE1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;SPECIAL&gt;мордит&lt;&gt; из трупов планетарных животных. Добыча подразумевает наличие мертвого организма.&#xA;Выращивайте мордит на &lt;COMMODITY&gt;базе&lt;&gt; с помощью &lt;TRADEABLE&gt;агронома&lt;&gt;.
                                -- Harvest &lt;SPECIAL&gt;Mordite&lt;&gt; from the corpses of planetary fauna. Extraction involves the death of the organism.&#xA;Grow mordite within a &lt;COMMODITY&gt;base&lt;&gt; with the aid of an &lt;TRADEABLE&gt;Agricultural Specialist&lt;&gt;
                                { "Russian", "&lt;SPECIAL&gt;Мордит&lt;&gt; добывается при убийстве животных&#xA;&lt;TRADEABLE&gt;Агроном&lt;&gt; подскажет как выращивать мордит на &lt;COMMODITY&gt;базе&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ROBOT1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Пугний&lt;&gt; — темное жидкое стекло, добываемое из останков &lt;SPECIAL&gt;стражей&lt;&gt;.&#xA;Вступайте в бой со стражами, чтобы затем извлечь пугний из их оболочек.
                                -- A dark, liquid glass, &lt;SPECIAL&gt;Pugneum&lt;&gt; is extracted from the remains of &lt;SPECIAL&gt;Sentinels&lt;&gt;.&#xA;Engage Sentinel forces in combat to release Pugneum from their shells.
                                { "Russian", "&lt;SPECIAL&gt;Пугний&lt;&gt; — темное жидкое стекло, добываемое из останков &lt;SPECIAL&gt;стражей&lt;&gt;&#xA;Вступайте в бой со стражами, чтобы извлечь пугний из их оболочек" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ASTEROID1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывайте серебро из &lt;COMMODITY&gt;астероидов&lt;&gt;, пилотируя звездолет (&lt;IMG&gt;SHIPFIRE&lt;&gt;).&#xA;Серебро можно в избытке найти в полях астероидов.
                                -- Mine silver from &lt;COMMODITY&gt;asteroids&lt;&gt; while piloting the starship (&lt;IMG&gt;SHIPFIRE&lt;&gt;)&#xA;Silver is abundant in most asteroid fields
                                { "Russian", "Добывайте серебро из &lt;COMMODITY&gt;астероидов&lt;&gt;, пилотируя звездолёт (&lt;IMG&gt;SHIPFIRE&lt;&gt;)&#xA;Серебро можно в избытке найти в полях астероидов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ASTEROID2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывайте золото из &lt;COMMODITY&gt;астероидов&lt;&gt;, пилотируя звездолет (&lt;IMG&gt;SHIPFIRE&lt;&gt;).&#xA;Золото иногда встречается в полях астероидов.
                                { "Russian", "Добывайте золото из &lt;COMMODITY&gt;астероидов&lt;&gt;, пилотируя звездолёт (&lt;IMG&gt;SHIPFIRE&lt;&gt;)&#xA;Золото иногда встречается в полях астероидов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ASTEROID3_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывайте платину из &lt;COMMODITY&gt;астероидов&lt;&gt;, пилотируя звездолет (&lt;IMG&gt;SHIPFIRE&lt;&gt;).&#xA;Платина изредка встречается в полях астероидов.
                                { "Russian", "Добывайте платину из &lt;COMMODITY&gt;астероидов&lt;&gt;, пилотируя звездолёт (&lt;IMG&gt;SHIPFIRE&lt;&gt;)&#xA;Платина изредка встречается в полях астероидов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_GAS1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместите &lt;TECHNOLOGY&gt;атмосферный комбайн&lt;&gt; на &lt;FUEL&gt;высокотемпературных&lt;&gt; или &lt;SPECIAL&gt;пустынных&lt;&gt; планетах.
                                -- Deploy an &lt;TECHNOLOGY&gt;Atmosphere Harvester&lt;&gt; on &lt;FUEL&gt;scorched&lt;&gt; or &lt;SPECIAL&gt;barren&lt;&gt; worlds
                                { "Russian", "Разместите &lt;TECHNOLOGY&gt;атмосферный комбайн&lt;&gt; на &lt;FUEL&gt;высокотемпературных&lt;&gt; или &lt;SPECIAL&gt;пустынных&lt;&gt; планетах" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_GAS2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместите &lt;TECHNOLOGY&gt;атмосферный комбайн&lt;&gt; на &lt;COMMODITY&gt;радиоактивных&lt;&gt; или &lt;TECHNOLOGY&gt;низкотемпературных&lt;&gt; планетах.
                                { "Russian", "Разместите &lt;TECHNOLOGY&gt;атмосферный комбайн&lt;&gt; на &lt;COMMODITY&gt;радиоактивных&lt;&gt; или &lt;TECHNOLOGY&gt;низкотемпературных&lt;&gt; планетах" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_GAS3_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместите &lt;TECHNOLOGY&gt;атмосферный комбайн&lt;&gt; на &lt;TRADEABLE&gt;лесистых&lt;&gt; или &lt;TRADEABLE&gt;токсичных&lt;&gt; планетах.
                                { "Russian", "Разместите &lt;TECHNOLOGY&gt;атмосферный комбайн&lt;&gt; на &lt;TRADEABLE&gt;лесистых&lt;&gt; или &lt;TRADEABLE&gt;токсичных&lt;&gt; планетах" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_EX_YELLOW_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активированная медь добывается из крупных месторождений на планетах с &lt;FUEL&gt;экстремальными погодными условиями&lt;&gt;, вращающихся вокруг &lt;COMMODITY&gt;желтых&lt;&gt; звезд&#xA;Найдите активированные залежи с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; и добудьте ресурс с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                -- Activated Copper is mined from large deposits on &lt;FUEL&gt;extreme weather&lt;&gt; worlds that orbit &lt;COMMODITY&gt;yellow&lt;&gt; stars&#xA;Find activated deposits with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; and extract with the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;
                                { "Russian", "Активированная медь добывается на планетах с &lt;FUEL&gt;экстремальными погодными условиями&lt;&gt;, вращающихся вокруг &lt;COMMODITY&gt;желтых&lt;&gt; звезд&#xA;Находите залежи с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; и добывайте с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_EX_RED_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активированный кадмий добывается из крупных месторождений на планетах с &lt;FUEL&gt;экстремальными погодными условиями&lt;&gt;, вращающихся вокруг &lt;FUEL&gt;красных&lt;&gt; звезд&#xA;Найдите активированные залежи с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; и добудьте ресурс с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                { "Russian", "Активированный кадмий добывается на планетах с &lt;FUEL&gt;экстремальными погодными условиями&lt;&gt;, вращающихся вокруг &lt;FUEL&gt;красных&lt;&gt; звезд&#xA;Находите залежи с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; и добывайте с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_EX_GREEN_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активированный эмерил добывается из крупных месторождений на планетах с &lt;FUEL&gt;экстремальными погодными условиями&lt;&gt;, вращающихся вокруг &lt;TRADEABLE&gt;зеленых&lt;&gt; звезд&#xA;Найдите активированные залежи с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; и добудьте ресурс с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                { "Russian", "Активированный эмерил добывается на планетах с &lt;FUEL&gt;экстремальными погодными условиями&lt;&gt;, вращающихся вокруг &lt;TRADEABLE&gt;зеленых&lt;&gt; звезд&#xA;Находите залежи с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; и добывайте с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_EX_BLUE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Активированный индий добывается из крупных месторождений на планетах с &lt;FUEL&gt;экстремальными погодными условиями&lt;&gt;, вращающихся вокруг &lt;TECHNOLOGY&gt;синих&lt;&gt; звезд&#xA;Найдите активированные залежи с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; и добудьте ресурс с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                { "Russian", "Активированный индий добывается на планетах с &lt;FUEL&gt;экстремальными погодными условиями&lt;&gt;, вращающихся вокруг &lt;TECHNOLOGY&gt;синих&lt;&gt; звезд&#xA;Находите активированные залежи с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; и добывайте с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PLANT_TOXIC_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывается из спороносного слоя &lt;TRADEABLE&gt;скоплений грибов&lt;&gt;, которые процветают в &lt;TRADEABLE&gt;токсичной среде&lt;&gt;.&#xA;Это растение можно выращивать на &lt;COMMODITY&gt;базе&lt;&gt; с помощью &lt;TRADEABLE&gt;агронома&lt;&gt;.
                                -- Harvest from the gills of &lt;TRADEABLE&gt;Fungal Clusters&lt;&gt;, which grows wild in a &lt;TRADEABLE&gt;toxic climate&lt;&gt;&#xA;This plant can be farmed within a &lt;COMMODITY&gt;base&lt;&gt; with the aid of an &lt;TRADEABLE&gt;Agricultural Specialist&lt;&gt;
                                { "Russian", "Добывается из &lt;TRADEABLE&gt;скоплений грибов&lt;&gt;, которые растут в &lt;TRADEABLE&gt;токсичной среде&lt;&gt;&#xA;&lt;TRADEABLE&gt;Агроном&lt;&gt; подскажет как выращивать растение на &lt;COMMODITY&gt;базе&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PLANT_SNOW_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывается из листьев &lt;TRADEABLE&gt;плюхеи&lt;&gt;, которая процветает в &lt;TECHNOLOGY&gt;холодном климате&lt;&gt;.&#xA;Это растение можно выращивать на &lt;COMMODITY&gt;базе&lt;&gt; с помощью &lt;TRADEABLE&gt;агронома&lt;&gt;.
                                { "Russian", "Добывается из листьев &lt;TRADEABLE&gt;плюхеи&lt;&gt;, которая растёт в &lt;TECHNOLOGY&gt;холодном климате&lt;&gt;&#xA;&lt;TRADEABLE&gt;Агроном&lt;&gt; подскажет как выращивать растение на &lt;COMMODITY&gt;базе&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PLANT_RADIO_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывается из корней &lt;TRADEABLE&gt;гамма-травы&lt;&gt;, которая процветает в &lt;COMMODITY&gt;радиоактивной среде&lt;&gt;.&#xA;Это растение можно выращивать на &lt;COMMODITY&gt;базе&lt;&gt; с помощью &lt;TRADEABLE&gt;агронома&lt;&gt;.
                                { "Russian", "Добывается из корней &lt;TRADEABLE&gt;гамма-травы&lt;&gt;, которая растёт в &lt;COMMODITY&gt;радиоактивной среде&lt;&gt;&#xA;&lt;TRADEABLE&gt;Агроном&lt;&gt; подскажет как выращивать растение на &lt;COMMODITY&gt;базе&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PLANT_DUST_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывается из мякоти &lt;TRADEABLE&gt;эхинокактуса&lt;&gt;, который процветает в &lt;STELLAR&gt;пустынном климате&lt;&gt;.&#xA;Это растение можно выращивать на &lt;COMMODITY&gt;базе&lt;&gt; с помощью &lt;TRADEABLE&gt;агронома&lt;&gt;.
                                { "Russian", "Добывается из мякоти &lt;TRADEABLE&gt;эхинокактуса&lt;&gt;, который растёт в &lt;STELLAR&gt;пустынном климате&lt;&gt;&#xA;&lt;TRADEABLE&gt;Агроном&lt;&gt; подскажет как выращивать растение на &lt;COMMODITY&gt;базе&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PLANT_HOT_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывается из коры &lt;TRADEABLE&gt;солнечного вьюна&lt;&gt;, который процветает в &lt;FUEL&gt;высокотемпературной среде&lt;&gt;.&#xA;Это растение можно выращивать на &lt;COMMODITY&gt;базе&lt;&gt; с помощью &lt;TRADEABLE&gt;агронома&lt;&gt;.
                                { "Russian", "Добывается из коры &lt;TRADEABLE&gt;солнечного вьюна&lt;&gt;, который растёт в &lt;FUEL&gt;горячем климате&lt;&gt;&#xA;&lt;TRADEABLE&gt;Агроном&lt;&gt; подскажет как выращивать растение на &lt;COMMODITY&gt;базе&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PLANT_LUSH_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывается из спелых светящихся ягод &lt;TRADEABLE&gt;звездяники&lt;&gt;, которая процветает в &lt;TRADEABLE&gt;лесистой среде&lt;&gt;.&#xA;Это растение можно выращивать на &lt;COMMODITY&gt;базе&lt;&gt; с помощью &lt;TRADEABLE&gt;агронома&lt;&gt;.
                                { "Russian", "Добывается из ягод &lt;TRADEABLE&gt;звездяники&lt;&gt;, которая растёт в &lt;TRADEABLE&gt;лесистой среде&lt;&gt;&#xA;&lt;TRADEABLE&gt;Агроном&lt;&gt; подскажет как выращивать растение на &lt;COMMODITY&gt;базе&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PLANT_CAVE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывается из &lt;TRADEABLE&gt;пещерной тыквы&lt;&gt;, которая произрастает &lt;TECHNOLOGY&gt;под землей&lt;&gt;.&#xA;Это растение можно выращивать на &lt;COMMODITY&gt;базе&lt;&gt; с помощью &lt;TRADEABLE&gt;агронома&lt;&gt;.
                                { "Russian", "Добывается из &lt;TRADEABLE&gt;пещерной тыквы&lt;&gt;, которая растёт &lt;TECHNOLOGY&gt;под землей&lt;&gt;&#xA;&lt;TRADEABLE&gt;Агроном&lt;&gt; подскажет как выращивать растение на &lt;COMMODITY&gt;базе&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PLANT_WATER_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывается из &lt;TRADEABLE&gt;свечной водоросли&lt;&gt;, растущей &lt;TECHNOLOGY&gt;под водой&lt;&gt;.
                                { "Russian", "Добывается из &lt;TRADEABLE&gt;свечной водоросли&lt;&gt;, растущей &lt;TECHNOLOGY&gt;под водой&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PLANT_POOP_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывается из навоза крупных животных. Кормите животных, чтобы увеличить производство фекалия.&#xA;Этот материал можно добывать на &lt;COMMODITY&gt;базе&lt;&gt; с помощью &lt;TRADEABLE&gt;агронома&lt;&gt;.
                                -- Harvest from the dung of many large animals. Feed animals to increase faecium production&#xA;This material can be farmed within a &lt;COMMODITY&gt;base&lt;&gt; with the aid of an &lt;TRADEABLE&gt;Agricultural Specialist&lt;&gt;
                                { "Russian", "Добывается из навоза крупных животных после кормежки&#xA;&lt;TRADEABLE&gt;Агроном&lt;&gt; на &lt;COMMODITY&gt;базе&lt;&gt; подскажет иной путь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_FARMPROD3_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;TECHNOLOGY&gt;стекло&lt;&gt; из &lt;STELLAR&gt;силикатного порошка&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Добывайте силикат из земли с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                -- Refine &lt;TECHNOLOGY&gt;Glass&lt;&gt; from &lt;STELLAR&gt;Silicate Powder&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Extract silicate from the earth with a &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;
                                { "Russian", "Очистите &lt;TECHNOLOGY&gt;стекло&lt;&gt; из &lt;STELLAR&gt;силикатного порошка&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Добывайте силикат из земли с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PIN_.*1_OBJ_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_FUEL1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;FUEL&gt;углерод&lt;&gt; из растений с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;. Нажмите &lt;IMG&gt;ATTACK&lt;&gt;, чтобы выстрелить лазером.&#xA;ВНИМАНИЕ! Избыточная добыча ресурсов может привлечь внимание дронов стражей.
                                { "Russian", "Добудьте &lt;FUEL&gt;углерод&lt;&gt; из растений с помощью &lt;TECHNOLOGY&gt;расщепителя﻿.&lt;&gt; Нажмите &lt;IMG&gt;ATTACK&lt;&gt;, чтобы выстрелить лазером.&#xA;ВНИМАНИЕ! Избыточная добыча ресурсов может привлечь внимание дронов стражей." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_SAND1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывайте ресурс из земли на любой планете с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                { "Russian", "Добывайте ресурс из земли на любой планете с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_LAND1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывайте &lt;EARTH&gt;ферритную пыль&lt;&gt; из небольших камней с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;. Нажмите &lt;IMG&gt;ATTACK&lt;&gt;, чтобы выстрелить лазером.&#xA;ВНИМАНИЕ! Избыточная добыча ресурсов может привлечь внимание дронов стражей.
                                { "Russian", "Добывайте &lt;EARTH&gt;ферритную пыль&lt;&gt; из небольших камней с помощью &lt;TECHNOLOGY&gt;расщепителя﻿.&lt;&gt; Нажмите &lt;IMG&gt;ATTACK&lt;&gt;, чтобы выстрелить лазером.&#xA;ВНИМАНИЕ! Избыточная добыча ресурсов может привлечь внимание дронов стражей." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_CAVE1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Кобальт&lt;&gt; добывается напрямую из &lt;EARTH&gt;подземных скальных отложений&lt;&gt;.&#xA;Найдите входы в пещеры. &lt;RED&gt;ВНИМАНИЕ!&lt;&gt; Во многих пещерах обитает опасная флора.
                                { "Russian", "&lt;TECHNOLOGY&gt;Кобальт&lt;&gt; добывается напрямую из &lt;EARTH&gt;подземных скальных отложений﻿.&lt;&gt;&#xA;Найдите входы в пещеры. &lt;RED&gt;ВНИМАНИЕ!&lt;&gt; Во многих пещерах обитает опасная флора." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_WATER1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Соль&lt;&gt; добывается напрямую из &lt;EARTH&gt;подводных каменных отложений&lt;&gt;.&#xA;Чтобы повысить эффективность экзокостюма под водой, улучшите его &lt;TECHNOLOGY&gt;аэрационную мембрану&lt;&gt; или пополняйте запас кислорода с помощью &lt;TRADEABLE&gt;водорослевых мешков&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Соль&lt;&gt; добывается напрямую из &lt;EARTH&gt;подводных каменных отложений﻿.&lt;&gt;&#xA;Чтобы повысить эффективность экзокостюма под водой, улучшите его &lt;TECHNOLOGY&gt;аэрационную мембрану&lt;&gt; или пополняйте запас кислорода с помощью &lt;TRADEABLE&gt;водорослевых мешков﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_LUSH1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Парафиний&lt;&gt; в первую очередь нужно искать на планетах с &lt;TRADEABLE&gt;тропическим климатом&lt;&gt;. Встречается преимущественно в виде крупных месторождений, которые обнаруживаются с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Парафиний можно обнаружить при изучении обычных ферритных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;. Можно получить путем &lt;TECHNOLOGY&gt;обработки&lt;&gt; элементов с поверхности.
                                { "Russian", "&lt;EARTH&gt;Парафиний&lt;&gt; в первую очередь нужно искать на планетах с &lt;TRADEABLE&gt;тропическим климатом﻿.&lt;&gt; Встречается преимущественно в виде крупных месторождений, которые обнаруживаются с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt;&#xA;Парафиний можно обнаружить при изучении обычных ферритных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt; Можно получить путем &lt;TECHNOLOGY&gt;обработки&lt;&gt; элементов с поверхности." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_DUSTY1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Пирит&lt;&gt; в первую очередь нужно искать на &lt;FUEL&gt;пустынных&lt;&gt; планетах. Встречается преимущественно в виде крупных месторождений, которые обнаруживаются с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Пирит можно обнаружить при изучении обычных ферритных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;. Можно получить путем &lt;TECHNOLOGY&gt;обработки&lt;&gt; элементов с поверхности.
                                { "Russian", "&lt;EARTH&gt;Пирит&lt;&gt; в первую очередь нужно искать на &lt;FUEL&gt;пустынных&lt;&gt; планетах. Встречается преимущественно в виде крупных месторождений, которые обнаруживаются с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt;&#xA;Пирит можно обнаружить при изучении обычных ферритных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt; Можно получить путем &lt;TECHNOLOGY&gt;обработки&lt;&gt; элементов с поверхности." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_TOXIC1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Аммиак&lt;&gt; в первую очередь нужно искать на планетах с &lt;TRADEABLE&gt;токсичной средой&lt;&gt;. Встречается преимущественно в виде крупных месторождений, которые обнаруживаются с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Аммиак можно обнаружить при изучении обычных ферритных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;. Можно получить путем &lt;TECHNOLOGY&gt;обработки&lt;&gt; элементов с поверхности.
                                { "Russian", "&lt;EARTH&gt;Аммиак&lt;&gt; в первую очередь нужно искать на планетах с &lt;TRADEABLE&gt;токсичной средой﻿.&lt;&gt; Встречается преимущественно в виде крупных месторождений, которые обнаруживаются с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt;&#xA;Аммиак можно обнаружить при изучении обычных ферритных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt; Можно получить путем &lt;TECHNOLOGY&gt;обработки&lt;&gt; элементов с поверхности." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_RADIO1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Уран&lt;&gt; в первую очередь нужно искать на планетах с &lt;COMMODITY&gt;радиоактивной средой&lt;&gt;. Встречается преимущественно в виде крупных месторождений, которые обнаруживаются с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Уран можно обнаружить при изучении обычных ферритных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;. Можно получить путем &lt;TECHNOLOGY&gt;обработки&lt;&gt; элементов с поверхности.
                                { "Russian", "&lt;EARTH&gt;Уран&lt;&gt; в первую очередь нужно искать на планетах с &lt;COMMODITY&gt;радиоактивной средой﻿.&lt;&gt; Встречается преимущественно в виде крупных месторождений, которые обнаруживаются с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt;&#xA;Уран можно обнаружить при изучении обычных ферритных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt; Можно получить путем &lt;TECHNOLOGY&gt;обработки&lt;&gt; элементов с поверхности." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_COLD1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Диоксит&lt;&gt; в первую очередь нужно искать на &lt;TECHNOLOGY&gt;холодных планетах&lt;&gt;. Встречается преимущественно в виде крупных месторождений, которые обнаруживаются с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Диоксит можно обнаружить при изучении обычных ферритных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;. Можно получить путем &lt;TECHNOLOGY&gt;обработки&lt;&gt; металлов с поверхности.
                                { "Russian", "&lt;EARTH&gt;Диоксит&lt;&gt; в первую очередь нужно искать на &lt;TECHNOLOGY&gt;холодных планетах﻿.&lt;&gt; Встречается преимущественно в виде крупных месторождений, которые обнаруживаются с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt;&#xA;Диоксит можно обнаружить при изучении обычных ферритных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt; Можно получить путем &lt;TECHNOLOGY&gt;обработки&lt;&gt; металлов с поверхности." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_HOT1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Фосфор&lt;&gt; в первую очередь нужно искать на &lt;FUEL&gt;горячих планетах&lt;&gt;. Встречается преимущественно в виде крупных месторождений, которые обнаруживаются с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Фосфор можно обнаружить при изучении обычных ферритных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;. Можно получить путем &lt;TECHNOLOGY&gt;обработки&lt;&gt; металлов с поверхности.
                                { "Russian", "&lt;EARTH&gt;Фосфор&lt;&gt; в первую очередь нужно искать на &lt;FUEL&gt;горячих планетах﻿.&lt;&gt; Встречается преимущественно в виде крупных месторождений, которые обнаруживаются с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt;&#xA;Фосфор можно обнаружить при изучении обычных ферритных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt; Можно получить путем &lt;TECHNOLOGY&gt;обработки&lt;&gt; металлов с поверхности." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_CREATURE1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Мордит&lt;&gt; — желеобразный органический материал, добываемый из трупов живых существ. Добыча подразумевает наличие мертвого организма.&#xA;В условиях подходящего климата и при наличии соответствующего растения-хозяина мордит можно выращивать самостоятельно. Обратитесь за советом к &lt;TRADEABLE&gt;специалисту по сельскому хозяйству&lt;&gt;.
                                -- &lt;SPECIAL&gt;Mordite&lt;&gt; is a gelatinous organic material harvested from the corpses of living beings. Extraction involves the death of the organism.&#xA;It is possible to grow mordite given the right environment and correct host plant. Seek advice from an &lt;TRADEABLE&gt;Agricultural Specialist&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Мордит&lt;&gt; — желеобразный органический материал, добываемый из трупов живых существ. Добыча подразумевает наличие мертвого организма.&#xA;В условиях подходящего климата и при наличии соответствующего растения-хозяина мордит можно выращивать самостоятельно. Обратитесь за советом к &lt;TRADEABLE&gt;специалисту по сельскому хозяйству﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ROBOT1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Пугний&lt;&gt; — темное жидкое стекло, добываемое из останков &lt;SPECIAL&gt;стражей&lt;&gt;. Вступайте в бой со стражами, чтобы затем извлечь пугний из их оболочек.
                                { "Russian", "&lt;SPECIAL&gt;Пугний&lt;&gt; — темное жидкое стекло, добываемое из останков &lt;SPECIAL&gt;стражей﻿.&lt;&gt; Вступайте в бой со стражами, чтобы затем извлечь пугний из их оболочек." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ASTEROID1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Серебро&lt;&gt; — ценный металл, используемый в межзвездной торговле. Обычно &lt;COMMODITY&gt;добывается из астероидов&lt;&gt;. Иногда встречается в подземных залежах на планетах.
                                { "Russian", "&lt;EARTH&gt;Серебро&lt;&gt; — ценный металл, используемый в межзвездной торговле. Обычно &lt;COMMODITY&gt;добывается из астероидов﻿.&lt;&gt; Иногда встречается в подземных залежах на планетах." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_GAS1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Серный газ&lt;&gt; — едкий &lt;TRADEABLE&gt;атмосферный газ&lt;&gt;. В высоких концентрациях крайне опасен для органической жизни.&#xA;Может добываться в атмосферах &lt;FUEL&gt;высокотемпературных&lt;&gt; и &lt;SPECIAL&gt;пустынных&lt;&gt; планет с помощью &lt;TECHNOLOGY&gt;атмосферного комбайна&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Серный газ&lt;&gt; — едкий &lt;TRADEABLE&gt;атмосферный газ﻿.&lt;&gt; В высоких концентрациях крайне опасен для органической жизни.&#xA;Может добываться в атмосферах &lt;FUEL&gt;высокотемпературных&lt;&gt; и &lt;SPECIAL&gt;пустынных&lt;&gt; планет с помощью &lt;TECHNOLOGY&gt;атмосферного комбайна﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PRODFUEL1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% производится из &lt;FUEL&gt;кислорода&lt;&gt; и &lt;EARTH&gt;ферритной пыли&lt;&gt;. Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря&lt;&gt;, используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Припасы иногда можно найти в &lt;TECHNOLOGY&gt;тайниках с припасами&lt;&gt; на поверхности планет.
                                { "Russian", "%ITEM% производится из &lt;FUEL&gt;кислорода&lt;&gt; и &lt;EARTH&gt;ферритной пыли﻿.&lt;&gt; Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря﻿,&lt;&gt; используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Припасы иногда можно найти в &lt;TECHNOLOGY&gt;тайниках с припасами&lt;&gt; на поверхности планет." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_GRENFUEL1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% продается в &lt;TECHNOLOGY&gt;торговых терминалах&lt;&gt; и &lt;TECHNOLOGY&gt;магазинах&lt;&gt;.&#xA;%ITEM% производится из &lt;FUEL&gt;кислорода&lt;&gt; и &lt;COMMODITY&gt;металлической обшивки&lt;&gt;. Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря&lt;&gt;, используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Припасы иногда можно найти в &lt;TECHNOLOGY&gt;тайниках с припасами&lt;&gt; на поверхности планет.
                                { "Russian", "%ITEM% продается в &lt;TECHNOLOGY&gt;торговых терминалах&lt;&gt; и &lt;TECHNOLOGY&gt;магазинах﻿.&lt;&gt;&#xA;%ITEM% производится из &lt;FUEL&gt;кислорода&lt;&gt; и &lt;COMMODITY&gt;металлической обшивки﻿.&lt;&gt; Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря﻿,&lt;&gt; используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;Припасы иногда можно найти в &lt;TECHNOLOGY&gt;тайниках с припасами&lt;&gt; на поверхности планет." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_HYPERFUEL1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% производится из &lt;FUEL&gt;антиматерии&lt;&gt; и &lt;COMMODITY&gt;антиматериального контейнера&lt;&gt;. Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря&lt;&gt;, используйте &lt;IMG&gt;PRODMENU&lt;&gt;.
                                { "Russian", "%ITEM% производится из &lt;FUEL&gt;антиматерии&lt;&gt; и &lt;COMMODITY&gt;антиматериального контейнера﻿.&lt;&gt; Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря﻿,&lt;&gt; используйте &lt;IMG&gt;PRODMENU&lt;&gt;." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ALLOY1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте %ITEM% или получите его очисткой &lt;EARTH&gt;парафиния&lt;&gt; и &lt;EARTH&gt;ионизированного кобальта&lt;&gt;. Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель&lt;&gt;.&#xA;Большие залежи парафиния можно найти на &lt;TRADEABLE&gt;лесистых планетах&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Хлор можно получить очисткой &lt;TRADEABLE&gt;соли&lt;&gt;, добываемой в &lt;TECHNOLOGY&gt;подводных залежах минералов&lt;&gt;.
                                { "Russian", "Создайте %ITEM% или получите его очисткой &lt;EARTH&gt;парафиния&lt;&gt; и &lt;EARTH&gt;ионизированного кобальта﻿.&lt;&gt; Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель﻿.&lt;&gt;&#xA;Большие залежи парафиния можно найти на &lt;TRADEABLE&gt;лесистых планетах&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt;&#xA;Хлор можно получить очисткой &lt;TRADEABLE&gt;соли﻿,&lt;&gt; добываемой в &lt;TECHNOLOGY&gt;подводных залежах минералов﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_FARMPROD1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте из &lt;SPECIAL&gt;мордита&lt;&gt; и &lt;TRADEABLE&gt;грибковой плесени&lt;&gt;. Изучите чертеж на базе с помощью &lt;TECHNOLOGY&gt;научного специалиста&lt;&gt;.&#xA;Грибковую плесень можно вырастить или встретить в дикой природе на &lt;TRADEABLE&gt;токсичных планетах&lt;&gt;.&#xA;Мордит добывается с &lt;FUEL&gt;трупов существ&lt;&gt;.
                                -- raft from &lt;SPECIAL&gt;Mordite&lt;&gt; and &lt;TRADEABLE&gt;Fungal Mould&lt;&gt;. Learn the blueprint with the aid of a &lt;TECHNOLOGY&gt;Science Specialist&lt;&gt; in a base.&#xA;Fungal Mould can be farmed, or found wild on &lt;TRADEABLE&gt;toxic planets&lt;&gt;.&#xA;Mordite is harvested from the &lt;FUEL&gt;corpses of creatures&lt;&gt;
                                { "Russian", "Создайте из &lt;SPECIAL&gt;мордита&lt;&gt; и &lt;TRADEABLE&gt;грибковой плесени﻿.&lt;&gt; Изучите чертеж на базе с помощью &lt;TECHNOLOGY&gt;научного специалиста﻿.&lt;&gt;&#xA;Грибковую плесень можно вырастить или встретить в дикой природе на &lt;TRADEABLE&gt;токсичных планетах﻿.&lt;&gt;&#xA;Мордит добывается с &lt;FUEL&gt;трупов существ﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_REACTION1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте из &lt;TRADEABLE&gt;серного газа&lt;&gt; и &lt;FUEL&gt;сжатого углерода&lt;&gt;. Изучите чертеж, нападая на &lt;TECHNOLOGY&gt;планетарные заводы&lt;&gt;, или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Собирайте серный газ с помощью &lt;TECHNOLOGY&gt;атмосферного комбайна&lt;&gt; на &lt;FUEL&gt;высокотемпературных&lt;&gt; и &lt;STELLAR&gt;пустынных&lt;&gt; планетах.&#xA;Получить сжатый углерод можно очисткой обычного планетарного &lt;FUEL&gt;углерода&lt;&gt;.
                                -- Craft from &lt;TRADEABLE&gt;Sulphurine&lt;&gt; and &lt;FUEL&gt;Condensed Carbon&lt;&gt;. Learn the blueprint by raiding &lt;TECHNOLOGY&gt;planetary factories&lt;&gt; or from the &lt;STELLAR&gt;Synthesis Lab&lt;&gt; on the &lt;SPECIAL&gt;Space Anomaly&lt;&gt;.&#xA;Harvest Sulphurine with an &lt;TECHNOLOGY&gt;Atmosphere Harvester&lt;&gt; on &lt;FUEL&gt;Scorched&lt;&gt; and &lt;STELLAR&gt;Barren&lt;&gt;worlds.&#xA;Refine Condensed Carbon from regular, plant-based &lt;FUEL&gt;Carbon&lt;&gt;.
                                { "Russian", "Создайте из &lt;TRADEABLE&gt;серного газа&lt;&gt; и &lt;FUEL&gt;сжатого углерода﻿.&lt;&gt; Изучите чертеж, нападая на &lt;TECHNOLOGY&gt;планетарные заводы﻿,&lt;&gt; или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии﻿.&lt;&gt;&#xA;Собирайте серный газ с помощью &lt;TECHNOLOGY&gt;атмосферного комбайна&lt;&gt; на &lt;FUEL&gt;высокотемпературных&lt;&gt; и &lt;STELLAR&gt;пустынных&lt;&gt; планетах.&#xA;Получить сжатый углерод можно очисткой обычного планетарного &lt;FUEL&gt;углерода﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_COMPOUND1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Производится из продуктов &lt;TRADEABLE&gt;на основе газов&lt;&gt;: &lt;COMMODITY&gt;термического конденсата&lt;&gt; и &lt;COMMODITY&gt;обогащенного углерода&lt;&gt;.&#xA;Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы&lt;&gt;, или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.
                                { "Russian", "Производится из продуктов &lt;TRADEABLE&gt;на основе газов&lt;&gt;: &lt;COMMODITY&gt;термического конденсата&lt;&gt; и &lt;COMMODITY&gt;обогащенного углерода﻿.&lt;&gt;&#xA;Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы﻿,&lt;&gt; или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_MEGAPROD1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крайне продвинутый продукт. Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы&lt;&gt;, или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Производится из &lt;COMMODITY&gt;жидкой взрывчатки&lt;&gt; и &lt;COMMODITY&gt;ядерного ускорителя&lt;&gt;.
                                { "Russian", "Крайне продвинутый продукт. Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы﻿,&lt;&gt; или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии﻿.&lt;&gt;&#xA;Производится из &lt;COMMODITY&gt;жидкой взрывчатки&lt;&gt; и &lt;COMMODITY&gt;ядерного ускорителя﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ULTRAPROD1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крайне продвинутый продукт. Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы&lt;&gt;, или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Производится из &lt;COMMODITY&gt;портативного реактора&lt;&gt;, &lt;COMMODITY&gt;квантового процессора&lt;&gt; и &lt;COMMODITY&gt;геодезита&lt;&gt;.
                                { "Russian", "Крайне продвинутый продукт. Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы﻿,&lt;&gt; или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии﻿.&lt;&gt;&#xA;Производится из &lt;COMMODITY&gt;портативного реактора﻿,&lt;&gt; &lt;COMMODITY&gt;квантового процессора&lt;&gt; и &lt;COMMODITY&gt;геодезита﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PIN_.*2_OBJ_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_FUEL2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Сжатый углерод&lt;&gt; встречается в виде кристаллов на большинстве планет. Найдите кристаллы углерода поблизости, используя &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;). Для добычи из больших месторождений может потребоваться &lt;TECHNOLOGY&gt;продвинутый расщепитель&lt;&gt;.&#xA;Сжатый углерод можно получить, если обработать углерод в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;.
                                { "Russian", "&lt;FUEL&gt;Сжатый углерод&lt;&gt; встречается в виде кристаллов на большинстве планет. Найдите кристаллы углерода поблизости, используя &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;). Для добычи из больших месторождений может потребоваться &lt;TECHNOLOGY&gt;продвинутый расщепитель﻿.&lt;&gt;&#xA;Сжатый углерод можно получить, если обработать углерод в &lt;TECHNOLOGY&gt;очистителе﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_LAUNCHSUB2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте &lt;TECHNOLOGY&gt;дейтерий&lt;&gt;, переработав &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; и &lt;TECHNOLOGY&gt;тритий&lt;&gt; или &lt;EARTH&gt;силикатный порошок&lt;&gt; в &lt;TECHNOLOGY&gt;очистителе с несколькими камерами загрузки сырья&lt;&gt;
                                { "Russian", "Изготовьте &lt;TECHNOLOGY&gt;дейтерий﻿,&lt;&gt; переработав &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; и &lt;TECHNOLOGY&gt;тритий&lt;&gt; или &lt;EARTH&gt;силикатный порошок&lt;&gt; в &lt;TECHNOLOGY&gt;очистителе с несколькими камерами загрузки сырья&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_LAND2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;EARTH&gt;чистый феррит&lt;&gt;, обработав в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; ферритную пыль.&#xA;Из некоторых крупных камней феррит можно добывать напрямую с помощью &lt;TECHNOLOGY&gt;продвинутого расщепителя&lt;&gt;.
                                { "Russian", "Создайте &lt;EARTH&gt;чистый феррит﻿,&lt;&gt; обработав в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; ферритную пыль.&#xA;Из некоторых крупных камней феррит можно добывать напрямую с помощью &lt;TECHNOLOGY&gt;продвинутого расщепителя﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_CATALYST2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;CATALYST&gt;Нитрат натрия&lt;&gt; производится в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из натрия.&#xA;Кроме того, нитрат натрия встречается в виде кристаллов. Найдите кристаллы нитрата натрия с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;). Для добычи может потребоваться &lt;TECHNOLOGY&gt;продвинутый расщепитель&lt;&gt;.
                                { "Russian", "&lt;CATALYST&gt;Нитрат натрия&lt;&gt; производится в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из натрия.&#xA;Кроме того, нитрат натрия встречается в виде кристаллов. Найдите кристаллы нитрата натрия с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;). Для добычи может потребоваться &lt;TECHNOLOGY&gt;продвинутый расщепитель﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_CAVE2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Ионизированный кобальт&lt;&gt; производится из кобальта в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;. Найдите кобальт под землей.&#xA;Найдите входы в пещеры. &lt;RED&gt;ВНИМАНИЕ!&lt;&gt; Во многих пещерах обитает опасная флора.
                                { "Russian", "&lt;TECHNOLOGY&gt;Ионизированный кобальт&lt;&gt; производится из кобальта в &lt;TECHNOLOGY&gt;очистителе﻿.&lt;&gt; Найдите кобальт под землей или в пещерах. &lt;RED&gt;ВНИМАНИЕ!&lt;&gt; Во многих пещерах обитает опасная флора." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_WATER2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Хлор&lt;&gt; производится в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из соли.&#xA;Хлор можно добывать напрямую из крупных подводных месторождений. Для добычи может потребоваться &lt;TECHNOLOGY&gt;продвинутый расщепитель&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Хлор&lt;&gt; производится в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из соли.&#xA;Хлор можно добывать напрямую из крупных подводных месторождений. Для добычи может потребоваться &lt;TECHNOLOGY&gt;продвинутый расщепитель﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_YELLOW2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Медь&lt;&gt; добывается из крупных месторождений с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Найдите залежи меди с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;. Залежи меди встречаются на планетах, вращающихся вокруг &lt;STELLAR&gt;желтых звезд&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Медь&lt;&gt; добывается из крупных месторождений с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора﻿.&lt;&gt;&#xA;Найдите залежи меди с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt; Залежи меди встречаются на планетах, вращающихся вокруг &lt;STELLAR&gt;желтых звезд﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_RED2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Кадмий&lt;&gt; добывается из крупных месторождений с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Найдите залежи кадмия с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;. Залежи кадмия встречаются на планетах, вращающихся вокруг &lt;FUEL&gt;красных звезд&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Кадмий&lt;&gt; добывается из крупных месторождений с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора﻿.&lt;&gt;&#xA;Найдите залежи кадмия с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt; Залежи кадмия встречаются на планетах, вращающихся вокруг &lt;FUEL&gt;красных звезд﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_GREEN2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Эмерил&lt;&gt; добывается из крупных месторождений с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Найдите залежи эмерила с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;. Залежи эмерила встречаются на планетах, вращающихся вокруг &lt;TRADEABLE&gt;зеленых звезд&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Эмерил&lt;&gt; добывается из крупных месторождений с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора﻿.&lt;&gt;&#xA;Найдите залежи эмерила с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt; Залежи эмерила встречаются на планетах, вращающихся вокруг &lt;TRADEABLE&gt;зеленых звезд﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_BLUE2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Индий&lt;&gt; добывается из крупных месторождений с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Найдите залежи индия с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;. Залежи индия встречаются на планетах, вращающихся вокруг &lt;TECHNOLOGY&gt;синих звезд&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Индий&lt;&gt; добывается из крупных месторождений с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора﻿.&lt;&gt;&#xA;Найдите залежи индия с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt; Залежи индия встречаются на планетах, вращающихся вокруг &lt;TECHNOLOGY&gt;синих звезд﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_STELLAR2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Хроматический металл&lt;&gt; создается в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из &lt;STELLAR&gt;звездных металлов&lt;&gt;: &lt;COMMODITY&gt;меди&lt;&gt;, &lt;FUEL&gt;кадмия&lt;&gt;, &lt;TRADEABLE&gt;эмерила&lt;&gt; и &lt;TECHNOLOGY&gt;индия&lt;&gt;.&#xA;Чем более &lt;SPECIAL&gt;редким&lt;&gt; является звездный металл, тем больше хроматического металла из него получается. Ищите залежи звездных металлов на поверхности планет с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Хроматический металл&lt;&gt; создается в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из &lt;STELLAR&gt;звёздных металлов﻿:&lt;&gt; &lt;COMMODITY&gt;меди﻿,&lt;&gt; &lt;FUEL&gt;кадмия﻿,&lt;&gt; &lt;TRADEABLE&gt;эмерила&lt;&gt; и &lt;TECHNOLOGY&gt;индия﻿.&lt;&gt;&#xA;Чем более &lt;SPECIAL&gt;редким&lt;&gt; является звёздный металл, тем больше хроматического металла из него получается. Ищите залежи звёздных металлов на поверхности планет с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ASTEROID2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Золото&lt;&gt; — ценный металл, используемый в межзвездной торговле. Обычно &lt;COMMODITY&gt;добывается из астероидов&lt;&gt;. Иногда встречается в подземных залежах на планетах.
                                { "Russian", "&lt;STELLAR&gt;Золото&lt;&gt; — ценный металл, используемый в межзвездной торговле. Обычно &lt;COMMODITY&gt;добывается из астероидов﻿.&lt;&gt; Иногда встречается в подземных залежах на планетах." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_GAS2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Радон&lt;&gt; — это бесцветный, лишенный запаха &lt;TRADEABLE&gt;газ&lt;&gt; с достаточно коротким периодом полураспада. &#xA;Может добываться в атмосферах &lt;COMMODITY&gt;радиоактивных&lt;&gt; и &lt;TECHNOLOGY&gt;низкотемпературных&lt;&gt; планет с помощью &lt;TECHNOLOGY&gt;атмосферного комбайна&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Радон&lt;&gt; — это бесцветный, лишенный запаха &lt;TRADEABLE&gt;газ&lt;&gt; с достаточно коротким периодом полураспада. &#xA;Может добываться в атмосферах &lt;COMMODITY&gt;радиоактивных&lt;&gt; и &lt;TECHNOLOGY&gt;низкотемпературных&lt;&gt; планет с помощью &lt;TECHNOLOGY&gt;атмосферного комбайна﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PRODFUEL2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% производится из &lt;TECHNOLOGY&gt;дигидрогенного геля&lt;&gt; и &lt;FUEL&gt;углерода&lt;&gt;. Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря&lt;&gt;, используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;&lt;TECHNOLOGY&gt;Дигидрогенный гель&lt;&gt; можно создать или получить из синих &lt;TECHNOLOGY&gt;кристаллов дигидрогена&lt;&gt;, которые встречаются на всех планетах. Используйте сканер (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти кристаллы.
                                -- Craft %ITEM% from &lt;TECHNOLOGY&gt;Di-hydrogen Jelly&lt;&gt; and &lt;FUEL&gt;Carbon&lt;&gt;. Use &lt;IMG&gt;PRODMENU&lt;&gt; to craft in empty &lt;TECHNOLOGY&gt;Inventory Slots&lt;&gt;.&#xA;Refine or craft &lt;TECHNOLOGY&gt;Di-hydrogen Jelly&lt;&gt; from the blue &lt;TECHNOLOGY&gt;Di-hydrogen Crystals&lt;&gt; found on all worlds. Use the Scanner (&lt;IMG&gt;SCAN&lt;&gt;) to locate crystals.
                                { "Russian", "%ITEM% производится из &lt;TECHNOLOGY&gt;дигидрогенного геля&lt;&gt; и &lt;FUEL&gt;углерода&lt;&gt;. Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря&lt;&gt;, используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;&lt;TECHNOLOGY&gt;Дигидрогенный гель&lt;&gt; можно создать или получить из синих &lt;TECHNOLOGY&gt;кристаллов дигидрогена﻿,&lt;&gt; которые встречаются на всех планетах. Используйте сканер (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти кристаллы." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_POWERCELL2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% производится из &lt;TECHNOLOGY&gt;ионизированного кобальта&lt;&gt; и &lt;EARTH&gt;чистого феррита&lt;&gt;. Используйте &lt;TECHNOLOGY&gt;очиститель&lt;&gt; для обработки продвинутых материалов.&#xA;Кобальт можно найти под землей. Найдите входы в пещеры. &lt;RED&gt;ВНИМАНИЕ!&lt;&gt; Во многих пещерах обитает опасная флора.&#xA;Припасы иногда можно найти в &lt;TECHNOLOGY&gt;тайниках с припасами&lt;&gt; на поверхности планет.
                                { "Russian", "%ITEM% производится из &lt;TECHNOLOGY&gt;ионизированного кобальта&lt;&gt; и &lt;EARTH&gt;чистого феррита﻿.&lt;&gt; Используйте &lt;TECHNOLOGY&gt;очиститель&lt;&gt; для обработки прогрессивных материалов.&#xA;Кобальт можно найти под землей и в пещерах. &lt;RED&gt;ВНИМАНИЕ!&lt;&gt; Во многих пещерах обитает опасная флора.&#xA;Иногда припасы можно найти в &lt;TECHNOLOGY&gt;тайниках&lt;&gt; на поверхности планет." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ALLOY2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте %ITEM% или получите его очисткой &lt;EARTH&gt;пирита&lt;&gt; и &lt;EARTH&gt;чистого феррита&lt;&gt;. Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель&lt;&gt;.&#xA;Большие залежи пирита можно найти на &lt;STELLAR&gt;пустынных планетах&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Получить чистый феррит можно очисткой ферритной пыли, добытой из обычных минералов.
                                { "Russian", "Создайте %ITEM% или получите его очисткой &lt;EARTH&gt;пирита&lt;&gt; и &lt;EARTH&gt;чистого феррита﻿.&lt;&gt; Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель﻿.&lt;&gt;&#xA;Большие залежи пирита можно найти на &lt;STELLAR&gt;пустынных планетах&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt;&#xA;Получить чистый феррит можно очисткой ферритной пыли, добытой из обычных минералов." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_FARMPROD2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте из &lt;FUEL&gt;фекалия&lt;&gt; и &lt;TRADEABLE&gt;гамма-корня&lt;&gt;. Изучите чертеж на базе с помощью &lt;TECHNOLOGY&gt;научного специалиста&lt;&gt;.&#xA;Гамма-корень можно вырастить или встретить в дикой природе на &lt;COMMODITY&gt;радиоактивных планетах&lt;&gt;.&#xA;Фекалий добывается из экскрементов диких животных. Кормите диких животных, чтобы собрать побольше.
                                { "Russian", "Создайте из &lt;FUEL&gt;фекалия&lt;&gt; и &lt;TRADEABLE&gt;гамма-корня﻿.&lt;&gt; Изучите чертеж на базе с помощью &lt;TECHNOLOGY&gt;научного специалиста﻿.&lt;&gt;&#xA;Гамма-корень можно вырастить или встретить в дикой природе на &lt;COMMODITY&gt;радиоактивных планетах﻿.&lt;&gt;&#xA;Фекалий добывается из экскрементов диких животных. Кормите диких животных, чтобы собрать побольше." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_FARMPROD2_OBJ_TIP_ALT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте из &lt;SPECIAL&gt;коприта&lt;&gt; и &lt;TRADEABLE&gt;гамма-корня&lt;&gt;. Изучите чертеж на базе с помощью &lt;TECHNOLOGY&gt;научного специалиста&lt;&gt;.&#xA;Гамма-корень можно вырастить или встретить в дикой природе на &lt;COMMODITY&gt;радиоактивных планетах&lt;&gt;.&#xA;Коприт добывается из экскрементов диких животных. Кормите диких животных, чтобы собрать побольше.
                                { "Russian", "Создайте из &lt;SPECIAL&gt;коприта&lt;&gt; и &lt;TRADEABLE&gt;гамма-корня﻿.&lt;&gt; Изучите чертеж на базе с помощью &lt;TECHNOLOGY&gt;научного специалиста﻿.&lt;&gt;&#xA;Гамма-корень можно вырастить или встретить в дикой природе на &lt;COMMODITY&gt;радиоактивных планетах﻿.&lt;&gt;&#xA;Коприт добывается из экскрементов диких животных. Кормите диких животных, чтобы собрать побольше." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_FARMPROD2_OBJ_TIP_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте из &lt;FUEL&gt;образцов навоза&lt;&gt; и &lt;TRADEABLE&gt;гамма-корня&lt;&gt;. Изучите чертеж на базе с помощью &lt;TECHNOLOGY&gt;научного специалиста&lt;&gt;.&#xA;Гамма-корень можно вырастить или встретить в дикой природе на &lt;COMMODITY&gt;радиоактивных планетах&lt;&gt;.&#xA;Навоз добывается из экскрементов диких животных. Кормите диких животных, чтобы собрать побольше.
                                { "Russian", "Создайте из &lt;FUEL&gt;образцов навоза&lt;&gt; и &lt;TRADEABLE&gt;гамма-корня﻿.&lt;&gt; Изучите чертеж на базе с помощью &lt;TECHNOLOGY&gt;научного специалиста﻿.&lt;&gt;&#xA;Гамма-корень можно вырастить или встретить в дикой природе на &lt;COMMODITY&gt;радиоактивных планетах﻿.&lt;&gt;&#xA;Навоз добывается из экскрементов диких животных. Кормите диких животных, чтобы собрать побольше." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_REACTION2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте из &lt;TRADEABLE&gt;радона&lt;&gt; и &lt;FUEL&gt;сжатого углерода&lt;&gt;. Изучите чертеж, нападая на &lt;TECHNOLOGY&gt;планетарные заводы&lt;&gt;, или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Собирайте радон с помощью &lt;TECHNOLOGY&gt;атмосферного комбайна&lt;&gt; на &lt;COMMODITY&gt;радиоактивных&lt;&gt; и &lt;TECHNOLOGY&gt;низкотемпературных&lt;&gt; планетах.&#xA;Получить сжатый углерод можно очисткой обычного планетарного &lt;FUEL&gt;углерода&lt;&gt;.
                                { "Russian", "Создайте из &lt;TRADEABLE&gt;радона&lt;&gt; и &lt;FUEL&gt;сжатого углерода﻿.&lt;&gt; Изучите чертеж, нападая на &lt;TECHNOLOGY&gt;планетарные заводы﻿,&lt;&gt; или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии﻿.&lt;&gt;&#xA;Собирайте радон с помощью &lt;TECHNOLOGY&gt;атмосферного комбайна&lt;&gt; на &lt;COMMODITY&gt;радиоактивных&lt;&gt; и &lt;TECHNOLOGY&gt;низкотемпературных&lt;&gt; планетах.&#xA;Получить сжатый углерод можно очисткой обычного планетарного &lt;FUEL&gt;углерода﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_COMPOUND2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Производится из продуктов &lt;TRADEABLE&gt;на основе газов&lt;&gt;: &lt;COMMODITY&gt;термического конденсата&lt;&gt; и &lt;COMMODITY&gt;азотной соли&lt;&gt;.&#xA;Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы&lt;&gt;, или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.
                                { "Russian", "Производится из продуктов &lt;TRADEABLE&gt;на основе газов﻿:&lt;&gt; &lt;COMMODITY&gt;термического конденсата&lt;&gt; и &lt;COMMODITY&gt;азотной соли﻿.&lt;&gt;&#xA;Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы﻿,&lt;&gt; или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_MEGAPROD2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крайне продвинутый продукт. Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы&lt;&gt;, или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Производится из &lt;COMMODITY&gt;плат&lt;&gt; и &lt;COMMODITY&gt;сверхпроводников&lt;&gt;.
                                { "Russian", "Крайне продвинутый продукт. Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы﻿,&lt;&gt; или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии﻿.&lt;&gt;&#xA;Производится из &lt;COMMODITY&gt;плат&lt;&gt; и &lt;COMMODITY&gt;сверхпроводников﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ULTRAPROD2_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крайне продвинутый продукт. Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы&lt;&gt;, или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Производится из &lt;COMMODITY&gt;квантового процессора&lt;&gt;, &lt;COMMODITY&gt;криогенной камеры&lt;&gt; и &lt;COMMODITY&gt;иридезита&lt;&gt;.
                                { "Russian", "Крайне продвинутый продукт. Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы﻿,&lt;&gt; или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии﻿.&lt;&gt;&#xA;Производится из &lt;COMMODITY&gt;квантового процессора﻿,&lt;&gt; &lt;COMMODITY&gt;криогенной камеры&lt;&gt; и &lt;COMMODITY&gt;иридезита﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PIN_.*3_OBJ_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_LAND3_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте &lt;EARTH&gt;намагниченный феррит&lt;&gt;, обработав чистый феррит в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;.
                                { "Russian", "Создайте &lt;EARTH&gt;намагниченный феррит﻿,&lt;&gt; обработав чистый феррит в &lt;TECHNOLOGY&gt;очистителе﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ASTEROID3_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;COMMODITY&gt;Платина&lt;&gt; — редкий металл, используемый в межзвездной торговле. &lt;EARTH&gt;Добывается из астероидов&lt;&gt;. Очень редко встречается в подземных залежах на планетах.
                                { "Russian", "&lt;COMMODITY&gt;Платина&lt;&gt; — редкий металл, используемый в межзвездной торговле. &lt;EARTH&gt;Добывается из астероидов﻿.&lt;&gt; Очень редко встречается в подземных залежах на планетах." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_GAS3_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Азот&lt;&gt; — это химически активный атмосферный &lt;TRADEABLE&gt;газ&lt;&gt;, который встречается везде, где есть органическая жизнь.&#xA;Может добываться в атмосферах &lt;TRADEABLE&gt;лесистых&lt;&gt; и &lt;TRADEABLE&gt;токсичных&lt;&gt; планет с помощью &lt;TECHNOLOGY&gt;атмосферного комбайна&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Азот&lt;&gt; — это химически активный атмосферный &lt;TRADEABLE&gt;газ﻿,&lt;&gt; который встречается везде, где есть органическая жизнь.&#xA;Может добываться в атмосферах &lt;TRADEABLE&gt;лесистых&lt;&gt; и &lt;TRADEABLE&gt;токсичных&lt;&gt; планет с помощью &lt;TECHNOLOGY&gt;атмосферного комбайна﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_FUELPROD3_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% можно создать или получить из &lt;FUEL&gt;сжатого углерода&lt;&gt;. Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель&lt;&gt;.&#xA;%ITEM% изредка встречается внутри редких планетарных кристаллов.
                                { "Russian", "%ITEM% можно создать или получить из &lt;FUEL&gt;сжатого углерода﻿.&lt;&gt; Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель﻿.&lt;&gt;&#xA;%ITEM% изредка встречается внутри редких планетарных кристаллов." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_LANDPROD3_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% можно создать или получить из &lt;EARTH&gt;чистого феррита&lt;&gt;. Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель&lt;&gt;.&#xA;%ITEM% изредка встречается внутри редких планетарных кристаллов.
                                { "Russian", "%ITEM% можно создать или получить из &lt;EARTH&gt;чистого феррита﻿.&lt;&gt; Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель﻿.&lt;&gt;&#xA;%ITEM% изредка встречается внутри редких планетарных кристаллов." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_CAVEPROD3_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% можно создать или получить из &lt;TECHNOLOGY&gt;ионизированного кобальта&lt;&gt;. Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель&lt;&gt;.&#xA;%ITEM% изредка встречается внутри редких планетарных кристаллов.
                                { "Russian", "%ITEM% можно создать или получить из &lt;TECHNOLOGY&gt;ионизированного кобальта﻿.&lt;&gt; Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель﻿.&lt;&gt;&#xA;%ITEM% изредка встречается внутри редких планетарных кристаллов." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_WATERPROD3_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% можно создать или получить из &lt;TRADEABLE&gt;хлора&lt;&gt;. Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель&lt;&gt;.&#xA;%ITEM% изредка встречается внутри редких планетарных кристаллов.
                                { "Russian", "%ITEM% можно создать или получить из &lt;TRADEABLE&gt;хлора﻿.&lt;&gt; Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель﻿.&lt;&gt;&#xA;%ITEM% изредка встречается внутри редких планетарных кристаллов." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_CATAPROD3_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% можно создать или получить из &lt;CATALYST&gt;нитрата натрия&lt;&gt;. Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель&lt;&gt;.&#xA;%ITEM% изредка встречается внутри редких планетарных кристаллов.
                                { "Russian", "%ITEM% можно создать или получить из &lt;CATALYST&gt;нитрата натрия﻿.&lt;&gt; Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель﻿.&lt;&gt;&#xA;%ITEM% изредка встречается внутри редких планетарных кристаллов." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_OXYPROD3_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% можно создать или получить из &lt;FUEL&gt;кислорода&lt;&gt;. Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель&lt;&gt;.&#xA;%ITEM% изредка встречается внутри редких планетарных кристаллов.
                                { "Russian", "%ITEM% можно создать или получить из &lt;FUEL&gt;кислорода﻿.&lt;&gt; Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель﻿.&lt;&gt;&#xA;%ITEM% изредка встречается внутри редких планетарных кристаллов." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ALLOY3_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте %ITEM% или получите его очисткой &lt;EARTH&gt;аммиака&lt;&gt; и &lt;EARTH&gt;хлора&lt;&gt;. Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель&lt;&gt;.&#xA;Большие залежи аммиака можно найти на &lt;TRADEABLE&gt;токсичных планетах&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Хлор можно получить очисткой &lt;TRADEABLE&gt;соли&lt;&gt;, добываемой в &lt;TECHNOLOGY&gt;подводных залежах минералов&lt;&gt;.
                                { "Russian", "Создайте %ITEM% или получите его очисткой &lt;EARTH&gt;аммиака&lt;&gt; и &lt;EARTH&gt;хлора﻿.&lt;&gt; Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель﻿.&lt;&gt;&#xA;Большие залежи аммиака можно найти на &lt;TRADEABLE&gt;токсичных планетах&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt;&#xA;Хлор можно получить очисткой &lt;TRADEABLE&gt;соли﻿,&lt;&gt; добываемой в &lt;TECHNOLOGY&gt;подводных залежах минералов﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_FARMPROD3_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Изготовьте из очищенного &lt;STELLAR&gt;силикатного&lt;&gt; порошка. Добывайте силикат из земли с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;При изготовлении используйте &lt;TECHNOLOGY&gt;морозные кристаллы&lt;&gt;, собранные на &lt;TECHNOLOGY&gt;замерзших планетах&lt;&gt;.  Изучите чертеж с помощью &lt;TECHNOLOGY&gt;куратора строительных работ&lt;&gt;.
                                { "Russian", "Изготовьте из очищенного &lt;STELLAR&gt;силикатного&lt;&gt; порошка. Добывайте силикат из земли с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора﻿.&lt;&gt;&#xA;При изготовлении используйте &lt;TECHNOLOGY&gt;морозные кристаллы﻿,&lt;&gt; собранные на &lt;TECHNOLOGY&gt;замёрзших планетах﻿.&lt;&gt; Изучите чертеж с помощью &lt;TECHNOLOGY&gt;куратора строительных работ﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_REACTION3_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте из &lt;TRADEABLE&gt;азота&lt;&gt; и &lt;FUEL&gt;сжатого углерода&lt;&gt;. Изучите чертеж, нападая на &lt;TECHNOLOGY&gt;планетарные заводы&lt;&gt;, или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Собирайте азот с помощью &lt;TECHNOLOGY&gt;атмосферного комбайна&lt;&gt; на &lt;TRADEABLE&gt;лесистых&lt;&gt; и &lt;TRADEABLE&gt;токсичных&lt;&gt; планетах.&#xA;Получить сжатый углерод можно очисткой обычного планетарного &lt;FUEL&gt;углерода&lt;&gt;.
                                { "Russian", "Создайте из &lt;TRADEABLE&gt;азота&lt;&gt; и &lt;FUEL&gt;сжатого углерода﻿.&lt;&gt; Изучите чертеж, нападая на &lt;TECHNOLOGY&gt;планетарные заводы﻿,&lt;&gt; или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии﻿.&lt;&gt;&#xA;Собирайте азот с помощью &lt;TECHNOLOGY&gt;атмосферного комбайна&lt;&gt; на &lt;TRADEABLE&gt;лесистых&lt;&gt; и &lt;TRADEABLE&gt;токсичных&lt;&gt; планетах.&#xA;Получить сжатый углерод можно очисткой обычного планетарного &lt;FUEL&gt;углерода﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_COMPOUND3_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Производится из продуктов &lt;TRADEABLE&gt;на основе газов&lt;&gt;: &lt;COMMODITY&gt;обогащенного углерода&lt;&gt; и &lt;COMMODITY&gt;азотной соли&lt;&gt;.&#xA;Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы&lt;&gt;, или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.
                                { "Russian", "Производится из продуктов &lt;TRADEABLE&gt;на основе газов﻿:&lt;&gt; &lt;COMMODITY&gt;обогащенного углерода&lt;&gt; и &lt;COMMODITY&gt;азотной соли﻿.&lt;&gt;&#xA;Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы﻿,&lt;&gt; или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_MEGAPROD3_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крайне продвинутый продукт. Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы&lt;&gt;, или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.&#xA;Производится из &lt;COMMODITY&gt;живого стекла&lt;&gt; и &lt;COMMODITY&gt;крионасосов&lt;&gt;.
                                { "Russian", "Крайне продвинутый продукт. Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы﻿,&lt;&gt; или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии﻿.&lt;&gt;&#xA;Производится из &lt;COMMODITY&gt;живого стекла&lt;&gt; и &lt;COMMODITY&gt;крионасосов﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PIN_.*4_OBJ_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ALLOY4_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте %ITEM% или получите его очисткой &lt;EARTH&gt;урана&lt;&gt; и &lt;EARTH&gt;чистого феррита&lt;&gt;. Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель&lt;&gt;.&#xA;Большие залежи урана можно найти на &lt;COMMODITY&gt;радиоактивных планетах&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Получить чистый феррит можно очисткой ферритной пыли, добытой из обычных минералов.
                                { "Russian", "Создайте %ITEM% или получите его очисткой &lt;EARTH&gt;урана&lt;&gt; и &lt;EARTH&gt;чистого феррита﻿.&lt;&gt; Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель﻿.&lt;&gt;&#xA;Большие залежи урана можно найти на &lt;COMMODITY&gt;радиоактивных планетах&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt;&#xA;Получить чистый феррит можно очисткой ферритной пыли, добытой из обычных минералов." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_FARMPROD4_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте из &lt;TECHNOLOGY&gt;морозных кристаллов&lt;&gt; и &lt;TRADEABLE&gt;солания&lt;&gt;. Изучите чертеж на базе с помощью &lt;TECHNOLOGY&gt;научного специалиста&lt;&gt;.&#xA;Морозные кристаллы можно вырастить или найти в дикой природе на &lt;TECHNOLOGY&gt;низкотемпературных планетах&lt;&gt;.&#xA;Соланий можно вырастить или встретить в дикой природе на &lt;FUEL&gt;высокотемпературных планетах&lt;&gt;.
                                { "Russian", "Создайте из &lt;TECHNOLOGY&gt;морозных кристаллов&lt;&gt; и &lt;TRADEABLE&gt;солания﻿.&lt;&gt; Изучите чертеж на базе с помощью &lt;TECHNOLOGY&gt;научного специалиста﻿.&lt;&gt;&#xA;Морозные кристаллы можно вырастить или найти в дикой природе на &lt;TECHNOLOGY&gt;низкотемпературных планетах﻿.&lt;&gt;&#xA;Соланий можно вырастить или встретить в дикой природе на &lt;FUEL&gt;высокотемпературных планетах﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_COMPOUND4_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Производится из продуктов &lt;TRADEABLE&gt;на основе газов&lt;&gt;: &lt;COMMODITY&gt;органического катализатора&lt;&gt; и &lt;COMMODITY&gt;азотной соли&lt;&gt;.&#xA;Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы&lt;&gt;, или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.
                                { "Russian", "Производится из продуктов &lt;TRADEABLE&gt;на основе газов﻿:&lt;&gt; &lt;COMMODITY&gt;органического катализатора&lt;&gt; и &lt;COMMODITY&gt;азотной соли﻿.&lt;&gt;&#xA;Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы﻿,&lt;&gt; или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PIN_.*5_OBJ_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ALLOY5_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте %ITEM% или получите его очисткой &lt;EARTH&gt;фосфора&lt;&gt; и &lt;TECHNOLOGY&gt;ионизированного кобальта&lt;&gt;. Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель&lt;&gt;.&#xA;Большие залежи фосфора можно найти на &lt;FUEL&gt;высокотемпературных планетах&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Получить ионизированный кобальт можно очисткой &lt;TECHNOLOGY&gt;кобальта&lt;&gt;, добываемого из &lt;TECHNOLOGY&gt;подземных залежей минералов&lt;&gt;.
                                { "Russian", "Создайте %ITEM% или получите его очисткой &lt;EARTH&gt;фосфора&lt;&gt; и &lt;TECHNOLOGY&gt;ионизированного кобальта﻿.&lt;&gt; Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель﻿.&lt;&gt;&#xA;Большие залежи фосфора можно найти на &lt;FUEL&gt;высокотемпературных планетах&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt;&#xA;Получить ионизированный кобальт можно очисткой &lt;TECHNOLOGY&gt;кобальта﻿,&lt;&gt; добываемого из &lt;TECHNOLOGY&gt;подземных залежей минералов﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_FARMPROD5_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте из &lt;TRADEABLE&gt;мякоти кактуса&lt;&gt; и &lt;TRADEABLE&gt;звездного лука&lt;&gt;. Изучите чертеж на базе с помощью &lt;TECHNOLOGY&gt;научного специалиста&lt;&gt;.&#xA;Мякоть кактуса можно получить из выращенных растений или найти в дикой природе на &lt;STELLAR&gt;пустынных планетах&lt;&gt;.&#xA;Звездный лук можно вырастить или найти в дикой природе на &lt;TRADEABLE&gt;лесистых планетах&lt;&gt;.
                                { "Russian", "Создайте из &lt;TRADEABLE&gt;мякоти кактуса&lt;&gt; и &lt;TRADEABLE&gt;звёздного лука﻿.&lt;&gt; Изучите чертеж на базе с помощью &lt;TECHNOLOGY&gt;научного специалиста﻿.&lt;&gt;&#xA;Мякоть кактуса можно получить из выращенных растений или найти в дикой природе на &lt;STELLAR&gt;пустынных планетах﻿.&lt;&gt;&#xA;Звёздный лук можно вырастить или найти в дикой природе на &lt;TRADEABLE&gt;лесистых планетах﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_COMPOUND5_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Производится из продуктов &lt;TRADEABLE&gt;на основе газов&lt;&gt;: &lt;COMMODITY&gt;полупроводников&lt;&gt; и &lt;COMMODITY&gt;обогащенного углерода&lt;&gt;.&#xA;Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы&lt;&gt;, или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.
                                { "Russian", "Производится из продуктов &lt;TRADEABLE&gt;на основе газов﻿:&lt;&gt; &lt;COMMODITY&gt;полупроводников&lt;&gt; и &lt;COMMODITY&gt;обогащенного углерода﻿.&lt;&gt;&#xA;Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы﻿,&lt;&gt; или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PIN_.*6_OBJ_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ALLOY6_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM% можно создать или получить из &lt;EARTH&gt;диоксита&lt;&gt; и &lt;TECHNOLOGY&gt;ионизированного кобальта&lt;&gt;. Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель&lt;&gt;.&#xA;Большие залежи диоксита можно найти на &lt;TECHNOLOGY&gt;низкотемпературных планетах&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Получить ионизированный кобальт можно очисткой &lt;TECHNOLOGY&gt;кобальта&lt;&gt;, добываемого из &lt;TECHNOLOGY&gt;подземных залежей минералов&lt;&gt;.
                                { "Russian", "%ITEM% можно создать или получить из &lt;EARTH&gt;диоксита&lt;&gt; и &lt;TECHNOLOGY&gt;ионизированного кобальта﻿.&lt;&gt; Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель﻿.&lt;&gt;&#xA;Большие залежи диоксита можно найти на &lt;TECHNOLOGY&gt;низкотемпературных планетах&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt;&#xA;Получить ионизированный кобальт можно очисткой &lt;TECHNOLOGY&gt;кобальта﻿,&lt;&gt; добываемого из &lt;TECHNOLOGY&gt;подземных залежей минералов﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_FARMPROD6_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте из &lt;TRADEABLE&gt;мякоти кактуса&lt;&gt;. Изучите чертеж на базе с помощью &lt;TECHNOLOGY&gt;научного специалиста&lt;&gt;.&#xA;Мякоть кактуса можно получить из выращенных растений или найти в дикой природе на &lt;STELLAR&gt;пустынных планетах&lt;&gt;.
                                { "Russian", "Создайте из &lt;TRADEABLE&gt;мякоти кактуса﻿.&lt;&gt; Изучите чертеж на базе с помощью &lt;TECHNOLOGY&gt;научного специалиста﻿.&lt;&gt;&#xA;Мякоть кактуса можно получить из выращенных растений или найти в дикой природе на &lt;STELLAR&gt;пустынных планетах﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_COMPOUND6_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Производится из продуктов &lt;TRADEABLE&gt;на основе газов&lt;&gt;: &lt;COMMODITY&gt;горячего льда&lt;&gt; и &lt;COMMODITY&gt;термического конденсата&lt;&gt;.&#xA;Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы&lt;&gt;, или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;.
                                { "Russian", "Производится из продуктов &lt;TRADEABLE&gt;на основе газов﻿:&lt;&gt; &lt;COMMODITY&gt;горячего льда&lt;&gt; и &lt;COMMODITY&gt;термического конденсата﻿.&lt;&gt;&#xA;Изучите соответствующие чертежи, нападая на &lt;TECHNOLOGY&gt;планетарные заводы﻿,&lt;&gt; или в &lt;STELLAR&gt;лаборатории синтеза&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PIN_.*7_OBJ_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ALLOY7_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте %ITEM% или получите его очисткой &lt;SPECIAL&gt;герокса&lt;&gt;, &lt;SPECIAL&gt;грязной бронзы&lt;&gt; и &lt;SPECIAL&gt;лемия&lt;&gt;. Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель&lt;&gt;.
                                { "Russian", "Создайте %ITEM% или получите его очисткой &lt;SPECIAL&gt;герокса﻿,&lt;&gt; &lt;SPECIAL&gt;грязной бронзы&lt;&gt; и &lt;SPECIAL&gt;лемия﻿.&lt;&gt; Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_FARMPROD7_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте из &lt;COMMODITY&gt;кислоты&lt;&gt; и &lt;COMMODITY&gt;нестабильного геля&lt;&gt;.&#xA;Изучите чертеж на базе с помощью &lt;TECHNOLOGY&gt;научного специалиста&lt;&gt;.
                                { "Russian", "Создайте из &lt;COMMODITY&gt;кислоты&lt;&gt; и &lt;COMMODITY&gt;нестабильного геля﻿.&lt;&gt;&#xA;Изучите чертеж на базе с помощью &lt;TECHNOLOGY&gt;научного специалиста﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PIN_.*8_OBJ_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ALLOY8_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте %ITEM% или получите его очисткой &lt;SPECIAL&gt;арония&lt;&gt;, &lt;SPECIAL&gt;магно-золота&lt;&gt; и &lt;SPECIAL&gt;грантина&lt;&gt;. Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель&lt;&gt;.
                                { "Russian", "Создайте %ITEM% или получите его очисткой &lt;SPECIAL&gt;арония﻿,&lt;&gt; &lt;SPECIAL&gt;магно-золота&lt;&gt; и &lt;SPECIAL&gt;грантина﻿.&lt;&gt; Для очистки улучшенных продуктов требуется &lt;TECHNOLOGY&gt;большой очиститель﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_FARMPROD8_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте из &lt;COMMODITY&gt;смазки&lt;&gt; и &lt;COMMODITY&gt;стекла&lt;&gt;.&#xA;Изучите чертеж на базе с помощью &lt;TECHNOLOGY&gt;научного специалиста&lt;&gt;.
                                { "Russian", "Создайте из &lt;COMMODITY&gt;смазки&lt;&gt; и &lt;COMMODITY&gt;стекла﻿.&lt;&gt;&#xA;Изучите чертеж на базе с помощью &lt;TECHNOLOGY&gt;научного специалиста﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PIN_.*9_OBJ_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_FARMPROD9_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создайте из &lt;COMMODITY&gt;тепловых конденсаторов&lt;&gt; и &lt;COMMODITY&gt;поливолокна&lt;&gt;.&#xA;Изучите чертеж на базе с помощью &lt;TECHNOLOGY&gt;научного специалиста&lt;&gt;.
                                { "Russian", "Создайте из &lt;COMMODITY&gt;тепловых конденсаторов&lt;&gt; и &lt;COMMODITY&gt;поливолокна﻿.&lt;&gt;&#xA;Изучите чертеж на базе с помощью &lt;TECHNOLOGY&gt;научного специалиста﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PIN_PLANT_.*_OBJ_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PLANT_TOXIC_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Грибковую плесень&lt;&gt; добывают из спороносного слоя &lt;TRADEABLE&gt;скоплений грибов&lt;&gt;.&#xA;Растение-хозяин предпочитает &lt;TRADEABLE&gt;токсичный климат&lt;&gt;, но может быть выращено в любой среде с помощью &lt;TECHNOLOGY&gt;гидропонного блока&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Грибковую плесень&lt;&gt; добывают из спороносного слоя &lt;TRADEABLE&gt;скоплений грибов﻿.&lt;&gt;&#xA;Растение-хозяин предпочитает &lt;TRADEABLE&gt;токсичный климат﻿,&lt;&gt; но может быть выращено в любой среде с помощью &lt;TECHNOLOGY&gt;гидропонного блока﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PLANT_SNOW_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Морозные кристаллы&lt;&gt; добываются из листьев &lt;TRADEABLE&gt;плюхеи&lt;&gt;.&#xA;Растение-хозяин предпочитает &lt;TECHNOLOGY&gt;холодный климат&lt;&gt;, но может быть выращено в любой среде с помощью &lt;TECHNOLOGY&gt;гидропонного блока&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Морозные кристаллы&lt;&gt; добываются из листьев &lt;TRADEABLE&gt;плюхеи﻿.&lt;&gt;&#xA;Растение-хозяин предпочитает &lt;TECHNOLOGY&gt;холодный климат﻿,&lt;&gt; но может быть выращено в любой среде с помощью &lt;TECHNOLOGY&gt;гидропонного блока﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PLANT_RADIO_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Гамма-корень&lt;&gt; добывается из корней &lt;TRADEABLE&gt;гамма-травы&lt;&gt;.&#xA;Растение-хозяин предпочитает &lt;COMMODITY&gt;радиоактивный климат&lt;&gt;, но может быть выращено в любой среде с помощью &lt;TECHNOLOGY&gt;гидропонного блока&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Гамма-корень&lt;&gt; добывается из корней &lt;TRADEABLE&gt;гамма-травы﻿.&lt;&gt;&#xA;Растение-хозяин предпочитает &lt;COMMODITY&gt;радиоактивный климат﻿,&lt;&gt; но может быть выращено в любой среде с помощью &lt;TECHNOLOGY&gt;гидропонного блока﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PLANT_DUST_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Мякоть кактуса&lt;&gt; добывается из мякоти &lt;TRADEABLE&gt;эхинокактуса&lt;&gt;.&#xA;Растение-хозяин предпочитает &lt;STELLAR&gt;пустынный климат&lt;&gt;, но может быть выращено в любой среде с помощью &lt;TECHNOLOGY&gt;гидропонного блока&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Мякоть кактуса&lt;&gt; добывается из мякоти &lt;TRADEABLE&gt;эхинокактуса﻿.&lt;&gt;&#xA;Растение-хозяин предпочитает &lt;STELLAR&gt;пустынный климат﻿,&lt;&gt; но может быть выращено в любой среде с помощью &lt;TECHNOLOGY&gt;гидропонного блока﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PLANT_HOT_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Соланий&lt;&gt; добывается из коры &lt;TRADEABLE&gt;солнечного вьюна&lt;&gt;.&#xA;Растение-хозяин предпочитает &lt;FUEL&gt;жаркий климат&lt;&gt;, но может быть выращено в любой среде с помощью &lt;TECHNOLOGY&gt;гидропонного блока&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Соланий&lt;&gt; добывается из коры &lt;TRADEABLE&gt;солнечного вьюна﻿.&lt;&gt;&#xA;Растение-хозяин предпочитает &lt;FUEL&gt;жаркий климат﻿,&lt;&gt; но может быть выращено в любой среде с помощью &lt;TECHNOLOGY&gt;гидропонного блока﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PLANT_LUSH_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Звездный лук&lt;&gt; добывается из светящихся плодов &lt;TRADEABLE&gt;звездяники&lt;&gt;.&#xA;Растение-хозяин предпочитает климат &lt;TRADEABLE&gt;лесистых планет&lt;&gt;, но может быть выращено в любой среде с помощью &lt;TECHNOLOGY&gt;гидропонного блока&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Звёздный лук&lt;&gt; добывается из светящихся плодов &lt;TRADEABLE&gt;звездяники﻿.&lt;&gt;&#xA;Растение-хозяин предпочитает климат &lt;TRADEABLE&gt;лесистых планет﻿,&lt;&gt; но может быть выращено в любой среде с помощью &lt;TECHNOLOGY&gt;гидропонного блока﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PLANT_CAVE_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Луковичная тыква&lt;&gt; добывается из растущей &lt;TECHNOLOGY&gt;под землей&lt;&gt; &lt;TRADEABLE&gt;пещерной тыквы&lt;&gt;.&#xA;Находите входы в пещеры или пробивайте свои собственные с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;. &lt;RED&gt;ВНИМАНИЕ!&lt;&gt; Во многих пещерах обитает опасная флора.
                                { "Russian", "&lt;TRADEABLE&gt;Луковичная тыква&lt;&gt; добывается из растущей &lt;TECHNOLOGY&gt;под землей&lt;&gt; &lt;TRADEABLE&gt;пещерной тыквы﻿.&lt;&gt;&#xA;Находите входы в пещеры или пробивайте свои собственные с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора﻿.&lt;&gt; &lt;RED&gt;ВНИМАНИЕ!&lt;&gt; Во многих пещерах обитает опасная флора." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PLANT_WATER_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Водорослевые мешки&lt;&gt; добываются из растущей &lt;TECHNOLOGY&gt;под водой&lt;&gt;&lt;TRADEABLE&gt;свечной водоросли&lt;&gt;.&#xA;Чтобы повысить эффективность экзокостюма под водой, улучшите его &lt;TECHNOLOGY&gt;аэрационную мембрану&lt;&gt; или пополняйте запас кислорода в костюме с помощью &lt;TRADEABLE&gt;водорослевых мешков&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Водорослевые мешки&lt;&gt; добываются из растущей &lt;TECHNOLOGY&gt;под водой&lt;&gt;&lt;TRADEABLE&gt;свечной водоросли﻿.&lt;&gt;&#xA;Чтобы повысить эффективность экзокостюма под водой, улучшите его &lt;TECHNOLOGY&gt;аэрационную мембрану&lt;&gt; или пополняйте запас кислорода в костюме с помощью &lt;TRADEABLE&gt;водорослевых мешков﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PLANT_POOP_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Фекалий&lt;&gt; — богатый азотом органический материал, добываемый из навоза крупных животных. Кормите животных, чтобы увеличить производство фекалия.&#xA;В условиях подходящего климата и при наличии соответствующего растения-хозяина фекалий можно выращивать самостоятельно. Обратитесь за советом к &lt;TRADEABLE&gt;специалисту по сельскому хозяйству&lt;&gt;.
                                { "Russian", "&lt;FUEL&gt;Фекалий&lt;&gt; — богатый азотом органический материал, добываемый из навоза крупных животных. Кормите животных, чтобы увеличить производство фекалия.&#xA;В условиях подходящего климата и при наличии соответствующего растения-хозяина фекалий можно выращивать самостоятельно. Обратитесь за советом к &lt;TRADEABLE&gt;специалисту по сельскому хозяйству﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PLANT_POOP_OBJ_TIP_ALT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Коприт&lt;&gt; — богатый азотом органический материал, добываемый из фекалий крупных животных. Кормите животных, чтобы увеличить производство коприта.&#xA;В условиях подходящего климата и при наличии соответствующего растения-хозяина коприт можно выращивать самостоятельно. Обратитесь за советом к &lt;TRADEABLE&gt;специалисту по сельскому хозяйству&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Коприт&lt;&gt; — богатый азотом органический материал, добываемый из фекалий крупных животных. Кормите животных, чтобы увеличить производство коприта.&#xA;В условиях подходящего климата и при наличии соответствующего растения-хозяина коприт можно выращивать самостоятельно. Обратитесь за советом к &lt;TRADEABLE&gt;специалисту по сельскому хозяйству﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PLANT_POOP_OBJ_TIP_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Образцы навоза&lt;&gt; — богатый азотом органический материал, добываемый из фекалий крупных животных. Кормите животных, чтобы увеличить производство коприта.&#xA;В условиях подходящего климата и при наличии соответствующего растения-хозяина вы можете самостоятельно выращивать заменитель навоза. Обратитесь за советом к &lt;TRADEABLE&gt;специалисту по сельскому хозяйству&lt;&gt;.
                                { "Russian", "&lt;FUEL&gt;Образцы навоза&lt;&gt; — богатый азотом органический материал, добываемый из фекалий крупных животных. Кормите животных, чтобы увеличить производство коприта.&#xA;В условиях подходящего климата и при наличии соответствующего растения-хозяина вы можете самостоятельно выращивать заменитель навоза. Обратитесь за советом к &lt;TRADEABLE&gt;специалисту по сельскому хозяйству﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_GUIDE_BODY_SURVIVAL_BASIC
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GUIDE_BODY_SURVIVAL_BASICS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Защита от вредных факторов&lt;&gt; жизненно важна, если вы собираетесь находиться вне корабля. Носите с собой &lt;&gt;натрий&lt;COMMODITY&gt; или &lt;COMMODITY&gt;ионные батареи&lt;&gt;. Постарайтесь найти &lt;VAL_ON&gt;убежище в пещерах или строениях&lt;&gt;. Многие угрозы ночью становятся опаснее.&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;TECHNOLOGY&gt;&lt;IMG&gt;SCAN&lt;&gt;&lt;&gt;), чтобы найти &lt;STELLAR&gt;ресурсы, необходимые для выживания&lt;&gt;.&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;, чтобы издалека обнаруживать и выделять важные объекты. Нажмите &lt;TECHNOLOGY&gt;&lt;IMG&gt;AIM&lt;&gt;&lt;&gt;, чтобы открыть визор. Осмотритесь по сторонам, чтобы найти постройки и тайники с припасам. В таких местах обычно много &lt;VAL_ON&gt;ресурсов&lt;&gt; и &lt;VAL_ON&gt;информации&lt;&gt;.&#xA;&#xA;&lt;VAL_ON&gt;Значок рюкзака&lt;&gt; внизу показывает состояние инвентаря. Не все можно использовать сразу. Распределите материалы в порядке важности, чтобы обеспечить работу экзокостюма. Улучшенные продукты всегда можно добыть еще раз.&#xA;&#xA;Улучшения, необходимые для выживания, можно приобрести у &lt;TECHNOLOGY&gt;торговцев технологиями&lt;&gt; на космических станциях и в планетарных магазинах.&#xA;&#xA;Существа, отмеченные &lt;FUEL&gt;знаком красной лапы&lt;&gt; — хищники. Они могут быть опасны. Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить их издалека (приближать и отдалять можно с помощью &lt;IMG&gt;ZOOM&lt;&gt;).
                                -- &lt;VAL_ON&gt;Hazard Protection&lt;&gt; is vital if you plan to spend time away from your ship. Carry &lt;COMMODITY&gt;Sodium&lt;&gt; or &lt;COMMODITY&gt;Ion Batteries&lt;&gt;. Have a plan to find &lt;VAL_ON&gt;shelter in caves or structures&lt;&gt;. Many hazards are worse at night.&#xA;&#xA;Use the &lt;TECHNOLOGY&gt;Scanner&lt;&gt; (&lt;TECHNOLOGY&gt;&lt;IMG&gt;SCAN&lt;&gt;&lt;&gt;) to locate key &lt;STELLAR&gt;survival resources&lt;&gt;.&#xA;&#xA;Use &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; to identify points of interest from afar. Use &lt;TECHNOLOGY&gt;&lt;IMG&gt;AIM&lt;&gt;&lt;&gt; to bring up visor. Look around to locate buildings and supply caches. These locations are often rich in &lt;VAL_ON&gt;resources&lt;&gt; and &lt;VAL_ON&gt;information&lt;&gt;.&#xA;&#xA;The &lt;VAL_ON&gt;backpack icon&lt;&gt; in the bottom right shows inventory status. Not everything is immediately useful. Prioritise the materials to maintain your Exosuit. Advanced products can always be found again.&#xA;&#xA;Acquire vital survival upgrades from &lt;TECHNOLOGY&gt;Technology Merchants&lt;&gt; on space stations and planetary shops.&#xA;&#xA;Nearby creatures marked with a &lt;FUEL&gt;Red Paw&lt;&gt; are predators and may be dangerous. Use your &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to identify them from afar (zoom with &lt;IMG&gt;ZOOM&lt;&gt;).
                                { "Russian", "&lt;VAL_ON&gt;Защита от вредных факторов&lt;&gt; жизненно важна, если вы собираетесь находиться вне корабля. Носите с собой &lt;COMMODITY&gt;натрий&lt;&gt; или &lt;COMMODITY&gt;ионные батареи﻿.&lt;&gt; Постарайтесь найти &lt;VAL_ON&gt;убежище в пещерах или строениях﻿.&lt;&gt; Многие угрозы ночью становятся опаснее.&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;TECHNOLOGY&gt;&lt;IMG&gt;SCAN&lt;&gt;&lt;&gt;), чтобы найти &lt;STELLAR&gt;ресурсы, необходимые для выживания﻿.&lt;&gt;&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;, чтобы издалека обнаруживать и выделять важные объекты. Нажмите &lt;TECHNOLOGY&gt;&lt;IMG&gt;AIM&lt;&gt;&lt;&gt;, чтобы активировать визор. Осмотритесь по сторонам, чтобы найти постройки и тайники с припасам. В таких местах обычно много &lt;VAL_ON&gt;ресурсов&lt;&gt; и &lt;VAL_ON&gt;информации﻿.&lt;&gt;&#xA;&#xA;&lt;VAL_ON&gt;Значок рюкзака&lt;&gt; внизу показывает состояние инвентаря. В начале не все предметы будут полезными. Распределите материалы в порядке важности, чтобы поддержать работу экзокостюма. Продвинутые продукты всегда можно найти еще раз.&#xA;&#xA;Улучшения, необходимые для выживания, можно приобрести у &lt;TECHNOLOGY&gt;торговцев технологиями&lt;&gt; на космических станциях и в магазинах на планетах.&#xA;&#xA;Существа, отмеченные &lt;FUEL&gt;знаком красной лапы&lt;&gt; — хищники. Они могут быть опасны. Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить их издалека (приближать и отдалять можно с помощью &lt;IMG&gt;ZOOM&lt;&gt;)." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GUIDE_BODY_SURVIVAL_BASIC_VR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;VAL_ON&gt;Защита от вредных факторов&lt;&gt; жизненно важна, если вы собираетесь находиться вне корабля. Носите с собой &lt;COMMODITY&gt;натрий&lt;&gt; или &lt;COMMODITY&gt;ионные батареи&lt;&gt;. Постарайтесь найти &lt;VAL_ON&gt;убежище в пещерах или строениях&lt;&gt;. Многие угрозы ночью становятся опаснее.&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;TECHNOLOGY&gt;&lt;IMG&gt;SCAN&lt;&gt;&lt;&gt;), чтобы найти &lt;STELLAR&gt;ресурсы, необходимые для выживания&lt;&gt;.&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;, чтобы издалека обнаруживать и выделять важные объекты. Нажмите &lt;TECHNOLOGY&gt;&lt;IMG&gt;AIM&lt;&gt;&lt;&gt;, чтобы открыть визор. Осмотритесь по сторонам, чтобы найти постройки и тайники с припасам. В таких местах обычно много &lt;VAL_ON&gt;ресурсов&lt;&gt; и &lt;VAL_ON&gt;информации&lt;&gt;.&#xA;&#xA;&lt;VAL_ON&gt;Значок рюкзака&lt;&gt; внизу показывает состояние инвентаря. Не все можно использовать сразу. Распределите материалы в порядке важности, чтобы обеспечить работу экзокостюма. Улучшенные продукты всегда можно добыть еще раз.&#xA;&#xA;Улучшения, необходимые для выживания, можно приобрести у &lt;TECHNOLOGY&gt;торговцев технологиями&lt;&gt; на космических станциях и в планетарных магазинах.&#xA;&#xA;Существа, отмеченные &lt;FUEL&gt;знаком красной лапы&lt;&gt; — хищники. Они могут быть опасны. Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить их издалека.
                                -- &lt;VAL_ON&gt;Hazard Protection&lt;&gt; is vital if you plan to spend time away from your ship. Carry &lt;COMMODITY&gt;Sodium&lt;&gt; or &lt;COMMODITY&gt;Ion Batteries&lt;&gt;. Have a plan to find &lt;VAL_ON&gt;shelter in caves or structures&lt;&gt;. Many hazards are worse at night.&#xA;&#xA;Use the &lt;TECHNOLOGY&gt;Scanner&lt;&gt; (&lt;TECHNOLOGY&gt;&lt;IMG&gt;SCAN&lt;&gt;&lt;&gt;) to locate key &lt;STELLAR&gt;survival resources&lt;&gt;.&#xA;&#xA;Use &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; to identify points of interest from afar. Use &lt;TECHNOLOGY&gt;&lt;IMG&gt;AIM&lt;&gt;&lt;&gt; to bring up visor. Look around to locate buildings and supply caches. These locations are often rich in &lt;VAL_ON&gt;resources&lt;&gt; and &lt;VAL_ON&gt;information&lt;&gt;.&#xA;&#xA;The &lt;VAL_ON&gt;backpack icon&lt;&gt; in the bottom right shows inventory status. Not everything is immediately useful. Prioritise the materials to maintain your Exosuit. Advanced products can always be found again.&#xA;&#xA;Acquire vital survival upgrades from &lt;TECHNOLOGY&gt;Technology Merchants&lt;&gt; on space stations and planetary shops.&#xA;&#xA;Nearby creatures marked with a &lt;FUEL&gt;Red Paw&lt;&gt; are predators and may be dangerous. Use your &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to identify them from afar.
                                { "Russian", "&lt;VAL_ON&gt;Защита от вредных факторов&lt;&gt; жизненно важна, если вы собираетесь находиться вне корабля. Носите с собой &lt;COMMODITY&gt;натрий&lt;&gt; или &lt;COMMODITY&gt;ионные батареи﻿.&lt;&gt; Постарайтесь найти &lt;VAL_ON&gt;убежище в пещерах или строениях﻿.&lt;&gt; Многие угрозы ночью становятся опаснее.&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;сканер&lt;&gt; (&lt;TECHNOLOGY&gt;&lt;IMG&gt;SCAN&lt;&gt;&lt;&gt;), чтобы найти &lt;STELLAR&gt;ресурсы, необходимые для выживания﻿.&lt;&gt;&#xA;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;, чтобы издалека обнаруживать и выделять важные объекты. Нажмите &lt;TECHNOLOGY&gt;&lt;IMG&gt;AIM&lt;&gt;&lt;&gt;, чтобы активировать визор. Осмотритесь по сторонам, чтобы найти постройки и тайники с припасам. В таких местах обычно много &lt;VAL_ON&gt;ресурсов&lt;&gt; и &lt;VAL_ON&gt;информации﻿.&lt;&gt;&#xA;&#xA;&lt;VAL_ON&gt;Значок рюкзака&lt;&gt; внизу показывает состояние инвентаря. В начале не все предметы будут полезными. Распределите материалы в порядке важности, чтобы поддержать работу экзокостюма. Продвинутые продукты всегда можно найти еще раз.&#xA;&#xA;Улучшения, необходимые для выживания, можно приобрести у &lt;TECHNOLOGY&gt;торговцев технологиями&lt;&gt; на космических станциях и в магазинах на планетах.&#xA;&#xA;Существа, отмеченные &lt;FUEL&gt;знаком красной лапы&lt;&gt; — хищники. Они могут быть опасны. Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;), чтобы обнаружить их издалека." },
                            }
                        },
                        --#endregion

                    }
                },
                { -- LANGUAGE/NMS_LOC5_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC5_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Разное
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_SUBSTANCE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖИТЬ ВЕЩЕСТВО
                                -- LOCATE SUBSTANCE
                                { "Russian", "ЗАКРЕПИТЬ ИНСТРУКЦИЮ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_LUSH_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти звездный лук
                                -- Locate Star Bulb
                                { "Russian", "Найти звёздный лук" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_LUSH_MARKER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружен звездный лук
                                -- Star Bulb Detected
                                { "Russian", "Обнаружен звёздный лук" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_LUSH_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найти звездный лук
                                -- Locate Star Bulb
                                { "Russian", "Найти звёздный лук" },
                            }
                        },
                        --#endregion

                        --#region Схема неизвестна
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PROD_NOT_KNOWN_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Схема продукта неизвестна&lt;&gt;&#xA;Найдите следующую схему в планетарных комплексах: &lt;STELLAR&gt;%ITEM%&lt;&gt;&#xA;Найдите &lt;SPECIAL&gt;защищенные комплексы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;планетарной карты&lt;&gt;
                                -- &lt;FUEL&gt;Product Recipe Not Known&lt;&gt;&#xA;Acquire &lt;STELLAR&gt;%ITEM%&lt;&gt; recipe from planetary facilities&#xA;Locate &lt;SPECIAL&gt;secure facilities&lt;&gt; with a &lt;TECHNOLOGY&gt;Planetary Chart&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;%ITEM% — чертеж неизвестен&lt;&gt;&#xA;Найдите его в &lt;SPECIAL&gt;защищенных комплексах&lt;&gt;&#xA;с помощью &lt;TECHNOLOGY&gt;планетарной карты&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PROD_NOT_KNOWN_MSG_ALT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;%ITEM% Схема неизвестна&lt;&gt;&#xA;Найдите новые схемы в &lt;SPECIAL&gt;лаборатории синтеза&lt;&gt; на борту Космической Аномалии.&#xA;Лаборатория синтеза и другие исследовательские станции находятся в центре Аномалии.
                                -- &lt;FUEL&gt;%ITEM% Recipe Not Known&lt;&gt;&#xA;Acquire recipes from the &lt;SPECIAL&gt;Synthesis Lab&lt;&gt; aboard the Space Anomaly&#xA;Find the Synthesis Lab with other research stations at the centre of the Anomaly
                                { "Russian", "&lt;FUEL&gt;%ITEM% — чертеж неизвестен&lt;&gt;&#xA;Купите его в &lt;SPECIAL&gt;лаборатории синтеза&lt;&gt; на Космической Аномалии&#xA;Лаборатория синтеза находится в центре Аномалии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PROD_NOT_KNOWN_MSG_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;%ITEM% Схема неизвестна&lt;&gt;&#xA;Найдите новые схемы в &lt;SPECIAL&gt;лаборатории синтеза&lt;&gt; на борту Космической Аномалии.&#xA;Вызовите Космическую Аномалию через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- &lt;FUEL&gt;%ITEM% Recipe Not Known&lt;&gt;&#xA;Acquire recipes from the &lt;SPECIAL&gt;Synthesis Lab&lt;&gt; aboard the Space Anomaly&#xA;Summon the Space Anomaly from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "&lt;FUEL&gt;%ITEM% — чертеж неизвестен&lt;&gt;&#xA;Купите его в &lt;SPECIAL&gt;лаборатории синтеза&lt;&gt; на Космической Аномалии&#xA;Вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TECH_NOT_KNOWN_MSG_ALT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;%ITEM% Чертеж неизвестен&lt;&gt;&#xA;Приобретите чертежи у &lt;TECHNOLOGY&gt;исследователей технологий&lt;&gt;.&#xA;Найти эти итерации Странников можно на их местах в центре Аномалии.
                                -- &lt;FUEL&gt;%ITEM% Blueprint Not Known&lt;&gt;&#xA;Acquire blueprints from &lt;TECHNOLOGY&gt;Technology Researchers&lt;&gt;&#xA;Find these traveller iterations at their stations in the centre of the Anomaly
                                { "Russian", "&lt;FUEL&gt;%ITEM% — чертеж неизвестен&lt;&gt;&#xA;Купите его у &lt;TECHNOLOGY&gt;исследователей технологий&lt;&gt;&#xA;Найдите итерации Странников в центре Аномалии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TECH_NOT_KNOWN_MSG_ALT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;%ITEM% Чертеж неизвестен&lt;&gt;&#xA;Приобретите чертежи технологий на борту Космической Аномалии.&#xA;Вызовите Космическую Аномалию через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                -- &lt;FUEL&gt;%ITEM% Blueprint Not Known&lt;&gt;&#xA;Acquire technology blueprints aboard the Space Anomaly&#xA;Summon the Space Anomaly from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
                                { "Russian", "&lt;FUEL&gt;%ITEM% — чертеж неизвестен&lt;&gt;&#xA;Купите его на борту Космической Аномалии&#xA;Вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_TECH_NOT_KNOWN_MSG_ALT3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;%ITEM% Схема неизвестна&lt;&gt;&#xA;Изучайте схемы, выполняя &lt;STELLAR&gt;этапы экспедиции&lt;&gt;&#xA;Выберите &lt;EXPED&gt;%NAME%&lt;&gt; в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- &lt;FUEL&gt;%ITEM% Recipe Not Known&lt;&gt;&#xA;Learn recipes by completing &lt;STELLAR&gt;Expedition Milestones&lt;&gt;&#xA;Select &lt;EXPED&gt;%NAME%&lt;&gt; from the Expedition Log (&lt;IMG&gt;OPTIONS&lt;&gt;)
                                { "Russian", "&lt;FUEL&gt;%ITEM% — чертеж неизвестен&lt;&gt;&#xA;Изучите его, выполнив &lt;STELLAR&gt;этап экспедиции&lt;&gt;&#xA;Выберите &lt;EXPED&gt;%NAME%&lt;&gt; в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_ROBOT1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_ROBOT1_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Пугний&lt;&gt; добывается из тел уничтоженных стражей.&#xA;Текущий уровень активности патрулей стражей: &lt;COMMODITY&gt;низкий&lt;&gt;.&#xA;Найдите место с повышенной активностью стражей.
                                { "Russian", "&lt;SPECIAL&gt;Пугний&lt;&gt; добывается из тел уничтоженных стражей&#xA;Текущий уровень активности патрулей стражей: &lt;COMMODITY&gt;низкий&lt;&gt;&#xA;Найдите место с повышенной активностью стражей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_ROBOT1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Пугний&lt;&gt; добывается из тел уничтоженных стражей.&#xA;Найдите планетарных стражей с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Не рекомендуем вступать в бой с &lt;TECHNOLOGY&gt;расщепителем&lt;&gt; в качестве оружия.
                                { "Russian", "&lt;SPECIAL&gt;Пугний&lt;&gt; добывается из тел уничтоженных стражей&#xA;Найдите стражей с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Не рекомендуется использовать &lt;TECHNOLOGY&gt;расщепитель&lt;&gt; в качестве оружия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_ROBOT1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Пугний&lt;&gt; добывается из тел уничтоженных стражей.&#xA;Найдите планетарных стражей с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Пугний&lt;&gt; добывается из тел уничтоженных стражей&#xA;Найдите стражей с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_PLANT_WATER_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_WATER_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- In the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt;, search for a system with &lt;TECHNOLOGY&gt;water&lt;&gt;&#xA;Access the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt; while in the Starship
                                { "Russian", "Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_WATER_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена водная планета&lt;&gt;&#xA;Вода на поверхности планеты видна из космоса.&#xA;Приземлитесь на водной планете, чтобы найти &lt;TRADEABLE&gt;водорослевые мешки&lt;&gt;.
                                -- &lt;EARTH&gt;Water planet detected&lt;&gt;&#xA;Water is visible on a planet's surface from space&#xA;Land on a water planet to find &lt;TRADEABLE&gt;Kelp Sacs&lt;&gt;
                                { "Russian", "&lt;EARTH&gt;Обнаружена водная планета&lt;&gt;&#xA;Вода на поверхности планеты видна из космоса&#xA;Приземлитесь на водной планете, чтобы найти &lt;TRADEABLE&gt;водорослевые мешки&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_WATER_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена водная планета&lt;&gt;&#xA;Отправляйтесь в космос, чтобы найти водную планету.
                                -- &lt;EARTH&gt;Water planet detected&lt;&gt;&#xA;Launch into space to search for a water planet
                                { "Russian", "&lt;EARTH&gt;Обнаружена водная планета&lt;&gt;&#xA;Отправляйтесь в космос, чтобы найти ее" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_WATER_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;TRADEABLE&gt;водорослевые мешки&lt;&gt; с дикой &lt;TRADEABLE&gt;свечной водоросли&lt;&gt;.&#xA;Найдите растущую &lt;TECHNOLOGY&gt;под водой&lt;&gt;&lt;TRADEABLE&gt;свечную водоросль&lt;&gt;.
                                -- Harvest &lt;TRADEABLE&gt;Kelp Sacs&lt;&gt; from wild &lt;TRADEABLE&gt;Candle Kelp&lt;&gt;&#xA;Locate &lt;TRADEABLE&gt;Candle Kelp&lt;&gt; growing &lt;TECHNOLOGY&gt;underwater&lt;&gt;
                                { "Russian", "Соберите &lt;TRADEABLE&gt;водорослевые мешки&lt;&gt; с дикой &lt;TRADEABLE&gt;свечной водоросли&lt;&gt;&#xA;Найдите растущую &lt;TECHNOLOGY&gt;под водой&lt;&gt; &lt;TRADEABLE&gt;свечную водоросль&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region Добывайте ХХХ из астероидов.
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_ASTEROID1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывайте &lt;EXOTIC&gt;серебро&lt;&gt; из астероидов.&#xA;Отправляйтесь в космос, чтобы искать астероиды.
                                { "Russian", "Добывайте &lt;EXOTIC&gt;серебро&lt;&gt; из астероидов&#xA;Отправляйтесь в космос и найдите астероиды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_ASTEROID1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывайте &lt;EXOTIC&gt;серебро&lt;&gt; из астероидов.&#xA;Найдите обычные астероиды.&#xA;Добывайте ресурсы из астероидов с помощью орудия корабля (&lt;IMG&gt;SHIPFIRE&lt;&gt;).
                                { "Russian", "Добывайте &lt;EXOTIC&gt;серебро&lt;&gt; из астероидов&#xA;Найдите обычные астероиды&#xA;Добывайте ресурсы из астероидов&#xA;с помощью орудий корабля (&lt;IMG&gt;SHIPFIRE&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_ASTEROID3_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывайте &lt;EXOTIC&gt;платину&lt;&gt; из астероидов.&#xA;Отправляйтесь в космос, чтобы искать астероиды.
                                { "Russian", "Добывайте &lt;EXOTIC&gt;платину&lt;&gt; из астероидов&#xA;Отправляйтесь в космос и найдите астероиды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_ASTEROID3_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывайте &lt;EXOTIC&gt;платину&lt;&gt; из астероидов.&#xA;Платину можно найти в редких хрустальных астероидах.&#xA;В некоторых системах редкие астероиды встречаются чаще, чем в других.&#xA;Добывайте ресурсы из астероидов с помощью орудия корабля (&lt;IMG&gt;SHIPFIRE&lt;&gt;).
                                -- Gather &lt;EXOTIC&gt;Platinum&lt;&gt; from asteroids&#xA;Platinum is found in rare crystalline asteroids&#xA;Rare asteroids are more common in some star systems than others&#xA;Mine asteroids with ship weaponry (&lt;IMG&gt;SHIPFIRE&lt;&gt;)
                                { "Russian", "Добывайте &lt;EXOTIC&gt;платину&lt;&gt; из редких кристаллических астероидов&#xA;В некоторых системах редкие астероиды встречаются чаще, чем в других&#xA;Добывайте ресурсы из астероидов&#xA;с помощью орудий корабля (&lt;IMG&gt;SHIPFIRE&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_ROCKETSUB_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывайте &lt;EXOTIC&gt;тритий&lt;&gt; из астероидов.&#xA;Отправляйтесь в космос, чтобы искать астероиды.
                                { "Russian", "Добывайте &lt;EXOTIC&gt;тритий&lt;&gt; из астероидов&#xA;Отправляйтесь в космос и найдите астероиды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_ROCKETSUB_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывайте &lt;EXOTIC&gt;тритий&lt;&gt; из астероидов.&#xA;Выполните сканирование (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;TECHNOLOGY&gt;богатые тритием астероиды&lt;&gt;.&#xA;Добывайте ресурсы из астероидов с помощью орудия корабля (&lt;IMG&gt;SHIPFIRE&lt;&gt;).
                                { "Russian", "Добывайте &lt;EXOTIC&gt;тритий&lt;&gt; из астероидов&#xA;Выполните сканирование (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;TECHNOLOGY&gt;богатые тритием астероиды&lt;&gt;&#xA;Добывайте ресурсы из астероидов&#xA;с помощью орудий корабля (&lt;IMG&gt;SHIPFIRE&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_LAUNCHSUB.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LAUNCHSUB1_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; из синих кристаллов.&#xA;Собирайте кристаллы с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;.&#xA;Совершите посадку на планету, чтобы начать сбор.
                                -- Gather &lt;TECHNOLOGY&gt;Di-hydrogen&lt;&gt; from blue crystals&#xA;Harvest crystals with the &lt;TECHNOLOGY&gt;Mining Beam&lt;&gt;&#xA;Land on a planet to begin harvesting
                                { "Russian", "Добудьте &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; из синих кристаллов&#xA;Разрушайте кристаллы с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;&#xA;Совершите посадку на планету, чтобы начать сбор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LAUNCHSUB1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; из синих кристаллов.&#xA;Собирайте кристаллы с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;.&#xA;Дигидроген можно найти с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;).
                                { "Russian", "Добудьте &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; из синих кристаллов&#xA;Разрушайте кристаллы с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;&#xA;Дигидроген можно найти с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LAUNCHSUB2_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; и &lt;TECHNOLOGY&gt;тритий&lt;&gt;, чтобы получить &lt;TECHNOLOGY&gt;дейтерий&lt;&gt;.&#xA;Совершите посадку на планету, чтобы собрать &lt;TECHNOLOGY&gt;дигидроген&lt;&gt;.
                                { "Russian", "Очистите &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; и &lt;TECHNOLOGY&gt;тритий&lt;&gt;, чтобы получить &lt;TECHNOLOGY&gt;дейтерий&lt;&gt;&#xA;Совершите посадку на планету, чтобы добыть &lt;TECHNOLOGY&gt;дигидроген&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LAUNCHSUB2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; и &lt;TECHNOLOGY&gt;тритий&lt;&gt;, чтобы получить &lt;TECHNOLOGY&gt;дейтерий&lt;&gt;.&#xA;Добудьте &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; из синих кристаллов.&#xA;Дигидроген можно найти с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;).
                                { "Russian", "Очистите &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; и &lt;TECHNOLOGY&gt;тритий&lt;&gt;, чтобы получить &lt;TECHNOLOGY&gt;дейтерий&lt;&gt;&#xA;Добудьте &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; из синих кристаллов&#xA;Дигидроген можно найти с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LAUNCHSUB2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; и &lt;TECHNOLOGY&gt;тритий&lt;&gt;, чтобы получить &lt;TECHNOLOGY&gt;дейтерий&lt;&gt;.&#xA;Собирайте &lt;TECHNOLOGY&gt;тритий&lt;&gt; на &lt;TITLE&gt;астероидах&lt;&gt;&#xA;Выполните сканирование (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;TECHNOLOGY&gt;богатые тритием астероиды&lt;&gt;.
                                { "Russian", "Очистите &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; и &lt;TECHNOLOGY&gt;тритий&lt;&gt;, чтобы получить &lt;TECHNOLOGY&gt;дейтерий&lt;&gt;&#xA;Добывайте &lt;TECHNOLOGY&gt;тритий&lt;&gt; из &lt;TITLE&gt;астероидов&lt;&gt;&#xA;Выполните сканирование (&lt;IMG&gt;SCAN&lt;&gt;), чтобы найти &lt;TECHNOLOGY&gt;богатые тритием астероиды&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LAUNCHSUB2_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; и &lt;TECHNOLOGY&gt;тритий&lt;&gt;, чтобы получить &lt;TECHNOLOGY&gt;дейтерий&lt;&gt;.&#xA;Собирайте &lt;TECHNOLOGY&gt;тритий&lt;&gt; на &lt;TITLE&gt;астероидах&lt;&gt;.&#xA;Отправляйтесь в космос и найдите астероиды.
                                { "Russian", "Очистите &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; и &lt;TECHNOLOGY&gt;тритий&lt;&gt;, чтобы получить &lt;TECHNOLOGY&gt;дейтерий&lt;&gt;&#xA;Добывайте &lt;TECHNOLOGY&gt;тритий&lt;&gt; из &lt;TITLE&gt;астероидов&lt;&gt;&#xA;Отправляйтесь в космос и найдите астероиды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LAUNCHSUB2_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; и &lt;TECHNOLOGY&gt;тритий&lt;&gt;, чтобы получить &lt;TECHNOLOGY&gt;дейтерий&lt;&gt;.&#xA;Поместите &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; и &lt;TECHNOLOGY&gt;тритий&lt;&gt; в крупный или средний &lt;TECHNOLOGY&gt;очиститель&lt;&gt;.
                                { "Russian", "Очистите &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; и &lt;TECHNOLOGY&gt;тритий&lt;&gt;, чтобы получить &lt;TECHNOLOGY&gt;дейтерий&lt;&gt;&#xA;Поместите &lt;TECHNOLOGY&gt;дигидроген&lt;&gt; и &lt;TECHNOLOGY&gt;тритий&lt;&gt; в крупный или средний &lt;TECHNOLOGY&gt;очиститель&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_PLANT_CAVE_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_CAVE_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;TRADEABLE&gt;луковичные тыквы&lt;&gt; с дикой &lt;TRADEABLE&gt;пещерной тыквы&lt;&gt;.&#xA;Совершите посадку на планету, чтобы начать сбор.
                                { "Russian", "Соберите &lt;TRADEABLE&gt;луковичные тыквы&lt;&gt; с дикой &lt;TRADEABLE&gt;пещерной тыквы&lt;&gt;&#xA;Совершите посадку на планету, чтобы начать сбор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_CAVE_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;TRADEABLE&gt;луковичные тыквы&lt;&gt; с дикой &lt;TRADEABLE&gt;пещерной тыквы&lt;&gt;.&#xA;Найдите &lt;TRADEABLE&gt;пещерную тыкву&lt;&gt;, исследуя подземелья.
                                { "Russian", "Соберите &lt;TRADEABLE&gt;луковичные тыквы&lt;&gt; с дикой &lt;TRADEABLE&gt;пещерной тыквы&lt;&gt;&#xA;Найдите &lt;TRADEABLE&gt;пещерную тыкву&lt;&gt;, исследуя пещеры" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_STELLAR2_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_STELLAR2_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;STELLAR&gt;любой звездный металл&lt;&gt;, чтобы получить &lt;STELLAR&gt;хроматический металл&lt;&gt;.&#xA;Один из видов &lt;STELLAR&gt;звездных металлов&lt;&gt; можно найти в любой звездной системе.&#xA;Совершите посадку на планету, чтобы начать сбор.
                                { "Russian", "Очистите любой &lt;STELLAR&gt;звездный металл&lt;&gt;, чтобы получить &lt;STELLAR&gt;хроматический металл&lt;&gt;&#xA;Один из видов &lt;STELLAR&gt;звездных металлов&lt;&gt; можно найти в любой звездной системе&#xA;Совершите посадку на планету, чтобы начать сбор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_STELLAR2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;STELLAR&gt;любой звездный металл&lt;&gt;, чтобы получить &lt;STELLAR&gt;хроматический металл&lt;&gt;.&#xA;Один из видов &lt;STELLAR&gt;звездных металлов&lt;&gt; можно найти в любой звездной системе.&#xA;Звездные металлы: &lt;COMMODITY&gt;медь&lt;&gt;, &lt;FUEL&gt;кадмий&lt;&gt;, &lt;TRADEABLE&gt;эмерил&lt;&gt;, &lt;TECHNOLOGY&gt;индий&lt;&gt;.&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для поиска крупных залежей металлов.
                                { "Russian", "Очистите любой &lt;STELLAR&gt;звездный металл&lt;&gt;, чтобы получить &lt;STELLAR&gt;хроматический металл&lt;&gt;&#xA;Один из видов &lt;STELLAR&gt;звездных металлов&lt;&gt; можно найти в любой звездной системе&#xA;Звездные металлы: &lt;COMMODITY&gt;медь&lt;&gt;, &lt;FUEL&gt;кадмий&lt;&gt;, &lt;TRADEABLE&gt;эмерил&lt;&gt;, &lt;TECHNOLOGY&gt;индий&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для поиска крупных залежей" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_STELLAR2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Поместите &lt;STELLAR&gt;любой звездный металл&lt;&gt; в &lt;TECHNOLOGY&gt;очиститель&lt;&gt;, чтобы переработать его в &lt;STELLAR&gt;хроматический металл&lt;&gt;.&#xA;Звездные металлы: &lt;COMMODITY&gt;медь&lt;&gt;, &lt;FUEL&gt;кадмий&lt;&gt;, &lt;TRADEABLE&gt;эмерил&lt;&gt;, &lt;TECHNOLOGY&gt;индий&lt;&gt;.&#xA;При очистке редких звездных металлов получается больше &lt;STELLAR&gt;хроматического металла&lt;&gt;.
                                { "Russian", "Поместите любой &lt;STELLAR&gt;звездный металл&lt;&gt; в &lt;TECHNOLOGY&gt;очиститель&lt;&gt;&#xA;Звездные металлы: &lt;COMMODITY&gt;медь&lt;&gt;, &lt;FUEL&gt;кадмий&lt;&gt;, &lt;TRADEABLE&gt;эмерил&lt;&gt;, &lt;TECHNOLOGY&gt;индий&lt;&gt;&#xA;При очистке редких металлов получается больше &lt;STELLAR&gt;хроматического металла&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_CAVE1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_CAVE1_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите богатые &lt;EARTH&gt;кобальтом&lt;&gt; камни &lt;TECHNOLOGY&gt;в пещерах&lt;&gt;.&#xA;Совершите посадку на планету, чтобы начать сбор.
                                { "Russian", "Найдите богатые &lt;EARTH&gt;кобальтом&lt;&gt; камни &lt;TECHNOLOGY&gt;в пещерах&lt;&gt;&#xA;Совершите посадку на планету, чтобы начать сбор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_CAVE1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите богатые &lt;EARTH&gt;кобальтом&lt;&gt; камни &lt;TECHNOLOGY&gt;в пещерах&lt;&gt;.&#xA;Добывайте кобальт из подземных минералов с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;.
                                { "Russian", "Найдите богатые &lt;EARTH&gt;кобальтом&lt;&gt; камни &lt;TECHNOLOGY&gt;в пещерах&lt;&gt;&#xA;Добывайте кобальт с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_FUEL1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_FUEL1_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;FUEL&gt;углерод&lt;&gt; из растений планеты.&#xA;Совершите посадку на планету, чтобы начать сбор.
                                { "Russian", "Добудьте &lt;FUEL&gt;углерод&lt;&gt; из растений&#xA;Совершите посадку на планету, чтобы начать сбор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_FUEL1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;FUEL&gt;углерод&lt;&gt; из растений планеты.&#xA;Добудьте углерод из растений с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;.
                                { "Russian", "Добудьте &lt;FUEL&gt;углерод&lt;&gt; из растений&#xA;Добывайте углерод с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_FUEL1_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сжигайте &lt;FUEL&gt;кислород&lt;&gt; в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;FUEL&gt;углерод&lt;&gt;.&#xA;На планетах &lt;TITLE&gt;без воздуха&lt;&gt; нет углеродных растений.
                                { "Russian", "Сжигание &lt;FUEL&gt;кислорода&lt;&gt; в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; даёт &lt;FUEL&gt;углерод&lt;&gt;&#xA;На планетах &lt;TITLE&gt;без воздуха&lt;&gt; нет углеродных растений" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_FUEL2_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_FUEL2_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;FUEL&gt;углерод&lt;&gt;, чтобы получить &lt;FUEL&gt;сжатый углерод&lt;&gt;.&#xA;Добудьте &lt;FUEL&gt;углерод&lt;&gt; из растений планеты.&#xA;Совершите посадку на планету, чтобы начать сбор.
                                { "Russian", "Очистите &lt;FUEL&gt;углерод&lt;&gt;, чтобы получить &lt;FUEL&gt;сжатый углерод&lt;&gt;&#xA;Добывайте &lt;FUEL&gt;углерод&lt;&gt; из растений&#xA;Совершите посадку на планету, чтобы начать сбор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_FUEL2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;FUEL&gt;углерод&lt;&gt;, чтобы получить &lt;FUEL&gt;сжатый углерод&lt;&gt;.&#xA;Добудьте &lt;FUEL&gt;углерод&lt;&gt; из растений планеты.&#xA;Сжатый углерод иногда встречается в виде кристаллов.
                                { "Russian", "Очистите &lt;FUEL&gt;углерод&lt;&gt;, чтобы получить &lt;FUEL&gt;сжатый углерод&lt;&gt;&#xA;Добывайте &lt;FUEL&gt;углерод&lt;&gt; из растений&#xA;Сжатый углерод иногда встречается в виде кристаллов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_FUEL2_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Сжигайте &lt;FUEL&gt;кислород&lt;&gt; в &lt;TECHNOLOGY&gt;очистителе&lt;&gt;, чтобы создать &lt;FUEL&gt;углерод&lt;&gt;.&#xA;На планетах &lt;TITLE&gt;без воздуха&lt;&gt; нет углеродных растений.
                                { "Russian", "Сжигание &lt;FUEL&gt;кислорода&lt;&gt; в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; даёт &lt;FUEL&gt;углерод&lt;&gt;&#xA;На планетах &lt;TITLE&gt;без воздуха&lt;&gt; нет углеродных растений" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_FUEL2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;FUEL&gt;углерод&lt;&gt;, чтобы получить &lt;FUEL&gt;сжатый углерод&lt;&gt;.&#xA;Поместите углерод любого размера в &lt;TECHNOLOGY&gt;очиститель&lt;&gt;, чтобы переработать его в сжатый углерод.
                                { "Russian", "Очистите &lt;FUEL&gt;углерод&lt;&gt;, чтобы получить &lt;FUEL&gt;сжатый углерод&lt;&gt;&#xA;Поместите углерод в &lt;TECHNOLOGY&gt;очиститель&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_OXYGEN_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_OXYGEN_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;FUEL&gt;кислород&lt;&gt; из богатых кислородом растений.&#xA;Совершите посадку на планету, чтобы начать сбор.
                                { "Russian", "Добывайте &lt;FUEL&gt;кислород&lt;&gt; из богатых кислородом растений&#xA;Совершите посадку на планету, чтобы начать сбор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_OXYGEN_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;FUEL&gt;кислород&lt;&gt; из богатых кислородом растений.&#xA;Подобные красные растения можно найти с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;).
                                { "Russian", "Добывайте &lt;FUEL&gt;кислород&lt;&gt; из богатых кислородом растений&#xA;Эти красные растения можно найти &lt;TECHNOLOGY&gt;сканером&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_CATALYST1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_CATALYST1_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;COMMODITY&gt;натрий&lt;&gt; из богатых натрием растений.&#xA;Совершите посадку на планету, чтобы начать сбор.
                                { "Russian", "Добывайте &lt;COMMODITY&gt;натрий&lt;&gt; из богатых натрием растений&#xA;Совершите посадку на планету, чтобы начать сбор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_CATALYST1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;COMMODITY&gt;натрий&lt;&gt; из богатых натрием растений.&#xA;Подобные желтые растения можно найти с помощью &lt;TECHNOLOGY&gt;сканера&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;).
                                { "Russian", "Добывайте &lt;COMMODITY&gt;натрий&lt;&gt; из богатых натрием растений&#xA;Эти желтые растения можно найти &lt;TECHNOLOGY&gt;сканером&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;)" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_LAND1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LAND1_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;EARTH&gt;ферритную пыль&lt;&gt; из самых маленьких камней.&#xA;Совершите посадку на планету, чтобы начать сбор.
                                { "Russian", "Добывайте &lt;EARTH&gt;ферритную пыль&lt;&gt; из самых маленьких камней&#xA;Совершите посадку на планету, чтобы начать сбор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LAND1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добудьте &lt;EARTH&gt;ферритную пыль&lt;&gt; из самых маленьких камней.&#xA;Добывайте камни с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;.
                                { "Russian", "Добывайте &lt;EARTH&gt;ферритную пыль&lt;&gt; из самых маленьких камней&#xA;Добывайте пыль с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_LAND2_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LAND2_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;EARTH&gt;ферритную пыль&lt;&gt;, чтобы получить &lt;EARTH&gt;чистый феррит&lt;&gt;.&#xA;Из некоторых крупных камней &lt;EARTH&gt;чистый феррит&lt;&gt; можно добывать напрямую с помощью &lt;TECHNOLOGY&gt;продвинутого расщепителя&lt;&gt;.&#xA;Совершите посадку на планету, чтобы начать сбор.
                                { "Russian", "Очистите &lt;EARTH&gt;ферритную пыль&lt;&gt;, чтобы получить &lt;EARTH&gt;чистый феррит&lt;&gt;&#xA;Иногда &lt;EARTH&gt;чистый феррит&lt;&gt; можно добыть с помощью &lt;TECHNOLOGY&gt;продвинутого расщепителя&lt;&gt;&#xA;Совершите посадку на планету, чтобы начать сбор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LAND2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;EARTH&gt;ферритную пыль&lt;&gt;, чтобы получить &lt;EARTH&gt;чистый феррит&lt;&gt;.&#xA;Добудьте &lt;EARTH&gt;ферритную пыль&lt;&gt; из маленьких камней.&#xA;Из некоторых крупных камней &lt;EARTH&gt;чистый феррит&lt;&gt; можно добывать напрямую с помощью &lt;TECHNOLOGY&gt;продвинутого расщепителя&lt;&gt;.
                                { "Russian", "Очистите &lt;EARTH&gt;ферритную пыль&lt;&gt;, чтобы получить &lt;EARTH&gt;чистый феррит&lt;&gt;&#xA;Добудьте &lt;EARTH&gt;ферритную пыль&lt;&gt; из маленьких камней&#xA;Иногда &lt;EARTH&gt;чистый феррит&lt;&gt; можно добыть с помощью &lt;TECHNOLOGY&gt;продвинутого расщепителя&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LAND2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;EARTH&gt;ферритную пыль&lt;&gt;, чтобы получить &lt;EARTH&gt;чистый феррит&lt;&gt;.&#xA;Поместите ферритную пыль любого размера в &lt;TECHNOLOGY&gt;очиститель&lt;&gt;, чтобы переработать ее в чистый феррит.
                                { "Russian", "Очистите &lt;EARTH&gt;ферритную пыль&lt;&gt;, чтобы получить &lt;EARTH&gt;чистый феррит&lt;&gt;&#xA;Поместите пыль в &lt;TECHNOLOGY&gt;очиститель&lt;&gt;, чтобы переработать ее в чистый феррит" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_LAND3_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LAND3_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;EARTH&gt;чистый феррит&lt;&gt;, чтобы получить &lt;EARTH&gt;намагниченный феррит&lt;&gt;.&#xA;Совершите посадку на планету, чтобы начать сбор.
                                { "Russian", "Очистите &lt;EARTH&gt;чистый феррит&lt;&gt;, чтобы получить &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Совершите посадку на планету, чтобы начать сбор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LAND3_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;EARTH&gt;чистый феррит&lt;&gt;, чтобы получить &lt;EARTH&gt;намагниченный феррит&lt;&gt;.&#xA;Добудьте &lt;EARTH&gt;чистый феррит&lt;&gt; напрямую из крупных камней.&#xA;Или получите его, очистив &lt;EARTH&gt;ферритную пыль&lt;&gt;.
                                { "Russian", "Очистите &lt;EARTH&gt;чистый феррит&lt;&gt;, чтобы получить &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Добудьте &lt;EARTH&gt;чистый феррит&lt;&gt; из крупных камней&#xA;Или путем очистки &lt;EARTH&gt;ферритной пыли&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LAND3_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;EARTH&gt;чистый феррит&lt;&gt;, чтобы получить &lt;EARTH&gt;намагниченный феррит&lt;&gt;.&#xA;Поместите ферритную пыль любого размера в &lt;TECHNOLOGY&gt;очиститель&lt;&gt;, чтобы переработать ее в чистый феррит.
                                { "Russian", "Очистите &lt;EARTH&gt;чистый феррит&lt;&gt;, чтобы получить &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Поместите ферритную пыль в &lt;TECHNOLOGY&gt;очиститель&lt;&gt;, чтобы переработать ее в чистый феррит" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LAND3_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;EARTH&gt;чистый феррит&lt;&gt;, чтобы получить &lt;EARTH&gt;намагниченный феррит&lt;&gt;.&#xA;Поместите чистый феррит любого размера в &lt;TECHNOLOGY&gt;очиститель&lt;&gt;, чтобы переработать его в намагниченный феррит.
                                { "Russian", "Очистите &lt;EARTH&gt;чистый феррит&lt;&gt;, чтобы получить &lt;EARTH&gt;намагниченный феррит&lt;&gt;&#xA;Поместите чистый феррит в &lt;TECHNOLOGY&gt;очиститель&lt;&gt;, чтобы переработать его в намагниченный феррит" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_CREATURE1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_CREATURE1_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Мордит&lt;&gt; добывают из тел погибших животных.&#xA;Совершите посадку на планету, чтобы собрать существ.
                                -- &lt;SPECIAL&gt;Mordite&lt;&gt; is released when living creatures are killed&#xA;Land on a planet to begin harvesting creatures
                                { "Russian", "&lt;SPECIAL&gt;Мордит&lt;&gt; добывается при убийстве животных&#xA;Совершите посадку на планету, чтобы начать сбор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_CREATURE1_MSG1A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Мордит&lt;&gt; добывают из тел погибших животных.&#xA;На планетах без атмосферы нет живых существ.&#xA;Отправляйтесь на планету, на которой могут обитать крупные формы жизни.
                                { "Russian", "&lt;SPECIAL&gt;Мордит&lt;&gt; добывается при убийстве животных&#xA;На планетах без атмосферы нет живых существ&#xA;Отправляйтесь на планету, где обитают крупные формы жизни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_CREATURE1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Мордит&lt;&gt; добывают из тел погибших животных.&#xA;Найдите планетарных животных с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Причинение вреда животным может вызвать враждебную реакцию стражей.
                                { "Russian", "&lt;SPECIAL&gt;Мордит&lt;&gt; добывается при убийстве животных&#xA;Находите животных с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Причинение вреда животным может спровоцировать стражей" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_DUSTY1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_DUSTY1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите богатые пиритом системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Найдите богатые пиритом системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_DUSTY1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая пиритом планета&lt;&gt;&#xA;Нацельтесь на планету и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее доступные ресурсы.&#xA;Приземлитесь на планете с залежами пирита.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая пиритом планета&lt;&gt;&#xA;Нацельтесь на планету и просканируйте ее (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Приземлитесь на планету с залежами пирита" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_DUSTY1_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая пиритом планета&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая пиритом планета&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_DUSTY1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите крупные залежи &lt;EARTH&gt;пирита&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Пирит можно обнаружить при изучении обычных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "Найдите крупные залежи &lt;EARTH&gt;пирита&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;&#xA;Пирит можно обнаружить при изучении обычных камней&#xA;с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_LUSH1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LUSH1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите богатые парафинием системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Найдите богатые парафинием системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LUSH1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая парафинием планета&lt;&gt;&#xA;Нацельтесь на планету и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее доступные ресурсы.&#xA;Приземлитесь на планете с залежами парафиния.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая парафинием планета&lt;&gt;&#xA;Нацельтесь на планету и просканируйте ее (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Приземлитесь на планету с залежами парафиния" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LUSH1_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая парафинием планета&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая парафинием планета&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LUSH1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите крупные залежи &lt;EARTH&gt;парафиния&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Парафиний можно обнаружить при изучении обычных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "Найдите крупные залежи &lt;EARTH&gt;парафиния&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;&#xA;Парафиний можно обнаружить при изучении обычных камней&#xA;с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_HOT1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_HOT1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите богатые фосфором системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Найдите богатые фосфором системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_HOT1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая фосфором планета&lt;&gt;&#xA;Нацельтесь на планету и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее доступные ресурсы.&#xA;Приземлитесь на планете с залежами фосфора.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая фосфором планета&lt;&gt;&#xA;Нацельтесь на планету и просканируйте ее (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Приземлитесь на планету с залежами фосфора" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_HOT1_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая фосфором планета&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая фосфором планета&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_HOT1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите крупные залежи &lt;EARTH&gt;фосфора&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Фосфор можно обнаружить при изучении обычных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "Найдите крупные залежи &lt;EARTH&gt;фосфора&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;&#xA;Фосфор можно обнаружить при изучении обычных камней&#xA;с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_COLD1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_COLD1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите богатые диокситом системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Найдите богатые диокситом системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_COLD1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая диокситом планета&lt;&gt;&#xA;Нацельтесь на планету и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее доступные ресурсы.&#xA;Приземлитесь на планете с залежами диоксита.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая диокситом планета&lt;&gt;&#xA;Нацельтесь на планету и просканируйте ее (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Приземлитесь на планету с залежами диоксита" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_COLD1_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая диокситом планета&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая диокситом планета&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_COLD1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите крупные залежи &lt;EARTH&gt;диоксита&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Диоксит можно обнаружить при изучении обычных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "Найдите крупные залежи &lt;EARTH&gt;диоксита&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;&#xA;Диоксит можно обнаружить при изучении обычных камней&#xA;с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_TOXIC1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_TOXIC1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите богатые аммиаком системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Найдите богатые аммиаком системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_TOXIC1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая аммиаком планета&lt;&gt;&#xA;Нацельтесь на планету и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее доступные ресурсы.&#xA;Приземлитесь на планете с залежами аммиака.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая аммиаком планета&lt;&gt;&#xA;Нацельтесь на планету и просканируйте ее (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Приземлитесь на планету с залежами аммиака" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_TOXIC1_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая аммиаком планета&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая аммиаком планета&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_TOXIC1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите крупные залежи &lt;EARTH&gt;аммиака&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Аммиак можно обнаружить при изучении обычных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "Найдите крупные залежи &lt;EARTH&gt;аммиака&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;&#xA;Аммиак можно обнаружить при изучении обычных камней&#xA;с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_RADIO1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_RADIO1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите богатые ураном системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Найдите богатые ураном системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_RADIO1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая ураном планета&lt;&gt;&#xA;Нацельтесь на планету и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее доступные ресурсы.&#xA;Приземлитесь на планете с залежами урана.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая ураном планета&lt;&gt;&#xA;Нацельтесь на планету и просканируйте ее (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Приземлитесь на планету с залежами урана" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_RADIO1_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая ураном планета&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая ураном планета&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_RADIO1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите крупные залежи &lt;EARTH&gt;урана&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Уран можно обнаружить при изучении обычных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "Найдите крупные залежи &lt;EARTH&gt;урана&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;&#xA;Уран можно обнаружить при изучении обычных камней&#xA;с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_WATER1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_WATER1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_WATER1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Обнаружена водная планета&lt;&gt;&#xA;Вода на поверхности планеты видна из космоса.&#xA;Приземлитесь на водной планете, чтобы найти &lt;TRADEABLE&gt;соль&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Обнаружена водная планета&lt;&gt;&#xA;Вода на поверхности планеты видна из космоса&#xA;Приземлитесь на водной планете, чтобы найти &lt;TRADEABLE&gt;соль&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_WATER1_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Обнаружена водная планета&lt;&gt;&#xA;Отправляйтесь в космос, чтобы найти водную планету.
                                { "Russian", "&lt;TECHNOLOGY&gt;Обнаружена водная планета&lt;&gt;&#xA;Отправляйтесь в космос, чтобы найти водную планету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_WATER1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите богатые &lt;EARTH&gt;солью&lt;&gt; камни &lt;TECHNOLOGY&gt;под водой&lt;&gt;.&#xA;Добывайте соль с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt; или &lt;TECHNOLOGY&gt;продвинутого расщепителя&lt;&gt;.&#xA;Соль можно обнаружить при изучении прочих подводных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "Найдите богатые &lt;EARTH&gt;солью&lt;&gt; камни &lt;TECHNOLOGY&gt;под водой&lt;&gt;&#xA;Добывайте соль с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;&#xA;Соль можно обнаружить при изучении подводных камней&#xA;с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_WATER2_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_WATER2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;TRADEABLE&gt;соль&lt;&gt;, чтобы получить &lt;TRADEABLE&gt;хлор&lt;&gt;.&#xA;Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Очистите &lt;TRADEABLE&gt;соль&lt;&gt;, чтобы получить &lt;TRADEABLE&gt;хлор&lt;&gt;&#xA;Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_WATER2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Обнаружена водная планета&lt;&gt;&#xA;Очистите &lt;TRADEABLE&gt;соль&lt;&gt;, чтобы получить &lt;TRADEABLE&gt;хлор&lt;&gt;.&#xA;Вода на поверхности планеты видна из космоса.&#xA;Приземлитесь на водной планете, чтобы найти &lt;TRADEABLE&gt;соль&lt;&gt;.
                                { "Russian", "&lt;TECHNOLOGY&gt;Обнаружена водная планета&lt;&gt;&#xA;Очистите &lt;TRADEABLE&gt;соль&lt;&gt;, чтобы получить &lt;TRADEABLE&gt;хлор&lt;&gt;&#xA;Вода на поверхности планеты видна из космоса&#xA;Приземлитесь на водной планете, чтобы найти &lt;TRADEABLE&gt;соль&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_WATER2_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TECHNOLOGY&gt;Обнаружена водная планета&lt;&gt;&#xA;Очистите &lt;TRADEABLE&gt;соль&lt;&gt;, чтобы получить &lt;TRADEABLE&gt;хлор&lt;&gt;.&#xA;Отправляйтесь в космос, чтобы найти водную планету.
                                { "Russian", "&lt;TECHNOLOGY&gt;Обнаружена водная планета&lt;&gt;&#xA;Очистите &lt;TRADEABLE&gt;соль&lt;&gt;, чтобы получить &lt;TRADEABLE&gt;хлор&lt;&gt;&#xA;Отправляйтесь в космос, чтобы найти водную планету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_WATER2_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;TRADEABLE&gt;соль&lt;&gt;, чтобы получить &lt;TRADEABLE&gt;хлор&lt;&gt;.&#xA;Найдите богатые &lt;EARTH&gt;солью&lt;&gt; камни &lt;TECHNOLOGY&gt;под водой&lt;&gt;.&#xA;Добывайте соль с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;.
                                { "Russian", "Очистите &lt;TRADEABLE&gt;соль&lt;&gt;, чтобы получить &lt;TRADEABLE&gt;хлор&lt;&gt;&#xA;Найдите богатые &lt;EARTH&gt;солью&lt;&gt; камни &lt;TECHNOLOGY&gt;под водой&lt;&gt;&#xA;Добывайте соль с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_WATER2_MSG4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;TRADEABLE&gt;соль&lt;&gt;, чтобы получить &lt;TRADEABLE&gt;хлор&lt;&gt;.&#xA;Поместите соль любого размера в &lt;TECHNOLOGY&gt;очиститель&lt;&gt;, чтобы переработать ее в хлор.
                                { "Russian", "Очистите &lt;TRADEABLE&gt;соль&lt;&gt;, чтобы получить &lt;TRADEABLE&gt;хлор&lt;&gt;&#xA;Поместите соль в &lt;TECHNOLOGY&gt;очиститель&lt;&gt;, чтобы переработать ее в хлор" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_WATERPLANT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_WATERPLANT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите системы с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Найдите систему с &lt;TECHNOLOGY&gt;водой&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_WATERPLANT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Обнаружена водная планета&lt;&gt;&#xA;Вода на поверхности планеты видна из космоса.&#xA;Приземлитесь на водной планете, чтобы найти &lt;TRADEABLE&gt;цитофосфат&lt;&gt;.
                                { "Russian", "&lt;TRADEABLE&gt;Обнаружена водная планета&lt;&gt;&#xA;Вода на поверхности планеты видна из космоса&#xA;Приземлитесь на водной планете, чтобы найти &lt;TRADEABLE&gt;цитофосфат&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_WATERPLANT_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;TRADEABLE&gt;Обнаружена водная планета&lt;&gt;&#xA;Отправляйтесь в космос, чтобы найти водную планету.
                                { "Russian", "&lt;TRADEABLE&gt;Обнаружена водная планета&lt;&gt;&#xA;Отправляйтесь в космос, чтобы найти водную планету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_WATERPLANT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите богатые &lt;TRADEABLE&gt;цитофосфатом&lt;&gt; растения &lt;TECHNOLOGY&gt;под водой&lt;&gt;.&#xA;Соберите цитофосфат с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;.&#xA;Цитофосфат можно обнаружить при изучении прочих подводных растений с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "Найдите богатые &lt;TRADEABLE&gt;цитофосфатом&lt;&gt; растения &lt;TECHNOLOGY&gt;под водой&lt;&gt;&#xA;Соберите цитофосфат с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;&#xA;Цитофосфат можно обнаружить при изучении подводных растений&#xA;с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_CAVE2_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_CAVE2_MSG0" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;EARTH&gt;кобальт&lt;&gt;, чтобы получить &lt;EARTH&gt;ионизированный кобальт&lt;&gt;.&#xA;Найдите богатые &lt;EARTH&gt;кобальтом&lt;&gt; камни &lt;TECHNOLOGY&gt;в пещерах&lt;&gt;.&#xA;Совершите посадку на планету, чтобы начать очистку.
                                -- Refine &lt;EARTH&gt;Cobalt&lt;&gt; to &lt;EARTH&gt;Ionised Cobalt&lt;&gt;&#xA;Locate &lt;EARTH&gt;Cobalt&lt;&gt;-rich rocks &lt;TECHNOLOGY&gt;in caves&lt;&gt;&#xA;Land on a planet to begin harvesting or refining
                                { "Russian", "Очистите &lt;EARTH&gt;кобальт&lt;&gt;, чтобы получить &lt;EARTH&gt;ионизированный кобальт&lt;&gt;&#xA;Найдите богатые &lt;EARTH&gt;кобальтом&lt;&gt; камни &lt;TECHNOLOGY&gt;в пещерах&lt;&gt;&#xA;Совершите посадку на планету, чтобы начать сбор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_CAVE2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;EARTH&gt;кобальт&lt;&gt;, чтобы получить &lt;EARTH&gt;ионизированный кобальт&lt;&gt;.&#xA;Найдите богатые &lt;EARTH&gt;кобальтом&lt;&gt; камни &lt;TECHNOLOGY&gt;в пещерах&lt;&gt;.&#xA;Добывайте кобальт из подземных минералов с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;.
                                { "Russian", "Очистите &lt;EARTH&gt;кобальт&lt;&gt;, чтобы получить &lt;EARTH&gt;ионизированный кобальт&lt;&gt;&#xA;Найдите богатые &lt;EARTH&gt;кобальтом&lt;&gt; камни &lt;TECHNOLOGY&gt;в пещерах&lt;&gt;&#xA;Добывайте кобальт из подземных минералов с помощью &lt;TECHNOLOGY&gt;расщепителя&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_CAVE2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Очистите &lt;EARTH&gt;кобальт&lt;&gt;, чтобы получить &lt;EARTH&gt;ионизированный кобальт&lt;&gt;.&#xA;Поместите кобальт любого размера в &lt;TECHNOLOGY&gt;очиститель&lt;&gt;, чтобы переработать его в ионизированный кобальт.
                                { "Russian", "Очистите &lt;EARTH&gt;кобальт&lt;&gt;, чтобы получить &lt;EARTH&gt;ионизированный кобальт&lt;&gt;&#xA;Поместите кобальт в &lt;TECHNOLOGY&gt;очиститель&lt;&gt;, чтобы переработать его в ионизированный кобальт" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_GAS1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_GAS1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите богатые серным газом системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Найдите богатые серным газом системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_GAS1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая серным газом планета&lt;&gt;&#xA;Серный газ можно добывать на &lt;FUEL&gt;высокотемпературных&lt;&gt; и &lt;SPECIAL&gt;пустынных&lt;&gt; планетах.&#xA;Приземлитесь на планете с месторождениями серного газа.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая серным газом планета&lt;&gt;&#xA;Серный газ можно добывать в &lt;FUEL&gt;горячих&lt;&gt; и &lt;SPECIAL&gt;пустынных&lt;&gt; планетах&#xA;Приземлитесь на планету с месторождениями серного газа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_GAS1_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая серным газом планета&lt;&gt;&#xA;Отправляйтесь в космос, чтобы найти нужную планету.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая серным газом планета&lt;&gt;&#xA;Отправляйтесь в космос, чтобы найти нужную планету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_GAS1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывайте &lt;EARTH&gt;серный газ&lt;&gt; с помощью &lt;TECHNOLOGY&gt;атмосферного комбайна&lt;&gt;.&#xA;Серный газ можно добывать на &lt;FUEL&gt;высокотемпературных&lt;&gt; и &lt;SPECIAL&gt;пустынных&lt;&gt; планетах.
                                { "Russian", "Добывайте &lt;EARTH&gt;серный газ&lt;&gt; с помощью &lt;TECHNOLOGY&gt;атмосферного комбайна&lt;&gt;&#xA;Серный газ можно добывать в &lt;FUEL&gt;горячих&lt;&gt; и &lt;SPECIAL&gt;пустынных&lt;&gt; планетах" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_GAS2_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_GAS2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите богатые радоном системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Найдите богатые радоном системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_GAS2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая радоном планета&lt;&gt;&#xA;Радон можно добывать на &lt;COMMODITY&gt;радиоактивных&lt;&gt; и &lt;TECHNOLOGY&gt;низкотемпературных&lt;&gt; планетах.&#xA;Приземлитесь на планете с месторождениями радона.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая радоном планета&lt;&gt;&#xA;Радон можно добывать на &lt;COMMODITY&gt;радиоактивных&lt;&gt; и &lt;TECHNOLOGY&gt;холодных&lt;&gt; планетах&#xA;Приземлитесь на планету с месторождениями радона" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_GAS2_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая радоном планета&lt;&gt;&#xA;Отправляйтесь в космос, чтобы найти нужную планету.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая радоном планета&lt;&gt;&#xA;Отправляйтесь в космос, чтобы найти нужную планету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_GAS2_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывайте &lt;EARTH&gt;радон&lt;&gt; с помощью &lt;TECHNOLOGY&gt;атмосферного комбайна&lt;&gt;.&#xA;Радон можно добывать на &lt;COMMODITY&gt;радиоактивных&lt;&gt; и &lt;TECHNOLOGY&gt;низкотемпературных&lt;&gt; планетах.
                                { "Russian", "Добывайте &lt;EARTH&gt;радон&lt;&gt; с помощью &lt;TECHNOLOGY&gt;атмосферного комбайна&lt;&gt;&#xA;Радон можно добывать на &lt;COMMODITY&gt;радиоактивных&lt;&gt; и &lt;TECHNOLOGY&gt;холодных&lt;&gt; планетах" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_GAS3_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_GAS3_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите богатые азотом системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Найдите богатые азотом системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_GAS3_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая азотом планета&lt;&gt;&#xA;Азот можно добывать на &lt;TRADEABLE&gt;лесистых&lt;&gt; и &lt;TRADEABLE&gt;токсичных&lt;&gt; планетах.&#xA;Приземлитесь на планете с месторождениями азота.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая азотом планета&lt;&gt;&#xA;Азот можно добывать в &lt;TRADEABLE&gt;лесистых&lt;&gt; и &lt;TRADEABLE&gt;токсичных&lt;&gt; планетах&#xA;Приземлитесь на планету с месторождениями азота" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_GAS3_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая азотом планета&lt;&gt;&#xA;Отправляйтесь в космос, чтобы найти нужную планету.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая азотом планета&lt;&gt;&#xA;Отправляйтесь в космос, чтобы найти нужную планету" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_GAS3_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывайте &lt;EARTH&gt;азот&lt;&gt; с помощью &lt;TECHNOLOGY&gt;атмосферного комбайна&lt;&gt;.&#xA;Азот можно добывать на &lt;TRADEABLE&gt;лесистых&lt;&gt; и &lt;TRADEABLE&gt;токсичных&lt;&gt; планетах.
                                { "Russian", "Добывайте &lt;EARTH&gt;азот&lt;&gt; с помощью &lt;TECHNOLOGY&gt;атмосферного комбайна&lt;&gt;&#xA;Азот можно добывать в &lt;TRADEABLE&gt;лесистых&lt;&gt; и &lt;TRADEABLE&gt;токсичных&lt;&gt; планетах" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_PLANT_DUST_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_DUST_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите системы, где есть &lt;TRADEABLE&gt;мякоть кактуса&lt;&gt;, на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                -- In the &lt;TECHNOLOGY&gt;Galaxy Map&lt;&gt;, search for a system where &lt;TRADEABLE&gt;Cactus Flesh&lt;&gt; grows&#xA;Access the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt; while in the Starship
                                { "Russian", "Найдите систему, где растут &lt;TRADEABLE&gt;кактусы&lt;&gt;, на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_DUST_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена планета, подходящая для сбора мякоти кактуса&lt;&gt;&#xA;Нацельтесь на планету и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее доступные ресурсы.&#xA;Приземлитесь на планете, где есть &lt;TRADEABLE&gt;мякоть кактуса&lt;&gt;.
                                { "Russian", "&lt;EARTH&gt;Обнаружена планета, подходящая для сбора мякоти кактуса&lt;&gt;&#xA;Нацельтесь на планету и просканируйте ее (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Приземлитесь на планету, где есть &lt;TRADEABLE&gt;мякоть кактуса&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_DUST_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена планета, подходящая для сбора мякоти кактуса&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках растительной жизни.
                                { "Russian", "&lt;EARTH&gt;Обнаружена планета, подходящая для сбора мякоти кактуса&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты&#xA;в поисках растительной жизни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_DUST_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;TRADEABLE&gt;мякоть кактуса&lt;&gt; с диких &lt;TRADEABLE&gt;эхинокактусов&lt;&gt;.&#xA;Найдите заросли &lt;TRADEABLE&gt;эхинокактусов&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "Соберите &lt;TRADEABLE&gt;мякоть кактуса&lt;&gt; с диких &lt;TRADEABLE&gt;эхинокактусов&lt;&gt;&#xA;Найдите заросли &lt;TRADEABLE&gt;эхинокактусов&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_PLANT_LUSH_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_LUSH_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите системы, где растет &lt;TRADEABLE&gt;звездный лук&lt;&gt;, на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Найдите систему, где растёт &lt;TRADEABLE&gt;звёздный лук&lt;&gt;, на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_LUSH_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена планета, подходящая для произрастания звездного лука&lt;&gt;&#xA;Нацельтесь на планету и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее доступные ресурсы.&#xA;Приземлитесь на планете, где растет &lt;TRADEABLE&gt;звездный лук&lt;&gt;.
                                { "Russian", "&lt;EARTH&gt;Обнаружена планета, подходящая для произрастания звёздного лука&lt;&gt;&#xA;Нацельтесь на планету и просканируйте ее (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Приземлитесь на планету, где растёт &lt;TRADEABLE&gt;звёздный лук&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_LUSH_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена планета, подходящая для произрастания звездного лука&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках растительной жизни.
                                { "Russian", "&lt;EARTH&gt;Обнаружена планета, подходящая для произрастания звёздного лука&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты&#xA;в поисках растительной жизни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_LUSH_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;TRADEABLE&gt;звездный лук&lt;&gt; с дикой &lt;TRADEABLE&gt;звездяники&lt;&gt;.&#xA;Найдите заросли &lt;TRADEABLE&gt;звездяники&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "Соберите &lt;TRADEABLE&gt;звёздный лук&lt;&gt; с дикой &lt;TRADEABLE&gt;звездяники&lt;&gt;&#xA;Найдите заросли &lt;TRADEABLE&gt;звездяники&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_PLANT_HOT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_HOT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите системы, где растет &lt;TRADEABLE&gt;соланий&lt;&gt;, на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Найдите систему, где растёт &lt;TRADEABLE&gt;соланий&lt;&gt;, на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_HOT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена планета, подходящая для произрастания солания&lt;&gt;&#xA;Нацельтесь на планету и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее доступные ресурсы.&#xA;Приземлитесь на планете, где растет &lt;TRADEABLE&gt;соланий&lt;&gt;.
                                { "Russian", "&lt;EARTH&gt;Обнаружена планета, подходящая для произрастания солания&lt;&gt;&#xA;Нацельтесь на планету и просканируйте ее (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Приземлитесь на планету, где растёт &lt;TRADEABLE&gt;соланий&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_HOT_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена планета, подходящая для произрастания солания&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках растительной жизни.
                                { "Russian", "&lt;EARTH&gt;Обнаружена планета, подходящая для произрастания солания&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты&#xA;в поисках растительной жизни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_HOT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;TRADEABLE&gt;соланий&lt;&gt; с дикого &lt;TRADEABLE&gt;солнечного вьюна&lt;&gt;.&#xA;Найдите &lt;TRADEABLE&gt;солнечный вьюн&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "Соберите &lt;TRADEABLE&gt;соланий&lt;&gt; с дикого &lt;TRADEABLE&gt;солнечного вьюна&lt;&gt;&#xA;Найдите &lt;TRADEABLE&gt;солнечный вьюн&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_PLANT_SNOW_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_SNOW_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите системы, где растут &lt;TRADEABLE&gt;морозные кристаллы&lt;&gt;, на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Найдите систему, где растут &lt;TRADEABLE&gt;морозные кристаллы&lt;&gt;, на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_SNOW_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена планета, подходящая для произрастания морозных кристаллов&lt;&gt;&#xA;Нацельтесь на планету и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее доступные ресурсы.&#xA;Приземлитесь на планете, где растут &lt;TRADEABLE&gt;морозные кристаллы&lt;&gt;.
                                { "Russian", "&lt;EARTH&gt;Обнаружена планета, подходящая для произрастания морозных кристаллов&lt;&gt;&#xA;Нацельтесь на планету и просканируйте ее (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Приземлитесь на планету, где растут &lt;TRADEABLE&gt;морозные кристаллы&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_SNOW_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена планета, подходящая для произрастания морозных кристаллов&lt;&gt;.&#xA;Отправляйтесь в космос и сканируйте планеты в поисках растительной жизни.
                                { "Russian", "&lt;EARTH&gt;Обнаружена планета, подходящая для произрастания морозных кристаллов&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты&#xA;в поисках растительной жизни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_SNOW_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;TRADEABLE&gt;морозные кристаллы&lt;&gt; с дикой &lt;TRADEABLE&gt;плюхеи&lt;&gt;.&#xA;Найдите заросли &lt;TRADEABLE&gt;плюхеи&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "Соберите &lt;TRADEABLE&gt;морозные кристаллы&lt;&gt; с дикой &lt;TRADEABLE&gt;плюхеи&lt;&gt;&#xA;Найдите заросли &lt;TRADEABLE&gt;плюхеи&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_PLANT_TOXIC_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_TOXIC_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите системы, где растет &lt;TRADEABLE&gt;грибковая плесень&lt;&gt;, на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Найдите систему, где растёт &lt;TRADEABLE&gt;грибковая плесень&lt;&gt;, на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_TOXIC_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена планета, подходящая для произрастания грибковой плесени&lt;&gt;&#xA;Нацельтесь на планету и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее доступные ресурсы.&#xA;Приземлитесь на планете, где растет &lt;TRADEABLE&gt;грибковая плесень&lt;&gt;.
                                { "Russian", "&lt;EARTH&gt;Обнаружена планета, подходящая для произрастания грибковой плесени&lt;&gt;&#xA;Нацельтесь на планету и просканируйте ее (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Приземлитесь на планету, где растёт &lt;TRADEABLE&gt;грибковая плесень&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_TOXIC_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена планета, подходящая для произрастания грибковой плесени&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках растительной жизни.
                                { "Russian", "&lt;EARTH&gt;Обнаружена планета, подходящая для произрастания грибковой плесени&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты&#xA;в поисках растительной жизни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_TOXIC_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;TRADEABLE&gt;грибковую плесень&lt;&gt; с диких &lt;TRADEABLE&gt;скоплений грибов&lt;&gt;.&#xA;Найдите &lt;TRADEABLE&gt;скопления грибов&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "Соберите &lt;TRADEABLE&gt;грибковую плесень&lt;&gt; с диких &lt;TRADEABLE&gt;скоплений грибов&lt;&gt;&#xA;Найдите &lt;TRADEABLE&gt;скопления грибов&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_PLANT_RADIO_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_RADIO_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите системы, где растет &lt;TRADEABLE&gt;гамма-корень&lt;&gt;, на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Найдите систему, где растёт &lt;TRADEABLE&gt;гамма-корень&lt;&gt;, на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_RADIO_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена планета, подходящая для произрастания гамма-корня&lt;&gt;&#xA;Нацельтесь на планету и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее доступные ресурсы.&#xA;Приземлитесь на планете, где растет &lt;TRADEABLE&gt;гамма-корень&lt;&gt;.
                                { "Russian", "&lt;EARTH&gt;Обнаружена планета, подходящая для произрастания гамма-корня&lt;&gt;&#xA;Нацельтесь на планету и просканируйте ее (&lt;IMG&gt;SCAN&lt;&gt;)&#xA;Приземлитесь на планету, где растёт &lt;TRADEABLE&gt;гамма-корень&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_RADIO_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена планета, подходящая для произрастания гамма-корня&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках растительной жизни.
                                { "Russian", "&lt;EARTH&gt;Обнаружена планета, подходящая для произрастания гамма-корня&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты&#xA;в поисках растительной жизни" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_RADIO_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;TRADEABLE&gt;гамма-корень&lt;&gt; с дикой &lt;TRADEABLE&gt;гамма-травы&lt;&gt;.&#xA;Найдите заросли &lt;TRADEABLE&gt;гамма-травы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "Соберите &lt;TRADEABLE&gt;гамма-корень&lt;&gt; с дикой &lt;TRADEABLE&gt;гамма-травы&lt;&gt;&#xA;Найдите заросли &lt;TRADEABLE&gt;гамма-травы&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_PLANT_POOP_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_POOP_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Фекалий&lt;&gt; производится хорошо откормленными формами жизни. Найдите животных&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                -- &lt;FUEL&gt;Faecium&lt;&gt; is produced by well-fed lifeforms. Locate animal life&#xA;Access the Galaxy Map with &lt;IMG&gt;QUICK_MENU&lt;&gt; while in the Starship
                                { "Russian", "&lt;FUEL&gt;Фекалий&lt;&gt; производится хорошо откормленными животными&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_POOP_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Фекалий&lt;&gt; производится хорошо откормленными формами жизни. Найдите животных&#xA;Приземлитесь на планете, чтобы оценить уровень жизни
                                -- &lt;FUEL&gt;Faecium&lt;&gt; is produced by well-fed lifeforms. Locate animal life&#xA;Land on a planet to survey life levels
                                { "Russian", "&lt;FUEL&gt;Фекалий&lt;&gt; производится хорошо откормленными животными&#xA;Приземлитесь на планету, чтобы оценить животный мир" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_POOP_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Фекалий&lt;&gt; производится хорошо откормленными формами жизни. Найдите животных.&#xA;Эта планета &lt;FUEL&gt;безжизненна&lt;&gt;.
                                { "Russian", "&lt;FUEL&gt;Фекалий&lt;&gt; производится хорошо откормленными животными&#xA;Эта планета &lt;FUEL&gt;безжизненна&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_POOP_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Местная фауна отмечается красными или зелеными точками на &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt;.&#xA;Когда вы кормите животных, вы получаете &lt;FUEL&gt;фекалий&lt;&gt; в качестве побочного продукта пищеварения.&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Некоторые виды фауны могут попытаться съесть экзокостюм.
                                { "Russian", "Фауна отмечается красными или зелеными точками в &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt;&#xA;После кормления животных получается побочный продукт &lt;FUEL&gt;фекалий&lt;&gt;&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Некоторые виды фауны могут попытаться съесть экзокостюм" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_POOP_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Чтобы накормить животных, создайте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Когда вы кормите животных, вы получаете &lt;FUEL&gt;фекалий&lt;&gt; в качестве побочного продукта пищеварения.
                                { "Russian", "Для кормления животных создайте: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;После кормления животных получается побочный продукт &lt;FUEL&gt;фекалий&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_PLANT_POOP1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_POOP1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Коприт&lt;&gt; производится хорошо откормленными формами жизни. Найдите животных&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "&lt;SPECIAL&gt;Коприт&lt;&gt; производится хорошо откормленными животными&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_POOP1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Коприт&lt;&gt; производится хорошо откормленными формами жизни. Найдите животных&#xA;Приземлитесь на планете, чтобы оценить уровень жизни
                                { "Russian", "&lt;SPECIAL&gt;Коприт&lt;&gt; производится хорошо откормленными животными&#xA;Приземлитесь на планету, чтобы оценить животный мир" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_POOP1_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Коприт&lt;&gt; производится хорошо откормленными формами жизни. Найдите животных&#xA;Эта планета &lt;FUEL&gt;безжизненна&lt;&gt;
                                { "Russian", "&lt;SPECIAL&gt;Коприт&lt;&gt; производится хорошо откормленными животными&#xA;Эта планета &lt;FUEL&gt;безжизненна&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_POOP1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Местная фауна отмечается белыми, красными или зелеными точками на &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt;&#xA;Кормя животных, вы можете добыть &lt;SPECIAL&gt;коприт&lt;&gt; в качестве побочного продукта пищеварения&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Некоторые виды фауны могут попытаться съесть экзокостюм
                                { "Russian", "Фауна отмечается белыми, красными или зелеными точками в &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt;&#xA;После кормления животных получается побочный продукт &lt;SPECIAL&gt;коприт&lt;&gt;&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Некоторые виды фауны могут попытаться съесть экзокостюм" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_POOP1_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Фауна отмечается белыми, красными или зелеными точками на &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt;&#xA;Кормя животных, вы можете добыть &lt;SPECIAL&gt;коприт&lt;&gt; в качестве побочного продукта пищеварения
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Фауна отмечается белыми, красными или зелеными точками в &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt;&#xA;После кормления животных получается побочный продукт &lt;SPECIAL&gt;коприт&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_PLANT_POOP2_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_POOP2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Навоз&lt;&gt; производится хорошо откормленными формами жизни. Найдите животных&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;Навоз&lt;&gt; производится хорошо откормленными животными&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_POOP2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Навоз&lt;&gt; производится хорошо откормленными формами жизни. Найдите животных&#xA;Приземлитесь на планете, чтобы оценить уровень жизни
                                { "Russian", "&lt;FUEL&gt;Навоз&lt;&gt; производится хорошо откормленными животными&#xA;Приземлитесь на планету, чтобы оценить животный мир" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_POOP2_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;Навоз&lt;&gt; производится хорошо откормленными формами жизни. Найдите животных&#xA;Эта планета &lt;FUEL&gt;безжизненна&lt;&gt;
                                { "Russian", "&lt;FUEL&gt;Навоз&lt;&gt; производится хорошо откормленными животными&#xA;Эта планета &lt;FUEL&gt;безжизненна&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_POOP2_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Местная фауна отмечается белыми, красными или зелеными точками на &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt;&#xA;Кормя животных, вы можете добыть &lt;FUEL&gt;образцы навоза&lt;&gt; в качестве побочного продукта пищеварения&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Некоторые виды фауны могут попытаться съесть экзокостюм
                                { "Russian", "Фауна отмечается белыми, красными или зелеными точками в &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt;&#xA;После кормления животных получается побочный продукт &lt;FUEL&gt;навоз&lt;&gt;&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Некоторые виды фауны могут попытаться съесть экзокостюм" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_PLANT_POOP2_MSG3A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите  %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Фауна отмечается белыми, красными или зелеными точками на &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt;&#xA;Кормя животных, вы можете добыть &lt;FUEL&gt;образцы навоза&lt;&gt; в качестве побочного продукта пищеварения
                                { "Russian", "Соберите: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Фауна отмечается белыми, красными или зелеными точками в &lt;TECHNOLOGY&gt;анализирующем визоре&lt;&gt;&#xA;После кормления животных получается побочный продукт &lt;FUEL&gt;навоз&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_BLUE2_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_BLUE2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите системы с &lt;TECHNOLOGY&gt;синей&lt;&gt; звездой на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.&#xA;Для варп-прыжка в &lt;TECHNOLOGY&gt;синюю&lt;&gt; систему необходим &lt;TECHNOLOGY&gt;индиевый привод&lt;&gt;.
                                { "Russian", "Найдите систему с &lt;TECHNOLOGY&gt;синей&lt;&gt; звездой на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Для варп-прыжка в &lt;TECHNOLOGY&gt;синюю&lt;&gt; систему необходим &lt;TECHNOLOGY&gt;индиевый привод&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_BLUE2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружены богатые индием планеты&lt;&gt;&#xA;Все планеты в &lt;TECHNOLOGY&gt;синих&lt;&gt; системах обладают богатыми залежами индия.&#xA;Приземлитесь на планете с залежами индия.
                                { "Russian", "&lt;STELLAR&gt;Обнаружены богатые индием планеты&lt;&gt;&#xA;Все планеты в &lt;TECHNOLOGY&gt;синих&lt;&gt; системах обладают богатыми залежами индия&#xA;Приземлитесь на планету с залежами индия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_BLUE2_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружены богатые индием планеты&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов.
                                { "Russian", "&lt;STELLAR&gt;Обнаружены богатые индием планеты&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты&#xA;в поисках минералов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_BLUE2_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите крупные залежи &lt;STELLAR&gt;индия&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                { "Russian", "Найдите крупные залежи &lt;STELLAR&gt;индия&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Добывайте ресурсы из крупных залежей &lt;TECHNOLOGY&gt;ландшафтным манипулятором&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_GREEN2_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_GREEN2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите системы с &lt;TRADEABLE&gt;зеленой&lt;&gt; звездой на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.&#xA;Для варп-прыжка в &lt;TRADEABLE&gt;зеленую&lt;&gt; систему необходим &lt;TECHNOLOGY&gt;эмериловый привод&lt;&gt;.
                                { "Russian", "Найдите систему с &lt;TRADEABLE&gt;зеленой&lt;&gt; звездой на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Для варп-прыжка в &lt;TRADEABLE&gt;зеленую&lt;&gt; систему необходим &lt;TECHNOLOGY&gt;эмериловый привод&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_GREEN2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружены богатые эмерилом планеты&lt;&gt;&#xA;Все планеты в &lt;TRADEABLE&gt;зеленых&lt;&gt; системах обладают богатыми залежами эмерила.&#xA;Приземлитесь на планете с залежами эмерила.
                                { "Russian", "&lt;STELLAR&gt;Обнаружены богатые эмерилом планеты&lt;&gt;&#xA;Все планеты в &lt;TRADEABLE&gt;зеленых&lt;&gt; системах обладают богатыми залежами эмерила&#xA;Приземлитесь на планету с залежами эмерила" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_GREEN2_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружены богатые эмерилом планеты&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов.
                                { "Russian", "&lt;STELLAR&gt;Обнаружены богатые эмерилом планеты&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты&#xA;в поисках минералов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_GREEN2_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите крупные залежи &lt;STELLAR&gt;эмерила&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                { "Russian", "Найдите крупные залежи &lt;STELLAR&gt;эмерила&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Добывайте ресурсы из крупных залежей &lt;TECHNOLOGY&gt;ландшафтным манипулятором&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_RED2_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_RED2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите системы с &lt;FUEL&gt;красной&lt;&gt; звездой на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.&#xA;Для варп-прыжка в &lt;FUEL&gt;красную&lt;&gt; систему необходим &lt;TECHNOLOGY&gt;кадмиевый привод&lt;&gt;.
                                { "Russian", "Найдите систему с &lt;FUEL&gt;красной&lt;&gt; звездой на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)&#xA;Для варп-прыжка в &lt;FUEL&gt;красную&lt;&gt; систему необходим &lt;TECHNOLOGY&gt;кадмиевый привод&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_RED2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружены богатые кадмием планеты&lt;&gt;&#xA;Все планеты в &lt;FUEL&gt;красных&lt;&gt; системах обладают богатыми залежами кадмия.&#xA;Приземлитесь на планете с залежами кадмия.
                                { "Russian", "&lt;STELLAR&gt;Обнаружены богатые кадмием планеты&lt;&gt;&#xA;Все планеты в &lt;FUEL&gt;красных&lt;&gt; системах обладают богатыми залежами кадмия&#xA;Приземлитесь на планету с залежами кадмия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_RED2_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружены богатые кадмием планеты&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов.
                                { "Russian", "&lt;STELLAR&gt;Обнаружены богатые кадмием планеты&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты&#xA;в поисках минералов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_RED2_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите крупные залежи &lt;STELLAR&gt;кадмия&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                { "Russian", "Найдите крупные залежи &lt;STELLAR&gt;кадмия&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Добывайте ресурсы из крупных залежей &lt;TECHNOLOGY&gt;ландшафтным манипулятором&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_RED2_MSG3_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Получить: %ITEM% — &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Найдите крупные залежи &lt;STELLAR&gt;кадмия&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                -- Collect %ITEM%: &lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;&#xA;Locate large &lt;STELLAR&gt;Cadmium&lt;&gt; deposits with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;&#xA;Mine large deposits with the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Найдите крупные залежи &lt;STELLAR&gt;кадмия&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Добывайте ресурсы из крупных залежей &lt;TECHNOLOGY&gt;ландшафтным манипулятором&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_YELLOW2_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_YELLOW2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите системы с &lt;COMMODITY&gt;желтой&lt;&gt; звездой на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Найдите систему с &lt;COMMODITY&gt;желтой&lt;&gt; звездой на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_YELLOW2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружены богатые медью планеты&lt;&gt;&#xA;Все планеты в &lt;COMMODITY&gt;желтых&lt;&gt; системах обладают богатыми залежами меди.&#xA;Приземлитесь на планете с залежами меди.
                                { "Russian", "&lt;STELLAR&gt;Обнаружены богатые медью планеты&lt;&gt;&#xA;Все планеты в &lt;COMMODITY&gt;желтых&lt;&gt; системах обладают богатыми залежами меди&#xA;Приземлитесь на планету с залежами меди" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_YELLOW2_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;В этой системе обнаружена медь&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов.
                                { "Russian", "&lt;STELLAR&gt;В этой системе обнаружена медь&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты&#xA;в поисках минералов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_YELLOW2_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите крупные залежи &lt;STELLAR&gt;меди&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                { "Russian", "Найдите крупные залежи &lt;STELLAR&gt;меди&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Добывайте ресурсы из крупных залежей &lt;TECHNOLOGY&gt;ландшафтным манипулятором&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_ROBOT2_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_ROBOT2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите %ITEM% из живых кристаллов, которые можно найти на &lt;SPECIAL&gt;лишенных гармонии&lt;&gt; планетах.&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;), чтобы найти &lt;SPECIAL&gt;лишенные гармонии&lt;&gt; миры.
                                { "Russian", "Соберите %ITEM% из живых кристаллов на планетах &lt;SPECIAL&gt;лишенных гармонии&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_ROBOT2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите %ITEM% из живых кристаллов, которые можно найти на &lt;SPECIAL&gt;лишенных гармонии&lt;&gt; планетах.&#xA;Неподалеку обнаружена &lt;SPECIAL&gt;лишенная гармонии&lt;&gt; планета&#xA;Чтобы проверять данные планеты, сканируйте (&lt;IMG&gt;SCAN&lt;&gt;) их из космоса.
                                { "Russian", "Соберите %ITEM% из живых кристаллов на планетах &lt;SPECIAL&gt;лишенных гармонии&lt;&gt;&#xA;Неподалеку обнаружена &lt;SPECIAL&gt;лишенная гармонии&lt;&gt; планета&#xA;Сканируйте планеты из космоса с помощью &lt;IMG&gt;SCAN&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_ROBOT2_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите &lt;SPECIAL&gt;атлантидий&lt;&gt; из &lt;SPECIAL&gt;живых фрагментов&lt;&gt;.&#xA;Испорченные стражи оставляют атлантидий после гибели в бою.
                                { "Russian", "Соберите &lt;SPECIAL&gt;атлантидий&lt;&gt; из &lt;SPECIAL&gt;живых фрагментов&lt;&gt;&#xA;Испорченные стражи оставляют атлантидий после гибели в бою" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_EX_YELLOW_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_EX_YELLOW_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите системы с доступной &lt;STELLAR&gt;активированной медью&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Найдите системы с &lt;STELLAR&gt;активированной медью&lt;&gt; на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_EX_YELLOW_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Обнаружена активированная медь&lt;&gt;&#xA;Все планеты в &lt;COMMODITY&gt;желтых&lt;&gt; системах обладают богатыми залежами меди.&#xA;Залежи меди активируются &lt;FUEL&gt;экстремальными погодными условиями&lt;&gt;.&#xA;Нацельтесь на планету и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее доступные ресурсы.
                                { "Russian", "&lt;STELLAR&gt;Обнаружена активированная медь&lt;&gt;&#xA;Все планеты в &lt;COMMODITY&gt;желтых&lt;&gt; системах обладают богатыми залежами меди&#xA;Залежи меди активируются &lt;FUEL&gt;экстремальными погодными условиями&lt;&gt;&#xA;Нацельтесь на планету и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее доступные ресурсы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_EX_YELLOW_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;В этой системе обнаружена активированная медь&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов.
                                { "Russian", "&lt;STELLAR&gt;В этой системе обнаружена активированная медь&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_EX_YELLOW_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Найдите крупные залежи &lt;EARTH&gt;активированной меди&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.
                                { "Russian", "Соберите: %ITEM% (&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;Найдите крупные залежи &lt;EARTH&gt;активированной меди&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_ASTEROID2_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_ASTEROID2_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывайте &lt;EXOTIC&gt;золото&lt;&gt; из астероидов.&#xA;Отправляйтесь в космос, чтобы искать астероиды.
                                { "Russian", "Добывайте &lt;EXOTIC&gt;золото&lt;&gt; из астероидов&#xA;Отправляйтесь в космос и найдите астероиды" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_ASTEROID2_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Добывайте &lt;EXOTIC&gt;золото&lt;&gt; из астероидов.&#xA;Золото можно найти на обычных астероидах, но не так часто, как &lt;EXOTIC&gt;серебро&lt;&gt;.&#xA;Добывайте ресурсы из астероидов с помощью орудия корабля (&lt;IMG&gt;SHIPFIRE&lt;&gt;).
                                { "Russian", "Добывайте &lt;EXOTIC&gt;золото&lt;&gt; из астероидов&#xA;Золото попадается реже, чем &lt;EXOTIC&gt;серебро&lt;&gt;&#xA;Добывайте ресурсы из астероидов с помощью орудий корабля (&lt;IMG&gt;SHIPFIRE&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_ASTEROID2_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите крупные залежи &lt;EARTH&gt;золота&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Золото можно обнаружить при изучении обычных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "Найдите крупные залежи &lt;EARTH&gt;золота&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;&#xA;Золото можно обнаружить при изучении обычных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        --#endregion

                    }
                },
                { -- LANGUAGE/NMS_LOC6_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC6_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        -- используется в UI_EXPED_FIX_SHIP_PIR_MSG3 из NMS_LOC7_RUSSIAN
                        -- перевод неправильный и общая строка ^^^ не влазеет
                        -- хз че делать
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_REPAIR_TECH_MSG_FORMAT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отремонтировать компоненты технологии &lt;TECHNOLOGY&gt;%TECH%&lt;&gt;: &lt;%FORMAT%&gt;%PROGRESS%%&lt;&gt;
                                -- Repair &lt;TECHNOLOGY&gt;%TECH%&lt;&gt; components: &lt;%FORMAT%&gt;%PROGRESS%%&lt;&gt;
                                { "Russian", "Почините &lt;TECHNOLOGY&gt;%TECH%&lt;&gt;: &lt;%FORMAT%&gt;%PROGRESS%%&lt;&gt;" },
                            }
                        },

                        --#region UI_PROD_NOT_KNOWN_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PROD_NOT_KNOWN_MSG_ALT3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;FUEL&gt;%ITEM% Схема неизвестна&lt;&gt;&#xA;Изучайте схемы, выполняя &lt;STELLAR&gt;этапы экспедиции&lt;&gt;&#xA;Выберите &lt;EXPED&gt;%NAME%&lt;&gt; в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                { "Russian", "&lt;FUEL&gt;%ITEM% — чертеж неизвестен&lt;&gt;&#xA;Изучите его, выполнив &lt;STELLAR&gt;этап экспедиции&lt;&gt;&#xA;Выберите &lt;EXPED&gt;%NAME%&lt;&gt; в журнале экспедиции (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PROD_NOT_KNOWN_MSG_ALT4" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приобрести предмет %ITEM% в &lt;TECHNOLOGY&gt;галактическом торговом терминале&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Постройте торговый терминал на вашей &lt;STELLAR&gt;базе&lt;&gt;, чтобы иметь легкий доступ к рынку.
                                -- Purchase %ITEM% from a &lt;TECHNOLOGY&gt;Galactic Trade Terminal&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Construct a Trade Terminal in your &lt;STELLAR&gt;base&lt;&gt; for easy market access
                                { "Russian", "Купите в &lt;TECHNOLOGY&gt;торговом терминале&lt;&gt;: %ITEM% (%CURRENT%/%AMOUNT%)&#xA;Постройте торговый терминал на &lt;STELLAR&gt;базе&lt;&gt;,&#xA;чтобы иметь доступ к рынку" },
                            }
                        },
                        --#endregion

                        --#region UI_PIN_.*_OBJ_TIP
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_HYDRALIC_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM%: создайте из &lt;COMMODITY&gt;углеродных нанотрубок&lt;&gt;, &lt;TRADEABLE&gt;соли&lt;&gt; и &lt;SPECIAL&gt;хроматического металла&lt;&gt;.&#xA;&#xA;Создайте &lt;COMMODITY&gt;углеродные нанотрубки&lt;&gt; из &lt;FUEL&gt;углерода&lt;&gt;. Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря&lt;&gt;, используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;&lt;TRADEABLE&gt;Соль&lt;&gt; добывается напрямую из &lt;EARTH&gt;подводных каменных отложений&lt;&gt;. Чтобы повысить эффективность экзокостюма под водой, улучшите его &lt;TECHNOLOGY&gt;аэрационную мембрану&lt;&gt; или пополняйте запас кислорода с помощью &lt;TRADEABLE&gt;водорослевых мешков&lt;&gt;.&#xA;&lt;SPECIAL&gt;Хроматический металл&lt;&gt; создается в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из &lt;STELLAR&gt;звездных металлов&lt;&gt;: &lt;COMMODITY&gt;меди&lt;&gt;, &lt;FUEL&gt;кадмия&lt;&gt;, &lt;TRADEABLE&gt;эмерила&lt;&gt; и &lt;TECHNOLOGY&gt;индия&lt;&gt;.
                                -- Craft %ITEM% from &lt;COMMODITY&gt;Carbon Nanotubes&lt;&gt;, &lt;TRADEABLE&gt;Salt&lt;&gt; and &lt;SPECIAL&gt;Chromatic Metal&lt;&gt;.&#xA;&#xA;Craft &lt;COMMODITY&gt;Carbon Nanotubes&lt;&gt; from &lt;FUEL&gt;Carbon&lt;&gt;. Use &lt;IMG&gt;PRODMENU&lt;&gt; to craft in empty &lt;TECHNOLOGY&gt;Inventory Slots&lt;&gt;.&#xA;&lt;TRADEABLE&gt;Salt&lt;&gt; is readily extracted from &lt;EARTH&gt;underwater rock deposits&lt;&gt;. Increase marine efficiency by upgrading the Exosuit &lt;TECHNOLOGY&gt;Aeration Membrane&lt;&gt; or by refilling oxygen supplies from &lt;TRADEABLE&gt;Kelp Sacs&lt;&gt;.&#xA;&lt;SPECIAL&gt;Chromatic Metal&lt;&gt; is created in a &lt;TECHNOLOGY&gt;Refiner&lt;&gt; from the &lt;STELLAR&gt;stellar metals&lt;&gt;: &lt;COMMODITY&gt;Copper&lt;&gt;, &lt;FUEL&gt;Cadmium&lt;&gt;, &lt;TRADEABLE&gt;Emeril&lt;&gt; and &lt;TECHNOLOGY&gt;Indium&lt;&gt;.
                                { "Russian", "%ITEM%: создайте из &lt;COMMODITY&gt;углеродных нанотрубок﻿,&lt;&gt; &lt;TRADEABLE&gt;соли&lt;&gt; и &lt;SPECIAL&gt;хроматического металла﻿.&lt;&gt;&#xA;&#xA;Создайте &lt;COMMODITY&gt;углеродные нанотрубки&lt;&gt; из &lt;FUEL&gt;углерода﻿.&lt;&gt; Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря﻿,&lt;&gt; используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;&lt;TRADEABLE&gt;Соль&lt;&gt; добывается напрямую из &lt;EARTH&gt;подводных каменных отложений﻿.&lt;&gt; Чтобы повысить эффективность экзокостюма под водой, улучшите его &lt;TECHNOLOGY&gt;аэрационную мембрану&lt;&gt; или пополняйте запас кислорода с помощью &lt;TRADEABLE&gt;водорослевых мешков﻿.&lt;&gt;&#xA;&lt;SPECIAL&gt;Хроматический металл&lt;&gt; создается в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из &lt;STELLAR&gt;звёздных металлов﻿:&lt;&gt; &lt;COMMODITY&gt;меди﻿,&lt;&gt; &lt;FUEL&gt;кадмия﻿,&lt;&gt; &lt;TRADEABLE&gt;эмерила&lt;&gt; и &lt;TECHNOLOGY&gt;индия﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_COMPUTER_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM%: создайте из &lt;COMMODITY&gt;микропроцессоров&lt;&gt;, &lt;FUEL&gt;антиматерии&lt;&gt; и &lt;SPECIAL&gt;хроматического металла&lt;&gt;.&#xA;&#xA;Создайте &lt;COMMODITY&gt;микропроцессоры&lt;&gt; или купите их в &lt;TECHNOLOGY&gt;торговом терминале&lt;&gt;.&#xA;Создайте &lt;FUEL&gt;антиматерию&lt;&gt; из &lt;SPECIAL&gt;хроматического металла&lt;&gt; и &lt;FUEL&gt;сжатого углерода&lt;&gt;.&#xA;&lt;SPECIAL&gt;Хроматический металл&lt;&gt; создается в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из &lt;STELLAR&gt;звездных металлов&lt;&gt;: &lt;COMMODITY&gt;меди&lt;&gt;, &lt;FUEL&gt;кадмия&lt;&gt;, &lt;TRADEABLE&gt;эмерила&lt;&gt; и &lt;TECHNOLOGY&gt;индия&lt;&gt;.
                                { "Russian", "%ITEM%: создается из &lt;COMMODITY&gt;микропроцессоров﻿,&lt;&gt; &lt;FUEL&gt;антиматерии&lt;&gt; и &lt;SPECIAL&gt;хроматического металла﻿.&lt;&gt;&#xA;&#xA;Создайте &lt;COMMODITY&gt;микропроцессоры&lt;&gt; или купите их в &lt;TECHNOLOGY&gt;торговом терминале﻿.&lt;&gt;&#xA;Создайте &lt;FUEL&gt;антиматерию&lt;&gt; из &lt;SPECIAL&gt;хроматического металла&lt;&gt; и &lt;FUEL&gt;сжатого углерода﻿.&lt;&gt;&#xA;&lt;SPECIAL&gt;Хроматический металл&lt;&gt; создается в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из &lt;STELLAR&gt;звёздных металлов﻿:&lt;&gt; &lt;COMMODITY&gt;меди﻿,&lt;&gt; &lt;FUEL&gt;кадмия﻿,&lt;&gt; &lt;TRADEABLE&gt;эмерила&lt;&gt; и &lt;TECHNOLOGY&gt;индия﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_MAGNET_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM%: создайте из &lt;EARTH&gt;намагниченного феррита&lt;&gt; и &lt;TECHNOLOGY&gt;ионизированного кобальта&lt;&gt;. Используйте &lt;TECHNOLOGY&gt;очиститель&lt;&gt; для обработки продвинутых материалов.&#xA;&#xA;&lt;TECHNOLOGY&gt;Кобальт&lt;&gt; можно найти под землей. Найдите входы в пещеры. &lt;RED&gt;ВНИМАНИЕ!&lt;&gt; Во многих пещерах обитает опасная флора.&#xA;Добудьте &lt;EARTH&gt;феррит&lt;&gt; из планетарных камней.
                                { "Russian", "%ITEM%: создайте из &lt;EARTH&gt;намагниченного феррита&lt;&gt; и &lt;TECHNOLOGY&gt;ионизированного кобальта﻿.&lt;&gt; Используйте &lt;TECHNOLOGY&gt;очиститель&lt;&gt; для обработки продвинутых материалов.&#xA;&#xA;&lt;TECHNOLOGY&gt;Кобальт&lt;&gt; можно найти под землей. Найдите входы в пещеры. &lt;RED&gt;ВНИМАНИЕ!&lt;&gt; Во многих пещерах обитает опасная флора.&#xA;Добудьте &lt;EARTH&gt;феррит&lt;&gt; из планетарных камней." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_MIRROR_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM%: создайте из &lt;EARTH&gt;золота&lt;&gt;, &lt;EARTH&gt;серебра&lt;&gt; и &lt;SPECIAL&gt;хроматического металла&lt;&gt;.&#xA;&#xA;&lt;EARTH&gt;Золото&lt;&gt; и &lt;EARTH&gt;серебро&lt;&gt; — ценные металлы, используемые в межзвездной торговле. Обычно &lt;COMMODITY&gt;добываются из астероидов&lt;&gt;. Периодически встречаются в подземных залежах на планетах.&#xA;&lt;SPECIAL&gt;Хроматический металл&lt;&gt; создается в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из &lt;STELLAR&gt;звездных металлов&lt;&gt;: &lt;COMMODITY&gt;меди&lt;&gt;, &lt;FUEL&gt;кадмия&lt;&gt;, &lt;TRADEABLE&gt;эмерила&lt;&gt; и &lt;TECHNOLOGY&gt;индия&lt;&gt;.
                                -- Craft %ITEM% from &lt;EARTH&gt;Gold&lt;&gt;, &lt;EARTH&gt;Silver&lt;&gt; and &lt;SPECIAL&gt;Chromatic Metal&lt;&gt;.&#xA;&#xA;&lt;EARTH&gt;Gold&lt;&gt; and &lt;EARTH&gt;Silver&lt;&gt; are valuable interstellar trading minerals, most commonly &lt;COMMODITY&gt;mined from asteroids&lt;&gt;. They are occasionally found in underground planetary deposits.&#xA;&lt;SPECIAL&gt;Chromatic Metal&lt;&gt; is created in a &lt;TECHNOLOGY&gt;Refiner&lt;&gt; from the &lt;STELLAR&gt;stellar metals&lt;&gt;: &lt;COMMODITY&gt;Copper&lt;&gt;, &lt;FUEL&gt;Cadmium&lt;&gt;, &lt;TRADEABLE&gt;Emeril&lt;&gt; and &lt;TECHNOLOGY&gt;Indium&lt;&gt;.
                                { "Russian", "%ITEM%: создайте из &lt;EARTH&gt;золота﻿,&lt;&gt; &lt;EARTH&gt;серебра&lt;&gt; и &lt;SPECIAL&gt;хроматического металла﻿.&lt;&gt;&#xA;&#xA;&lt;EARTH&gt;Золото&lt;&gt; и &lt;EARTH&gt;серебро&lt;&gt; — ценные металлы, используемые в межзвёздной торговле. Обычно &lt;COMMODITY&gt;добываются из астероидов﻿.&lt;&gt; А иногда встречаются в подземных залежах на планетах.&#xA;&lt;SPECIAL&gt;Хроматический металл&lt;&gt; создается в &lt;TECHNOLOGY&gt;очистителе&lt;&gt; из &lt;STELLAR&gt;звёздных металлов﻿:&lt;&gt; &lt;COMMODITY&gt;меди﻿,&lt;&gt; &lt;FUEL&gt;кадмия﻿,&lt;&gt; &lt;TRADEABLE&gt;эмерила&lt;&gt; и &lt;TECHNOLOGY&gt;индия﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_BIO_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM%: создайте из &lt;COMMODITY&gt;металлической обшивки&lt;&gt;, &lt;FUEL&gt;сжатого углерода&lt;&gt; и &lt;TRADEABLE&gt;хлора&lt;&gt;.&#xA;&#xA;Создайте &lt;COMMODITY&gt;металлическую обшивку&lt;&gt; из &lt;EARTH&gt;феррита&lt;&gt; или купите ее в &lt;TECHNOLOGY&gt;торговом терминале&lt;&gt;.&#xA;Получить сжатый углерод можно из &lt;FUEL&gt;углерода&lt;&gt;. Сжатый углерод иногда встречается в виде кристаллов на поверхности планет.&#xA;Хлор можно получить очисткой &lt;TRADEABLE&gt;соли&lt;&gt;, добываемой в &lt;TECHNOLOGY&gt;подводных залежах минералов&lt;&gt;.
                                { "Russian", "%ITEM%: создайте из &lt;COMMODITY&gt;металлической обшивки﻿,&lt;&gt; &lt;FUEL&gt;сжатого углерода&lt;&gt; и &lt;TRADEABLE&gt;хлора﻿.&lt;&gt;&#xA;&#xA;Создайте &lt;COMMODITY&gt;металлическую обшивку&lt;&gt; из &lt;EARTH&gt;феррита&lt;&gt; или купите ее в &lt;TECHNOLOGY&gt;торговом терминале﻿.&lt;&gt;&#xA;Получить сжатый углерод можно из &lt;FUEL&gt;углерода﻿.&lt;&gt; Сжатый углерод иногда встречается в виде кристаллов на поверхности планет.&#xA;Хлор можно получить очисткой &lt;TRADEABLE&gt;соли﻿,&lt;&gt; добываемой в &lt;TECHNOLOGY&gt;подводных залежах минералов﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_LAVA1_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Базальт&lt;&gt; в первую очередь нужно искать на планетах с &lt;FUEL&gt;вулканической средой&lt;&gt;. Встречается преимущественно в виде крупных месторождений, которые обнаруживаются с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;&#xA;Базальт можно обнаружить при изучении обычных ферритных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;. Можно получить путем обработки &lt;EARTH&gt;намагниченного феррита&lt;&gt; и земных металлов из других &lt;FUEL&gt;высокотемпературных&lt;&gt; миров.
                                { "Russian", "&lt;EARTH&gt;Базальт&lt;&gt; в первую очередь нужно искать на планетах с &lt;FUEL&gt;вулканической средой﻿.&lt;&gt; Встречается преимущественно в виде крупных месторождений, которые обнаруживаются с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt;&#xA;&#xA;Базальт можно обнаружить при изучении обычных ферритных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора﻿.&lt;&gt; Можно получить путем обработки &lt;EARTH&gt;намагниченного феррита&lt;&gt; и земных металлов из других &lt;FUEL&gt;высокотемпературных&lt;&gt; миров." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_STORM_CRYSTAL_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Кристаллы бури образуются естественным образом на планетах с &lt;FUEL&gt;экстремальными погодными условиями&lt;&gt;. Их можно собрать во время бури.&#xA;Чтобы найти кристаллы бури, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;.
                                { "Russian", "Кристаллы бури образуются естественным образом на планетах с &lt;FUEL&gt;экстремальными погодными условиями﻿.&lt;&gt; Их можно собрать во время бури.&#xA;Чтобы найти кристаллы бури, используйте &lt;TECHNOLOGY&gt;анализирующий визор﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_FIENDCORE_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Ядра личинок&lt;&gt; — это едкие липкие сердца &lt;FUEL&gt;шепчущих яиц&lt;&gt;, которые зачастую можно найти на безвоздушных планетах или вокруг заброшенных строений.&#xA;&lt;FUEL&gt;ВНИМАНИЕ&lt;&gt;: рои чудовищ будут отчаянно защищать свое потомство.&#xA;Чтобы найти &lt;FUEL&gt;шепчущие яйца&lt;&gt;, используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Ядра личинок&lt;&gt; — это едкие липкие сердца &lt;FUEL&gt;шепчущих яиц﻿,&lt;&gt; которые зачастую можно найти на безвоздушных планетах или вокруг заброшенных строений.&#xA;&lt;FUEL&gt;ВНИМАНИЕ!&lt;&gt; Рои чудовищ будут отчаянно защищать свое потомство.&#xA;Чтобы найти &lt;FUEL&gt;шепчущие яйца﻿,&lt;&gt; используйте &lt;TECHNOLOGY&gt;анализирующий визор﻿.&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_SHIPCHARGE_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %ITEM%: создайте из &lt;EARTH&gt;золота&lt;&gt; и &lt;TECHNOLOGY&gt;трития&lt;&gt;. Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря&lt;&gt;, используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;&lt;EARTH&gt;Золото&lt;&gt; и &lt;EARTH&gt;тритий&lt;&gt;, как правило, &lt;COMMODITY&gt;добывают из астероидов&lt;&gt;.
                                { "Russian", "%ITEM%: создайте из &lt;EARTH&gt;золота&lt;&gt; и &lt;TECHNOLOGY&gt;трития﻿.&lt;&gt; Чтобы создать объект в пустой &lt;TECHNOLOGY&gt;ячейке инвентаря﻿,&lt;&gt; используйте &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;&lt;EARTH&gt;Золото&lt;&gt; и &lt;EARTH&gt;тритий﻿,&lt;&gt; как правило, &lt;COMMODITY&gt;добывают из астероидов﻿.&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PIN_.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_LAVA1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;, чтобы находить залежи &lt;EARTH&gt;базальта&lt;&gt;.&#xA;Базальт можно найти на планетах с &lt;FUEL&gt;вулканической средой&lt;&gt;.
                                -- Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; to locate &lt;EARTH&gt;Basalt&lt;&gt; deposits&#xA;Basalt is found on worlds with &lt;FUEL&gt;volcanic environment&lt;&gt;
                                { "Russian", "Найдите залежи &lt;EARTH&gt;базальта&lt;&gt;, используя &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;&#xA;Базальт можно найти на планетах с &lt;FUEL&gt;вулканической средой&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_LAVA1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LAVA1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите богатую базальтом систему на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь в звездолете, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Найдите богатую базальтом систему на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в космосе, откройте галактическую карту (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LAVA1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая базальтом планета&lt;&gt;.&#xA;Нацельтесь на планету и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее доступные ресурсы.&#xA;Приземлитесь на планете с месторождениями базальта.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая базальтом планета&lt;&gt;&#xA;Нацельтесь на планету и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее доступные ресурсы&#xA;Приземлитесь на планете с месторождениями базальта" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LAVA1_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая базальтом планета&lt;&gt;.&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая базальтом планета&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_LAVA1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите крупные залежи &lt;EARTH&gt;базальта&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Базальт можно обнаружить при изучении обычных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "Найдите крупные залежи &lt;EARTH&gt;базальта&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;&#xA;Базальт можно обнаружить при изучении обычных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_WIKI_EXOCRAFT_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_EXOCRAFT_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетите &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt;, чтобы приобрести или улучшить вездеход.&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Посетите &lt;SPECIAL&gt;Космическую Аномалию&lt;&gt;, чтобы приобрести или улучшить вездеход&#xA;Находясь в космосе, вызовите &lt;SPECIAL&gt;Аномалию&lt;&gt; из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_EXOCRAFT_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетите &lt;STELLAR&gt;станцию строительных исследований&lt;&gt;, чтобы приобрести геостанции для вездеходов.
                                { "Russian", "Посетите &lt;STELLAR&gt;станцию строительных исследований&lt;&gt;, чтобы приобрести геостанции для вездеходов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_EXOCRAFT_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Посетите &lt;STELLAR&gt;Итерацию: Перс&lt;&gt;, чтобы разблокировать улучшения вездехода.&#xA;Также на &lt;STELLAR&gt;космических станциях&lt;&gt; продаются различные &lt;TECHNOLOGY&gt;дополнительные модули улучшения&lt;&gt;.
                                -- Visit &lt;STELLAR&gt;Iteration: Perses&lt;&gt; to unlock blueprints for Exocraft upgrades&#xA;&lt;STELLAR&gt;Space Stations&lt;&gt; will also sell a unique range of &lt;TECHNOLOGY&gt;additional upgrade modules&lt;&gt;
                                { "Russian", "Посетите &lt;STELLAR&gt;Итерацию: Персея&lt;&gt;, чтобы разблокировать улучшения вездехода&#xA;Также на &lt;STELLAR&gt;космических станциях&lt;&gt; продаются &lt;TECHNOLOGY&gt;дополнительные улучшения&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_EXOCRAFT_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разблокируйте вездеход, приобретая чертежи &lt;STELLAR&gt;геостанций&lt;&gt; в &lt;TECHNOLOGY&gt;модуле строит. исследований&lt;&gt; на Космической Аномалии.&#xA;Улучшайте свой вездеход с помощью &lt;TECHNOLOGY&gt;модулей улучш.&lt;&gt;, приобретаемых на &lt;STELLAR&gt;космич. станциях&lt;&gt;, или новых чертежей, получаемых на Космической Аномалии.
                                -- Unlock Exocraft by purchasing plans for &lt;STELLAR&gt;Geobays&lt;&gt; at the &lt;TECHNOLOGY&gt;Construction Research Unit&lt;&gt; on the Space Anomaly.&#xA;Upgrade your Exocraft with &lt;TECHNOLOGY&gt;Upgrade Modules&lt;&gt; from &lt;STELLAR&gt;Space Stations&lt;&gt; or new blueprints from the Space Anomaly.
                                { "Russian", "Разблокируйте вездеход, купив чертежи &lt;STELLAR&gt;геостанций&lt;&gt; в &lt;TECHNOLOGY&gt;модуле строительных исследований&lt;&gt; на Космической Аномалии.&#xA;Улучшите свой вездеход с помощью &lt;TECHNOLOGY&gt;модулей улучшений&lt;&gt;, которые продаются на &lt;STELLAR&gt;космических станциях&lt;&gt;, или с помощью новых чертежей, которые имеются на Космической Аномалии." },
                            }
                        },

                    }
                },
                { -- LANGUAGE/NMS_LOC7_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC7_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Установить:
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_INSTALL_TECH_DESC" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Установить: %ITEM%
                        --         { "Russian", "Установить2: %ITEM%" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPED_INSTALL_TECH_OBJ" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Установить: %ITEM%
                        --         { "Russian", "Установить3: %ITEM%" },
                        --     }
                        -- },
                        --#endregion

                        --#region Разное
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_FIENDS_OBJ" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Истребить биологические ужасы: %CURRENT% / %AMOUNT%
                                -- Exterminate biological horrors: %CURRENT% / %AMOUNT%
                                { "Russian", "Истребить биологические ужасы: %CURRENT%/%AMOUNT%" },
                            }
                        },
                        { -- на экране этапов изготовления предмета
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_CRAFT_TREE_TITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Создать: %ITEM%
                                -- Craft %ITEM%
                                { "Russian", "%ITEM%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_SUB_WIKI" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОБНАРУЖИТЬ ВЕЩЕСТВО
                                -- LOCATE SUBSTANCE
                                { "Russian", "ЗАКРЕПИТЬ ИНСТРУКЦИЮ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_SHORT_FLEETSA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Для экспедиций &lt;SPECIAL&gt;фрегатов&lt;&gt; необходим &lt;TECHNOLOGY&gt;зал командования флотом&lt;&gt;. Экспедиции вашего флота планирует &lt;TECHNOLOGY&gt;навигатор&lt;&gt;. &lt;WIKI_HIGH&gt;Подробнее...&lt;&gt;
                                -- &lt;SPECIAL&gt;Frigate&lt;&gt; expeditions require a &lt;TECHNOLOGY&gt;Fleet Command Room&lt;&gt;. The &lt;TECHNOLOGY&gt;Navigator&lt;&gt; plans expeditions for your fleet. &lt;WIKI_HIGH&gt;Read more...&lt;&gt;
                                { "Russian", "Для отправки &lt;SPECIAL&gt;фрегатов&lt;&gt; в экспедиции необходим &lt;TECHNOLOGY&gt;зал командования флотом&lt;&gt;. &lt;TECHNOLOGY&gt;Навигатор&lt;&gt; планирует экспедиции. &lt;WIKI_HIGH&gt;Подробнее...&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_TIMEDUST_OBJ_TIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Прах грез&lt;&gt; — это накопившиеся продукты разложения времени и воспоминаний, которые можно найти в обломках заброшенных грузовых судов, попавших в петлю.&#xA;&#xA;Находите заброшенные суда с помощью &lt;TECHNOLOGY&gt;сканера аварийных сигналов&lt;&gt;, который можно приобрести у &lt;SPECIAL&gt;сборщика утиля&lt;&gt; на борту космической станции.
                                -- &lt;SPECIAL&gt;Somnal Dust&lt;&gt;, the accumulated decay of time and memories, is found in the wrecks of derelict freighters caught within the loop.&#xA;&#xA;Locate derelicts with the use of an &lt;TECHNOLOGY&gt;Emergency Signal Scanner&lt;&gt;, purchaseable from a Space Station &lt;SPECIAL&gt;Scrap Dealer&lt;&gt;.
                                { "Russian", "&lt;SPECIAL&gt;Прах грёз&lt;&gt; — это накопившиеся продукты разложения времени и воспоминаний, которые можно найти на заброшенных грузовых суднах, попавших в петлю.&#xA;&#xA;Находите заброшенные суда с помощью &lt;TECHNOLOGY&gt;сканера аварийных сигналов&lt;&gt;, который можно приобрести у &lt;SPECIAL&gt;сборщика утиля&lt;&gt; на космических станциях." },
                            }
                        },
                        --#endregion

                        --#region UI_PIN_.*_MSG
                        -- все три строчки добавляются к сообщению "Создать или купить: Предмет"
                        -- и "Прогресс: ..." тут вообще не в тему - он должен указываться рядом с предметом в первой строчке (выше)
                        -- ну, может так сделали потому что выглядит такое сообщение уебищно до невозможности, что привлекает внимание игрока...
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PROGRESS_REPAIR_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Ремонтный комплект&lt;&gt; можно использовать вместо любого компонента.&#xA;Прогресс: &lt;STELLAR&gt;%CURRENT% / %AMOUNT%&lt;&gt;&#xA;Подробная информация указана в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;).
                                -- A &lt;STELLAR&gt;Repair Kit&lt;&gt; can be used in place of any component&#xA;Progress: &lt;STELLAR&gt;%CURRENT% / %AMOUNT%&lt;&gt;&#xA;See Log (&lt;IMG&gt;OPTIONS&lt;&gt;) for details
                                { "Russian", "&lt;STELLAR&gt;Ремонтный комплект&lt;&gt; можно использовать вместо любого компонента&#xA;Прогресс: &lt;STELLAR&gt;%CURRENT%&lt;&gt;/&lt;STELLAR&gt;%AMOUNT%&lt;&gt;&#xA;Подробная информация указана в журнале (&lt;IMG&gt;OPTIONS&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_AF_METAL_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;EARTH&gt;испорченный металл&lt;&gt; на борту грузовых судов, брошенных в открытом космосе.&#xA;Найти заброшенное судно можно с помощью &lt;TECHNOLOGY&gt;сканера аварийных сигналов&lt;&gt;.
                                { "Russian", "&lt;EARTH&gt;Испорченный металл&lt;&gt; можно найти на борту заброшенных грузовых судов&#xA;&lt;TECHNOLOGY&gt;Сканер аварийных сигналов&lt;&gt; поможет найти такое судно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_TIMEDUST_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите &lt;SPECIAL&gt;прах грез&lt;&gt; на борту грузовых судов, попавших в петлю и брошенных в открытом космосе.&#xA;Найти заброшенное судно можно с помощью &lt;TECHNOLOGY&gt;сканера аварийных сигналов&lt;&gt;.
                                { "Russian", "&lt;EARTH&gt;Прах грёз&lt;&gt; можно найти на борту заброшенных грузовых судов&#xA;&lt;TECHNOLOGY&gt;Сканер аварийных сигналов&lt;&gt; поможет найти такое судно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_NIPNIPBUDS_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Приобретайте &lt;SPECIAL&gt;в системах преступников&lt;&gt; или собирайте с &lt;TRADEABLE&gt;растения нипнип&lt;&gt;.&#xA;Выращивайте нипнип на базе с помощью &lt;TECHNOLOGY&gt;гидропонного блока&lt;&gt;.
                                -- Purchase in &lt;SPECIAL&gt;outlaw systems&lt;&gt;, or harvest from the &lt;TRADEABLE&gt;NipNip plant&lt;&gt;&#xA;Farm NipNip in your base with a &lt;TECHNOLOGY&gt;Hydroponics Tray&lt;&gt;
                                { "Russian", "Можно купить &lt;SPECIAL&gt;в системах преступников&lt;&gt; или собрать с &lt;TRADEABLE&gt;растения нипнип&lt;&gt;&#xA;Выращивайте нипнип на базе с помощью &lt;TECHNOLOGY&gt;гидропонного блока&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_TIMEMILK_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Заберите &lt;STELLAR&gt;память предков&lt;&gt; у дружественных существ, попавших в петлю.
                                -- Harvest &lt;STELLAR&gt;Ancestral Memories&lt;&gt; from friendly creatures caught within the loop
                                { "Russian", "Собирайте &lt;STELLAR&gt;память предков&lt;&gt; у дружественных существ, попавших в петлю" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_SUNGOLD_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Трансмутируйте &lt;STELLAR&gt;жидкое солнце&lt;&gt; из &lt;STELLAR&gt;природных залежей&lt;&gt; металла с помощью &lt;TECHNOLOGY&gt;солнечного луча&lt;&gt;.
                                -- Transmute &lt;STELLAR&gt;Liquid Sun&lt;&gt; from metallic &lt;STELLAR&gt;terrain deposits&lt;&gt; using a &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt;
                                { "Russian", "Трансмутируйте &lt;TECHNOLOGY&gt;солнечным лучем&lt;&gt; &lt;STELLAR&gt;жидкое солнце&lt;&gt; из &lt;STELLAR&gt;залежей&lt;&gt; металла" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_SOULFRAG_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Квалия получена путем воздействия &lt;TECHNOLOGY&gt;лучом намерения&lt;&gt; на живую цель.
                                -- Generated qualia from the interaction of the &lt;TECHNOLOGY&gt;Animus Beam&lt;&gt; with a living creature
                                { "Russian", "Квалия создается путем воздействия &lt;TECHNOLOGY&gt;луча намерения&lt;&gt; на живую цель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_WORMDUST_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Проклятая пыль собирается в месторождениях на планетах, где обитают &lt;SPECIAL&gt;титанические черви&lt;&gt;.
                                -- Cursed Dust gathers in the terrain deposits of planets blighted by &lt;SPECIAL&gt;titan worm activity&lt;&gt;
                                { "Russian", "Проклятая пыль добывается из месторождений на зараженных планетах,&#xA;где обитают &lt;SPECIAL&gt;титанические черви&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_ALL_COMPLETE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Этап &lt;STELLAR&gt;пройден&lt;&gt;.&#xA;Вы можете выбрать новый этап из каталога и руководства (&lt;IMG&gt;OPTIONS&lt;&gt;).&#xA;&lt;COMMODITY&gt;Закрепите&lt;&gt; медаль этапа, чтобы добавить его подробное описание в журнал заданий.
                                -- Milestone &lt;STELLAR&gt;Complete&lt;&gt;&#xA;You can select a new Milestone from the Catalogue &amp; Guide (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;&lt;COMMODITY&gt;Pin&lt;&gt; a milestone medal to add detailed guidance to the Mission Log
                                { "Russian", "Этап &lt;STELLAR&gt;пройден&lt;&gt;&#xA;Выберите новый этап из руководства (&lt;IMG&gt;OPTIONS&lt;&gt;)&#xA;Чтобы получить подробные указания,&#xA;&lt;COMMODITY&gt;закрепите&lt;&gt; медаль этапа" },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC8_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC8_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region UI_PIN_.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_SPACEGUNK4_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переработайте &lt;SPECIAL&gt;атлантидий&lt;&gt; и &lt;STELLAR&gt;мордит&lt;&gt; в &lt;TECHNOLOGY&gt;среднем&lt;&gt; или &lt;TECHNOLOGY&gt;большом очистителе&lt;&gt;.
                                -- Process &lt;SPECIAL&gt;Atlantideum&lt;&gt; and &lt;STELLAR&gt;Mordite&lt;&gt; with a &lt;TECHNOLOGY&gt;Medium&lt;&gt; or &lt;TECHNOLOGY&gt;Large Refiner&lt;&gt;
                                { "Russian", "Переработайте &lt;SPECIAL&gt;атлантидий&lt;&gt; и &lt;STELLAR&gt;мордит&lt;&gt; в &lt;TECHNOLOGY&gt;среднем&lt;&gt; или &lt;TECHNOLOGY&gt;большом очистителе&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_TECH_FINAL_RANGE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;), чтобы завершить установку.&#xA;Используйте &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы осмотреть частично установленную технологию.&#xA;%ITEM% есть в &lt;STELLAR&gt;инвентаре (%INV%)&lt;&gt;.
                                -- Open the Inventory (&lt;IMG&gt;INVENTORY&lt;&gt;) to complete installation&#xA;Use &lt;IMG&gt;TECHMENU&lt;&gt; to inspect partially-installed technology&#xA;%ITEM% available in &lt;STELLAR&gt;%INV% inventory&lt;&gt;
                                { "Russian", "Завершите установку, открыв инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Используйте &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы осмотреть технологию&#xA;%ITEM% есть в &lt;STELLAR&gt;инвентаре (%INV%)&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_TECH_REPAIR_RANGE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Откройте инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;), чтобы завершить ремонт.&#xA;Используйте &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы осмотреть поврежденную технологию.&#xA;%ITEM% есть в &lt;STELLAR&gt;инвентаре (%INV%)&lt;&gt;.
                                { "Russian", "Завершите ремонт, открыв инвентарь (&lt;IMG&gt;INVENTORY&lt;&gt;)&#xA;Используйте &lt;IMG&gt;TECHMENU&lt;&gt;, чтобы осмотреть технологию&#xA;%ITEM% есть в &lt;STELLAR&gt;инвентаре (%INV%)&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PROGRESS_RANGE_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выберите пустую ячейку и нажмите &lt;IMG&gt;INVENTORY&lt;&gt;, затем &lt;IMG&gt;PRODMENU&lt;&gt;.&#xA;%ITEM% есть в &lt;STELLAR&gt;%INV% инвентаре&lt;&gt;.
                                -- Press &lt;IMG&gt;INVENTORY&lt;&gt; then &lt;IMG&gt;PRODMENU&lt;&gt; on empty slot&#xA;%ITEM% available in &lt;STELLAR&gt;%INV% inventory&lt;&gt;
                                { "Russian", "Нажмите &lt;IMG&gt;INVENTORY&lt;&gt;, затем &lt;IMG&gt;PRODMENU&lt;&gt; на пустой ячейке&#xA;%ITEM% есть в &lt;STELLAR&gt;инвентаре (%INV%)&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_GENERIC_TERRAIN_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Обнаружены крупные местные залежи ресурса «&lt;STELLAR&gt;%ITEM%&lt;&gt;».&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для поиска месторождений.
                                -- Large local &lt;STELLAR&gt;%ITEM%&lt;&gt; deposit detected&#xA;Locate deposits with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt;
                                { "Russian", "Обнаружены крупные залежи — &lt;STELLAR&gt;%ITEM%&lt;&gt;&#xA;Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt; для поиска месторождений" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PROGRESS_SUB_MSG_ALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;%CURRENT% / %AMOUNT%&lt;&gt;&#xA;%TIP%
                                -- &lt;STELLAR&gt;%CURRENT% / %AMOUNT%&lt;&gt;&#xA;%TIP%
                                { "Russian", "(&lt;STELLAR&gt;%CURRENT%/%AMOUNT%&lt;&gt;)&#xA;%TIP%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_ROBOT2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Собирайте из контейнеров , которые выпадают из побежденных в бою &lt;SPECIAL&gt;испорченных стражей&lt;&gt;.&#xA;Можно добыть из пурпурных кристаллов в &lt;SPECIAL&gt;лишенных гармонии&lt;&gt; мирах.
                                -- Harvest from the canisters dropped by &lt;SPECIAL&gt;corrupted Sentinels&lt;&gt; as they fall in combat&#xA;Can be gathered from purple crystals on &lt;SPECIAL&gt;dissonant&lt;&gt; worlds
                                { "Russian", "Можно найти в контейнерах, которые выпадают из &lt;SPECIAL&gt;испорченных стражей&lt;&gt;&#xA;Добывается из пурпурных кристаллов в мирах, &lt;SPECIAL&gt;лишенных гармонии&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_SPACEGUNK2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переработайте &lt;SPECIAL&gt;пугний&lt;&gt; и &lt;SPECIAL&gt;атлантидий&lt;&gt; в &lt;TECHNOLOGY&gt;среднем&lt;&gt; или &lt;TECHNOLOGY&gt;большом очистителе&lt;&gt;.
                                -- Process &lt;SPECIAL&gt;Pugneum&lt;&gt; and &lt;SPECIAL&gt;Atlantideum&lt;&gt; with a &lt;TECHNOLOGY&gt;Medium&lt;&gt; or &lt;TECHNOLOGY&gt;Large Refiner&lt;&gt;
                                { "Russian", "Переработайте &lt;SPECIAL&gt;пугний&lt;&gt; и &lt;SPECIAL&gt;атлантидий&lt;&gt; в &lt;TECHNOLOGY&gt;среднем&lt;&gt; или &lt;TECHNOLOGY&gt;большом очистителе&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_OLD_EXPED_FORMAT_DONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %NAME%: №%NUM%
                                -- #%NUM%: %NAME%
                                { "Russian", "№%NUM%: %NAME%" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC9_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC9_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region UI_PIN_.*_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_SQUIDFRAG_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;SPECIAL&gt;Разбитая квалиа&lt;&gt; остается при уничтожении &lt;SPECIAL&gt;ужаса границы&lt;&gt;.&#xA;Ужасы появляются, когда слабеют границы...
                                -- &lt;SPECIAL&gt;Shattered Qualia&lt;&gt; are released on the destruction of a &lt;SPECIAL&gt;boundary horror&lt;&gt;&#xA;The horrors emerge as the boundaries weaken...
                                { "Russian", "&lt;SPECIAL&gt;Разбитая квалиа&lt;&gt; остается при уничтожении &lt;SPECIAL&gt;ужаса границы&lt;&gt;&#xA;Ужасы появляются, когда слабеют границы..." },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_GUIDE_BODY_BONES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В некоторых мирах можно найти богатые &lt;STELLAR&gt;ископаемые слои&lt;&gt;. Странники могут выкопать &lt;STELLAR&gt;древние кости&lt;&gt; давно вымерших существ для коллекционирования, хранения и демонстрации.&#xA;&#xA;Чтобы собрать окаменелый скелет, сначала нужно приобрести чертеж &lt;TECHNOLOGY&gt;витрины для окаменелостей&lt;&gt; на &lt;TECHNOLOGY&gt;станции строительных исследований&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;. &lt;TECHNOLOGY&gt;Витрину&lt;&gt; можно разместить в любой точке на поверхности планеты или на базе грузового судна.&#xA;&#xA;После установки вы можете поместить в витрину &lt;STELLAR&gt;древние кости&lt;&gt; и воссоздать из них различные скелеты животных. Для полного скелета нужны &lt;STELLAR&gt;череп&lt;&gt;, &lt;STELLAR&gt;грудная клетка&lt;&gt;, два комплекта &lt;STELLAR&gt;конечностей&lt;&gt; и &lt;STELLAR&gt;хвост&lt;&gt;.&#xA;&#xA;Вы можете организовать музей собранных окаменелостей на своей базе или &lt;STELLAR&gt;запаковать&lt;&gt; свои экспонаты, чтобы продать их на открытом рынке или другим Странникам. Найти &lt;STELLAR&gt;коллекционеров окаменелостей&lt;&gt; можно на борту &lt;STELLAR&gt;космических станций&lt;&gt; или в местах планетарных &lt;STELLAR&gt;палеонтологических раскопок&lt;&gt;.
                                { "Russian", "В некоторых мирах можно найти богатые залежи &lt;STELLAR&gt;фоссилий&lt;&gt;. Странники могут выкопать &lt;STELLAR&gt;древние кости&lt;&gt; давно вымерших существ для коллекционирования, хранения и демонстрации.&#xA;&#xA;Чтобы собрать скелет, сначала нужно приобрести чертеж &lt;TECHNOLOGY&gt;витрины скелета&lt;&gt; на &lt;TECHNOLOGY&gt;станции строительных исследований&lt;&gt; на борту &lt;SPECIAL&gt;Космической Аномалии&lt;&gt;. &lt;TECHNOLOGY&gt;Витрину&lt;&gt; можно разместить в любой точке на поверхности планеты или на базе грузового судна.&#xA;&#xA;После установки вы можете поместить в витрину &lt;STELLAR&gt;древние кости&lt;&gt; и воссоздать из них различные скелеты животных. Для полного скелета нужны &lt;STELLAR&gt;череп&lt;&gt;, &lt;STELLAR&gt;грудная клетка&lt;&gt;, два комплекта &lt;STELLAR&gt;конечностей&lt;&gt; и &lt;STELLAR&gt;хвост&lt;&gt;.&#xA;&#xA;Вы можете организовать музей собранных окаменелостей на своей базе или &lt;STELLAR&gt;запаковать&lt;&gt; свои экспонаты, чтобы продать их на рынке или другим Странникам. Найти &lt;STELLAR&gt;коллекционеров окаменелостей&lt;&gt; можно на борту &lt;STELLAR&gt;космических станций&lt;&gt; или в месте &lt;STELLAR&gt;палеонтологических раскопок&lt;&gt; на планетах." },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_SHORT_BONES" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- В некоторых мирах можно найти богатые &lt;STELLAR&gt;ископаемые слои&lt;&gt;. Странники могут выкопать &lt;STELLAR&gt;древние кости&lt;&gt; давно вымерших существ для коллекционирования, хранения и демонстрации.&lt;WIKI_HIGH&gt;Читать далее...&lt;&gt;
                                { "Russian", "В некоторых мирах можно найти богатые залежи &lt;STELLAR&gt;фоссилий&lt;&gt;. Странники могут выкопать &lt;STELLAR&gt;древние кости&lt;&gt; давно вымерших существ для коллекционирования, хранения и демонстрации.&lt;WIKI_HIGH&gt;Читать далее...&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_GASGIANT1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;, чтобы найти залежи &lt;EARTH&gt;кристаллического гелия&lt;&gt;.&#xA;Кристаллический гелий встречается на &lt;SPECIAL&gt;газовых гигантах&lt;&gt;.
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;, чтобы найти залежи &lt;EARTH&gt;кристаллического гелия&lt;&gt;&#xA;Кристаллический гелий встречается на &lt;SPECIAL&gt;газовых гигантах&lt;&gt;" },
                            }
                        },

                        --#region UI_WIKI_GASGIANT1_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_GASGIANT1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите богатые кристаллическим гелием системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту через быстрое меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
                                { "Russian", "Найдите богатые кристаллическим гелием системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в звездолёте, откройте галактическую карту из быстрого меню (&lt;IMG&gt;QUICK_MENU&lt;&gt;)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_GASGIANT1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая кристаллическим гелием планета&lt;&gt;&#xA;Нацельтесь на планету и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее доступные ресурсы.&#xA;Высадитесь на планете с залежами кристаллического гелия.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая кристаллическим гелием планета&lt;&gt;&#xA;Нацельтесь на планету и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать её&#xA;Высадитесь на планете с залежами кристаллического гелия" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_GASGIANT1_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая кристаллическим гелием планета&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая кристаллическим гелием планета&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_GASGIANT1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите крупные залежи &lt;EARTH&gt;кристаллического гелия&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Кристаллический гелий можно обнаружить при изучении обычных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "Найдите крупные залежи &lt;EARTH&gt;кристаллического гелия&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;&#xA;Кристаллический гелий можно обнаружить при изучении обычных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_WATERWORLD1_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;, чтобы найти залежи &lt;EARTH&gt;лития&lt;&gt;.&#xA;Литий встречается на &lt;TECHNOLOGY&gt;водных планетах&lt;&gt;.
                                --
                                { "Russian", "Используйте &lt;TECHNOLOGY&gt;анализирующий визор&lt;&gt;, чтобы найти залежи &lt;EARTH&gt;лития&lt;&gt;&#xA;Литий встречается на &lt;TECHNOLOGY&gt;водных планетах&lt;&gt;" },
                            }
                        },

                        --#region UI_WIKI_WATERWORLD[0-9]+_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_WATERWORLD1_MSG1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите богатые литием системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;.&#xA;Находясь на звездолете, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;.
                                { "Russian", "Найдите богатые литием системы на &lt;TECHNOLOGY&gt;галактической карте&lt;&gt;&#xA;Находясь в звездолёте, откройте галактическую карту с помощью &lt;IMG&gt;QUICK_MENU&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_WATERWORLD1_MSG2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая литием планета&lt;&gt;&#xA;Нацельтесь на планету и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать ее доступные ресурсы.&#xA;Высадитесь на планете с залежами лития.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая литием планета&lt;&gt;&#xA;Нацельтесь на планету и используйте &lt;IMG&gt;SCAN&lt;&gt;, чтобы просканировать её&#xA;Высадитесь на планете с залежами лития" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_WATERWORLD1_MSG2A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;EARTH&gt;Обнаружена богатая литием планета&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов.
                                { "Russian", "&lt;EARTH&gt;Обнаружена богатая литием планета&lt;&gt;&#xA;Отправляйтесь в космос и сканируйте планеты в поисках минералов" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_WIKI_WATERWORLD1_MSG3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Найдите крупные залежи &lt;EARTH&gt;лития&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.&#xA;Добывайте ресурсы из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Литий можно обнаружить при изучении обычных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;.
                                { "Russian", "Найдите крупные залежи &lt;EARTH&gt;лития&lt;&gt; с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;&#xA;Добывайте ресурсы из залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;&#xA;Литий можно обнаружить при изучении обычных камней с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt;" },
                            }
                        },
                        --#endregion

                        --#region UI_PIN_PURPLE[0-9]+_MSG
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_PURPLE2_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- &lt;STELLAR&gt;Кварцит&lt;&gt; добывается из крупных месторождений с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;.&#xA;Найдите залежи кварцита с помощью &lt;TECHNOLOGY&gt;анализирующего визора&lt;&gt; на планетах, вращающихся вокруг &lt;SPECIAL&gt;пурпурных звезд&lt;&gt;.
                                { "Russian", "&lt;STELLAR&gt;Кварцит&lt;&gt; добывается из крупных залежей с помощью &lt;TECHNOLOGY&gt;ландшафтного манипулятора&lt;&gt;&#xA;Кварцит встречается на планетах, вращающихся вокруг &lt;SPECIAL&gt;пурпурных звезд&lt;&gt;" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_PIN_GAS4_MSG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Разместите &lt;TECHNOLOGY&gt;атмосферный комбайн&lt;&gt; на &lt;SPECIAL&gt;газовом гиганте&lt;&gt;.
                                -- Deploy an &lt;TECHNOLOGY&gt;Atmosphere Harvester&lt;&gt; on a &lt;SPECIAL&gt;gas giant&lt;&gt;
                                { "Russian", "Разместите &lt;TECHNOLOGY&gt;атмосферный комбайн&lt;&gt; на &lt;SPECIAL&gt;газовом гиганте&lt;&gt;" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPAND_RECIPES_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОКАЗАТЬ ВСЕ СХЕМЫ
                                -- SHOW ALL RECIPES
                                { "Russian", "ПОКАЗАТЬ ВСЕ РЕЦЕПТЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_EXPAND_RECIPES_LABEL_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Показать альтернативные схемы предмета
                                -- Show alternate recipes for this item
                                { "Russian", "Показать все возможные рецепты предмета" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RECIPE_DETAILS_LABEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СМОТРЕТЬ ШАГИ СХЕМЫ
                                -- VIEW RECIPE STEPS
                                { "Russian", "РЕЦЕПТ ПРИГОТОВЛЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_RECIPE_DETAILS_LABEL_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Показать описание составляющих схемы
                                -- Display recipe ingredient breakdown
                                { "Russian", "Показать ингридиенты рецепта" },
                            }
                        },
                    }
                },
            }
        }
    }
}
