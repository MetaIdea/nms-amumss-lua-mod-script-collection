NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_RuFix_Farscape_Building.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Fix Building Part Names & Descriptions",
    ["NMS_VERSION"]     = "5.72",
    ["EXML_CREATE"]     = "false",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- LANGUAGE/NMS_LOC1_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC1_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Ограничение: до
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_WARN_LIMIT_GLOBAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ограничение: до %AMOUNT%
                                { "Russian", "ОГРАНИЧЕНИЕ: ДО %AMOUNT%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_WARN_LIMIT_BASE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ограничение: до %AMOUNT% на базу
                                { "Russian", "ОГРАНИЧЕНИЕ: ДО %AMOUNT% НА БАЗУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_WARN_LIMIT_SYSTEM" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ограничение: до %AMOUNT% на систему
                                { "Russian", "ОГРАНИЧЕНИЕ: ДО %AMOUNT% НА СИСТЕМУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_WARN_LIMIT_PLANET" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ограничение: до %AMOUNT% на планету
                                { "Russian", "ОГРАНИЧЕНИЕ: ДО %AMOUNT% НА ПЛАНЕТУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_WARN_LIMIT_ROOM_UN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ограничение: до %AMOUNT% на комнату
                                { "Russian", "ОГРАНИЧЕНИЕ: ДО %AMOUNT% НА КОМНАТУ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BASEBUILD_LOCAL_LIMIT_REACHED" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Ограничение: до %AMOUNT% в этой местности
                                { "Russian", "ОГРАНИЧЕНИЕ: ДО %AMOUNT% В ЭТОЙ МЕСТНОСТИ" },
                            }
                        },
                        --#endregion

                        --#region Кубоидные модули
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_CUBEINNERWALL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНУТРЕННЯЯ СТЕНА КУБИЧЕСКОГО МОДУЛЯ
                                -- CUBOID INNER WALL
                                { "Russian", "СТЕНА КУБИЧЕСКОГО МОДУЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_CUBEINNERWALL_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Внутренняя стена кубического модуля
                                -- Cuboid Inner Wall
                                { "Russian", "Стена кубического модуля" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_CUBEROOFCAP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОКРЫТИЕ КРЫШИ КУБИЧЕСКОГО МОДУЛЯ
                                -- CUBOID ROOF CAP
                                { "Russian", "КРОВЛЯ КУБИЧЕСКОГО МОДУЛЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_CUBEROOFCAP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покрытие крыши кубического модуля
                                { "Russian", "Кровля кубического модуля" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_CUBEROOFCAP_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покрытие крыши кубического модуля используется для укрепления и украшения крыши.
                                -- A cuboid roof cap used to decorate and reinforce the rooftops of cuboid structures.
                                { "Russian", "Кровля кубического модуля используется для укрепления и украшения крыши." },
                            }
                        },
                        --#endregion

                        --#region ТЕРМИНАЛ ГАЛАКТИЧЕСКОЙ ТОРГОВЛИ
                        -- меняем местами заголовок и описание, чтобы все влезало и было понятно
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_TRADETERMINAL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТЕРМИНАЛ ГАЛАКТИЧЕСКОЙ ТОРГОВЛИ
                                -- GALACTIC TRADE TERMINAL
                                { "Russian", "ТОРГОВЫЙ ТЕРМИНАЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_TRADETERMINAL_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Терминал галактической торговли
                                -- Galactic Trade Terminal
                                { "Russian", "Торговый терминал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_TRADETERMINAL_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Торговый терминал
                                -- Trading terminal
                                { "Russian", "Терминал галактической торговли" },
                            }
                        },
                        --#endregion

                        --#region КОРИДОР СО СТЕКЛЯННОЙ КРЫШЕЙ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_GLASSCORRIDOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРИДОР СО СТЕКЛЯННОЙ КРЫШЕЙ
                                { "Russian", "ОСТЕКЛЁННЫЙ КОРИДОР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_GLASSCORRIDOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Коридор со стеклянной крышей
                                { "Russian", "Остеклённый коридор" },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC4_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC4_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region СТАНЦИЯ ВЫЗОВА ВЕЗДЕХОДА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "EXO_SUMMON_POD_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТАНЦИЯ ВЫЗОВА ВЕЗДЕХОДА
                                -- EXOCRAFT SUMMONING STATION
                                { "Russian", "СТАНЦИЯ ВЫЗОВА" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "EXO_SUMMON_POD_NAME_L" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Станция вызова вездехода
                        --         -- Exocraft Summoning Station
                        --         { "Russian", "Станция вызова вездехода" },
                        --     }
                        -- },
                        --#endregion

                        --#region -- Модуль телепортации между базами
                        { -- есть локальный телепорт, не надо тогда плодить длинные наз-ния
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASE_TELEPORT_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. ТЕЛЕП. МЕЖДУ БАЗАМИ
                                -- BASE TELEPORT MODULE
                                { "Russian", "ГАЛАКТИЧЕСКИЙ ТЕЛЕПОРТ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASE_TELEPORT_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль телепортации между базами
                                -- Base Teleport Module
                                { "Russian", "Галактический телепорт" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BASE_TELEPORT_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Устройство перемещения материи на дальние расстояния
                                -- Long-Distance Matter Transfer Device
                                { "Russian", "Устройство перемещения материи" },
                            }
                        },
                        --#endregion

                        --#region Модуль строительных исследований
                        -- мда... может "СТРОИТЕЛЬНЫЙ СТЕНД"?
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BP_ANALYSER_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОД. СТРОИТ. ИССЛЕДОВ.
                                -- CONSTRUCTION RESEARCH UNIT
                                { "Russian", "МОДУЛЬ СТРОИТЕЛЬНЫХ ИССЛЕДОВАНИЙ" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BP_ANALYSER_NAME_L" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Модуль строительных исследований
                        --         -- Construction Research Unit
                        --         { "Russian", "Стенд строительных исследований" },
                        --     }
                        -- },
                        --#endregion

                        --#region СИСТЕМА ЗАЩИТЫ ОТ ВРЕДНЫХ ФАКТОРОВ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_HAZSTATION_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СИСТЕМА ЗАЩИТЫ ОТ ВРЕДНЫХ ФАКТОРОВ
                                -- HAZARD PROTECTION UNIT
                                { "Russian", "БЛОК СИСТЕМЫ БЕЗОПАСНОСТИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_HAZSTATION_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Система защиты от вредных факторов
                                { "Russian", "Блок системы безопасности" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_HAZSTATION_SUBTITLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зарядный блок системы защиты от вредных факторов
                                -- Hazard Protection Charging System
                                { "Russian", "Блок питания" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_HAZSTATION_DESCRIPTION" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Устанавливаемый на стену модуль подзарядки системы &lt;COMMODITY&gt;защиты от вредных факторов&lt;&gt;.&#xA;&#xA;Систему защиты от вредных факторов необходимо подпитывать с помощью &lt;FUEL&gt;топлива&lt;&gt;.
                                -- A wall mounted module that can be used to recharge the user's &lt;COMMODITY&gt;Hazard Protection&lt;&gt; systems.&#xA;&#xA;The Hazard Protection Unit must be kept charged with a source of &lt;FUEL&gt;fuel&lt;&gt;.
                                { "Russian", "Устанавливаемый на стену модуль, который может подзарядить &lt;COMMODITY&gt;систему безопасности&lt;&gt; пользователя.&#xA;&#xA;Модуль необходимо подпитывать с помощью &lt;FUEL&gt;топлива&lt;&gt;." },
                            }
                        },
                        --#endregion

                        --#region Постройки на грузовом корабле

                        --#region КОРИДОР ГРУЗОВОГО СУДНА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPACE_CORRIDOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРИДОР ГРУЗОВОГО СУДНА
                                -- FREIGHTER CORRIDOR
                                { "Russian", "КОРИДОР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPACE_CORRIDOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Коридор грузового судна
                                { "Russian", "Коридор" },
                            }
                        },
                        --#endregion

                        --#region ЗАКРУГЛЕННЫЙ КОРИДОР ГРУЗОВОГО СУДНА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPACE_CORRIDOR_L_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАКРУГЛЕННЫЙ КОРИДОР ГРУЗОВОГО СУДНА
                                -- CURVED FREIGHTER CORRIDOR
                                { "Russian", "ЗАКРУГЛЕННЫЙ КОРИДОР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPACE_CORRIDOR_L_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Закругленный коридор грузового судна
                                { "Russian", "Закругленный коридор" },
                            }
                        },
                        --#endregion

                        --#region ПЕРЕКРЕСТОК ГРУЗОВОГО СУДНА (T)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPACE_CORRIDOR_T_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЕРЕКРЕСТОК ГРУЗОВОГО СУДНА
                                -- FREIGHTER JUNCTION
                                { "Russian", "Т-ПЕРЕКРЕСТОК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPACE_CORRIDOR_T_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перекресток грузового судна
                                { "Russian", "Т-перекресток" },
                            }
                        },
                        --#endregion

                        --#region ЛЕСТНИЦА ГРУЗОВОГО СУДНА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPACE_STAIRS_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЛЕСТНИЦА ГРУЗОВОГО СУДНА
                                -- FREIGHTER STAIRS
                                { "Russian", "ЛЕСТНИЦА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPACE_STAIRS_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Лестница грузового судна
                                { "Russian", "Лестница" },
                            }
                        },
                        --#endregion

                        --#region ВНУТРЕННЯЯ ПЕРЕБОРКА ГРУЗОВОГО СУДНА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPACE_WALL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНУТРЕННЯЯ ПЕРЕБОРКА ГРУЗОВОГО СУДНА
                                -- INTERNAL FREIGHTER WALL
                                { "Russian", "ВНУТРЕННЯЯ ПЕРЕБОРКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPACE_WALL_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Внутренняя переборка грузового судна
                                { "Russian", "Внутренняя переборка" },
                            }
                        },
                        --#endregion

                        --#region ПЕРЕКРЕСТОК ГРУЗОВОГО СУДНА (X)
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPACE_CORRIDOR_X_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЕРЕКРЕСТОК ГРУЗОВОГО СУДНА
                                -- FREIGHTER CROSS JUNCTION
                                { "Russian", "Х-ПЕРЕКРЕСТОК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_SPACE_CORRIDOR_X_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Перекресток грузового судна
                                { "Russian", "Х-перекресток" },
                            }
                        },
                        --#endregion

                        --#endregion

                        --#region РАСШИРЯЮЩИЙСЯ КУБИЧЕСКИЙ МЕХАНИЗМ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_TOYCUBE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РАСШИРЯЮЩИЙСЯ КУБИЧЕСКИЙ МЕХАНИЗМ
                                -- EXPANDING CUBE GADGET
                                { "Russian", "РАСШИРЯЮЩИЙСЯ КУБИК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_TOYCUBE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расширяющийся кубический механизм
                                { "Russian", "Расширяющийся кубик" },
                            }
                        },
                        --#endregion

                        --#region ВЕРТИКАЛЬНЫЙ СТЕКЛЯННЫЙ КОРИДОР
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_CORRIDORV_WATER_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЕРТИКАЛЬНЫЙ СТЕКЛЯННЫЙ КОРИДОР
                                -- VERTICAL GLASS TUNNEL
                                { "Russian", "ВЕРТИКАЛЬНЫЙ КОРИДОР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_CORRIDORV_WATER_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вертикальный стеклянный коридор
                                { "Russian", "Вертикальный коридор" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_MAINROOM_SQ_WATER_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КВАДРАТНОЕ ГЛУБОКОВОДНОЕ ПОМЕЩЕНИЕ
                                -- SQUARE DEEPWATER CHAMBER
                                { "Russian", "КВАДРАТНАЯ ПОДВОДНАЯ КОМНАТА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_MAINROOM_SQ_WATER_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Квадратное глубоководное помещение
                                { "Russian", "Квадратная подводная комната" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FIREWORK_LAUNCHER_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Расходуемое пиротехническое устройство
                                -- Consumable Pyrotechnics Device
                                { "Russian", "Пиротехника" },
                            }
                        },
                    }
                },
                { -- LANGUAGE/NMS_LOC7_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC7_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region МЕНЮ СТРОИТЕЛЬСТВА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_TOGGLE_SNAP_ON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Включен режим свободного размещения
                                -- Free Placement Enabled
                                { "Russian", "ВЫБРАН РЕЖИМ РАЗМЕЩЕНИЯ: СВОБОДНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_TOGGLE_SNAP_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Включен режим прикрепного размещения
                                -- Snap Placement Enabled
                                { "Russian", "ВЫБРАН РЕЖИМ РАЗМЕЩЕНИЯ: ПРИКРЕПЛЕНИЕ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_TOGGLE_PLACE_ON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Включен режим регулировки
                                -- Adjustment Mode Enabled
                                { "Russian", "ВКЛЮЧЕН РЕЖИМ РЕГУЛИРОВКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_TOGGLE_PLACE_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выключен режим регулировки
                                -- Adjustment Mode Disabled
                                { "Russian", "РЕЖИМ РЕГУЛИРОВКИ ВЫКЛЮЧЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_TOGGLE_COL_ON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Включен режим покраски
                                -- Painting Mode Enabled
                                { "Russian", "ВКЛЮЧЕН РЕЖИМ ПОКРАСКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_TOGGLE_COL_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выключен режим покраски
                                -- Painting Mode Disabled
                                { "Russian", "РЕЖИМ ПОКРАСКИ ВЫКЛЮЧЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_TOGGLE_SELECT_ON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Включен режим редактирования &lt;IMG&gt;SLASH&lt;&gt; Смените существующие детали
                                -- Edit Mode Enabled &lt;IMG&gt;SLASH&lt;&gt; Change Existing Parts
                                { "Russian", "ВЫБРАН РЕЖИМ ЗАМЕНЫ СУЩЕСТВУЮЩИХ ДЕТАЛЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_TOGGLE_SELECT_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Включен режим строительства &lt;IMG&gt;SLASH&lt;&gt; Установите новые детали
                                -- Contruction Mode Enabled &lt;IMG&gt;SLASH&lt;&gt; Place New Parts
                                { "Russian", "ВЫБРАН РЕЖИМ УСТАНОВКИ НОВЫХ ДЕТАЛЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_TOGGLE_WIRING_ON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Включен режим прокладки проводки
                                -- Wiring Mode Enabled
                                { "Russian", "ВКЛЮЧЕН РЕЖИМ ПРОКЛАДКИ ПРОВОДКИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_TOGGLE_WIRING_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выключен режим прокладки проводки
                                -- Wiring Mode Disabled
                                { "Russian", "РЕЖИМ ПРОКЛАДКИ ПРОВОДКИ ВЫКЛЮЧЕН" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_TOGGLE_CAM_ON" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Включена камера строительства
                                -- Building Camera Enabled
                                { "Russian", "ВКЛЮЧЕНА КАМЕРА СТРОИТЕЛЬСТВА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_TOGGLE_CAM_OFF" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выключена камера строительства
                                -- Building Camera Disabled
                                { "Russian", "КАМЕРА СТРОИТЕЛЬСТВА ВЫКЛЮЧЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_DEL_UNAVAILABLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нечего удалять
                                -- Nothing to delete
                                { "Russian", "НЕЧЕГО УДАЛЯТЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_DEL_SUCCESS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Деталь удалена!
                                -- Part deleted!
                                { "Russian", "ДЕТАЛЬ УДАЛЕНА!" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_SCALE_UNAVAILABLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя изменить размер детали
                                -- Part cannot be resized
                                { "Russian", "НЕЛЬЗЯ ИЗМЕНИТЬ РАЗМЕР ДЕТАЛИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_CYCLEROTATE_ERR" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Нельзя изменить ось вращения
                                -- Cannot Change Rotation Axis
                                { "Russian", "НЕЛЬЗЯ ИЗМЕНИТЬ ОСЬ ВРАЩЕНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_BUILD_MENU_MOVE_SUCCESS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Деталь подобрана!
                                -- Part picked up!
                                { "Russian", "ДЕТАЛЬ ПОДОБРАНА!" },
                            }
                        },
                        --#endregion

                        --#region Бревенчатый стеллажный блок
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_SHELVINGUNIT0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧ. СТЕЛЛАЖНЫЙ БЛОК
                                { "Russian", "СТЕЛЛАЖНЫЙ БЛОК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_SHELVINGUNIT0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатый стеллажный блок
                                { "Russian", "Стеллажный блок" },
                            }
                        },
                        --#endregion

                        --#region БРЕВЕНЧАТЫЕ СТРОЕНИЯ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_TIMBER_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Строительный компонент из бревен
                                -- Timber Construction Component
                                { "Russian", "Строительное изделие из бревен" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТАЯ СТЕНА (ОСНОВАНИЕ)
                                { "Russian", "СТЕНА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая стена (основание)
                                { "Russian", "Стена (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLM_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТАЯ СТЕНА (СЕРЕДИНА)
                                { "Russian", "СТЕНА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLM_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая стена (середина)
                                { "Russian", "Стена (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLT_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТАЯ СТЕНА (ВЕРХ)
                                { "Russian", "СТЕНА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLT_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая стена (верх)
                                { "Russian", "Стена (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALL_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОНКАЯ БРЕВЕНЧАТАЯ СТЕНА
                                { "Russian", "ТОНКАЯ СТЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALL_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тонкая бревенчатая стена
                                { "Russian", "Тонкая стена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLB_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОНКАЯ БРЕВЕНЧАТАЯ СТЕНА (ОСНОВАНИЕ)
                                { "Russian", "ТОНКАЯ СТЕНА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLB_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тонкая бревенчатая стена (основание)
                                { "Russian", "Тонкая стена (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLM_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОНКАЯ БРЕВЕНЧАТАЯ СТЕНА (СЕРЕДИНА)
                                { "Russian", "ТОНКАЯ СТЕНА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLM_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тонкая бревенчатая стена (середина)
                                { "Russian", "Тонкая стена (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLT_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОНКАЯ БРЕВЕНЧАТАЯ СТЕНА (ВЕРХ)
                                { "Russian", "ТОНКАЯ СТЕНА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLT_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тонкая бревенчатая стена (верх)
                                { "Russian", "Тонкая стена (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALL_Q_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МАЛ. БРЕВЕНЧАТАЯ СТЕНА A
                                { "Russian", "МАЛАЯ СТЕНА A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALL_Q_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Маленькая бревенчатая стена A
                                { "Russian", "Малая стена A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALL_Q1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МАЛ. БРЕВЕНЧАТАЯ СТЕНА B
                                { "Russian", "МАЛАЯ СТЕНА B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALL_Q1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Маленькая бревенчатая стена B
                                { "Russian", "Малая стена B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALL_Q_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРОТКАЯ БРЕВЕНЧ. СТЕНА A
                                { "Russian", "КОРОТКАЯ СТЕНА A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALL_Q_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Короткая бревенчатая стена A
                                { "Russian", "Короткая стена A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALL_Q_H1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРОТКАЯ БРЕВЕНЧ. СТЕНА B
                                { "Russian", "КОРОТКАЯ СТЕНА B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALL_Q_H1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Короткая бревенчатая стена B
                                { "Russian", "Короткая стена B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLDIAGONAL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОКАТАЯ БРЕВЕНЧАТАЯ ПАНЕЛЬ
                                { "Russian", "ПОКАТАЯ ПАНЕЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLDIAGONAL_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покатая бревенчатая панель
                                { "Russian", "Покатая панель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLB_TRI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОКАТАЯ БРЕВЕНЧАТАЯ ПАНЕЛЬ (ОСНОВАНИЕ)
                                { "Russian", "ПОКАТАЯ ПАНЕЛЬ (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLB_TRI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покатая бревенчатая панель (основание)
                                { "Russian", "Покатая панель (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLM_TRI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОКАТАЯ БРЕВЕНЧАТАЯ ПАНЕЛЬ (СЕРЕДИНА)
                                { "Russian", "ПОКАТАЯ ПАНЕЛЬ (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLM_TRI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покатая бревенчатая панель (середина)
                                { "Russian", "Покатая панель (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLT_TRI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОКАТАЯ БРЕВЕНЧАТАЯ ПАНЕЛЬ (ВЕРХ)
                                { "Russian", "ПОКАТАЯ ПАНЕЛЬ (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLT_TRI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покатая бревенчатая панель (верх)
                                { "Russian", "Покатая панель (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALL_WINDOW_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВОЙНЫЕ БРЕВЕНЧАТЫЕ ОКНА
                                { "Russian", "ДВОЙНЫЕ ОКНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALL_WINDOW_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двойные бревенчатые окна
                                { "Russian", "Двойные окна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLB_WIN0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВОЙНЫЕ БРЕВ. ОКНА (ОСНОВАНИЕ)
                                { "Russian", "ДВОЙНЫЕ ОКНА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLB_WIN0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двойные бревенчатые окна (основание)
                                { "Russian", "Двойные окна (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLM_WIN0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВОЙНЫЕ БРЕВ. ОКНА (СЕРЕДИНА)
                                { "Russian", "ДВОЙНЫЕ ОКНА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLM_WIN0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двойные бревенчатые окна (середина)
                                { "Russian", "Двойные окна (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLT_WIN0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВОЙНЫЕ БРЕВ. ОКНА (ВЕРХ)
                                { "Russian", "ДВОЙНЫЕ ОКНА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLT_WIN0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двойные бревенчатые окна (верх)
                                { "Russian", "Двойные окна (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALL_WIN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГОРИЗОНТАЛЬНЫЕ БРЕВЕНЧАТЫЕ ОКНА
                                { "Russian", "ГОРИЗОНТАЛЬНЫЕ ОКНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALL_WIN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Горизонтальные бревенчатые окна
                                { "Russian", "Горизонтальные окна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLB_WIN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГОРИЗОНТАЛЬНЫЕ БРЕВ. ОКНА (ОСНОВАНИЕ)
                                { "Russian", "ГОРИЗОНТАЛЬНЫЕ ОКНА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLB_WIN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Горизонтальные бревенчатые окна (основание)
                                { "Russian", "Горизонтальные окна (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLM_WIN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГОРИЗОНТАЛЬНЫЕ БРЕВ. ОКНА (СЕРЕДИНА)
                                { "Russian", "ГОРИЗОНТАЛЬНЫЕ ОКНА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLM_WIN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Горизонтальные бревенчатые окна (середина)
                                { "Russian", "Горизонтальные окна (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLT_WIN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГОРИЗОНТАЛЬНЫЕ БРЕВ. ОКНА (ВЕРХ)
                                { "Russian", "ГОРИЗОНТАЛЬНЫЕ ОКНА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLT_WIN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Горизонтальные бревенчатые окна (верх)
                                { "Russian", "Горизонтальные окна (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALL_WIN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БОЛЬШИЕ БРЕВ. ОКНА С ДВОЙНЫМИ РАМАМИ
                                -- LARGE TIMBER DOUBLE WINDOW
                                { "Russian", "БОЛЬШИЕ ДВОЙНЫЕ ОКНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALL_WIN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Большие бревенчатые окна с двойными рамами
                                { "Russian", "Большие двойные окна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLB_WIN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БОЛЬШИЕ БРЕВ. ОКНА С ДВОЙНЫМИ РАМАМИ (ОСН.)
                                -- LARGE TIMBER DOUBLE WINDOW (BASE)
                                { "Russian", "БОЛЬШИЕ ДВОЙНЫЕ ОКНА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLB_WIN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Большие брев. окна с двойными рамами (основание)
                                -- Large Timber Double Window (Base)
                                { "Russian", "Большие двойные окна (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLM_WIN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БОЛЬШИЕ БРЕВ. ОКНА С ДВОЙНЫМИ РАМАМИ (СЕР.)
                                { "Russian", "БОЛЬШИЕ ДВОЙНЫЕ ОКНА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLM_WIN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Большие брев. окна с двойными рамами (середина)
                                { "Russian", "Большие двойные окна (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLT_WIN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БОЛЬШИЕ БРЕВ. ОКНА С ДВОЙНЫМИ РАМАМИ (ВЕРХ)
                                { "Russian", "БОЛЬШИЕ ДВОЙНЫЕ ОКНА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLT_WIN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Большие брев. окна с двойными рамами (верх)
                                { "Russian", "Большие двойные окна (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALL_WIN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БОЛЬШИЕ БРЕВ. ОКНА С ТРОЙНЫМИ РАМАМИ
                                -- LARGE TIMBER TRIPLE WINDOW
                                { "Russian", "БОЛЬШИЕ ТРОЙНЫЕ ОКНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALL_WIN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Большие бревенчатые окна с тройными рамами
                                { "Russian", "Большие тройные окна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLB_WIN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БОЛЬШИЕ БРЕВ. ОКНА С ТРОЙНЫМИ РАМАМИ (ОСН.)
                                { "Russian", "БОЛЬШИЕ ТРОЙНЫЕ ОКНА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLB_WIN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Большие брев. окна с тройными рамами (основание)
                                { "Russian", "Большие тройные окна (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLM_WIN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БОЛЬШИЕ БРЕВ. ОКНА С ТРОЙНЫМИ РАМАМИ (СЕР.)
                                { "Russian", "БОЛЬШИЕ ТРОЙНЫЕ ОКНА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLM_WIN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Большие брев. окна с тройными рамами (середина)
                                { "Russian", "Большие тройные окна (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLT_WIN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БОЛЬШИЕ БРЕВ. ОКНА С ТРОЙНЫМИ РАМАМИ (ВЕРХ)
                                { "Russian", "БОЛЬШИЕ ТРОЙНЫЕ ОКНА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_WALLT_WIN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Большие брев. окна с тройными рамами (верх)
                                { "Russian", "Большие тройные окна (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТ. ПРЯМОУГ. ДВЕРЬ
                                -- TIMBER RECTANGULAR DOOR
                                { "Russian", "ПРЯМОУГОЛЬНАЯ ДВЕРЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая прямоугольная дверь
                                { "Russian", "Прямоугольная дверь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORB0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВ. ПРЯМОУГОЛЬНАЯ ДВЕРЬ (ОСН.)
                                { "Russian", "ПРЯМОУГОЛЬНАЯ ДВЕРЬ (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORB0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая прямоугольная дверь (основание)
                                { "Russian", "Прямоугольная дверь (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORM0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВ. ПРЯМОУГОЛЬНАЯ ДВЕРЬ (СЕР.)
                                { "Russian", "ПРЯМОУГОЛЬНАЯ ДВЕРЬ (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORM0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая прямоугольная дверь (середина)
                                { "Russian", "Прямоугольная дверь (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORT0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВ. ПРЯМОУГОЛЬНАЯ ДВЕРЬ (ВЕРХ)
                                { "Russian", "ПРЯМОУГОЛЬНАЯ ДВЕРЬ (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORT0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая прямоугольная дверь (верх)
                                { "Russian", "Прямоугольная дверь (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOOR1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧ. НАКЛОННАЯ ДВЕРЬ
                                { "Russian", "НАКЛОННАЯ ДВЕРЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOOR1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая наклонная дверь
                                { "Russian", "Наклонная дверь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORB1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТАЯ НАКЛОННАЯ ДВЕРЬ (ОСН.)
                                { "Russian", "НАКЛОННАЯ ДВЕРЬ (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORB1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая наклонная дверь (основание)
                                { "Russian", "Наклонная дверь (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORM1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТАЯ НАКЛОННАЯ ДВЕРЬ (СЕР.)
                                { "Russian", "НАКЛОННАЯ ДВЕРЬ (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORM1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая наклонная дверь (середина)
                                { "Russian", "Наклонная дверь (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORT1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТАЯ НАКЛОННАЯ ДВЕРЬ (ВЕРХ)
                                { "Russian", "НАКЛОННАЯ ДВЕРЬ (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORT1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая наклонная дверь (верх)
                                { "Russian", "Наклонная дверь (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_FLOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТАЯ НАПОЛЬНАЯ ПАНЕЛЬ
                                { "Russian", "НАПОЛЬНАЯ ПАНЕЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_FLOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая напольная панель
                                { "Russian", "Напольная панель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_FLOOR_Q_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МАЛЕНЬКАЯ БРЕВЕНЧАТАЯ ПАНЕЛЬ
                                { "Russian", "МАЛЕНЬКАЯ ПАНЕЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_FLOOR_Q_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Маленькая бревенчатая панель
                                { "Russian", "Маленькая панель" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_TRIFLOOR_NAME" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- БРЕВЕНЧАТЫЙ ТРЕУГОЛЬНИК
                        --         { "Russian", "БРЕВЕНЧАТЫЙ ТРЕУГОЛЬНИК" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_TRIFLOOR_NAME_L" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Бревенчатый треугольник
                        --         { "Russian", "Бревенчатый треугольник" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_TRIFLOOR_Q_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МАЛЫЙ БРЕВЕНЧАТЫЙ ТРЕУГОЛЬНИК
                                { "Russian", "МАЛЫЙ ТРЕУГОЛЬНИК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_TRIFLOOR_Q_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Маленький бревенчатый треугольник
                                { "Russian", "Малый треугольник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_GFLOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТЕКЛЯННАЯ ПАНЕЛЬ С БРЕВЕНЧАТОЙ РАМОЙ
                                -- TIMBER-FRAMED GLASS PANEL
                                { "Russian", "СТЕКЛЯННАЯ ПАНЕЛЬ С РАМОЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_GFLOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стеклянная панель с бревенчатой рамой
                                { "Russian", "Стеклянная панель с рамой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_RAMP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТАЯ РАМПА
                                { "Russian", "РАМПА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_RAMP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая рампа
                                { "Russian", "Рампа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_RAMP_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТАЯ ПОЛУРАМПА
                                { "Russian", "ПОЛУРАМПА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_RAMP_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая полурампа
                                { "Russian", "Полурампа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАКРУГ. ПЛОСКАЯ БРЕВ. КРЫША СО СТЕКЛОМ
                                -- ROUNDED FLAT TIMBER-GLASS ROOF
                                { "Russian", "ЗАКРУГЛЕННАЯ СТЕКЛЯННАЯ КРЫША" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Закругленная плоская бревенчатая крыша со стеклом
                                -- Rounded Flat Timber-Glass Roof
                                { "Russian", "Закругленная стеклянная крыша" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- АСИММ. БРЕВЕНЧАТАЯ КРЫША СО СТЕКЛОМ
                                -- ASYMMETRICAL TIMBER-GLASS ROOF
                                { "Russian", "АСИММЕТРИЧНАЯ КРЫША СО СТЕКЛОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Асимметричная бревенчатая крыша со стеклом
                                { "Russian", "Асимметричная крыша со стеклом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВ. КРЫША С Г-ОБРАЗНЫМ СВЕТОВЫМ ЛЮКОМ
                                -- L-SKYLIGHT TIMBER ROOF
                                { "Russian", "КРЫША С Г-ОБРАЗНЫМ ЛЮКОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая крыша с Г-образным световым люком
                                { "Russian", "Крыша с Г-образным люком" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТАЯ КРЫША СО СЛОЖЕННЫМ ПАРУСОМ
                                { "Russian", "КРЫША СО СЛОЖЕННЫМ ПАРУСОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая крыша со сложенным парусом
                                { "Russian", "Крыша со сложенным парусом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТРАПЕЦ. БРЕВ. КРЫША С U-ОБРАЗНЫМ ЛЮКОМ
                                -- U-SKYLIGHT TIMBER TRAPEZOID ROOF
                                { "Russian", "ТРАПЕЦИЕВИДНАЯ КРЫША С U-ЛЮКОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Трапециевидная бревенчатая крыша с U-образным световым люком
                                { "Russian", "Трапециевидная крыша с U-люком" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF5_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВ. КРЫША С РАЗВ. ПАРУСОМ
                                { "Russian", "КРЫША С РАЗВЕРНУТЫМ ПАРУСОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF5_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая крыша с разв. парусом
                                { "Russian", "Крыша с развернутым парусом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF6_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЛОСКАЯ БРЕВЕНЧАТАЯ КРЫША
                                { "Russian", "ПЛОСКАЯ КРЫША" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF6_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плоская бревенчатая крыша
                                { "Russian", "Плоская крыша" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF7_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАКРУГЛ. БРЕВЕНЧ. КРЫША
                                { "Russian", "ЗАКРУГЛЕННАЯ КРЫША" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF7_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Закругленная бревенчатая крыша
                                { "Russian", "Закругленная крыша" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF_M_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПАНЕЛЬ БРЕВЕНЧАТОЙ КРЫШИ
                                { "Russian", "ПАНЕЛЬ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF_M_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Панель бревенчатой крыши
                                { "Russian", "Панель крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF_C_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УГОЛ БРЕВЕНЧАТОЙ КРЫШИ
                                { "Russian", "УГОЛ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF_C_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Угол бревенчатой крыши
                                { "Russian", "Угол крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF_IC_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧ. ВНУТР. УГОЛ КРЫШИ
                                { "Russian", "ВНУТРЕННИЙ УГОЛ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF_IC_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатый внутренний угол крыши
                                { "Russian", "Внутренний угол крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_CHEV_WALL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫПУКЛАЯ БРЕВ. СТЕНА A
                                -- EXTRUDED TIMBER WALL A
                                { "Russian", "ВЫПУКЛАЯ СТЕНА A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_CHEV_WALL_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выпуклая бревенчатая стена
                                { "Russian", "Выпуклая стена A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_CHEV_DOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВ. СТЕНА СО СТ. ДВЕРЬЮ
                                -- EXTRUDED TIMBER-GLASS DOOR
                                { "Russian", "СТЕНА СО СТЕКЛЯННОЙ ДВЕРЬЮ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_CHEV_DOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая стена со стеклянной дверью
                                { "Russian", "Стена со стеклянной дверью" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_CHEV_WALL_H_C_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЕРХ ВЫСТУП. БРЕВ. СТЕНЫ
                                -- EXTRUDED TIMBER WALL CAP
                                { "Russian", "КРЫШКА ВЫПУКЛОЙ СТЕНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_CHEV_WALL_H_C_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Верх выступающей бревенчатой стены
                                { "Russian", "Крышка выпуклой стены" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_CHEV_WIN0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫСТУПАЮЩАЯ БРЕВЕНЧАТАЯ СТЕНА B
                                { "Russian", "ВЫПУКЛАЯ СТЕНА B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_CHEV_WIN0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выступающая бревенчатая стена Б
                                { "Russian", "Выпуклая стена B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_CHEV_WIN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БОЛЬШ. ВЫСТ. БРЕВЕНЧ. ОКНО
                                { "Russian", " БОЛЬШОЕ ОКНО С ВЫСТУПОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_CHEV_WIN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Большое выступающее бревенчатое окно
                                { "Russian", "Большое окно с выступом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_CHEV_WIN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МАЛ. ВЫСТ. БРЕВЕНЧ. ОКНО
                                { "Russian", "МАЛОЕ ВЫПУКЛОЕ ОКНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_CHEV_WIN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Маленькое выступающее бревенчатое окно
                                { "Russian", "Малое выпуклое окно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF_M_Q_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПАНЕЛЬ ПОКАТ. БРЕВ. КРЫШИ
                                -- SLOPING TIMBER ROOF PANEL
                                { "Russian", "ПАНЕЛЬ ПОКАТОЙ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF_M_Q_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Панель покатой бревенчатой крыши
                                { "Russian", "Панель покатой крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF_E_Q_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ШИПЕЦ ПОКАТОЙ БРЕВ. КРЫШИ
                                { "Russian", "ШИПЕЦ ПОКАТОЙ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF_E_Q_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Шипец покатой бревенчатой крыши
                                { "Russian", "Шипец покатой крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF_M_CAP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОНЕК БРЕВЕНЧАТОЙ КРЫШИ
                                { "Russian", "КОНЕК КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF_M_CAP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Конек бревенчатой крыши
                                { "Russian", "Конек крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF_E_CAP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ШИПЕЦ БРЕВЕНЧАТОЙ КРЫШИ
                                { "Russian", "ШИПЕЦ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF_E_CAP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Шипец бревенчатой крыши
                                { "Russian", "Шипец крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOOR_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТЫЙ ДВЕРНОЙ ПРОЕМ
                                -- TIMBER DOORWAY
                                { "Russian", "ДВЕРНОЙ ПРОЕМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOOR_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатый дверной проем
                                { "Russian", "Дверной проем" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORB0_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТЫЙ ДВЕРНОЙ ПРОЕМ (ОСН.)
                                { "Russian", "ДВЕРНОЙ ПРОЕМ (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORB0_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатый дверной проем (основание)
                                { "Russian", "Дверной проем (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORM0_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТЫЙ ДВЕРНОЙ ПРОЕМ (СЕР.)
                                { "Russian", "ДВЕРНОЙ ПРОЕМ (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORM0_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатый дверной проем (середина)
                                { "Russian", "Дверной проем (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORT0_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТЫЙ ДВЕРНОЙ ПРОЕМ (ВЕРХ)
                                { "Russian", "ДВЕРНОЙ ПРОЕМ (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORT0_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатый дверной проем (верх)
                                { "Russian", "Дверной проем (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORWINDOW_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТЫЙ ФАСАД
                                { "Russian", "ФАСАД" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORWINDOW_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатый фасад
                                { "Russian", "Фасад" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORWINB0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТЫЙ ФАСАД (ОСНОВАНИЕ)
                                { "Russian", "ФАСАД (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORWINB0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатый фасад (основание)
                                { "Russian", "Фасад (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORWINM0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТЫЙ ФАСАД (СЕРЕДИНА)
                                { "Russian", "ФАСАД (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORWINM0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатый фасад (середина)
                                { "Russian", "Фасад (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORWINT0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТЫЙ ФАСАД (ВЕРХ)
                                { "Russian", "ФАСАД (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_DOORWINT0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатый фасад (верх)
                                { "Russian", "Фасад (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_GDOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧ. ДВЕРЬ С ПРИВОДОМ
                                -- TIMBER POWER DOOR
                                { "Russian", "ДВЕРЬ С ПРИВОДОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_GDOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая дверь с приводом
                                { "Russian", "Дверь с приводом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_GDOORB0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВ. ДВЕРЬ С ПРИВОДОМ (ОСН.)
                                { "Russian", "ДВЕРЬ С ПРИВОДОМ (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_GDOORB0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая дверь с приводом (основание)
                                { "Russian", "Дверь с приводом (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_GDOORM0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВ. ДВЕРЬ С ПРИВОДОМ (СЕР.)
                                { "Russian", "ДВЕРЬ С ПРИВОДОМ (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_GDOORM0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая дверь с приводом (середина)
                                { "Russian", "Дверь с приводом (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_GDOORT0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВ. ДВЕРЬ С ПРИВОДОМ (ВЕРХ)
                                { "Russian", "ДВЕРЬ С ПРИВОДОМ (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_GDOORT0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая дверь с приводом (верх)
                                { "Russian", "Дверь с приводом (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ARCH_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТАЯ АРКА
                                { "Russian", "АРКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ARCH_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая арка
                                { "Russian", "Арка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ARCHB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТАЯ АРКА (ОСНОВАНИЕ)
                                { "Russian", "АРКА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ARCHB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая арка (основание)
                                { "Russian", "Арка (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ARCHM_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТАЯ АРКА (СЕРЕДИНА)
                                { "Russian", "АРКА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ARCHM_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая арка (середина)
                                { "Russian", "Арка (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ARCHT_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТАЯ АРКА (ВЕРХ)
                                { "Russian", "АРКА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ARCHT_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая арка (верх)
                                { "Russian", "Арка (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ARCH_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТАЯ ПОЛУАРКА
                                { "Russian", "ПОЛУАРКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ARCH_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая полуарка
                                { "Russian", "Полуарка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ARCHB_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТАЯ ПОЛУАРКА (ОСНОВАНИЕ)
                                { "Russian", "ПОЛУАРКА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ARCHB_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая полуарка (основание)
                                { "Russian", "Полуарка (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ARCHM_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТАЯ ПОЛУАРКА (СЕРЕДИНА)
                                { "Russian", "ПОЛУАРКА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ARCHM_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая полуарка (середина)
                                { "Russian", "Полуарка (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ARCHT_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТАЯ ПОЛУАРКА (ВЕРХ)
                                { "Russian", "ПОЛУАРКА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ARCHT_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая полуарка (верх)
                                { "Russian", "Полуарка (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_RAMP_Q_TOP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЛАТФОРМА БРЕВЕНЧАТОЙ ПОЛУРАМПЫ
                                -- TIMBER HALF RAMP PLATFORM
                                { "Russian", "ПЛАТФОРМА ПОЛУРАМПЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_RAMP_Q_TOP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Платформа бревенчатой полурампы
                                { "Russian", "Платформа полурампы" },
                            }
                        },
                        --#endregion

                        --#region КАМЕННЫЙ СТРОЕНИЯ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_STONE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Строительный компонент из камня
                                -- Stone Construction Component
                                { "Russian", "Строительное изделие из камня" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ СТЕНА (ОСНОВАНИЕ)
                                { "Russian", "СТЕНА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная стена (основание)
                                { "Russian", "Стена (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLM_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ СТЕНА (СЕРЕДИНА)
                                { "Russian", "СТЕНА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLM_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная стена (середина)
                                { "Russian", "Стена (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLT_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ СТЕНА (ВЕРХ)
                                { "Russian", "СТЕНА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLT_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная стена (верх)
                                { "Russian", "Стена (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALL_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОНКАЯ КАМЕННАЯ СТЕНА
                                { "Russian", "ТОНКАЯ СТЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALL_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тонкая каменная стена
                                { "Russian", "Тонкая стена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLB_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОНКАЯ КАМЕННАЯ СТЕНА (ОСНОВАНИЕ)
                                { "Russian", "ТОНКАЯ СТЕНА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLB_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тонкая каменная стена (основание)
                                { "Russian", "Тонкая стена (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLM_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОНКАЯ КАМЕННАЯ СТЕНА (СЕР.)
                                { "Russian", "ТОНКАЯ СТЕНА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLM_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тонкая каменная стена (середина)
                                { "Russian", "Тонкая стена (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLT_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОНКАЯ КАМЕННАЯ СТЕНА (ВЕРХ)
                                { "Russian", "ТОНКАЯ СТЕНА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLT_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тонкая каменная стена (верх)
                                { "Russian", "Тонкая стена (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALL_Q_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МАЛ. КАМЕННАЯ СТЕНА A
                                { "Russian", "МАЛАЯ СТЕНА A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALL_Q_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Маленькая каменная стена A
                                { "Russian", "Малая стена A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALL_Q1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МАЛ. КАМЕННАЯ СТЕНА B
                                { "Russian", "МАЛАЯ СТЕНА B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALL_Q1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Маленькая каменная стена B
                                { "Russian", "Малая стена B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALL_Q_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРОТКАЯ КАМЕННАЯ СТЕНА A
                                { "Russian", "КОРОТКАЯ СТЕНА A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALL_Q_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Короткая каменная стена A
                                { "Russian", "Короткая стена A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALL_Q_H1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРОТКАЯ КАМЕННАЯ СТЕНА B
                                { "Russian", "КОРОТКАЯ СТЕНА B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALL_Q_H1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Короткая каменная стена B
                                { "Russian", "Короткая стена B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLDIAGONAL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОКАТАЯ КАМЕННАЯ СТЕНА
                                { "Russian", "ПОКАТАЯ СТЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLDIAGONAL_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покатая каменная стена
                                { "Russian", "Покатая стена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLB_TRI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОКАТАЯ КАМЕННАЯ СТЕНА (ОСН.)
                                { "Russian", "ПОКАТАЯ СТЕНА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLB_TRI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покатая каменная стена (основание)
                                { "Russian", "Покатая стена (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLM_TRI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОКАТАЯ КАМЕННАЯ СТЕНА (СЕР.)
                                { "Russian", "ПОКАТАЯ СТЕНА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLM_TRI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покатая каменная стена (середина)
                                { "Russian", "Покатая стена (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLT_TRI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОКАТАЯ КАМЕННАЯ СТЕНА (ВЕРХ)
                                { "Russian", "ПОКАТАЯ СТЕНА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLT_TRI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покатая каменная стена (верх)
                                { "Russian", "Покатая стена (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALL_WINDOW_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННОЕ ЩЕЛЕВОЕ ОКНО
                                -- STONE SLIT WINDOW
                                { "Russian", "ЩЕЛЕВОЕ ОКНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALL_WINDOW_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменное щелевое окно
                                { "Russian", "Щелевое окно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLB_WIN0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННОЕ ЩЕЛЕВОЕ ОКНО (ОСН.)
                                { "Russian", "ЩЕЛЕВОЕ ОКНО (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLB_WIN0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменное щелевое окно (основание)
                                { "Russian", "Щелевое окно (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLM_WIN0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННОЕ ЩЕЛЕВОЕ ОКНО (СЕР.)
                                { "Russian", "ЩЕЛЕВОЕ ОКНО (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLM_WIN0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменное щелевое окно (середина)
                                { "Russian", "Щелевое окно (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLT_WIN0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННОЕ ЩЕЛЕВОЕ ОКНО (ВЕРХ)
                                { "Russian", "ЩЕЛЕВОЕ ОКНО (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLT_WIN0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменное щелевое окно (верх)
                                { "Russian", "Щелевое окно (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALL_WIN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННОЕ РЕШЕТЧАТОЕ ОКНО
                                { "Russian", "РЕШЕТЧАТОЕ ОКНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALL_WIN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменное решетчатое окно
                                { "Russian", "Решетчатое окно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLB_WIN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННОЕ РЕШЕТЧАТОЕ ОКНО (ОСН.)
                                { "Russian", "РЕШЕТЧАТОЕ ОКНО (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLB_WIN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменное решетчатое окно (основание)
                                { "Russian", "Решетчатое окно (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLM_WIN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННОЕ РЕШЕТЧАТОЕ ОКНО (СЕР.)
                                { "Russian", "РЕШЕТЧАТОЕ ОКНО (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLM_WIN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменное решетчатое окно (середина)
                                { "Russian", "Решетчатое окно (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLT_WIN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННОЕ РЕШЕТЧАТОЕ ОКНО (ВЕРХ)
                                { "Russian", "РЕШЕТЧАТОЕ ОКНО (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLT_WIN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменное решетчатое окно (верх)
                                { "Russian", "Решетчатое окно (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALL_WIN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БОЛЬШОЕ КАМЕННОЕ ОКНО
                                { "Russian", "БОЛЬШОЕ ОКНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALL_WIN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Большое каменное окно
                                { "Russian", "Большое окно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLB_WIN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БОЛЬШОЕ КАМЕННОЕ ОКНО (ОСН.)
                                { "Russian", "БОЛЬШОЕ ОКНО (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLB_WIN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Большое каменное окно (основание)
                                { "Russian", "Большое окно (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLM_WIN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БОЛЬШОЕ КАМЕННОЕ ОКНО (СЕР.)
                                { "Russian", "БОЛЬШОЕ ОКНО (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLM_WIN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Большое каменное окно (середина)
                                { "Russian", "Большое окно (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLT_WIN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БОЛЬШОЕ КАМЕННОЕ ОКНО (ВЕРХ)
                                { "Russian", "БОЛЬШОЕ ОКНО (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLT_WIN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Большое каменное окно (верх)
                                { "Russian", "Большое окно (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALL_WIN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННОЕ КРУГЛОЕ ОКНО
                                { "Russian", "КРУГЛОЕ ОКНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALL_WIN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменное круглое окно
                                { "Russian", "Круглое окно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLB_WIN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННОЕ КРУГЛОЕ ОКНО (ОСН.)
                                { "Russian", "КРУГЛОЕ ОКНО (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLB_WIN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменное круглое окно (основание)
                                { "Russian", "Круглое окно (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLM_WIN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННОЕ КРУГЛОЕ ОКНО (СЕР.)
                                { "Russian", "КРУГЛОЕ ОКНО (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLM_WIN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменное круглое окно (середина)
                                { "Russian", "Круглое окно (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLT_WIN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННОЕ КРУГЛОЕ ОКНО (ВЕРХ)
                                { "Russian", "КРУГЛОЕ ОКНО (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALLT_WIN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменное круглое окно (верх)
                                { "Russian", "Круглое окно (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALL_SUPPORTS_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ НЕСУЩАЯ КОЛОННА
                                { "Russian", "НЕСУЩАЯ КОЛОННА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_WALL_SUPPORTS_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная несущая колонна
                                { "Russian", "Несущая колонна" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ АРОЧНАЯ ДВЕРЬ
                                { "Russian", "АРОЧНАЯ ДВЕРЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная арочная дверь
                                { "Russian", "Арочная дверь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORB0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ АРОЧНАЯ ДВЕРЬ (ОСН.)
                                { "Russian", "АРОЧНАЯ ДВЕРЬ (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORB0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная арочная дверь (основание)
                                { "Russian", "Арочная дверь (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORM0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ АРОЧНАЯ ДВЕРЬ (СЕР.)
                                { "Russian", "АРОЧНАЯ ДВЕРЬ (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORM0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная арочная дверь (середина)
                                { "Russian", "Арочная дверь (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORT0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ АРОЧНАЯ ДВЕРЬ (ВЕРХ)
                                { "Russian", "АРОЧНАЯ ДВЕРЬ (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORT0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная арочная дверь (верх)
                                { "Russian", "Арочная дверь (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOOR1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ ПРЯМОУГОЛЬНАЯ ДВЕРЬ
                                { "Russian", "ПРЯМОУГОЛЬНАЯ ДВЕРЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOOR1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная прямоугольная дверь
                                { "Russian", "Прямоугольная дверь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORB1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ ПРЯМОУГОЛЬНАЯ ДВЕРЬ (ОСН.)
                                { "Russian", "ПРЯМОУГОЛЬНАЯ ДВЕРЬ (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORB1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная прямоугольная дверь (основание)
                                { "Russian", "Прямоугольная дверь (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORM1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ ПРЯМОУГОЛЬНАЯ ДВЕРЬ (СЕР.)
                                { "Russian", "ПРЯМОУГОЛЬНАЯ ДВЕРЬ (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORM1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная прямоугольная дверь (середина)
                                { "Russian", "Прямоугольная дверь (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORT1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ ПРЯМОУГОЛЬНАЯ ДВЕРЬ (ВЕРХ)
                                { "Russian", "ПРЯМОУГОЛЬНАЯ ДВЕРЬ (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORT1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная прямоугольная дверь (верх)
                                { "Russian", "Прямоугольная дверь (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOOR_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННЫЙ ДВЕРНОЙ ПРОЕМ
                                { "Russian", "ДВЕРНОЙ ПРОЕМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOOR_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменный дверной проем
                                { "Russian", "Дверной проем" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORB0_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННЫЙ ДВЕРНОЙ ПРОЕМ (ОСН.)
                                { "Russian", "ДВЕРНОЙ ПРОЕМ (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORB0_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменный дверной проем (основание)
                                { "Russian", "Дверной проем (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORM0_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННЫЙ ДВЕРНОЙ ПРОЕМ (СЕР.)
                                { "Russian", "ДВЕРНОЙ ПРОЕМ (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORM0_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменный дверной проем (середина)
                                { "Russian", "Дверной проем (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORT0_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННЫЙ ДВЕРНОЙ ПРОЕМ (ВЕРХ)
                                { "Russian", "ДВЕРНОЙ ПРОЕМ (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORT0_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменный дверной проем (верх)
                                { "Russian", "Дверной проем (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORWINDOW_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННЫЙ ФАСАД
                                { "Russian", "ФАСАД" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORWINDOW_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменный фасад
                                { "Russian", "Фасад" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORWINB0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННЫЙ ФАСАД (ОСН.)
                                { "Russian", "ФАСАД (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORWINB0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменный фасад (основание)
                                { "Russian", "Фасад (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORWINM0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННЫЙ ФАСАД (СЕР.)
                                { "Russian", "ФАСАД (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORWINM0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменный фасад (середина)
                                { "Russian", "Фасад (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORWINT0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННЫЙ ФАСАД (ВЕРХ)
                                { "Russian", "ФАСАД (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_DOORWINT0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменный фасад (верх)
                                { "Russian", "Фасад (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАКРУГЛ. ПЛОСКАЯ КАМ. КРЫША
                                { "Russian", "ЗАКРУГЛЕННАЯ КРЫША" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Закругленная плоская каменная крыша
                                { "Russian", "Закругленная крыша" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЕНТ. ПЛОСКАЯ КАМЕННАЯ КРЫША
                                -- VENTILATED FLAT STONE ROOF
                                { "Russian", "КРЫША С ВЕНТИЛЯЦИЕЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вентилируемая плоская каменная крыша
                                { "Russian", "Крыша с вентиляцией" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НАКЛОННАЯ ПЛОСКАЯ КАМЕННАЯ КРЫША
                                { "Russian", "НАКЛОННАЯ КРЫША" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наклонная плоская каменная крыша
                                { "Russian", "Наклонная крыша" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЛОСКАЯ КАМЕННАЯ КРЫША
                                { "Russian", "ПЛОСКАЯ КРЫША" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плоская каменная крыша
                                { "Russian", "Плоская крыша" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ КРЫША С ПОЛОТНОМ
                                { "Russian", "КРЫША С ПОЛОТНОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная крыша с полотном
                                { "Russian", "Крыша с полотном" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF5_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННЫЙ КУПОЛ
                                { "Russian", "КУПОЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF5_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменный купол
                                { "Russian", "Купол" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF_M_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПАНЕЛЬ КАМЕННОЙ КРЫШИ
                                { "Russian", "ПАНЕЛЬ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF_M_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Панель каменной крыши
                                { "Russian", "Панель крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF_C_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УГОЛ КАМЕННОЙ КРЫШИ
                                { "Russian", "УГОЛ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF_C_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Угол каменной крыши
                                { "Russian", "Угол крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF_IC_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННЫЙ ВНУТРЕННИЙ УГОЛ КРЫШИ
                                { "Russian", "ВНУТРЕННИЙ УГОЛ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF_IC_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменный внутренний угол крыши
                                { "Russian", "Внутренний угол крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF_M_Q_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПАНЕЛЬ ПОКАТ. КАМ. КРЫШИ
                                -- SLOPING STONE ROOF PANEL
                                { "Russian", "ПАНЕЛЬ ПОКАТОЙ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF_M_Q_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Панель покатой каменной крыши
                                { "Russian", "Панель покатой крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF_E_Q_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ШИПЕЦ ПОКАТ. КАМ. КРЫШИ
                                { "Russian", "ШИПЕЦ ПОКАТОЙ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF_E_Q_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Шипец покатой каменной крыши
                                { "Russian", "Шипец покатой крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF_M_CAP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОНЕК КАМЕННОЙ КРЫШИ
                                { "Russian", "КОНЕК КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF_M_CAP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Конек каменной крыши
                                { "Russian", "Конек крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF_E_CAP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ШИПЕЦ КАМЕННОЙ КРЫШИ
                                { "Russian", "ШИПЕЦ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF_E_CAP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Шипец каменной крыши
                                { "Russian", "Шипец крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_CHEV_WALL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫСТУПАЮЩАЯ КАМЕН. СТЕНА
                                { "Russian", "ВЫПУКЛАЯ СТЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_CHEV_WALL_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выступающая каменная стена
                                { "Russian", "Выпуклая стена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_CHEV_DOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫСТУПАЮЩАЯ КАМЕН. ДВЕРЬ
                                { "Russian", "ВЫПУКЛАЯ ДВЕРЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_CHEV_DOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выступающая каменная дверь
                                { "Russian", "Выпуклая дверь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_CHEV_WALL_H_C_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЕРХ ВЫСТУП. КАМ. СТЕНЫ
                                -- EXTRUDED STONE WALL CAP
                                { "Russian", "КРЫШКА ВЫПУКЛОЙ СТЕНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_CHEV_WALL_H_C_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Верх выступающей каменной стены
                                { "Russian", "Крышка выпуклой стены" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_CHEV_WIN0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫСТУПАЮЩАЯ КАМЕННАЯ РЕШЕТКА А
                                { "Russian", "РЕШЕТКА С ВЫСТУПОМ A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_CHEV_WIN0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выступающая каменная решетка A
                                { "Russian", "Решетка с выступом A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_CHEV_WIN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БОЛЬШОЕ ВЫСТ. КАМЕННОЕ ОКНО
                                { "Russian", " БОЛЬШОЕ ОКНО С ВЫСТУПОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_CHEV_WIN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Большое выступающее каменное окно
                                { "Russian", "Большое окно с выступом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_CHEV_WIN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫСТУПАЮЩАЯ КАМЕННАЯ РЕШЕТКА Б
                                { "Russian", "РЕШЕТКА С ВЫСТУПОМ B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_CHEV_WIN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выступающая каменная решетка Б
                                { "Russian", "Решетка с выступом B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_GDOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ ДВЕРЬ С ПРИВОДОМ
                                { "Russian", "ДВЕРЬ С ПРИВОДОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_GDOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная дверь с приводом
                                { "Russian", "Дверь с приводом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_GDOORB0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ ДВЕРЬ С ПРИВОДОМ (ОСН.)
                                { "Russian", "ДВЕРЬ С ПРИВОДОМ (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_GDOORB0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная дверь с приводом (основание)
                                { "Russian", "Дверь с приводом (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_GDOORM0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ ДВЕРЬ С ПРИВОДОМ (СЕР.)
                                { "Russian", "ДВЕРЬ С ПРИВОДОМ (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_GDOORM0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная дверь с приводом (середина)
                                { "Russian", "Дверь с приводом (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_GDOORT0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ ДВЕРЬ С ПРИВОДОМ (ВЕРХ)
                                { "Russian", "ДВЕРЬ С ПРИВОДОМ (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_GDOORT0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная дверь с приводом (верх)
                                { "Russian", "Дверь с приводом (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ARCH_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ АРКА
                                { "Russian", "АРКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ARCH_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная арка
                                { "Russian", "Арка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ARCHB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ АРКА (ОСН.)
                                { "Russian", "АРКА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ARCHB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная арка (основание)
                                { "Russian", "Арка (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ARCHM_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ АРКА (СЕР.)
                                { "Russian", "АРКА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ARCHM_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная арка (середина)
                                { "Russian", "Арка (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ARCHT_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ АРКА (ВЕРХ)
                                { "Russian", "АРКА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ARCHT_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная арка (верх)
                                { "Russian", "Арка (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ARCH_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ ПОЛУАРКА
                                { "Russian", "ПОЛУАРКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ARCH_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная полуарка
                                { "Russian", "Полуарка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ARCHB_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ ПОЛУАРКА (ОСН.)
                                { "Russian", "ПОЛУАРКА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ARCHB_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная полуарка (основание)
                                { "Russian", "Полуарка (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ARCHM_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ ПОЛУАРКА (СЕР.)
                                { "Russian", "ПОЛУАРКА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ARCHM_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная полуарка (середина)
                                { "Russian", "Полуарка (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ARCHT_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ ПОЛУАРКА (ВЕРХ)
                                { "Russian", "ПОЛУАРКА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ARCHT_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная полуарка (верх)
                                { "Russian", "Полуарка (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_FLOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ НАПОЛЬНАЯ ПАНЕЛЬ
                                { "Russian", "НАПОЛЬНАЯ ПАНЕЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_FLOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная напольная панель
                                { "Russian", "Напольная панель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_FLOOR_Q_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МАЛЕНЬКАЯ КАМЕННАЯ ПАНЕЛЬ
                                { "Russian", "МАЛАЯ ПАНЕЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_FLOOR_Q_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Маленькая каменная панель
                                { "Russian", "Малая панель" },
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_TRIFLOOR_NAME" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- КАМЕННЫЙ ТРЕУГОЛЬНИК
                        --         { "Russian", "КАМЕННЫЙ ТРЕУГОЛЬНИК" },
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_TRIFLOOR_NAME_L" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         -- Каменный треугольник
                        --         { "Russian", "Каменный треугольник" },
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_TRIFLOOR_Q_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МАЛЫЙ КАМЕННЫЙ ТРЕУГОЛЬНИК
                                { "Russian", "МАЛЫЙ ТРЕУГОЛЬНИК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_TRIFLOOR_Q_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Маленький каменный треугольник
                                { "Russian", "Малый треугольник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_GFLOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ НАПОЛЬНАЯ РЕШЕТКА
                                { "Russian", "НАПОЛЬНАЯ РЕШЕТКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_GFLOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная напольная решетка
                                { "Russian", "Напольная решетка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_RAMP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ РАМПА
                                { "Russian", "РАМПА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_RAMP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная рампа
                                { "Russian", "Рампа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_RAMP_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ ПОЛУРАМПА
                                { "Russian", "ПОЛУРАМПА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_RAMP_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная полурампа
                                { "Russian", "Полурампа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_RAMP_Q_TOP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЛАТФОРМА КАМЕННОЙ ПОЛУРАМПЫ
                                { "Russian", "ПЛАТФОРМА ПОЛУРАМПЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_RAMP_Q_TOP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Платформа каменной полурампы
                                { "Russian", "Платформа полурампы" },
                            }
                        },
                        --#endregion

                        --#region СТРОЕНИЯ ИЗ СПЛАВА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FIBREGLASS_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Строительный компонент из сплава
                                -- Alloy Construction Component
                                { "Russian", "Строительное изделие из сплава" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТЕНА ИЗ СПЛАВА
                                { "Russian", "СТЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALL_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стена из сплава
                                { "Russian", "Стена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТЕНА ИЗ СПЛАВА (ОСНОВ.)
                                { "Russian", "СТЕНА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стена из сплава (основание)
                                { "Russian", "Стена (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLM_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТЕНА ИЗ СПЛАВА (СЕРЕДИНА)
                                { "Russian", "СТЕНА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLM_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стена из сплава (середина)
                                { "Russian", "Стена (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLT_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТЕНА ИЗ СПЛАВА (ВЕРХ)
                                { "Russian", "СТЕНА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLT_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стена из сплава (верх)
                                { "Russian", "Стена (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALL_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОНКАЯ СТЕНА ИЗ СПЛАВА
                                { "Russian", "ТОНКАЯ СТЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALL_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тонкая стена из сплава
                                { "Russian", "Тонкая стена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLB_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОНК. СТЕНА ИЗ СПЛ. (ОСН.)
                                { "Russian", "ТОНКАЯ СТЕНА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLB_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тонкая стена из сплава (основание)
                                { "Russian", "Тонкая стена (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLM_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОНК. СТЕНА ИЗ СПЛ. (СЕР.)
                                { "Russian", "ТОНКАЯ СТЕНА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLM_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тонкая стена из сплава (середина)
                                { "Russian", "Тонкая стена (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLT_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОНК. СТЕНА ИЗ СПЛ. (ВЕРХ)
                                { "Russian", "ТОНКАЯ СТЕНА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLT_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тонкая стена из сплава (верх)
                                { "Russian", "Тонкая стена (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALL_Q_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МАЛ. СТЕНА ИЗ СПЛАВА A
                                { "Russian", "МАЛАЯ СТЕНА A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALL_Q_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Маленькая стена из сплава A
                                { "Russian", "Малая стена A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALL_Q1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МАЛ. СТЕНА ИЗ СПЛАВА В
                                { "Russian", "МАЛАЯ СТЕНА B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALL_Q1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Маленькая стена из сплава B
                                { "Russian", "Малая стена B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALL_Q_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРОТКАЯ СТЕНА ИЗ СПЛАВА A
                                { "Russian", "КОРОТКАЯ СТЕНА A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALL_Q_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Короткая стена из сплава A
                                { "Russian", "Короткая стена A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALL_Q_H1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРОТКАЯ СТЕНА ИЗ СПЛАВА B
                                { "Russian", "КОРОТКАЯ СТЕНА B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALL_Q_H1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Короткая стена из сплава B
                                { "Russian", "Короткая стена B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLDIAGONAL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОКАТАЯ ПАНЕЛЬ ИЗ СПЛАВА
                                { "Russian", "ПОКАТАЯ ПАНЕЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLDIAGONAL_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покатая панель из сплава
                                { "Russian", "Покатая панель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLB_TRI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОК. ПАНЕЛЬ ИЗ СПЛ. (ОСН.)
                                { "Russian", "ПОКАТАЯ ПАНЕЛЬ (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLB_TRI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покатая панель из сплава (основание)
                                { "Russian", "Покатая панель (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLM_TRI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОК. ПАНЕЛЬ ИЗ СПЛ. (СЕР.)
                                { "Russian", "ПОКАТАЯ ПАНЕЛЬ (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLM_TRI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покатая панель из сплава (середина)
                                { "Russian", "Покатая панель (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLT_TRI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОК. ПАНЕЛЬ ИЗ СПЛ. (ВЕРХ)
                                { "Russian", "ПОКАТАЯ ПАНЕЛЬ (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLT_TRI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Покатая панель из сплава (верх)
                                { "Russian", "Покатая панель (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALL_WINDOW_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОКНО ИЗ СПЛАВА
                                { "Russian", "ОКНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALL_WINDOW_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окно из сплава
                                { "Russian", "Окно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLB_WIN0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОКНО ИЗ СПЛАВА (ОСН.)
                                { "Russian", "ОКНО (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLB_WIN0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окно из сплава (основание)
                                { "Russian", "Окно (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLM_WIN0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОКНО ИЗ СПЛАВА (СЕР.)
                                { "Russian", "ОКНО (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLM_WIN0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окно из сплава (середина)
                                { "Russian", "Окно (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLT_WIN0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОКНО ИЗ СПЛАВА (ВЕРХ)
                                { "Russian", "ОКНО (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLT_WIN0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окно из сплава (верх)
                                { "Russian", "Окно (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALL_WIN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НЕСИММ. ОКНО ИЗ СПЛАВА
                                -- IRREGULAR ALLOY WINDOW
                                { "Russian", "НЕРАВНОМЕРНОЕ ОКНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALL_WIN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Несимметричное окно из сплава
                                { "Russian", "Неравномерное окно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLB_WIN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НЕСИММЕТРИЧНОЕ ОКНО ИЗ СПЛАВА (ОСН.)
                                { "Russian", "НЕРАВНОМЕРНОЕ ОКНО (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLB_WIN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Несимметричное окно из сплава (основание)
                                { "Russian", "Неравномерное окно (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLM_WIN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НЕСИММЕТРИЧНОЕ ОКНО ИЗ СПЛАВА (СЕР.)
                                { "Russian", "НЕРАВНОМЕРНОЕ ОКНО (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLM_WIN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Несимметричное окно из сплава (середина)
                                { "Russian", "Неравномерное окно (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLT_WIN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НЕСИММЕТРИЧНОЕ ОКНО ИЗ СПЛАВА (ВЕРХ)
                                { "Russian", "НЕРАВНОМЕРНОЕ ОКНО (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLT_WIN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Несимметричное окно из сплава (верх)
                                { "Russian", "Неравномерное окно (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALL_WIN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВОЙНОЕ ОКНО ИЗ СПЛАВА
                                { "Russian", "ДВОЙНОЕ ОКНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALL_WIN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двойное окно из сплава
                                { "Russian", "Двойное окно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLB_WIN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВОЙНОЕ ОКНО ИЗ СПЛАВА (ОСН.)
                                { "Russian", "ДВОЙНОЕ ОКНО (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLB_WIN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двойное окно из сплава (основание)
                                { "Russian", "Двойное окно (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLM_WIN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВОЙНОЕ ОКНО ИЗ СПЛАВА (СЕР.)
                                { "Russian", "ДВОЙНОЕ ОКНО (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLM_WIN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двойное окно из сплава (середина)
                                { "Russian", "Двойное окно (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLT_WIN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВОЙНОЕ ОКНО ИЗ СПЛАВА (ВЕРХ)
                                { "Russian", "ДВОЙНОЕ ОКНО (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLT_WIN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двойное окно из сплава (верх)
                                { "Russian", "Двойное окно (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALL_WIN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГОРИЗОНТ. ОКНО ИЗ СПЛАВА
                                -- HORIZONTAL ALLOY WINDOW
                                { "Russian", "ГОРИЗОНТАЛЬНОЕ ОКНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALL_WIN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Горизонтальное окно из сплава
                                { "Russian", "Горизонтальное окно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLB_WIN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГОРИЗОНТАЛЬНОЕ ОКНО ИЗ СПЛАВА (ОСН.)
                                { "Russian", "ГОРИЗОНТАЛЬНОЕ ОКНО (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLB_WIN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Горизонтальное окно из сплава (основание)
                                { "Russian", "Горизонтальное окно (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLM_WIN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГОРИЗОНТАЛЬНОЕ ОКНО ИЗ СПЛАВА (СЕР.)
                                { "Russian", "ГОРИЗОНТАЛЬНОЕ ОКНО (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLM_WIN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Горизонтальное окно из сплава (середина)
                                { "Russian", "Горизонтальное окно (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLT_WIN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГОРИЗОНТАЛЬНОЕ ОКНО ИЗ СПЛАВА (ВЕРХ)
                                { "Russian", "ГОРИЗОНТАЛЬНОЕ ОКНО (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_WALLT_WIN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Горизонтальное окно из сплава (верх)
                                { "Russian", "Горизонтальное окно (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ СПЛАВА A
                                { "Russian", "ДВЕРЬ A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из сплава A
                                { "Russian", "Дверь A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORB0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ СПЛАВА A (ОСН.)
                                { "Russian", "ДВЕРЬ A (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORB0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из сплава A (основание)
                                { "Russian", "Дверь A (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORM0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ СПЛАВА A (СЕР.)
                                { "Russian", "ДВЕРЬ A (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORM0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из сплава A (середина)
                                { "Russian", "Дверь A (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORT0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ СПЛАВА A (ВЕРХ)
                                { "Russian", "ДВЕРЬ A (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORT0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из сплава A (верх)
                                { "Russian", "Дверь A (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOOR1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ СПЛАВА B
                                { "Russian", "ДВЕРЬ B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOOR1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из сплава B
                                { "Russian", "Дверь B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORB1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ СПЛАВА B (ОСН.)
                                { "Russian", "ДВЕРЬ B (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORB1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из сплава B (основание)
                                { "Russian", "Дверь B (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORM1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ СПЛАВА B (СЕР.)
                                { "Russian", "ДВЕРЬ B (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORM1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из сплава B (середина)
                                { "Russian", "Дверь B (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORT1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ СПЛАВА B (ВЕРХ)
                                { "Russian", "ДВЕРЬ B (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORT1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из сплава B (верх)
                                { "Russian", "Дверь B (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOOR_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРНОЙ ПРОЕМ ИЗ СПЛАВА
                                { "Russian", "ДВЕРНОЙ ПРОЕМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOOR_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверной проем из сплава
                                { "Russian", "Дверной проем" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORB0_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРНОЙ ПРОЕМ ИЗ СПЛАВА (ОСН.)
                                { "Russian", "ДВЕРНОЙ ПРОЕМ (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORB0_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверной проем из сплава (основание)
                                { "Russian", "Дверной проем (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORM0_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРНОЙ ПРОЕМ ИЗ СПЛАВА (СЕР.)
                                { "Russian", "ДВЕРНОЙ ПРОЕМ (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORM0_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверной проем из сплава (середина)
                                { "Russian", "Дверной проем (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORT0_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРНОЙ ПРОЕМ ИЗ СПЛАВА (ВЕРХ)
                                { "Russian", "ДВЕРНОЙ ПРОЕМ (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORT0_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверной проем из сплава (верх)
                                { "Russian", "Дверной проем (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORWINDOW_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ФАСАД ИЗ СПЛАВА
                                { "Russian", "ФАСАД" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORWINDOW_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фасад из сплава
                                { "Russian", "Фасад" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORWINB0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ФАСАД ИЗ СПЛАВА (ОСН.)
                                { "Russian", "ФАСАД (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORWINB0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фасад из сплава (основание)
                                { "Russian", "Фасад (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORWINM0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ФАСАД ИЗ СПЛАВА (СЕР.)
                                { "Russian", "ФАСАД (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORWINM0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фасад из сплава (середина)
                                { "Russian", "Фасад (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORWINT0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ФАСАД ИЗ СПЛАВА (ВЕРХ)
                                { "Russian", "ФАСАД (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_DOORWINT0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фасад из сплава (верх)
                                { "Russian", "Фасад (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_GDOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ СПЛАВА С ПРИВОДОМ
                                { "Russian", "ДВЕРЬ С ПРИВОДОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_GDOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из сплава с приводом
                                { "Russian", "Дверь с приводом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_GDOORB0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ С ПРИВОДОМ ИЗ СПЛАВА (ОСН.)
                                { "Russian", "ДВЕРЬ С ПРИВОДОМ (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_GDOORB0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь с приводом из сплава (основание)
                                { "Russian", "Дверь с приводом (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_GDOORM0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ С ПРИВОДОМ ИЗ СПЛАВА (СЕР.)
                                { "Russian", "ДВЕРЬ С ПРИВОДОМ (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_GDOORM0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь с приводом из сплава (середина)
                                { "Russian", "Дверь с приводом (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_GDOORT0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ С ПРИВОДОМ ИЗ СПЛАВА (ВЕРХ)
                                { "Russian", "ДВЕРЬ С ПРИВОДОМ (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_GDOORT0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь с приводом из сплава (верх)
                                { "Russian", "Дверь с приводом (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫША ИЗ СПЛ. С БОК. ОСВ.
                                -- SIDE-LIT FLAT ALLOY ROOF
                                { "Russian", "КРЫША С БОКОВЫМ ОСВЕЩЕНИЕМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыша из сплава с боковым освещением
                                { "Russian", "Крыша с боковым освещением" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫС. ПЛОСК. КРЫША ИЗ СПЛ.
                                -- TALL FLAT ALLOY ROOF
                                { "Russian", "ВЫСОКАЯ КРЫША" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Высокая плоская крыша из сплава
                                { "Russian", "Высокая крыша" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫША ИЗ СПЛ. СО СВ. ЛЮКОМ
                                -- SKYLIGHT ALLOY ROOF
                                { "Russian", "КРЫША С Г-ОБРАЗНЫМ ЛЮКОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыша из сплава со световым люком
                                { "Russian", "Крыша с Г-образным люком" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫША ИЗ СПЛ. С ВЕРХ. ОСВ.
                                -- TOP-LIT FLAT ALLOY ROOF
                                { "Russian", "КРЫША С ВЕРХНИМ ОСВЕЩЕНИЕМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыша из сплава с верхним освещением
                                { "Russian", "Крыша с верхним освещением" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫША ИЗ СПЛ. СО СЛ. ПАРУСОМ
                                { "Russian", "КРЫША СО СЛОЖЕННЫМ ПАРУСОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыша из сплава со сложенным парусом
                                { "Russian", "Крыша со сложенным парусом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF5_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НАКЛОННАЯ ПЛОСКАЯ КРЫША ИЗ СПЛАВА
                                { "Russian", "НАКЛОННАЯ КРЫША" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF5_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наклонная плоская крыша из сплава
                                { "Russian", "Наклонная крыша" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF6_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРИЧУДЛ. КРЫША ИЗ СПЛАВА
                                { "Russian", "ПРИЧУДЛИВАЯ КРЫША" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF6_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Причудливая крыша из сплава
                                { "Russian", "Причудливая крыша" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF7_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЛОСКАЯ КРЫША ИЗ СПЛАВА
                                { "Russian", "ПЛОСКАЯ КРЫША" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF7_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Плоская крыша из сплава
                                { "Russian", "Плоская крыша" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF8_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫША ИЗ СПЛАВА С ПРИП. ПЛАТФОРМОЙ
                                { "Russian", "КРЫША С ПРИПОДНЯТОЙ ПЛАТФОРМОЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF8_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыша из сплава с приподнятой платформой
                                { "Russian", "Крыша с приподнятой платформой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF_M_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПАНЕЛЬ КРЫШИ ИЗ СПЛАВА
                                { "Russian", "ПАНЕЛЬ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF_M_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Панель крыши из сплава
                                { "Russian", "Панель крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF_C_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УГОЛ КРЫШИ ИЗ СПЛАВА
                                { "Russian", "УГОЛ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF_C_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Угол крыши из сплава
                                { "Russian", "Угол крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF_IC_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНУТР. УГОЛ КРЫШИ ИЗ СПЛ.
                                { "Russian", "ВНУТРЕННИЙ УГОЛ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF_IC_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Внутренний угол крыши из сплава
                                { "Russian", "Внутренний угол крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF_M_Q_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПАНЕЛЬ ПОК. КРЫШИ ИЗ СПЛ.
                                { "Russian", "ПАНЕЛЬ ПОКАТОЙ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF_M_Q_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Панель покатой крыши из сплава
                                { "Russian", "Панель покатой крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF_E_Q_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ШИПЕЦ ПОК. КРЫШИ ИЗ СПЛАВА
                                { "Russian", "ШИПЕЦ ПОКАТОЙ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF_E_Q_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Шипец покатой крыши из сплава
                                { "Russian", "Шипец покатой крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF_M_CAP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОНЕК КРЫШИ ИЗ СПЛАВА
                                { "Russian", "КОНЕК КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF_M_CAP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Конек крыши из сплава
                                { "Russian", "Конек крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF_E_CAP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ШИПЕЦ КРЫШИ ИЗ СПЛАВА
                                { "Russian", "ШИПЕЦ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF_E_CAP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Шипец крыши из сплава
                                { "Russian", "Шипец крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_CHEV_WALL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫСТУП. СТЕНА ИЗ СПЛАВА
                                { "Russian", "СТЕНА С ВЫСТУПОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_CHEV_WALL_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выступающая стена из сплава
                                { "Russian", "Стена с выступом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_CHEV_DOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫСТУП. ДВЕРЬ ИЗ СПЛАВА
                                { "Russian", "ДВЕРЬ С ВЫСТУПОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_CHEV_DOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выступающая дверь из сплава
                                { "Russian", "Дверь с выступом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_CHEV_WALL_H_C_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЕРХ ВЫСТ. СТЕНЫ ИЗ СПЛАВА
                                -- EXTRUDED ALLOY WALL CAP
                                { "Russian", "КРЫШКА ВЫПУКЛОЙ СТЕНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_CHEV_WALL_H_C_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Верх выступающей стены из сплава
                                { "Russian", "Крышка выпуклой стены" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_CHEV_WIN0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫСТУП. ОКНО ИЗ СПЛАВА
                                { "Russian", "ОКНО С ВЫСТУПОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_CHEV_WIN0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выступающее окно из сплава
                                { "Russian", "Окно с выступом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_CHEV_WIN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫСТ. ГОР. ОКНО ИЗ СПЛАВА
                                { "Russian", "ГОРИЗОНТАЛЬНОЕ ОКНО С ВЫСТУПОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_CHEV_WIN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выступающее горизонтальное окно из сплава
                                { "Russian", "Горизонтальное окно с выступом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_CHEV_WIN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МАЛ. ВЫСТ. ОКНО ИЗ СПЛАВА
                                { "Russian", "МАЛОЕ ОКНО С ВЫСТУПОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_CHEV_WIN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Маленькое выступающее окно из сплава
                                { "Russian", "Малое окно с выступом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ARCH_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- АРКА ИЗ СПЛАВА
                                { "Russian", "АРКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ARCH_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Арка из сплава
                                { "Russian", "Арка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ARCHB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- АРКА ИЗ СПЛАВА (ОСН.)
                                { "Russian", "АРКА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ARCHB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Арка из сплава (основание)
                                { "Russian", "Арка (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ARCHM_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- АРКА ИЗ СПЛАВА (СЕР.)
                                { "Russian", "АРКА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ARCHM_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Арка из сплава (середина)
                                { "Russian", "Арка (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ARCHT_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- АРКА ИЗ СПЛАВА (ВЕРХ)
                                { "Russian", "АРКА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ARCHT_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Арка из сплава (верх)
                                { "Russian", "Арка (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ARCH_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОЛУАРКА ИЗ СПЛАВА
                                { "Russian", "ПОЛУАРКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ARCH_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Полуарка из сплава
                                { "Russian", "Полуарка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ARCHB_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОЛУАРКА ИЗ СПЛАВА (ОСН.)
                                { "Russian", "ПОЛУАРКА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ARCHB_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Полуарка из сплава (основание)
                                { "Russian", "Полуарка (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ARCHM_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОЛУАРКА ИЗ СПЛАВА (СЕР.)
                                { "Russian", "ПОЛУАРКА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ARCHM_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Полуарка из сплава (середина)
                                { "Russian", "Полуарка (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ARCHT_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОЛУАРКА ИЗ СПЛАВА (ВЕРХ)
                                { "Russian", "ПОЛУАРКА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ARCHT_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Полуарка из сплава (верх)
                                { "Russian", "Полуарка (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_FLOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НАПОЛЬН. ПАНЕЛЬ ИЗ СПЛАВА
                                { "Russian", "НАПОЛЬНАЯ ПАНЕЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_FLOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Напольная панель из сплава
                                { "Russian", "Напольная панель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_FLOOR_Q_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МАЛ. ПАНЕЛЬ ИЗ СПЛАВА
                                { "Russian", "МАЛАЯ ПАНЕЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_FLOOR_Q_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Маленькая панель из сплава
                                { "Russian", "Малая панель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_TRIFLOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТРЕУГОЛЬНИК ИЗ СПЛАВА
                                { "Russian", "ТРЕУГОЛЬНИК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_TRIFLOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Треугольник из сплава
                                { "Russian", "Треугольник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_TRIFLOOR_Q_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МАЛЕНЬКИЙ ТРЕУГОЛЬНИК ИЗ СПЛАВА
                                { "Russian", "МАЛЫЙ ТРЕУГОЛЬНИК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_TRIFLOOR_Q_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Маленький треугольник из сплава
                                { "Russian", "Малый треугольник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_GFLOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТ. ПАНЕЛЬ С РАМОЙ ИЗ СПЛ.
                                -- ALLOY-FRAMED GLASS PANEL
                                { "Russian", "СТЕКЛЯННАЯ ПАНЕЛЬ С РАМОЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_GFLOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стеклянная панель с рамой из сплава
                                { "Russian", "Стеклянная панель с рамой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_RAMP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РАМПА ИЗ СПЛАВА
                                { "Russian", "РАМПА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_RAMP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рампа из сплава
                                { "Russian", "Рампа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_RAMP_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОЛУРАМПА ИЗ СПЛАВА
                                { "Russian", "ПОЛУРАМПА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_RAMP_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Полурампа из сплава
                                { "Russian", "Полурампа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_RAMP_Q_TOP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЛАТФОРМА ПОЛУРАМПЫ ИЗ СПЛАВА
                                { "Russian", "ПЛАТФОРМА ПОЛУРАМПЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_RAMP_Q_TOP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Платформа полурампы из сплава
                                { "Russian", "Платформа полурампы" },
                            }
                        },
                        --#endregion

                        --#region Постройки на грузовом корабле

                        --#region КОРИДОР ГРУЗОВОГО СУДНА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_CORR_A_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРИДОР ГРУЗОВОГО СУДНА
                                { "Russian", "КОРИДОР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_CORR_A_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Коридор грузового судна
                                { "Russian", "Коридор" },
                            }
                        },
                        --#endregion

                        --#region СТЕКЛЯННЫЙ КОРИДОР ГРУЗОВОГО СУДНА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_CORR_A_GLASS_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТЕКЛЯННЫЙ КОРИДОР ГРУЗОВОГО СУДНА
                                { "Russian", "СТЕКЛЯННЫЙ КОРИДОР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_CORR_A_GLASS_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стеклянный коридор грузового судна
                                { "Russian", "Стеклянный коридор" },
                            }
                        },
                        --#endregion

                        --#region ЛЕСТНИЦА ГРУЗОВОГО СУДНА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_CORR_STAIRS_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЛЕСТНИЦА ГРУЗОВОГО СУДНА
                                { "Russian", "ЛЕСТНИЦА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_CORR_STAIRS_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Лестница грузового судна
                                { "Russian", "Лестница" },
                            }
                        },
                        --#endregion

                        --#region СТЕКЛЯННАЯ ЛЕСТНИЦА ГРУЗОВОГО СУДНА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_CORR_STAIRS_G_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТЕКЛЯННАЯ ЛЕСТНИЦА ГРУЗОВОГО СУДНА
                                { "Russian", "СТЕКЛЯННАЯ ЛЕСТНИЦА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_CORR_STAIRS_G_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стеклянная лестница грузового судна
                                { "Russian", "Стеклянная лестница" },
                            }
                        },
                        --#endregion

                        --#region ВНЕШНЯЯ ЛЕСТНИЦА ГРУЗОВОГО СУДНА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_CORR_STAIRS_EXT_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНЕШНЯЯ ЛЕСТНИЦА ГРУЗОВОГО СУДНА
                                { "Russian", "ВНЕШНЯЯ ЛЕСТНИЦА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_CORR_STAIRS_EXT_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Внешняя лестница грузового судна
                                { "Russian", "Внешняя лестница" },
                            }
                        },
                        --#endregion

                        --#region ВНУТРЕННЯЯ ПЕРЕБОРКА ГРУЗОВОГО СУДНА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_FACE_WALL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНУТРЕННЯЯ ПЕРЕБОРКА ГРУЗОВОГО СУДНА
                                { "Russian", "ВНУТРЕННЯЯ ПЕРЕБОРКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_FACE_WALL_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Внутренняя переборка грузового судна
                                { "Russian", "Внутренняя переборка" },
                            }
                        },
                        --#endregion

                        --#region МОДУЛЬ ЛЕСТНИЦЫ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_LADDER_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МОДУЛЬ ЛЕСТНИЦЫ
                                { "Russian", "ВЕРТИКАЛЬНАЯ ЛЕСТНИЦА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_LADDER_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль лестницы
                                { "Russian", "Вертикальная лестница" },
                            }
                        },
                        --#endregion

                        --#region ОТСЕК ГАЛАКТИЧЕСКОЙ ТОРГОВЛИ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_SHOP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОТСЕК ГАЛАКТИЧЕСКОЙ ТОРГОВЛИ
                                -- GALACTIC TRADE ROOM
                                { "Russian", "ОТСЕК ТОРГОВЛИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_SHOP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отсек галактической торговли
                                { "Russian", "Отсек торговли" },
                            }
                        },
                        --#endregion

                        --#region ЗАЛ КОМАНДОВАНИЯ ФЛОТОМ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_FLEET_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЗАЛ КОМАНДОВАНИЯ ФЛОТОМ
                                { "Russian", "ЗАЛ КОМАНДОВАНИЯ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_FLEET_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Зал командования флотом
                                { "Russian", "Зал командования" },
                            }
                        },
                        --#endregion

                        --#region КАМЕРА ТЕЛЕПОРТА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_TELEPO_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕРА ТЕЛЕПОРТА
                                -- TELEPORT CHAMBER
                                { "Russian", "КОМНАТА ТЕЛЕПОРТАЦИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_TELEPO_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Камера телепорта
                                { "Russian", "Комната телепортации" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_TELEPO_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Устройство перемещения материи на дальние расстояния
                                -- Long-Distance Matter Transfer Device
                                { "Russian", "Устройство перемещения материи" },
                            }
                        },
                        --#endregion

                        --#region ОТСЕК МОДИФИКАТОРА ВНЕШНОСТИ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_DRESS_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОТСЕК МОДИФИКАТОРА ВНЕШНОСТИ
                                -- APPEARANCE MODIFIER ROOM
                                { "Russian", "ГАРДЕРОБНЫЙ ОТСЕК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_DRESS_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отсек модификатора внешности
                                { "Russian", "Гардеробный отсек" },
                            }
                        },
                        --#endregion

                        --#region ОТСЕК НАУЧНОГО СПЕЦИАЛИСТА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_NPCSCI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОТСЕК НАУЧНОГО СПЕЦИАЛИСТА
                                -- SCIENCE SPECIALIST'S ROOM
                                { "Russian", "КОМНАТА УЧЕНОГО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_NPCSCI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отсек научного специалиста
                                { "Russian", "Комната ученого" },
                            }
                        },
                        --#endregion

                        --#region КАМЕРА ДЛЯ ВЫРАЩИВАНИЯ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_PLANT1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕРА ДЛЯ ВЫРАЩИВАНИЯ
                                -- CULTIVATION CHAMBER
                                { "Russian", "ТЕПЛИЦА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_PLANT1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Камера для выращивания
                                { "Russian", "Теплица" },
                            }
                        },
                        --#endregion

                        --#region ДВОЙНАЯ КАМЕРА ДЛЯ ВЫРАЩИВАНИЯ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_PLANT0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВОЙНАЯ КАМЕРА ДЛЯ ВЫРАЩИВАНИЯ
                                -- DOUBLE CULTIVATION CHAMBER
                                { "Russian", "РАСШИРЕННАЯ ТЕПЛИЦА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_PLANT0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двойная камера для выращивания
                                { "Russian", "Расширенная теплица" },
                            }
                        },
                        --#endregion

                        --#region ОТСЕК ЗВЕЗДНОГО ИЗВЛЕКАТЕЛЯ
                        -- слово extractor не нужно было дословно переводить - это отсылка к "Экстрактор Сокслета"
                        -- т.к. такое устройство существует в единственном виде в игре, то можно и без слова отсек
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_EXTR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОТСЕК ЗВЕЗДНОГО ИЗВЛЕКАТЕЛЯ
                                -- STELLAR EXTRACTOR ROOM
                                { "Russian", "ЗВЕЗДНЫЙ ЭКСТРАКТОР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_EXTR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Отсек звездного извлекателя
                                { "Russian", "Звездный экстрактор" },
                            }
                        },
                        --#endregion

                        --#region ОРБИТАЛЬНЫЙ МАТЕРИАЛИЗАТОР ВЕЗДЕХОДОВ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_VEHICLE_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОРБИТАЛЬНЫЙ МАТЕРИАЛИЗАТОР ВЕЗДЕХОДОВ
                                -- ORBITAL EXOCRAFT MATERIALISER
                                { "Russian", "ОРБИТАЛЬНЫЙ МАТЕРИАЛИЗАТОР" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_VEHICLE_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Орбитальный материализатор вездеходов
                                { "Russian", "Орбитальный материализатор" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_VEHICLE_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Модуль быстрого вызова для грузового судна
                                -- Rapid Deployment Freighter Module
                                { "Russian", "Модуль быстрого развертывания" },
                            }
                        },
                        --#endregion

                        --#region Отсеки расширения
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_BIO_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БИОЛОГИЧЕСКИЙ ОТСЕК (РАСШИРЕНИЕ)
                                -- BIOLOGICAL ROOM (EXPANSION)
                                { "Russian", "БИОЛОГИЧЕСКИЙ ЗАЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_BIO_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Биологический отсек (расширение)
                                { "Russian", "Биологический зал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_TECH_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТЕХНОЛОГИЧЕСКИЙ ОТСЕК (РАСШИРЕНИЕ)
                                -- TECHNOLOGY ROOM (EXPANSION)
                                { "Russian", "ТЕХНОЛОГИЧЕСКИЙ ЗАЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_TECH_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Технологический отсек (расширение)
                                { "Russian", "Технологический зал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_IND_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПРОМЫШЛЕННЫЙ ОТСЕК (РАСШИРЕНИЕ)
                                -- INDUSTRIAL ROOM (EXPANSION)
                                { "Russian", "ПРОМЫШЛЕННЫЙ ЗАЛ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_IND_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Промышленный отсек (расширение)
                                { "Russian", "Промышленный зал" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_IND1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВАРИАНТ ОТСЕКА РАСШИРЕНИЯ
                                -- EXPANSION ROOM VARIANT
                                { "Russian", "ВАРИАНТ ПРОМЫШЛЕННОГО ЗАЛА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_FRE_ROOM_IND1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Вариант отсека расширения
                                -- Expansion Room Variant
                                { "Russian", "Вариант промышленного зала" },
                            }
                        },
                        --#endregion

                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC8_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC8_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_STATION_PART_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Декоративная имитация космической станции
                                -- Synthetic Space Station Decoration
                                { "Russian", "Декор космической станции" },
                            }
                        },

                        --#region БРЕВЕНЧАТЫЕ СТРОЕНИЯ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF_M_WIN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- БРЕВЕНЧАТАЯ КРЫША СО СВЕТОВЫМ ЛЮКОМ
                                { "Russian", "КРЫША С ЛЮКОМ" }, -- с люком... с Люком Скайворкером =)))
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_T_ROOF_M_WIN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Бревенчатая крыша со световым люком
                                { "Russian", "Крыша с люком" },
                            }
                        },
                        --#endregion

                        --#region КАМЕННЫЕ СТРОЕНИЯ
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF_M_WIN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КАМЕННАЯ КРЫША СО СВЕТОВЫМ ЛЮКОМ
                                { "Russian", "КРЫША С ЛЮКОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_S_ROOF_M_WIN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Каменная крыша со световым люком
                                { "Russian", "Крыша с люком" },
                            }
                        },
                        --#endregion

                        --#region СТРОЕНИЯ ИЗ СПЛАВА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF_M_WIN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫША ИЗ СПЛАВА СО СВЕТОВЫМ ЛЮКОМ
                                -- ALLOY SKYLIGHT ROOF
                                { "Russian", "КРЫША С ЛЮКОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_F_ROOF_M_WIN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыша из сплава со световым люком
                                { "Russian", "Крыша с люком" },
                            }
                        },
                        --#endregion
                    }
                },
                { -- LANGUAGE/NMS_LOC9_RUSSIAN.MBIN
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE/NMS_LOC9_RUSSIAN.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region СТЕНДЫ ЭКСПОНАТЫ ВИТРИНЫ

                        --#region UI_FOS_SOLO_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_SOLO_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВИТРИНА (%NAME%)
                                { "Russian", "ВИТРИНА ДЛЯ КОСТИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_SOLO_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Витрина (%NAME%)
                                { "Russian", "Витрина для кости" },
                            }
                        },
                        --#endregion

                        --#region UI_FOS_FINISHED_NAME
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_FINISHED_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ЭКСПОНАТ (%NAME%)
                                -- %NAME% EXHIBIT
                                { "Russian", "ЭКСПОНАТ %NAME%" },
                                --{ "Russian", "“%NAME%”" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_FINISHED_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Экспонат (%NAME%)
                                -- %NAME% Exhibit
                                { "Russian", "Экспонат %NAME%" },
                            }
                        },
                        --#endregion

                        -- как обычно, это не влезает, если описание экспоната слишком большое
                        -- т.к. текст урезается, а самое главное - знание, что его можно разместить на базе можно вычитать из инструкции в каталоге. поэтому полностью убираем
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_FINISHED_DESC" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- %CRE_DESC%&#xA;&#xA;Этот &lt;STELLAR&gt;собранный окаменелый экспонат&lt;&gt; можно продать, обменять или разместить на любой &lt;TECHNOLOGY&gt;базе с возможностью заселения&lt;&gt;.
                                -- %CRE_DESC%&#xA;&#xA;This &lt;STELLAR&gt;curated fossil exhibit&lt;&gt; can be sold, traded, or re-deployed within any &lt;TECHNOLOGY&gt;habitable base&lt;&gt;.
                                --{ "Russian", "%CRE_DESC%&#xA;&#xA;Можно продать, обменять или разместить на &lt;TECHNOLOGY&gt;базе&lt;&gt;." },
                                { "Russian", "%CRE_DESC%" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_BIRD_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОКАМЕНЕЛЫЙ СКЕЛЕТ ЛЕТАЮЩЕГО СУЩЕСТВА
                                -- AVIAN FOSSIL DISPLAY
                                { "Russian", "СТЕНД СКЕЛЕТА ПТИЦЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_BIRD_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окаменелый скелет летающего существа
                                -- Avian Fossil Display
                                { "Russian", "Стенд скелета птицы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_GRUN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОКАМЕНЕЛЫЙ СКЕЛЕТ ПРОТОСУЩЕСТВА
                                -- PROTOFORM FOSSIL DISPLAY
                                { "Russian", "СТЕНД СКЕЛЕТА ПРОТОСУЩЕСТВА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_GRUN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окаменелый скелет протосущества
                                -- Protoform Fossil Display
                                { "Russian", "Стенд скелета протосущества" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_QUAD_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОКАМЕНЕЛЫЙ СКЕЛЕТ ЧЕТВЕРОНОГОГО ЖИВОТНОГО
                                -- QUADRUPED FOSSIL DISPLAY
                                { "Russian", "СТЕНД СКЕЛЕТА ЧЕТВЕРОНОГОГО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_QUAD_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окаменелый скелет четвероногого животного
                                -- Quadruped Fossil Display
                                { "Russian", "Стенд скелета четвероногого" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_WORM_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОКАМЕНЕЛЫЙ СКЕЛЕТ РЕПТИЛИИ
                                -- REPTILIAN FOSSIL DISPLAY
                                { "Russian", "СТЕНД СКЕЛЕТА РЕПТИЛИИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_WORM_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окаменелый скелет рептилии
                                { "Russian", "Стенд скелета рептилии" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_BI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОКАМЕНЕЛЫЙ СКЕЛЕТ ДВУНОГОГО ЖИВОТНОГО
                                -- BIPED FOSSIL DISPLAY
                                { "Russian", "СТЕНД СКЕЛЕТА ДВУНОГОГО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "UI_FOS_BI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окаменелый скелет двуногого животного
                                { "Russian", "Стенд скелета двуногого" },
                            }
                        },
                        --#endregion

                        --#region СТРОЕНИЯ ИЗ ХЛАМА
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_BUILDERS_SUB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Переработанный строительный компонент
                                -- Recycled Construction Component
                                { "Russian", "Строительное изделие из хлама" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТЕНА ИЗ ХЛАМА
                                { "Russian", "СТЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALL_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стена из хлама
                                { "Russian", "Стена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТЕНА ИЗ ХЛАМА (ОСНОВАНИЕ)
                                { "Russian", "СТЕНА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стена из хлама (основание)
                                { "Russian", "Стена (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLM_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТЕНА ИЗ ХЛАМА (СЕРЕДИНА)
                                { "Russian", "СТЕНА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLM_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стена из хлама (середина)
                                { "Russian", "Стена (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLT_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТЕНА ИЗ ХЛАМА (ВЕРХ)
                                { "Russian", "СТЕНА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLT_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стена из хлама (верх)
                                { "Russian", "Стена (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALL_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОНКАЯ СТЕНА ИЗ ХЛАМА
                                { "Russian", "ТОНКАЯ СТЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALL_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тонкая стена из хлама
                                { "Russian", "Тонкая стена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLB_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОНКАЯ СТЕНА ИЗ ХЛАМА (ОСНОВАНИЕ)
                                { "Russian", "ТОНКАЯ СТЕНА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLB_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тонкая стена из хлама (основание)
                                { "Russian", "Тонкая стена (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLM_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОНКАЯ СТЕНА ИЗ ХЛАМА (СЕРЕДИНА)
                                { "Russian", "ТОНКАЯ СТЕНА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLM_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тонкая стена из хлама (середина)
                                { "Russian", "Тонкая стена (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLT_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТОНКАЯ СТЕНА ИЗ ХЛАМА (ВЕРХ)
                                { "Russian", "ТОНКАЯ СТЕНА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLT_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Тонкая стена из хлама (верх)
                                { "Russian", "Тонкая стена (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALL_Q_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МАЛАЯ СТЕНА ИЗ ХЛАМА А
                                { "Russian", "МАЛАЯ СТЕНА A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALL_Q_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Малая стена из хлама А
                                { "Russian", "Малая стена A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALL_Q1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МАЛАЯ СТЕНА ИЗ ХЛАМА Б
                                { "Russian", "МАЛАЯ СТЕНА B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALL_Q1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Малая стена из хлама Б
                                { "Russian", "Малая стена B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALL_Q_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРОТКАЯ СТЕНА ИЗ ХЛАМА А
                                { "Russian", "КОРОТКАЯ СТЕНА A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALL_Q_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Короткая стена из хлама А
                                { "Russian", "Короткая стена A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALL_Q_H1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОРОТКАЯ СТЕНА ИЗ ХЛАМА Б
                                { "Russian", "КОРОТКАЯ СТЕНА B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALL_Q_H1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Короткая стена из хлама Б
                                { "Russian", "Короткая стена B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLDIAGONAL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НАКЛОННАЯ ПАНЕЛЬ ИЗ ХЛАМА
                                { "Russian", "НАКЛОННАЯ ПАНЕЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLDIAGONAL_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наклонная панель из хлама
                                { "Russian", "Наклонная панель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLB_TRI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НАКЛОННАЯ ПАНЕЛЬ ИЗ ХЛАМА (ОСНОВАНИЕ)
                                { "Russian", "НАКЛОННАЯ ПАНЕЛЬ (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLB_TRI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наклонная панель из хлама (основание)
                                { "Russian", "Наклонная панель (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLM_TRI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НАКЛОННАЯ ПАНЕЛЬ ИЗ ХЛАМА (СЕРЕДИНА)
                                { "Russian", "НАКЛОННАЯ ПАНЕЛЬ (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLM_TRI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наклонная панель из хлама (середина)
                                { "Russian", "Наклонная панель (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLT_TRI_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НАКЛОННАЯ ПАНЕЛЬ ИЗ ХЛАМА (ВЕРХ)
                                { "Russian", "НАКЛОННАЯ ПАНЕЛЬ (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLT_TRI_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Наклонная панель из хлама (верх)
                                { "Russian", "Наклонная панель (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALL_WINDOW_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОКНО ИЗ ХЛАМА
                                { "Russian", "ОКНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALL_WINDOW_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окно из хлама
                                { "Russian", "Окно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLB_WIN0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОКНО ИЗ ХЛАМА (ОСНОВАНИЕ)
                                { "Russian", "ОКНО (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLB_WIN0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окно из хлама (основание)
                                { "Russian", "Окно (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLM_WIN0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОКНО ИЗ ХЛАМА (СЕРЕДИНА)
                                { "Russian", "ОКНО (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLM_WIN0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окно из хлама (середина)
                                { "Russian", "Окно (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLT_WIN0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ОКНО ИЗ ХЛАМА (ВЕРХ)
                                { "Russian", "ОКНО (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLT_WIN0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Окно из хлама (верх)
                                { "Russian", "Окно (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALL_WIN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НЕСИММЕТРИЧНОЕ ОКНО ИЗ ХЛАМА
                                { "Russian", "НЕРАВНОМЕРНОЕ ОКНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALL_WIN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Несимметричное окно из хлама
                                { "Russian", "Неравномерное окно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLB_WIN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НЕСИММЕТРИЧНОЕ ОКНО ИЗ ХЛАМА (ОСНОВАНИЕ)
                                { "Russian", "НЕРАВНОМЕРНОЕ ОКНО (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLB_WIN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Несимметричное окно из хлама (основание)
                                { "Russian", "Неравномерное окно (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLM_WIN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НЕСИММЕТРИЧНОЕ ОКНО ИЗ ХЛАМА (СЕРЕДИНА)
                                { "Russian", "НЕРАВНОМЕРНОЕ ОКНО (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLM_WIN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Несимметричное окно из хлама (середина)
                                { "Russian", "Неравномерное окно (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLT_WIN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НЕСИММЕТРИЧНОЕ ОКНО ИЗ ХЛАМА (ВЕРХ)
                                { "Russian", "НЕРАВНОМЕРНОЕ ОКНО (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLT_WIN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Несимметричное окно из хлама (верх)
                                { "Russian", "Неравномерное окно (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALL_WIN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВОЙНОЕ ОКНО ИЗ ХЛАМА
                                { "Russian", "ДВОЙНОЕ ОКНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALL_WIN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двойное окно из хлама
                                { "Russian", "Двойное окно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLB_WIN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВОЙНОЕ ОКНО ИЗ ХЛАМА (ОСНОВАНИЕ)
                                { "Russian", "ДВОЙНОЕ ОКНО (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLB_WIN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двойное окно из хлама (основание)
                                { "Russian", "Двойное окно (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLM_WIN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВОЙНОЕ ОКНО ИЗ ХЛАМА (СЕРЕДИНА)
                                { "Russian", "ДВОЙНОЕ ОКНО (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLM_WIN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двойное окно из хлама (середина)
                                { "Russian", "Двойное окно (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLT_WIN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВОЙНОЕ ОКНО ИЗ ХЛАМА (ВЕРХ)
                                { "Russian", "ДВОЙНОЕ ОКНО (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLT_WIN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Двойное окно из хлама (верх)
                                { "Russian", "Двойное окно (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALL_WIN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГОРИЗОНТАЛЬНОЕ ОКНО ИЗ ХЛАМА
                                { "Russian", "ГОРИЗОНТАЛЬНОЕ ОКНО" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALL_WIN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Горизонтальное окно из хлама
                                { "Russian", "Горизонтальное окно" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLB_WIN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГОРИЗОНТАЛЬНОЕ ОКНО ИЗ ХЛАМА (ОСНОВАНИЕ)
                                { "Russian", "ГОРИЗОНТАЛЬНОЕ ОКНО (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLB_WIN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Горизонтальное окно из хлама (основание)
                                { "Russian", "Горизонтальное окно (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLM_WIN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГОРИЗОНТАЛЬНОЕ ОКНО ИЗ ХЛАМА (СЕРЕДИНА)
                                { "Russian", "ГОРИЗОНТАЛЬНОЕ ОКНО (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLM_WIN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Горизонтальное окно из хлама (середина)
                                { "Russian", "Горизонтальное окно (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLT_WIN3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ГОРИЗОНТАЛЬНОЕ ОКНО ИЗ ХЛАМА (ВЕРХ)
                                { "Russian", "ГОРИЗОНТАЛЬНОЕ ОКНО (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_WALLT_WIN3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Горизонтальное окно из хлама (верх)
                                { "Russian", "Горизонтальное окно (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_CHEV_WALL_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫСТУПАЮЩАЯ СТЕНА ИЗ ХЛАМА
                                { "Russian", "ВЫПУКЛАЯ СТЕНА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_CHEV_WALL_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выступающая стена из хлама
                                { "Russian", "Выпуклая стена" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_CHEV_WALL_H_C_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЕРХ ВЫСТУПАЮЩЕЙ СТЕНЫ ИЗ ХЛАМА
                                { "Russian", "КРЫШКА ВЫПУКЛОЙ СТЕНЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_CHEV_WALL_H_C_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Верх выступающей стены из хлама
                                { "Russian", "Крышка выпуклой стены" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_CANOPY_WALL0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НАВЕС ИЗ ХЛАМА
                                { "Russian", "НАВЕС" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_CANOPY_WALL0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Навес из хлама
                                { "Russian", "Навес" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_FLOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- НАПОЛЬНАЯ ПАНЕЛЬ ИЗ ХЛАМА
                                { "Russian", "НАПОЛЬНАЯ ПАНЕЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_FLOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Напольная панель из хлама
                                { "Russian", "Напольная панель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_FLOOR_Q_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МАЛАЯ ПАНЕЛЬ ИЗ ХЛАМА
                                { "Russian", "МАЛАЯ ПАНЕЛЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_FLOOR_Q_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Малая панель из хлама
                                { "Russian", "Малая панель" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_TRIFLOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ТРЕУГОЛЬНИК ИЗ ХЛАМА
                                { "Russian", "ТРЕУГОЛЬНИК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_TRIFLOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Треугольник из хлама
                                { "Russian", "Треугольник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_TRIFLOOR_Q_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- МАЛЫЙ ТРЕУГОЛЬНИК ИЗ ХЛАМА
                                { "Russian", "МАЛЫЙ ТРЕУГОЛЬНИК" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_TRIFLOOR_Q_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Малый треугольник из хлама
                                { "Russian", "Малый треугольник" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_GFLOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТЕКЛЯННАЯ ПАНЕЛЬ С РАМОЙ ИЗ ХЛАМА
                                { "Russian", "СТЕКЛЯННАЯ ПАНЕЛЬ С РАМОЙ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_GFLOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стеклянная панель с рамой из хлама
                                { "Russian", "Стеклянная панель с рамой" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_RAMP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- РАМПА ИЗ ХЛАМА
                                { "Russian", "РАМПА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_RAMP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Рампа из хлама
                                { "Russian", "Рампа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_RAMP_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОЛУРАМПА ИЗ ХЛАМА
                                { "Russian", "ПОЛУРАМПА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_RAMP_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Полурампа из хлама
                                { "Russian", "Полурампа" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_RAMP_Q_TOP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПЛАТФОРМА ПОЛУРАМПЫ ИЗ ХЛАМА
                                { "Russian", "ПЛАТФОРМА ПОЛУРАМПЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_RAMP_Q_TOP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Платформа полурампы из хлама
                                { "Russian", "Платформа полурампы" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫША ИЗ ХЛАМА
                                { "Russian", "КРЫША" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыша из хлама
                                { "Russian", "Крыша" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫША ИЗ ХЛАМА
                                { "Russian", "КРЫША" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыша из хлама
                                { "Russian", "Крыша" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫША ИЗ ХЛАМА
                                { "Russian", "КРЫША" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыша из хлама
                                { "Russian", "Крыша" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF3_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫША ИЗ ХЛАМА
                                { "Russian", "КРЫША" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF3_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыша из хлама
                                { "Russian", "Крыша" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF4_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫША ИЗ ХЛАМА
                                { "Russian", "КРЫША" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF4_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыша из хлама
                                { "Russian", "Крыша" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF5_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫША ИЗ ХЛАМА
                                { "Russian", "КРЫША" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF5_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыша из хлама
                                { "Russian", "Крыша" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF6_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫША ИЗ ХЛАМА
                                { "Russian", "КРЫША" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF6_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыша из хлама
                                { "Russian", "Крыша" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF7_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫША ИЗ ХЛАМА
                                { "Russian", "КРЫША" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF7_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыша из хлама
                                { "Russian", "Крыша" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF8_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫША ИЗ ХЛАМА
                                { "Russian", "КРЫША" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF8_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыша из хлама
                                { "Russian", "Крыша" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF_M_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПАНЕЛЬ КРЫШИ ИЗ ХЛАМА
                                { "Russian", "ПАНЕЛЬ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF_M_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Панель крыши из хлама
                                { "Russian", "Панель крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF_C_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- УГОЛ КРЫШИ ИЗ ХЛАМА
                                { "Russian", "УГОЛ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF_C_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Угол крыши из хлама
                                { "Russian", "Угол крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF_IC_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВНУТРЕННИЙ УГОЛ КРЫШИ ИЗ ХЛАМА
                                { "Russian", "ВНУТРЕННИЙ УГОЛ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF_IC_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Внутренний угол крыши из хлама
                                { "Russian", "Внутренний угол крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF_M_Q_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПАНЕЛЬ ПОКАТОЙ КРЫШИ ИЗ ХЛАМА
                                { "Russian", "ПАНЕЛЬ ПОКАТОЙ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF_M_Q_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Панель покатой крыши из хлама
                                { "Russian", "Панель покатой крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF_E_Q_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ШИПЕЦ ПОКАТОЙ КРЫШИ ИЗ ХЛАМА
                                { "Russian", "ШИПЕЦ ПОКАТОЙ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF_E_Q_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Шипец покатой крыши из хлама
                                { "Russian", "Шипец покатой крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF_M_CAP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КОНЕК КРЫШИ ИЗ ХЛАМА
                                { "Russian", "КОНЕК КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF_M_CAP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Конек крыши из хлама
                                { "Russian", "Конек крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF_E_CAP_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ШИПЕЦ КРЫШИ ИЗ ХЛАМА
                                { "Russian", "ШИПЕЦ КРЫШИ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF_E_CAP_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Шипец крыши из хлама
                                { "Russian", "Шипец крыши" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF_M_WIN_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- КРЫША ИЗ ХЛАМА СО СВЕТОВЫМ ЛЮКОМ
                                { "Russian", "КРЫША С ЛЮКОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ROOF_M_WIN_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Крыша из хлама со световым люком
                                { "Russian", "Крыша с люком" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ ХЛАМА А
                                { "Russian", "ДВЕРЬ A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из хлама А
                                { "Russian", "Дверь A" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORB0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ ХЛАМА А (ОСНОВАНИЕ)
                                { "Russian", "ДВЕРЬ A (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORB0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из хлама А (основание)
                                { "Russian", "Дверь A (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORM0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ ХЛАМА А (СЕРЕДИНА)
                                { "Russian", "ДВЕРЬ A (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORM0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из хлама А (середина)
                                { "Russian", "Дверь A (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORT0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ ХЛАМА А (ВЕРХ)
                                { "Russian", "ДВЕРЬ A (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORT0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из хлама А (верх)
                                { "Russian", "Дверь A (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOOR1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ ХЛАМА Б
                                { "Russian", "ДВЕРЬ B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOOR1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из хлама Б
                                { "Russian", "Дверь B" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORB1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ ХЛАМА Б (ОСНОВАНИЕ)
                                { "Russian", "ДВЕРЬ B (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORB1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из хлама Б (основание)
                                { "Russian", "Дверь B (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORM1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ ХЛАМА Б (СЕРЕДИНА)
                                { "Russian", "ДВЕРЬ B (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORM1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из хлама Б (середина)
                                { "Russian", "Дверь B (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORT1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ ХЛАМА Б (ВЕРХ)
                                { "Russian", "ДВЕРЬ B (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORT1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из хлама Б (верх)
                                { "Russian", "Дверь B (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_CHEV_DOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫСТУПАЮЩАЯ ДВЕРЬ ИЗ ХЛАМА
                                { "Russian", "ВЫПУКЛАЯ ДВЕРЬ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_CHEV_DOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выступающая дверь из хлама
                                { "Russian", "Выпуклая дверь" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOOR_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРНОЙ ПРОЕМ ИЗ ХЛАМА
                                { "Russian", "ДВЕРНОЙ ПРОЕМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOOR_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверной проем из хлама
                                { "Russian", "Дверной проем" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORB0_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРНОЙ ПРОЕМ ИЗ ХЛАМА (ОСНОВАНИЕ)
                                { "Russian", "ДВЕРНОЙ ПРОЕМ (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORB0_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверной проем из хлама (основание)
                                { "Russian", "Дверной проем (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORM0_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРНОЙ ПРОЕМ ИЗ ХЛАМА (СЕРЕДИНА)
                                { "Russian", "ДВЕРНОЙ ПРОЕМ (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORM0_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверной проем из хлама (середина)
                                { "Russian", "Дверной проем (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORT0_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРНОЙ ПРОЕМ ИЗ ХЛАМА (ВЕРХ)
                                { "Russian", "ДВЕРНОЙ ПРОЕМ (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORT0_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверной проем из хлама (верх)
                                { "Russian", "Дверной проем (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORWINDOW_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ФАСАД ИЗ ХЛАМА
                                { "Russian", "ФАСАД" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORWINDOW_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фасад из хлама
                                { "Russian", "Фасад" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORWINB0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ФАСАД ИЗ ХЛАМА (ОСНОВАНИЕ)
                                { "Russian", "ФАСАД (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORWINB0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фасад из хлама (основание)
                                { "Russian", "Фасад (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORWINM0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ФАСАД ИЗ ХЛАМА (СЕРЕДИНА)
                                { "Russian", "ФАСАД (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORWINM0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фасад из хлама (середина)
                                { "Russian", "Фасад (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORWINT0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ФАСАД ИЗ ХЛАМА (ВЕРХ)
                                { "Russian", "ФАСАД (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_DOORWINT0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Фасад из хлама (верх)
                                { "Russian", "Фасад (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_GDOOR_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ ХЛАМА С ПРИВОДОМ
                                { "Russian", "ДВЕРЬ С ПРИВОДОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_GDOOR_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из хлама с приводом
                                { "Russian", "Дверь с приводом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_GDOORB0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ ХЛАМА С ПРИВОДОМ (ОСНОВАНИЕ)
                                { "Russian", "ДВЕРЬ С ПРИВОДОМ (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_GDOORB0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из хлама с приводом (основание)
                                { "Russian", "Дверь с приводом (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_GDOORM0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ ХЛАМА С ПРИВОДОМ (СЕРЕДИНА)
                                { "Russian", "ДВЕРЬ С ПРИВОДОМ (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_GDOORM0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из хлама с приводом (середина)
                                { "Russian", "Дверь с приводом (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_GDOORT0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ДВЕРЬ ИЗ ХЛАМА С ПРИВОДОМ (ВЕРХ)
                                { "Russian", "ДВЕРЬ С ПРИВОДОМ (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_GDOORT0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Дверь из хлама с приводом (верх)
                                { "Russian", "Дверь с приводом (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ARCH_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- АРКА ИЗ ХЛАМА
                                { "Russian", "АРКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ARCH_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Арка из хлама
                                { "Russian", "Арка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ARCHB_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- АРКА ИЗ ХЛАМА (ОСНОВАНИЕ)
                                { "Russian", "АРКА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ARCHB_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Арка из хлама (основание)
                                { "Russian", "Арка (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ARCHM_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- АРКА ИЗ ХЛАМА (СЕРЕДИНА)
                                { "Russian", "АРКА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ARCHM_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Арка из хлама (середина)
                                { "Russian", "Арка (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ARCHT_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- АРКА ИЗ ХЛАМА (ВЕРХ)
                                { "Russian", "АРКА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ARCHT_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Арка из хлама (верх)
                                { "Russian", "Арка (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ARCH_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОЛУАРКА ИЗ ХЛАМА
                                { "Russian", "ПОЛУАРКА" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ARCH_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Полуарка из хлама
                                { "Russian", "Полуарка" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ARCHB_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОЛУАРКА ИЗ ХЛАМА (ОСНОВАНИЕ)
                                { "Russian", "ПОЛУАРКА (НИЗ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ARCHB_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Полуарка из хлама (основание)
                                { "Russian", "Полуарка (низ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ARCHM_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОЛУАРКА ИЗ ХЛАМА (СЕРЕДИНА)
                                { "Russian", "ПОЛУАРКА (ЦЕНТР)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ARCHM_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Полуарка из хлама (середина)
                                { "Russian", "Полуарка (центр)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ARCHT_H_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ПОЛУАРКА ИЗ ХЛАМА (ВЕРХ)
                                { "Russian", "ПОЛУАРКА (ВЕРХ)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_ARCHT_H_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Полуарка из хлама (верх)
                                { "Russian", "Полуарка (верх)" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_CHEV_WIN0_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫСТУПАЮЩЕЕ ОКНО ИЗ ХЛАМА
                                { "Russian", "ОКНО С ВЫСТУПОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_CHEV_WIN0_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выступающее окно из хлама
                                { "Russian", "Окно с выступом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_CHEV_WIN1_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫСТУПАЮЩЕЕ ГОРИЗ. ОКНО ИЗ ХЛАМА
                                { "Russian", "ГОРИЗОНТАЛЬНОЕ ОКНО С ВЫСТУПОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_CHEV_WIN1_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выступающее гориз. окно из хлама
                                { "Russian", "Горизонтальное окно с выступом" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_CHEV_WIN2_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- ВЫСТУПАЮЩЕЕ МАЛОЕ ОКНО ИЗ ХЛАМА
                                { "Russian", "МАЛОЕ ОКНО С ВЫСТУПОМ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_CHEV_WIN2_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Выступающее малое окно из хлама
                                { "Russian", "Малое окно с выступом" },
                            }
                        },
                        --#endregion

                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_PALLET_BRICK_NAME" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- СТОПКА МОНИТОРОВ
                                -- MONITOR STACK
                                { "Russian", "МОНИТОРЫ" },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "BLD_B_PALLET_BRICK_NAME_L" },
                            ["VALUE_CHANGE_TABLE"] = {
                                -- Стопка мониторов
                                { "Russian", "Мониторы" },
                            }
                        },
                    },
                },
            }
        }
    }
}
