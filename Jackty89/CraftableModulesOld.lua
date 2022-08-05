RECIPE_UI_FRIG_TOKEN =
[[
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="FARMPROD9" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="ROBOT1" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="142" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="ASTEROID3" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="142" />
        </Property>
      </Property>
]]

RECIPE_UI_SHIP_INV_TOKEN =
[[
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="FARMPROD9" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="ROBOT1" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="142" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="ASTEROID2" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="142" />
        </Property>
      </Property>
]]

RECIPE_UI_FREIGHT_INV_TOKEN =
[[
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="FARMPROD9" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="ROBOT1" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="142" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="ASTEROID1" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="142" />
        </Property>
      </Property>
]]

RECIPE_UI_REPAIR_KIT =
[[
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="FARMPROD9" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="ROBOT1" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="142" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="FUEL2" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="142" />
        </Property>
      </Property>
]]

RECIPE_UI_WEAPON_INV_TOKEN =
[[
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="FARMPROD9" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="ROBOT1" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="142" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="CATALYST2" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="142" />
        </Property>
      </Property>
]]

RECIPE_SUIT_INV_TOKEN =
[[
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="FARMPROD9" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="ROBOT1" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="142" />
        </Property>
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="CAVE2" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="142" />
        </Property>
      </Property>
]]

UNLOCK =
[[
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="REPAIRKIT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="WEAP_INV_TOKEN" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SUIT_INV_TOKEN" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="FRIG_TOKEN" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="SHIP_INV_TOKEN" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="FREI_INV_TOKEN" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]            = "Craftable Modules.pak",
["MOD_DESCRIPTION"]         = "Allows you to craft Rapair Kits, the Salvaged Frigate Module, the Cargo Bulkhead and the Storage Augmentation",
["MOD_AUTHOR"]              = "Methatronc",
["MODIFICATIONS"]           = 
    {
        {
            ["PAK_FILE_SOURCE"]     = "NMSARC.86055253.pak",
            ["MBIN_CHANGE_TABLE"]   = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]    = "LANGUAGE\NMS_LOC5_ENGLISH.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "UI_FRIG_TOKEN_DESC"},
                            ["PRECEDING_KEY_WORDS"] = "English",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Value", "A technology module crafted from the &lt;STELLAR&gt;proper blueprint&lt;&gt;, or harvested from the remains of a large interstellar starship. May be collected from &lt;STELLAR&gt;freighter crashsites&lt;&gt; or salvaged during &lt;STELLAR&gt;frigate expeditions&lt;&gt;.&#xA;&#xA;Useless in its current form, a &lt;TECHNOLOGY&gt;Research Station&lt;&gt; aboard your freighter may be able to convert it into useable technology."},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "UI_SHIP_INV_TOKEN_DESC"},
                            ["PRECEDING_KEY_WORDS"] = "English",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Value", "A technology module crafted from the &lt;STELLAR&gt;proper blueprint&lt;&gt;, or harvested from the remains of a &lt;STELLAR&gt;salvaged starship&lt;&gt;. May also be collected from &lt;STELLAR&gt;freighter crash sites&lt;&gt; or salvaged during &lt;STELLAR&gt;frigate expeditions&lt;&gt;.&#xA;&#xA;Can be used to expand starship storage capacity at the Space Station's &lt;TECHNOLOGY&gt;Starship Outfitter&lt;&gt;."},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "LANGUAGE\NMS_LOC6_ENGLISH.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "UI_FREIGHT_INV_TOKEN_DESC"},
                            ["PRECEDING_KEY_WORDS"] = "English",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Value", "A technology module crafted from the &lt;STELLAR&gt;proper blueprint&lt;&gt;, or harvested from the remains of an &lt;STELLAR&gt;abandoned freighter&lt;&gt; found floating in space. May also be salvaged during &lt;STELLAR&gt;frigate expeditions&lt;&gt;.&#xA;&#xA;Pre-packed nano-expanders fill out this portable unit and graft it to an existing freighter, increasing its &lt;STELLAR&gt;inventory capacity&lt;&gt;. Apply at your freighter's &lt;TECHNOLOGY&gt;Upgrade Terminal&lt;&gt;."},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "LANGUAGE\NMS_LOC5_FRENCH.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "UI_FRIG_TOKEN_DESC"},
                            ["PRECEDING_KEY_WORDS"] = "French",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Value", "Module technologique récupéré sur les vestiges d'un gros vaisseau interstellaire. Peut être obtenu sur les &lt;STELLAR&gt;sites de crash de cargos&lt;&gt; ou au cours d'&lt;STELLAR&gt;expéditions de frégates&lt;&gt;.&#xA;Bien qu'inutile sous sa forme actuelle, une &lt;TECHNOLOGY&gt;station de recherches&lt;&gt; à bord de votre cargo pourrait la convertir en technologie utilisable."},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "UI_SHIP_INV_TOKEN_DESC"},
                            ["PRECEDING_KEY_WORDS"] = "French",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Value", "Module technologique récolté dans les vestiges d'un &lt;STELLAR&gt;vaisseau récupéré&lt;&gt;. Peut être obtenu sur les &lt;STELLAR&gt;sites de crash de cargos&lt;&gt; ou au cours d'&lt;STELLAR&gt;expéditions de frégates&lt;&gt;.&#xA;&#xA;&#xA;Peut être utilisé pour améliorer la capacité de stockage du vaisseau auprès de l'&lt;TECHNOLOGY&gt;unité d'améliorations de vaisseau&lt;&gt; dans une station spatiale."},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "LANGUAGE\NMS_LOC6_FRENCH.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "UI_FREIGHT_INV_TOKEN_DESC"},
                            ["PRECEDING_KEY_WORDS"] = "French",
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"Value", "Module technologique fabriqué à partir du &lt;STELLAR&gt;plan adéquat&lt;&gt;, ou récupéré sur un &lt;STELLAR&gt;cargo abandonné&lt;&gt; qui dérivait dans l'espace. Peut être obtenu au cours d'&lt;STELLAR&gt;expéditions de frégates&lt;&gt;.&#xA;&#xA;Cette unité portable est remplie de nano-dispositifs d'expansion pré-emballés qui la greffent à un cargo existant, augmentant sa &lt;STELLAR&gt;capacité d'inventaire&lt;&gt;. Appliquez dans le &lt;TECHNOLOGY&gt;terminal d'améliorations&lt;&gt; de votre cargo."},
                            }
                        },
                    },
                },                
            },
        },
        {
            ["PAK_FILE_SOURCE"]     = "NMSARC.515F1D3.pak",
            ["MBIN_CHANGE_TABLE"]   = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREI_INV_TOKEN","CraftAmountMultiplier","1"},
                            ["LINE_OFFSET"]         = "+1",
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREI_INV_TOKEN","CraftAmountMultiplier","1"},
                            ["ADD"]               = RECIPE_UI_FREIGHT_INV_TOKEN,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREI_INV_TOKEN"},
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"BaseValue", "1042042"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SHIP_INV_TOKEN","CraftAmountMultiplier","1"},
                            ["LINE_OFFSET"]         = "+1",
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SHIP_INV_TOKEN","CraftAmountMultiplier","1"},
                            ["ADD"]               = RECIPE_UI_SHIP_INV_TOKEN,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SHIP_INV_TOKEN"},
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"BaseValue", "1042042"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FRIG_TOKEN","CraftAmountMultiplier","1"},
                            ["LINE_OFFSET"]         = "+1",
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FRIG_TOKEN","CraftAmountMultiplier","1"},
                            ["ADD"]               = RECIPE_UI_FRIG_TOKEN,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FRIG_TOKEN"},
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"BaseValue", "1042042"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "REPAIRKIT","CraftAmountMultiplier","1"},
                            ["LINE_OFFSET"]         = "+1",
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "REPAIRKIT","CraftAmountMultiplier","1"},
                            ["ADD"]               = RECIPE_UI_REPAIR_KIT,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WEAP_INV_TOKEN","CraftAmountMultiplier","1"},
                            ["LINE_OFFSET"]         = "+1",
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WEAP_INV_TOKEN","CraftAmountMultiplier","1"},
                            ["ADD"]               = RECIPE_UI_WEAPON_INV_TOKEN,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SUIT_INV_TOKEN","CraftAmountMultiplier","1"},
                            ["LINE_OFFSET"]         = "+1",
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SUIT_INV_TOKEN","CraftAmountMultiplier","1"},
                            ["ADD"]               = RECIPE_SUIT_INV_TOKEN,
                        },
                    },
                },
            },
        },
        {
            ["PAK_FILE_SOURCE"]     = "NMSARC.515F1D3.pak",
            ["MBIN_CHANGE_TABLE"]   = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "PRODFUEL2"},
                            ["LINE_OFFSET"]         = "+1",
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "PRODFUEL2"},
                            ["ADD"]               = UNLOCK,
                        },
                    },
                },
            },
        },
    }   
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE