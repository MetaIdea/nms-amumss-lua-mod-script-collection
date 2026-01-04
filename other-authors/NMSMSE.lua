Languages =
{
  ["English"] = "English",
  ["Italian"] = "Italian",
  ["French"]  = "French",
  ["Spanish"] = "Spanish",
  ["German"]  = "German",
  ["Russian"] = "Russian",
}

SubstanceOrProduct = { ["Substance"] = "Substance", ["Product"] =  "Product"}

-- Adjust this stuff to change how all of the extractors work --

-- TLDR: --
-- Speed is in SECONDS and MUST be a negative value, THE LOWER THE VALUE, THE FASTER THE EXTRACTOR FILLS
--Storage is self explanatory lol
gExtrSpeed =  -86400 -- 24hrs -3600 --1hr
gExtrCap = 9999 -- max cap

gExtrConfTable =
{
  DoExtrConf = { false, [[Would you like to set Extraction Speed and Capacity?]] },
  gExtrSpeed      = { gExtrSpeed, [[Extr Speed, (default: ]]..gExtrSpeed..[[ )
  enter a number less than or equal to -1  (Must be negative) :
  ]]},
  gExtrCap        = { gExtrCap, [[gExtrCap (default: ]]..gExtrCap..[[)
  enter a number between 1 and 9999 (inclusive):
  ]]}
}

DoExtrConf = GUIF( gExtrConfTable.DoExtrConf )
if DoExtrConf then
  gExtrSpeed = GUIF( gExtrConfTable.gExtrSpeed )
  gExtrCap = GUIF( gExtrConfTable.gExtrCap )
end

assert(type(gExtrSpeed) == "number" and gExtrSpeed <= -1, "Invalid Extractor Speed defined: Must be a numeric value less than -1")
assert(type(gExtrCap) == "number" and gExtrCap >= 1 and gExtrCap <= 9999, "Invalid Extractor Capacity defined: Must be a numeric value between 1 and 9999 (inclusive)")

-- Extr Speed is calculated as a countdown, the lower the countdown value, the faster the extractor fills up. Higher Capacity + Smaller gExtrSpeed = Higher Yields.
-- gExtrSpeed Default is -79200, or 22 hrs. I currently have it set to -3600, which is 1 hr
-- gExtrCap Default is 350, I set it to 9999.
-- You can adjust this stuff to suit your needs, just be aware that making the extractors too fast/too slow may break immersion


AddNewExtrRooms =
{
    {
        ["ProductID"]           = "FRE_ROOM_EMEXTR",
    ["Requirements"]        =
        {
      {"ASTEROID1",      "60", SubstanceOrProduct["Substance"]},
            {"ASTEROID2",      "45", SubstanceOrProduct["Substance"]},
      {"LAND3",       "40", SubstanceOrProduct["Substance"]},
        },
        ["Languages"] =
        {
            --          language                  name                      subtitle                                                description                                                                                                   UI Description--
            {Languages["English"], "Stellar Extractor: Exotic Materials", "Moar Useful Elements", "Naturally occurring in Stars, Helium is the product of the nuclear fusion of hydrogen atoms. New synthesis technologies allow for Helium to be created in refiners.", "Harvest Exotic Materials"},
            {Languages["French"], "Extracteur Stellaire : Matériaux Exotiques", "Plus d'Éléments Utiles", "Naturellement présent dans les étoiles, l'hélium est le produit de la fusion nucléaire des atomes d'hydrogène. De nouvelles technologies de synthèse permettent de créer de l'hélium dans les raffineries.", "Récoltez des Matériaux Exotiques"},
            {Languages["Italian"], "Estrattore Stellare: Materiali Esotici", "Elementi più Utili", "Presente naturalmente nelle stelle, l'elio è il prodotto della fusione nucleare degli atomi di idrogeno. Nuove tecnologie di sintesi consentono di creare elio nei raffinatori.", "Raccogli Materiali Esotici"},
            {Languages["Spanish"], "Extractor Estelar: Materiales Exóticos", "Más Elementos Útiles", "Presente de forma natural en las estrellas, el helio es el producto de la fusión nuclear de los átomos de hidrógeno. Las nuevas tecnologías de síntesis permiten crear helio en los refinadores.", "Cosecha Materiales Exóticos"},
            {Languages["German"], "Stellarer Extraktor: Exotische Materialien", "Mehr Nützliche Elemente", "Natürlich vorkommend in Sternen, ist Helium das Produkt der Kernfusion von Wasserstoffatomen. Neue Synthesetechnologien ermöglichen die Erzeugung von Helium in Raffinerien.", "Sammeln Sie Exotische Materialien"},
            {Languages["Russian"], "Звездный Экстрактор: Экзотические Материалы", "Больше Полезных Элементов", "Природным образом образующийся в звездах, гелий является продуктом ядерного синтеза атомов водорода. Новые технологии синтеза позволяют создавать гелий в рефайнерах.", "Добывайте Экзотические Материалы"}

        }
    },
  {
        ["ProductID"]           = "FRE_ROOM_GEXTR",
    ["Requirements"]        =
        {
      {"ASTEROID1",      "60", SubstanceOrProduct["Substance"]},
            {"ASTEROID2",      "45", SubstanceOrProduct["Substance"]},
      {"LAND3",       "40", SubstanceOrProduct["Substance"]},
        },
        ["Languages"] =
        {
            --          language                  name                      subtitle                                                description         --
            {Languages["English"], "Stellar Extractor: Gasses", "Moar Stellar Extractors", "A modified variant of the standard Stellar Extractor, this Extractor Harvests Gasses like Carbon, Di-Hydrogen, and Ammonia from matter-dense Nebulae.", "Harvest Space Gasses"},
      {Languages["French"], "Extracteur Stellaire : Gaz", "Moar extracteurs stellaires", "Une variante modifiée de l'extracteur stellaire standard, cet extracteur récolte des gaz comme le carbone, le di-hydrogène et l'ammoniac à partir de nébuleuses riches en matière.", "Récolte de gaz spatiaux"},
      {Languages["Italian"], "Estrattore Stellare: Gas", "Più Estrattori Stellari", "Una variante modificata dello Stellar Extractor standard, questo estrattore raccoglie gas come Carbonio, Di-Idrogeno e Ammoniaca da nebulose dense di materia.", "Raccogli Gas Spaziali"},
      {Languages["Spanish"], "Extractora Estelar: Gases", "Más extractoras estelares", "Una variante modificada del Extractor Estelar estándar, este extractor cosecha gases como Carbono, Di-Hidrógeno y Amoniaco de nebulosas densas en materia.", "Cosecha de gases espaciales"},
      {Languages["German"], "Stellar Extraktor: Gase", "Mehr Stellar Extraktoren", "Eine modifizierte Variante des Standard Stellar Extraktors, dieser Extraktor erntet Gase wie Kohlenstoff, Di-Wasserstoff und Ammoniak aus dichtem Nebel.", "Ernte von Weltraumgasen"},
      {Languages["Russian"], "Звездный экстрактор: газы", "Больше звездных экстракторов", "Измененный вариант стандартного звездного экстрактора, этот экстрактор собирает газы, такие как углерод, ди-водород и аммиак, из плотных туманностей.", "Сбор космических газов"}
        }
    },
  {
        ["ProductID"]           = "FRE_ROOM_MEXTR",
    ["Requirements"]        =
        {
      {"ASTEROID1",      "60", SubstanceOrProduct["Substance"]},
            {"ASTEROID2",      "45", SubstanceOrProduct["Substance"]},
      {"LAND3",       "40", SubstanceOrProduct["Substance"]},
        },
        ["Languages"] =
        {
            --          language                  name                      subtitle                                                description         --
            {Languages["English"], "Stellar Extractor: Metals", "Moar Stellar Extractors", "A modified variant of the standard Stellar Extractor, this Extractor Harvests Metals like Pure Ferrite, Cobalt, and Salt from matter-dense Nebulae.", "Harvest Deep Space Metals"},
      {Languages["French"], "Extracteur stellaire : Métaux", "Plus d'extracteurs stellaires", "Une variante modifiée de l'extracteur stellaire standard, cet extracteur récolte des métaux tels que la ferrite pure, le cobalt et le sel à partir de nébuleuses riches en matière.", "Récoltez des métaux en profondeur dans l'espace"},
      {Languages["Italian"], "Estrattore Stellare: Metalli", "Più Estrattori Stellari", "Una variante modificata dello standard Estrattore Stellare, questo Estrattore raccoglie metalli come la ferrite pura, il cobalto e il sale dalle nebulose dense di materia.", "Raccogli metalli profondi nello spazio"},
      {Languages["Spanish"], "Extractor Estelar: Metales", "Más Extractores Estelares", "Una variante modificada del Extractor Estelar estándar, este extractor cosecha metales como ferrita pura, cobalto y sal de nebulosas densas en materia.", "Cosecha metales profundos del espacio"},
      {Languages["German"], "Stellar Extraktor: Metalle", "Mehr Stellar Extraktoren", "Eine modifizierte Variante des Standard Stellar Extraktors, dieser Extraktor erntet Metalle wie Reine Ferrite, Kobalt und Salz aus materiedichten Nebeln.", "Ernte tiefe Raummetalle"},
      {Languages["Russian"], "Звездный экстрактор: металлы", "Больше звездных экстракторов", "Измененная версия стандартного звездного экстрактора, этот экстрактор собирает металлы, такие как чистый феррит, кобальт и соль из плотных туманностей материи.", "Собирайте глубокие космические металлы"}
        }
    },
  {
        ["ProductID"]           = "FRE_ROOM_SMEXTR",
    ["Requirements"]        =
        {
      {"ASTEROID1",      "60", SubstanceOrProduct["Substance"]},
            {"ASTEROID2",      "45", SubstanceOrProduct["Substance"]},
      {"LAND3",       "40", SubstanceOrProduct["Substance"]},
        },
        ["Languages"] =
        {
            --          language                  name                      subtitle                                                description         --
            {Languages["English"], "Stellar Extractor: Stellar Materials", "Moar Stellar Extractors", "A modified variant of the standard Stellar Extractor, this Extractor Harvests Stellar Materials like Copper, Cadmium, and Indium from matter-dense Nebulae.", "Harvest Stellar Materials"},
      {Languages["French"], "Extracteur Stellaire : Matériaux stellaires", "Moar extracteurs stellaires", "Une variante modifiée de l'extracteur stellaire standard, cet extracteur récolte des matériaux stellaires comme le cuivre, le cadmium et l'indium à partir de nébuleuses riches en matière.", "Récolte de matériaux stellaires"},
      {Languages["Italian"], "Estrattore Stellare: Materiali stellari", "Altri estrattori stellari", "Una variante modificata dello standard Estrattore Stellare, questo Estrattore raccoglie Materiali stellari come Rame, Cadmio e Indio dalle nebulose dense di materia.", "Raccolta di Materiali stellari"},
      {Languages["Spanish"], "Extractor Estelar: Materiales estelares", "Más extractores estelares", "Una variante modificada del Extractor Estelar estándar, este extractor recolecta materiales estelares como Cobre, Cadmio e Indio de nebulosas densas de materia.", "Recolección de materiales estelares"},
      {Languages["German"], "Sternenextraktor: Sternmaterialien", "Mehr Sternenextraktoren", "Eine modifizierte Variante des Standard-Sternenextraktors, dieser Extraktor erntet Sternmaterialien wie Kupfer, Cadmium und Indium aus materialreichen Nebeln.", "Ernte von Sternmaterialien"},
      {Languages["Russian"], "Звездный экстрактор: звездные материалы", "Еще звездные экстракторы", "Измененный вариант стандартного Звездного экстрактора, этот экстрактор собирает звездные материалы, такие как медь, кадмий и индий из плотных небул.", "Сбор звездных материалов"}
        }
    }
}

AddNewBBObjects =
{
    {
        ["BBObjectID"]              = "FRE_ROOM_EMEXTR",
    ["BBObjectFileName"]  = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/EMEXTRROOM/ROOM_EMEXTR_PLACEMENT.SCENE.MBIN"
    },
  {
        ["BBObjectID"]              = "FRE_ROOM_GEXTR",
    ["BBObjectFileName"]  = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/GEXTRROOM/ROOM_GEXTR_PLACEMENT.SCENE.MBIN"
    },
  {
        ["BBObjectID"]              = "FRE_ROOM_MEXTR",
    ["BBObjectFileName"]  = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/MEXTRROOM/ROOM_MEXTR_PLACEMENT.SCENE.MBIN"
    },
  {
        ["BBObjectID"]              = "FRE_ROOM_SMEXTR",
    ["BBObjectFileName"]  = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/SMEXTRROOM/ROOM_SMEXTR_PLACEMENT.SCENE.MBIN"
    }
}

AddNewBBParts =
{
  {
    ["Floor0ID"]            = "_FRE_ROOM_EMEXTR_FLOOR0",
    ["Floor0Path"]          = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/EMEXTRROOM/PARTS/FLOOR0.SCENE.MBIN"
  },
  {
    ["Floor0ID"]            = "_FRE_ROOM_GEXTR_FLOOR0",
    ["Floor0Path"]          = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/GEXTRROOM/PARTS/FLOOR0.SCENE.MBIN"
  },
  {
    ["Floor0ID"]            = "_FRE_ROOM_MEXTR_FLOOR0",
    ["Floor0Path"]          = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/MEXTRROOM/PARTS/FLOOR0.SCENE.MBIN"
  },
  {
    ["Floor0ID"]            = "_FRE_ROOM_SMEXTR_FLOOR0",
    ["Floor0Path"]          = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/SMEXTRROOM/PARTS/FLOOR0.SCENE.MBIN"
  }
}

AddNewBBPartsNavData =
{
  {
    ["BBPartsNavID"] = "_FRE_ROOM_EMEXTR_FLOOR0"
  },
  {
    ["BBPartsNavID"] = "_FRE_ROOM_GEXTR_FLOOR0"
  },
  {
    ["BBPartsNavID"] = "_FRE_ROOM_MEXTR_FLOOR0"
  },
  {
    ["BBPartsNavID"] = "_FRE_ROOM_SMEXTR_FLOOR0"
  }
}

-- new PlacementData.Entity entry for SnapPoint_Front
AddNewPDEFront =
{
    {
    ["EntityId"]  = "FRE_ROOM_EMEXTR",
    ["SnapPt"]  = "SnapPoint_Front",
    },
  {
    ["EntityId"]  = "FRE_ROOM_GEXTR",
    ["SnapPt"]  = "SnapPoint_Front",
    },
  {
    ["EntityId"]  = "FRE_ROOM_MEXTR",
    ["SnapPt"]  = "SnapPoint_Front",
    },
  {
    ["EntityId"]  = "FRE_ROOM_SMEXTR",
    ["SnapPt"]  = "SnapPoint_Front",
    }
}
-- new PlacementData.Entity entry for SnapPoint_Back
AddNewPDEBack =
{
    {
    ["EntityId"]  = "FRE_ROOM_EMEXTR",
    ["SnapPt"]  = "SnapPoint_Back",
    },
  {
    ["EntityId"]  = "FRE_ROOM_GEXTR",
    ["SnapPt"]  = "SnapPoint_Back",
    },
  {
    ["EntityId"]  = "FRE_ROOM_MEXTR",
    ["SnapPt"]  = "SnapPoint_Back",
    },
  {
    ["EntityId"]  = "FRE_ROOM_SMEXTR",
    ["SnapPt"]  = "SnapPoint_Back",
    }
}
-- new PlacementData.Entity entry for SnapPoint_Left
AddNewPDELeft =
{
    {
    ["EntityId"]  = "FRE_ROOM_EMEXTR",
    ["SnapPt"]  = "SnapPoint_Left",
    },
  {
    ["EntityId"]  = "FRE_ROOM_GEXTR",
    ["SnapPt"]  = "SnapPoint_Left",
    },
  {
    ["EntityId"]  = "FRE_ROOM_MEXTR",
    ["SnapPt"]  = "SnapPoint_Left",
    },
  {
    ["EntityId"]  = "FRE_ROOM_SMEXTR",
    ["SnapPt"]  = "SnapPoint_Left",
    }
}
-- new PlacementData.Entity entry for SnapPoint_Right
AddNewPDERight =
{
    {
    ["EntityId"]  = "FRE_ROOM_EMEXTR",
    ["SnapPt"]  = "SnapPoint_Right",
    },
  {
    ["EntityId"]  = "FRE_ROOM_GEXTR",
    ["SnapPt"]  = "SnapPoint_Right",
    },
  {
    ["EntityId"]  = "FRE_ROOM_MEXTR",
    ["SnapPt"]  = "SnapPoint_Right",
    },
  {
    ["EntityId"]  = "FRE_ROOM_SMEXTR",
    ["SnapPt"]  = "SnapPoint_Right",
    }
}
-- new PlacementData.Entity entry for SnapPoint_FrontRight
AddNewPDEFR =
{
    {
    ["EntityId"]  = "FRE_ROOM_EMEXTR",
    ["SnapPt"]  = "SnapPoint_SPIGN_FrontRight",
    },
  {
    ["EntityId"]  = "FRE_ROOM_GEXTR",
    ["SnapPt"]  = "SnapPoint_SPIGN_FrontRight",
    },
  {
    ["EntityId"]  = "FRE_ROOM_MEXTR",
    ["SnapPt"]  = "SnapPoint_SPIGN_FrontRight",
    },
  {
    ["EntityId"]  = "FRE_ROOM_SMEXTR",
    ["SnapPt"]  = "SnapPoint_SPIGN_FrontRight",
    }
}
-- new PlacementData.Entity entry for SnapPoint_FrontLeft
AddNewPDEFL =
{
    {
    ["EntityId"]  = "FRE_ROOM_EMEXTR",
    ["SnapPt"]  = "SnapPoint_SPIGN_FrontLeft",
    },
  {
    ["EntityId"]  = "FRE_ROOM_GEXTR",
    ["SnapPt"]  = "SnapPoint_SPIGN_FrontLeft",
    },
  {
    ["EntityId"]  = "FRE_ROOM_MEXTR",
    ["SnapPt"]  = "SnapPoint_SPIGN_FrontLeft",
    },
  {
    ["EntityId"]  = "FRE_ROOM_SMEXTR",
    ["SnapPt"]  = "SnapPoint_SPIGN_FrontLeft",
    }
}
-- new PlacementData.Entity entry for SnapPoint_BackRight
AddNewPDEBR =
{
    {
    ["EntityId"]  = "FRE_ROOM_EMEXTR",
    ["SnapPt"]  = "SnapPoint_SPIGN_BackRight",
    },
  {
    ["EntityId"]  = "FRE_ROOM_GEXTR",
    ["SnapPt"]  = "SnapPoint_SPIGN_BackRight",
    },
  {
    ["EntityId"]  = "FRE_ROOM_MEXTR",
    ["SnapPt"]  = "SnapPoint_SPIGN_BackRight",
    },
  {
    ["EntityId"]  = "FRE_ROOM_SMEXTR",
    ["SnapPt"]  = "SnapPoint_SPIGN_BackRight",
    }
}
-- new PlacementData.Entity entry for SnapPoint_BackLeft
AddNewPDEBL =
{
    {
    ["EntityId"]  = "FRE_ROOM_EMEXTR",
    ["SnapPt"]  = "SnapPoint_SPIGN_BackLeft",
    },
  {
    ["EntityId"]  = "FRE_ROOM_GEXTR",
    ["SnapPt"]  = "SnapPoint_SPIGN_BackLeft",
    },
  {
    ["EntityId"]  = "FRE_ROOM_MEXTR",
    ["SnapPt"]  = "SnapPoint_SPIGN_BackLeft",
    },
  {
    ["EntityId"]  = "FRE_ROOM_SMEXTR",
    ["SnapPt"]  = "SnapPoint_SPIGN_BackLeft",
    }
}

-- New PlacementData.Entity entries for Walls, Windows and Doors --
--SnapPoint_Face
AddNewSnapPTFace =
{
  {
    ["EntityId"]  = "FRE_ROOM_EMEXTR",
    ["SnapPt"]  = "SnapPoint_Face",
  },
  {
    ["EntityId"]  = "FRE_ROOM_GEXTR",
    ["SnapPt"]  = "SnapPoint_Face",
  },
  {
    ["EntityId"]  = "FRE_ROOM_MEXTR",
    ["SnapPt"]  = "SnapPoint_Face",
  },
  {
    ["EntityId"]  = "FRE_ROOM_SMEXTR",
    ["SnapPt"]  = "SnapPoint_Face",
  }
}

--SnapPoint_SPIGN_Face1
AddNewSnapPTSpignFace =
{
  {
    ["EntityId"]  = "FRE_ROOM_EMEXTR",
    ["SnapPt"]  = "SnapPoint_SPIGN_Face1",
  },
  {
    ["EntityId"]  = "FRE_ROOM_GEXTR",
    ["SnapPt"]  = "SnapPoint_SPIGN_Face1",
  },
  {
    ["EntityId"]  = "FRE_ROOM_MEXTR",
    ["SnapPt"]  = "SnapPoint_SPIGN_Face1",
  },
  {
    ["EntityId"]  = "FRE_ROOM_SMEXTR",
    ["SnapPt"]  = "SnapPoint_SPIGN_Face1",
  }
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------   CODE LOGIC STARTS HERE, NO TOUCHY UNLESS YOU WANNA BREAKY   ------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ModName        = "Moar Stellar Extractors"
Author         = "EchoTree"
LuaAuthor      = "EchoTree, Jackty89, & Babscoole"
ModDescription = "Adds 4 new Stellar Extractor rooms to the game. Adds 20 New Files, Modifies METADATA/REALITY DEFAULTSAVEDATA.MBIN, DEFAULTSAVEDATACREATIVE.MBIN, /TABLES BASEBUILDINGOBJECTSTABLE.MBIN, BASEBUILDINGPARTSTABLE.MBIN, BASEBUILDINGPARTSNAVDATATABLE.MBIN, NMS_REALITY_GCPRODUCTTABLE.MBIN, and all of the PLACEMENTDATA.ENTITY.MBINS for the Industrial Rooms."
GameVersion    = "6.18"
Build          = ""

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]        = Author.."'s "..ModName..GameVersion..Build,
  ["MOD_DESCRIPTION"]     = ModDescription.."Compatible with NMS"..GameVersion,
  ["MOD_AUTHOR"]          = Author,
  ["LUA_AUTHOR"]          = LuaAuthor,
  ["NMS_VERSION"]         = GameVersion,
  ["AMUMSS_SUPPRESS_MSG"] = "UNUSED_VARIABLE",
  ["ADD_FILES"]           =
  {
  },
  ["MODIFICATIONS"]       =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {   --                                                                                        MBIN CLONING                                                                                    --
        {   --                                                          CLONING FILES FROM STANDARD SE TO EXOTIC MATERIALS EXTRACTOR          1                                                   --
          ["MBIN_FILE_SOURCE"]  =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0\ENTITIES\EXTRACTORTERMINAL.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\PARTS\FLOOR0\ENTITIES\EMEXTRACTORTERMINAL.ENTITY.MBIN"},
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\PARTS\FLOOR0.SCENE.MBIN"},
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN"},
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\ROOM_EMEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"},
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\ROOM_EMEXTR_PLACEMENT.SCENE.MBIN"},
          }
        },
        {   --                                                              CLONING FILES FROM STANDARD SE TO GAS EXTRACTOR                   2                                                   --
          ["MBIN_FILE_SOURCE"]  =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0\ENTITIES\EXTRACTORTERMINAL.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\PARTS\FLOOR0\ENTITIES\GEXTRACTORTERMINAL.ENTITY.MBIN"},
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\PARTS\FLOOR0.SCENE.MBIN"},
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN"},
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\ROOM_GEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"},
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\ROOM_GEXTR_PLACEMENT.SCENE.MBIN"},
          }
        },
        {   --                                                              CLONING FILES FROM STANDARD SE TO METAL EXTRACTOR                 3                                                   --
          ["MBIN_FILE_SOURCE"]  =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0\ENTITIES\EXTRACTORTERMINAL.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\PARTS\FLOOR0\ENTITIES\MEXTRACTORTERMINAL.ENTITY.MBIN"},
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\PARTS\FLOOR0.SCENE.MBIN"},
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN"},
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\ROOM_MEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"},
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\ROOM_MEXTR_PLACEMENT.SCENE.MBIN"},
          }
        },
        {   --                                                          CLONING FILES FROM STANDARD SE TO EXOTIC MATERIALS EXTRACTOR          4                                                   --
          ["MBIN_FILE_SOURCE"]  =
          {
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0\ENTITIES\EXTRACTORTERMINAL.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\PARTS\FLOOR0\ENTITIES\SMEXTRACTORTERMINAL.ENTITY.MBIN"},
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\PARTS\FLOOR0.SCENE.MBIN"},
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN"},
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\ROOM_SMEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"},
            {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT.SCENE.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\ROOM_SMEXTR_PLACEMENT.SCENE.MBIN"},
          }
        },

          --                                                                                    BEGIN EXML EDITING                                                                                    --

        { --                                                                                 EMEXTRACTOR PLACEMENT.SCENE.MBIN                   5                                                   --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\ROOM_EMEXTR_PLACEMENT.SCENE.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Name",        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\ROOM_EMEXTR_PLACEMENT"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Value",       "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\ROOM_EMEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"}
              }
            },
          }
        },
        { --                                                                          EMEXTRACTOR PLACEMENTDATA.ENTITY.MBIN               6                                                   --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\ROOM_EMEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"PositionLocator","GROUND_",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"PartID",        "_FRE_ROOM_EMEXTR_FLOOR0"}
              }
            },
          }
        },
        { --                                                                            EMEXTRACTOR FLOOR0_NAV.SCENE.MBIN                   7                                                   --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0_NAV",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Name",        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\PARTS\FLOOR0_NAV"}
              }
            },
          }
        },
        { --                                                                              EMEXTRACTOR FLOOR0.SCENE.MBIN                       8                                                   --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\PARTS\FLOOR0.SCENE.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Name",        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\PARTS\FLOOR0"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Value",       "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\PARTS\FLOOR0\ENTITIES\EMEXTRACTORTERMINAL.ENTITY.MBIN"}
              }
            },
          }
        },
        { --                                                                              EMEXTRACTORTERMINAL.ENTITY.MBIN                   9                                                   --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\PARTS\FLOOR0\ENTITIES\EMEXTRACTORTERMINAL.ENTITY.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            { --                YELLOW              --
              ["SPECIAL_KEY_WORDS"] = {"Id","STELLAR2",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Id",        "ROCKETSUB"},
                {"MaxCapacity",       gExtrCap},
                {"AmountEmptyTimePeriod",         gExtrSpeed}
              },
            },
            { --                 GREEN                --
              ["SPECIAL_KEY_WORDS"] = {"Id","GAS1",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Id",        "ASTEROID2"},
                {"MaxCapacity",       gExtrCap},
                {"AmountEmptyTimePeriod",         gExtrSpeed}
              },
            },
            { --                  BLUE                  --
              ["SPECIAL_KEY_WORDS"] = {"Id","GAS2",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Id",        "ASTEROID3"},
                {"MaxCapacity",       gExtrCap},
                {"AmountEmptyTimePeriod",         gExtrSpeed}
              },
            },
            { --                  RED                 --
              ["SPECIAL_KEY_WORDS"] = {"Id","GAS3",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Id", "ASTEROID1"},
                {"MaxCapacity",       gExtrCap},
                {"AmountEmptyTimePeriod",         gExtrSpeed}
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Description","UI_FRE_EXTR_DESC",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Description",       "UI_FRE_ROOM_EMEXTR_DESC"}
              },
            },
          }
        },
        { --                                                                                 GEXTRACTOR PLACEMENT.SCENE.MBIN                  10                                                  --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\ROOM_GEXTR_PLACEMENT.SCENE.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Name",        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\ROOM_GEXTR_PLACEMENT"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Value",       "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\ROOM_GEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"}
              }
            },
          }
        },
        { --                                                                          GEXTRACTOR PLACEMENTDATA.ENTITY.MBIN                  11                                                  --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\ROOM_GEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"PositionLocator","GROUND_",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"PartID",        "_FRE_ROOM_GEXTR_FLOOR0"}
              }
            },
          }
        },
        { --                                                                            GEXTRACTOR FLOOR0_NAV.SCENE.MBIN                    12                                                  --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0_NAV",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Name",        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\PARTS\FLOOR0_NAV"}
              }
            },
          }
        },
        { --                                                                              GEXTRACTOR FLOOR0.SCENE.MBIN                      13                                                  --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\PARTS\FLOOR0.SCENE.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Name",        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\PARTS\FLOOR0"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Value",       "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\PARTS\FLOOR0\ENTITIES\GEXTRACTORTERMINAL.ENTITY.MBIN"}
              }
            },
          }
        },
        { --                                                                              GEXTRACTORTERMINAL.ENTITY.MBIN                      14                                                  --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\PARTS\FLOOR0\ENTITIES\GEXTRACTORTERMINAL.ENTITY.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            { --                YELLOW              --
              ["SPECIAL_KEY_WORDS"] = {"Id","STELLAR2",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Id",        "OXYGEN"},
                {"MaxCapacity",       gExtrCap},
                {"AmountEmptyTimePeriod",         gExtrSpeed}
              },
            },
            { --                 GREEN                --
              ["SPECIAL_KEY_WORDS"] = {"Id","GAS1",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Id",        "TOXIC1"},
                {"MaxCapacity",       gExtrCap},
                {"AmountEmptyTimePeriod",         gExtrSpeed}
              },
            },
            { --                  BLUE                  --
              ["SPECIAL_KEY_WORDS"] = {"Id","GAS2",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Id",        "LAUNCHSUB"},
                {"MaxCapacity",       gExtrCap},
                {"AmountEmptyTimePeriod",         gExtrSpeed}
              },
            },
            { --                  RED                 --
              ["SPECIAL_KEY_WORDS"] = {"Id","GAS3",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Id",        "FUEL1"},
                {"MaxCapacity",       gExtrCap},
                {"AmountEmptyTimePeriod",         gExtrSpeed}
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Description","UI_FRE_EXTR_DESC",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Description",       "UI_FRE_ROOM_GEXTR_DESC"}
              },
            },
          }
        },
        { --                                                                                 MEXTRACTOR PLACEMENT.SCENE.MBIN                  15                                                  --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\ROOM_MEXTR_PLACEMENT.SCENE.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Name",        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\ROOM_MEXTR_PLACEMENT"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Value",       "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\ROOM_MEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"}
              }
            },
          }
        },
        { --                                                                          MEXTRACTOR PLACEMENTDATA.ENTITY.MBIN                  16                                                  --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\ROOM_MEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"PositionLocator","GROUND_",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"PartID",        "_FRE_ROOM_MEXTR_FLOOR0"}
              }
            },
          }
        },
        { --                                                                            MEXTRACTOR FLOOR0_NAV.SCENE.MBIN                    17                                                  --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0_NAV",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Name",        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\PARTS\FLOOR0_NAV"}
              }
            },
          }
        },
        { --                                                                              MEXTRACTOR FLOOR0.SCENE.MBIN                      18                                                  --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\PARTS\FLOOR0.SCENE.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Name",        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\PARTS\FLOOR0"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Value",       "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\PARTS\FLOOR0\ENTITIES\MEXTRACTORTERMINAL.ENTITY.MBIN"}
              }
            },
          }
        },
        { --                                                                              MEXTRACTORTERMINAL.ENTITY.MBIN                    19                                                  --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\PARTS\FLOOR0\ENTITIES\MEXTRACTORTERMINAL.ENTITY.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            { --                YELLOW              --
              ["SPECIAL_KEY_WORDS"] = {"Id","STELLAR2",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Id",        "CATALYST1"},
                {"MaxCapacity",       gExtrCap},
                {"AmountEmptyTimePeriod",         gExtrSpeed}
              },
            },
            { --                 GREEN                --
              ["SPECIAL_KEY_WORDS"] = {"Id","GAS1",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Id",        "WATER1"},
                {"MaxCapacity",       gExtrCap},
                {"AmountEmptyTimePeriod",         gExtrSpeed}
              },
            },
            { --                  BLUE                  --
              ["SPECIAL_KEY_WORDS"] = {"Id","GAS2",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Id", "CAVE1"},
                {"MaxCapacity",       gExtrCap},
                {"AmountEmptyTimePeriod",         gExtrSpeed},
              },
            },
            { --                  RED                 --
              ["SPECIAL_KEY_WORDS"] = {"Id","GAS3",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Id",        "LAND2"},
                {"MaxCapacity",       gExtrCap},
                {"AmountEmptyTimePeriod",         gExtrSpeed}
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Description","UI_FRE_EXTR_DESC",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Description",       "UI_FRE_ROOM_MEXTR_DESC"}
              },
            },
          }
        },
        { --                                                                                 SMEXTRACTOR PLACEMENT.SCENE.MBIN                   20                                                  --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\ROOM_SMEXTR_PLACEMENT.SCENE.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Name",        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\ROOM_SMEXTR_PLACEMENT"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Value",       "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\ROOM_SMEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"}
              }
            },
          }
        },
        { --                                                                          SMEXTRACTOR PLACEMENTDATA.ENTITY.MBIN               21                                                  --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\ROOM_SMEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"PositionLocator","GROUND_",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"PartID",        "_FRE_ROOM_SMEXTR_FLOOR0"}
              }
            },
          }
        },
        { --                                                                            SMEXTRACTOR FLOOR0_NAV.SCENE.MBIN                   22                                                  --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\PARTS\FLOOR0_NAV.SCENE.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0_NAV",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Name",        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\PARTS\FLOOR0_NAV"}
              }
            },
          }
        },
        { --                                                                              SMEXTRACTOR FLOOR0.SCENE.MBIN                       23                                                  --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\PARTS\FLOOR0.SCENE.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Name",        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\PARTS\FLOOR0"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Value",       "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\PARTS\FLOOR0\ENTITIES\SMEXTRACTORTERMINAL.ENTITY.MBIN"}
              }
            },
          }
        },
        { --                                                                              SMEXTRACTORTERMINAL.ENTITY.MBIN                   24                                                  --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\PARTS\FLOOR0\ENTITIES\SMEXTRACTORTERMINAL.ENTITY.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            { --                YELLOW              --
              ["SPECIAL_KEY_WORDS"] = {"Id","STELLAR2",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Id",        "YELLOW2"},
                {"MaxCapacity",       gExtrCap},
                {"AmountEmptyTimePeriod",         gExtrSpeed}
              },
            },
            { --                 GREEN                --
              ["SPECIAL_KEY_WORDS"] = {"Id","GAS1",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Id",        "GREEN2"},
                {"MaxCapacity",       gExtrCap},
                {"AmountEmptyTimePeriod",         gExtrSpeed}
              },
            },
            { --                  BLUE                  --
              ["SPECIAL_KEY_WORDS"] = {"Id","GAS2",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Id",        "BLUE2"},
                {"MaxCapacity",       gExtrCap},
                {"AmountEmptyTimePeriod",         gExtrSpeed}
              },
            },
            { --                  RED                 --
              ["SPECIAL_KEY_WORDS"] = {"Id","GAS3",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Id",        "RED2"},
                {"MaxCapacity",       gExtrCap},
                {"AmountEmptyTimePeriod",         gExtrSpeed}
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Description","UI_FRE_EXTR_DESC",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Description",       "UI_FRE_ROOM_SMEXTR_DESC"}
              },
            },
          }
        },
        { --                                                                                EXTRACTORTERMINAL.ENTITY.MBIN                   25                                                  --
          ["MBIN_FILE_SOURCE"] =  {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0\ENTITIES\EXTRACTORTERMINAL.ENTITY.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            { --                YELLOW              --
                ["SPECIAL_KEY_WORDS"] = {"Id", "STELLAR2"},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"MaxCapacity",       gExtrCap},
                {"AmountEmptyTimePeriod",       gExtrSpeed}
              },
            },
            { --                 GREEN                --
                ["SPECIAL_KEY_WORDS"] = {"Id","GAS1"},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"MaxCapacity",       gExtrCap},
                {"AmountEmptyTimePeriod",        gExtrSpeed}
              },
            },
            { --                  BLUE                  --
                ["SPECIAL_KEY_WORDS"] = {"Id","GAS2"},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"MaxCapacity",       gExtrCap},
                {"AmountEmptyTimePeriod",         gExtrSpeed}
              },
            },
            { --                  RED                 --
                ["SPECIAL_KEY_WORDS"] = {"Id","GAS3"},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"MaxCapacity",       gExtrCap},
                {"AmountEmptyTimePeriod",       gExtrSpeed}
              },
            },
          }
        },


        --                                                                                    METADATA/REALITY/TABLES                                                                             --

        { --                                                                                BASEBUILDING OBJECSTS TABLE                         26                                                  --
          ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"]   =
                    {
                    }
        },
        { --                                                                                BASEBUILDING PARTS TABLE                              27                                                  --
          ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/BASEBUILDINGPARTSTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"]   =
                    {
                    }
        },
        { --                                                                            BASEBUILDINGPARTS NAV DATA TABLE                        28                                                  --
          ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/BASEBUILDINGPARTSNAVDATATABLE.MBIN",
                    ["MXML_CHANGE_TABLE"]   =
                    {
                    }
        },
        { --                                                                                      PRODUCT TABLE                                 29                                                  --
          ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"]   =
                    {
                    }
        },
                { --                                                                                    DEFAULT SAVEDATA                                30                                                  --
                    ["MBIN_FILE_SOURCE"]  = "METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN",
                    ["MXML_CHANGE_TABLE"]   =
                    {
                    }
                },
        { --                                                                              ROOM PLACEMENT DATA EDITING                         31                                                  --
                    ["MBIN_FILE_SOURCE"]  =
          {
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EMEXTRROOM\ROOM_EMEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\GEXTRROOM\ROOM_GEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\MEXTRROOM\ROOM_MEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SMEXTRROOM\ROOM_SMEXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\STORAGEROOM\ROOM_STORAGE_PLACEMENT0\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\STORAGEROOM\ROOM_STORAGE_PLACEMENT1\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\STORAGEROOM\ROOM_STORAGE_PLACEMENT2\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\STORAGEROOM\ROOM_STORAGE_PLACEMENT3\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\STORAGEROOM\ROOM_STORAGE_PLACEMENT4\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\STORAGEROOM\ROOM_STORAGE_PLACEMENT5\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\STORAGEROOM\ROOM_STORAGE_PLACEMENT6\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\STORAGEROOM\ROOM_STORAGE_PLACEMENT7\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\STORAGEROOM\ROOM_STORAGE_PLACEMENT8\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\STORAGEROOM\ROOM_STORAGE_PLACEMENT9\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\VEHICLEROOM\ROOM_VEHICLE_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\REFINERROOM\ROOM_REFINER_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\NPCWEAROOM\ROOM_NPCWEA_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\INDUSTROOM\ROOM_INDUST_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\ROOM_EXTR_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
          },
                    ["MXML_CHANGE_TABLE"]   =
                    {
                    }
                },
        { --                                                                              WALL PLACEMENT DATA EDITING                         32                                                  --
                    ["MBIN_FILE_SOURCE"]  =
          {
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\FACE\DOOR\A\FACE_DOOR_A_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\FACE\WALL\FACE_WALL_A_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\FACE\WINDOW\A\FACE_WINDOW_A_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN",
          },
                    ["MXML_CHANGE_TABLE"]   =
                    {
                    }
                },
      }
    },
  }
}

function CreateNewProduct(NewProductID, NewProductName, NewProductNameLc, NewProductSub, NewProductDesc, NewProductRequirements)
    local RequirementsString = ""
    if NewProductRequirements ~= "" then
        RequirementsString = [[<Property name="Requirements">]]..NewProductRequirements..[[</Property>]]
    else
        RequirementsString = [[<Property name="Requirements" />]]
    end

    local result =
    [[
    <Property name="Table" value="GcProductData">
      <Property name="ID" value="]]..NewProductID..[[" />
      <Property name="Name" value="]]..NewProductName..[[" />
      <Property name="NameLower" value="]]..NewProductNameLc..[[" />
      <Property name="Subtitle" value="]]..NewProductSub..[[" />
      <Property name="Description" value="]]..NewProductDesc..[[" />
      <Property name="AltDescription" value="" />
      <Property name="Hint" value="" />
      <Property name="BuildableShipTechID" value="" />
      <Property name="GroupID" value="" />
      <Property name="DebrisFile" value="TkModelResource">
        <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
        <Property name="Seed" value="0" />
      </Property>
      <Property name="BaseValue" value="1" />
      <Property name="Level" value="0" />
      <Property name="Icon" value="TkTextureResource">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/FREIGHTERBASE/FREIGHTERBASE_ROOM.EXTR.DDS" />
      </Property>
      <Property name="HeroIcon" value="TkTextureResource">
        <Property name="Filename" value="" />
      </Property>
      <Property name="Colour">
        <Property name="R" value="0.17254902" />
        <Property name="G" value="0.4862745" />
        <Property name="B" value="0.62352943" />
        <Property name="A" value="1.000000" />
      </Property>
      <Property name="Category" value="GcRealitySubstanceCategory">
        <Property name="SubstanceCategory" value="BuildingPart" />
      </Property>
      <Property name="Type" value="GcProductCategory">
        <Property name="ProductCategory" value="BuildingPart" />
      </Property>
      <Property name="Rarity" value="GcRarity">
        <Property name="Rarity" value="Common" />
      </Property>
      <Property name="Legality" value="GcLegality">
        <Property name="Legality" value="Legal" />
      </Property>
      <Property name="Consumable" value="false" />
      <Property name="ChargeValue" value="0" />
      <Property name="StackMultiplier" value="0" />
      <Property name="DefaultCraftAmount" value="1" />
      <Property name="CraftAmountStepSize" value="1" />
      <Property name="CraftAmountMultiplier" value="1" />
      ]]..RequirementsString..[[
      <Property name="AltRequirements" />
      <Property name="Cost" value="GcItemPriceModifiers">
        <Property name="SpaceStationMarkup" value="0.000000" />
        <Property name="LowPriceMod" value="0.000000" />
        <Property name="HighPriceMod" value="0.000000" />
        <Property name="BuyBaseMarkup" value="0.000000" />
        <Property name="BuyMarkupMod" value="0.000000" />
      </Property>
      <Property name="RecipeCost" value="1" />
      <Property name="SpecificChargeOnly" value="false" />
      <Property name="NormalisedValueOnWorld" value="0" />
      <Property name="NormalisedValueOffWorld" value="0" />
      <Property name="TradeCategory" value="GcTradeCategory">
        <Property name="TradeCategory" value="None" />
      </Property>
      <Property name="WikiCategory" value="Construction" />
      <Property name="FossilCategory" value="GcFossilCategory">
        <Property name="FossilCategory" value="None" />
      </Property>
      <Property name="CorvettePartCategory" value="GcCorvettePartCategory">
        <Property name="CorvettePartCategory" value="None" />
      </Property>
      <Property name="IsCraftable" value="true" />
      <Property name="DeploysInto" value="" />
      <Property name="EconomyInfluenceMultiplier" value="0.000000" />
      <Property name="PinObjective" value="" />
      <Property name="PinObjectiveTip" value="" />
      <Property name="PinObjectiveMessage" value="" />
      <Property name="PinObjectiveScannableType" value="GcScannerIconTypes">
        <Property name="ScanIconType" value="None" />
      </Property>
      <Property name="PinObjectiveEasyToRefine" value="false" />
      <Property name="NeverPinnable" value="false" />
      <Property name="CookingIngredient" value="false" />
      <Property name="CookingValue" value="0.000000" />
      <Property name="FoodBonusStat" value="GcStatsTypes">
        <Property name="StatsType" value="Unspecified" />
      </Property>
      <Property name="FoodBonusStatAmount" value="0.000000" />
      <Property name="GoodForSelling" value="false" />
      <Property name="GiveRewardOnSpecialPurchase" value="" />
      <Property name="EggModifierIngredient" value="false" />
      <Property name="IsTechbox" value="false" />
      <Property name="CanSendToOtherPlayers" value="false" />
    </Property>
    ]]

    return result
end

function CreateProductRequirement(IngredientID, IngredientType, IngredientAmount)
    return
    [[
  <Property name="Requirements" value="GcTechnologyRequirement">
    <Property name="ID" value="]]..IngredientID..[[" />
    <Property name="Type" value="GcInventoryType">
      <Property name="InventoryType" value="]]..IngredientType..[[" />
    </Property>
    <Property name="Amount" value="]]..IngredientAmount..[[" />
  </Property>
    ]]
end

local AddToProductTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][29]["MXML_CHANGE_TABLE"]
local PTETable = {}
for i = 1, #AddNewExtrRooms do
    local Requirements        = {}
    local ProductID           = string.upper(AddNewExtrRooms[i]["ProductID"])
    local ProductName         = "BLD_"..string.upper(ProductID).."_NAME"
    local ProductNameLC       = "BLD_"..string.upper(ProductID).."_NAME_L"
    local ProductDesc         = "BLD_"..string.upper(ProductID).."_DESC"
    local ProductSub          = "BLD_"..string.upper(ProductID).."_SUB"

  local RequirementsList    = AddNewExtrRooms[i]["Requirements"]

    for k = 1, #RequirementsList  do
        local RequirementID     = ""
        local RequirementType   = ""
        local RequirementAmount = ""

        RequirementID           = RequirementsList[k][1]
        RequirementType         = RequirementsList[k][3]
        RequirementAmount       = RequirementsList[k][2]
        table.insert(Requirements, CreateProductRequirement(RequirementID, RequirementType, RequirementAmount))
    end

    table.insert(PTETable, CreateNewProduct(ProductID, ProductName, ProductNameLC, ProductSub, ProductDesc, table.concat(Requirements)))

end
AddToProductTable[#AddToProductTable + 1]  =
{
  ["PRECEDING_KEY_WORDS"] = {"Table"},
  ["ADD_OPTION"] = "ADDendSECTION",
  ["ADD"] = table.concat(PTETable)
}

function CreateNewBBObjects(NewBBObjectID, NewBBObjectFileName)
  return [[
    <Property name="Objects" value="GcBaseBuildingEntry">
      <Property name="ID" value="]]..NewBBObjectID..[[" />
      <Property name="IsTemporary" value="false" />
      <Property name="IsFromModFolder" value="false" />
      <Property name="Style" value="GcBaseBuildingPartStyle">
        <Property name="Style" value="None" />
      </Property>
      <Property name="PlacementScene" value="TkModelResource">
        <Property name="Filename" value="]]..NewBBObjectFileName..[[" />
        <Property name="Seed" value="0" />
      </Property>
      <Property name="SinglePartID" value="" />
      <Property name="DecorationType" value="GcBaseBuildingObjectDecorationTypes">
        <Property name="BaseBuildingDecorationType" value="Normal" />
      </Property>
      <Property name="IsPlaceable" value="false" />
      <Property name="IsDecoration" value="false" />
      <Property name="Biome" value="GcBiomeType">
        <Property name="Biome" value="Lush" />
      </Property>
      <Property name="BuildableOnPlanetBase" value="false" />
      <Property name="BuildableOnSpaceBase" value="false" />
      <Property name="BuildableOnFreighter" value="true" />
      <Property name="BuildableInShipStructural" value="false" />
      <Property name="BuildableInShipDecorative" value="false" />
      <Property name="BuildableOnPlanet" value="false" />
      <Property name="BuildableOnPlanetWithProduct" value="false" />
      <Property name="BuildableUnderwater" value="true" />
      <Property name="BuildableAboveWater" value="true" />
      <Property name="PlanetLimit" value="0" />
      <Property name="RegionLimit" value="0" />
      <Property name="PlanetBaseLimit" value="0" />
      <Property name="FreighterBaseLimit" value="0" />
      <Property name="CorvetteBaseLimit" value="0" />
      <Property name="DoesNotCountTowardsComplexity" value="false" />
      <Property name="CheckPlaceholderCollision" value="false" />
      <Property name="CheckPlayerCollision" value="true" />
      <Property name="CanStack" value="true" />
      <Property name="SnapRotateBlocked" value="false" />
      <Property name="CanRotate3D" value="false" />
      <Property name="CanScale" value="false" />
      <Property name="Groups">
        <Property name="Groups" value="GcBaseBuildingEntryGroup" _index="0">
          <Property name="Group" value="FREIGHTER_IND" />
          <Property name="SubGroupName" value="FRE_IND_SUB" />
          <Property name="SubGroup" value="0" />
        </Property>
      </Property>
      <Property name="StorageContainerIndex" value="-1" />
      <Property name="ColourPaletteGroupId" value="FREIGHTERBASE" />
      <Property name="DefaultColourPaletteId" value="FREIGHTERBASE0" />
      <Property name="MaterialGroupId" value="" />
      <Property name="DefaultMaterialId" value="" />
      <Property name="CanChangeColour" value="true" />
      <Property name="CanChangeMaterial" value="false" />
      <Property name="CanPickUp" value="false" />
      <Property name="ShowInBuildMenu" value="true" />
      <Property name="CompositePartObjectIDs" />
      <Property name="FamilyIDs">
        <Property name="FamilyIDs" value="FRE_INDUST" />
        <Property name="FamilyIDs" value="FRE_COR" />
      </Property>
      <Property name="BuildEffectAccelerator" value="3.000000" />
      <Property name="IconOverrideProductID" value="" />
      <Property name="RemovesAttachedDecoration" value="true" />
      <Property name="RemovesWhenUnsnapped" value="false" />
      <Property name="EditsTerrain" value="false" />
      <Property name="BaseTerrainEditShape" value="Cube" />
      <Property name="MinimumDeleteDistance" value="2.400000" />
      <Property name="IsSealed" value="true" />
      <Property name="CloseMenuAfterBuild" value="false" />
      <Property name="Tag" value="" />
      <Property name="LinkGridData" value="GcBaseLinkGridData">
        <Property name="Connection" value="GcBaseLinkGridConnectionData">
          <Property name="Network" value="GcLinkNetworkTypes">
            <Property name="LinkNetworkType" value="Resources" />
          </Property>
          <Property name="NetworkSubGroup" value="0" />
          <Property name="NetworkMask" value="2" />
          <Property name="ConnectionDistance" value="3.000000" />
          <Property name="UseMinDistance" value="false" />
          <Property name="LinkSocketPositions" />
          <Property name="LinkSocketSubGroups" />
        </Property>
        <Property name="Rate" value="100" />
        <Property name="Storage" value="360000" />
        <Property name="DependsOnEnvironment" value="None" />
        <Property name="DependsOnHotspots" value="None" />
        <Property name="DependentConnections">
          <Property name="DependentConnections" value="GcBaseLinkGridConnectionDependency">
            <Property name="Connection" value="GcBaseLinkGridConnectionData">
              <Property name="Network" value="GcLinkNetworkTypes">
                <Property name="LinkNetworkType" value="Power" />
              </Property>
              <Property name="NetworkSubGroup" value="4" />
              <Property name="NetworkMask" value="1464" />
              <Property name="ConnectionDistance" value="5.000000" />
              <Property name="UseMinDistance" value="false" />
              <Property name="LinkSocketPositions" />
              <Property name="LinkSocketSubGroups" />
            </Property>
            <Property name="DependentRate" value="-50" />
            <Property name="DependentEffect" value="EnablesRate" />
            <Property name="DisableWhenOffline" value="false" />
            <Property name="TransfersConnections" value="true" />
          </Property>
        </Property>
      </Property>
      <Property name="GhostsCountOverride" value="1" />
      <Property name="ShowGhosts" value="false" />
      <Property name="SnappingDistanceOverride" value="0.100000" />
      <Property name="RegionSpawnLOD" value="1" />
      <Property name="NPCInteractionScene" value="TkModelResource">
        <Property name="Filename" value="" />
        <Property name="Seed" value="0" />
      </Property>
      <Property name="IsModularCustomisation" value="false" />
      <Property name="ModularCustomisationBaseID" value="" />
      <Property name="HasDescriptor" value="false" />
      <Property name="DescriptorID" value="" />
      <Property name="UseProductIDOverride" value="false" />
      <Property name="OverrideProductID" value="" />
      <Property name="FossilDisplayID" value="" />
    </Property>
    ]]
end

local AddToBBObjectsTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][26]["MXML_CHANGE_TABLE"]
local BBOTable = {}
for i = 1, #AddNewBBObjects do
    local BBObjectID                = string.upper(AddNewBBObjects[i]["BBObjectID"])
    local BBObjectFileName          = string.upper(AddNewBBObjects[i]["BBObjectFileName"])

  table.insert(BBOTable, CreateNewBBObjects(BBObjectID, BBObjectFileName))
end
AddToBBObjectsTable[#AddToBBObjectsTable + 1]  =
{
  ["PRECEDING_KEY_WORDS"] = {"Objects"},
  ["ADD"] = table.concat(BBOTable)
}

function CreateNewBBParts(NewFloor0ID, NewFloor0Path)
    return [[
    <Property name="Parts" value="GcBaseBuildingPart">
      <Property name="ID" value="]]..NewFloor0ID..[[" />
      <Property name="StyleModels">
        <Property name="StyleModels" value="GcBaseBuildingPartStyleModel">
          <Property name="Style" value="GcBaseBuildingPartStyle">
            <Property name="Style" value="None" />
          </Property>
          <Property name="Model" value="TkModelResource">
            <Property name="Filename" value="]]..NewFloor0Path..[[" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="Inactive" value="TkModelResource">
            <Property name="Filename" value="]]..NewFloor0Path..[[" />
            <Property name="Seed" value="0" />
          </Property>
        </Property>
      </Property>
    </Property>
    ]]
end

local AddToBBPartsTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][27]["MXML_CHANGE_TABLE"]
local BBPartsTable = {}
for i = 1, #AddNewBBParts do
    local Floor0ID                = string.upper(AddNewBBParts[i]["Floor0ID"])
  local Floor0Path          = string.upper(AddNewBBParts[i]["Floor0Path"])

  table.insert(BBPartsTable, CreateNewBBParts(Floor0ID, Floor0Path))
end
AddToBBPartsTable[#AddToBBPartsTable + 1]  =
{
  ["PRECEDING_KEY_WORDS"] = {"Parts"},
  ["ADD"] = table.concat(BBPartsTable)
}

function CreateNewBBPartsNavData(NewBBPartsNavID)
  return
  [[
    <Property name="Parts" value="GcBaseBuildingPartNavData">
      <Property name="PartID" value="]]..NewBBPartsNavID..[[" />
      <Property name="SharedInteractions" />
      <Property name="NavNodeData">
        <Property name="NavNodeData" value="GcBaseBuildingPartNavNodeData">
          <Property name="Type" value="GcNPCNavSubgraphNodeType">
            <Property name="NPCNavSubgraphNodeType" value="Connection" />
          </Property>
          <Property name="LocalPos">
            <Property name="X" value="0.000000" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="4.000000" />
          </Property>
          <Property name="ArriveDist" value="1.000000" />
          <Property name="AtDir">
            <Property name="X" value="0.000000" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="-1.000000" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property name="ConnectedNodeIndices" value="10" />
          </Property>
        </Property>
        <Property name="NavNodeData" value="GcBaseBuildingPartNavNodeData">
          <Property name="Type" value="GcNPCNavSubgraphNodeType">
            <Property name="NPCNavSubgraphNodeType" value="Connection" />
          </Property>
          <Property name="LocalPos">
            <Property name="X" value="0.000000" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="-4.000000" />
          </Property>
          <Property name="ArriveDist" value="1.000000" />
          <Property name="AtDir">
            <Property name="X" value="0.000000" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="1.000000" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property name="ConnectedNodeIndices" value="6" />
          </Property>
        </Property>
        <Property name="NavNodeData" value="GcBaseBuildingPartNavNodeData">
          <Property name="Type" value="GcNPCNavSubgraphNodeType">
            <Property name="NPCNavSubgraphNodeType" value="Connection" />
          </Property>
          <Property name="LocalPos">
            <Property name="X" value="-4.000000" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="0.000000" />
          </Property>
          <Property name="ArriveDist" value="1.000000" />
          <Property name="AtDir">
            <Property name="X" value="1.000000" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="0.000000" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property name="ConnectedNodeIndices" value="4" />
          </Property>
        </Property>
        <Property name="NavNodeData" value="GcBaseBuildingPartNavNodeData">
          <Property name="Type" value="GcNPCNavSubgraphNodeType">
            <Property name="NPCNavSubgraphNodeType" value="Connection" />
          </Property>
          <Property name="LocalPos">
            <Property name="X" value="4.000000" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="0.000000" />
          </Property>
          <Property name="ArriveDist" value="1.000000" />
          <Property name="AtDir">
            <Property name="X" value="-1.000000" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="0.000000" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property name="ConnectedNodeIndices" value="8" />
          </Property>
        </Property>
        <Property name="NavNodeData" value="GcBaseBuildingPartNavNodeData">
          <Property name="Type" value="GcNPCNavSubgraphNodeType">
            <Property name="NPCNavSubgraphNodeType" value="Path" />
          </Property>
          <Property name="LocalPos">
            <Property name="X" value="-2.600000" />
            <Property name="Y" value="-0.500000" />
            <Property name="Z" value="0.000000" />
          </Property>
          <Property name="ArriveDist" value="1.000000" />
          <Property name="AtDir">
            <Property name="X" value="1.000000" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="0.000000" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property name="ConnectedNodeIndices" value="2" />
            <Property name="ConnectedNodeIndices" value="5" />
            <Property name="ConnectedNodeIndices" value="11" />
          </Property>
        </Property>
        <Property name="NavNodeData" value="GcBaseBuildingPartNavNodeData">
          <Property name="Type" value="GcNPCNavSubgraphNodeType">
            <Property name="NPCNavSubgraphNodeType" value="Connection" />
          </Property>
          <Property name="LocalPos">
            <Property name="X" value="-2.100000" />
            <Property name="Y" value="-0.500000" />
            <Property name="Z" value="-2.200000" />
          </Property>
          <Property name="ArriveDist" value="1.000000" />
          <Property name="AtDir">
            <Property name="X" value="0.707107" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="0.707107" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property name="ConnectedNodeIndices" value="6" />
            <Property name="ConnectedNodeIndices" value="4" />
          </Property>
        </Property>
        <Property name="NavNodeData" value="GcBaseBuildingPartNavNodeData">
          <Property name="Type" value="GcNPCNavSubgraphNodeType">
            <Property name="NPCNavSubgraphNodeType" value="Path" />
          </Property>
          <Property name="LocalPos">
            <Property name="X" value="0.000000" />
            <Property name="Y" value="-0.500000" />
            <Property name="Z" value="-2.892280" />
          </Property>
          <Property name="ArriveDist" value="1.000000" />
          <Property name="AtDir">
            <Property name="X" value="0.000000" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="1.000000" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property name="ConnectedNodeIndices" value="1" />
            <Property name="ConnectedNodeIndices" value="7" />
            <Property name="ConnectedNodeIndices" value="5" />
          </Property>
        </Property>
        <Property name="NavNodeData" value="GcBaseBuildingPartNavNodeData">
          <Property name="Type" value="GcNPCNavSubgraphNodeType">
            <Property name="NPCNavSubgraphNodeType" value="Path" />
          </Property>
          <Property name="LocalPos">
            <Property name="X" value="2.100000" />
            <Property name="Y" value="-0.500000" />
            <Property name="Z" value="-2.200000" />
          </Property>
          <Property name="ArriveDist" value="1.000000" />
          <Property name="AtDir">
            <Property name="X" value="-0.7071070" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="0.7071070" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property name="ConnectedNodeIndices" value="8" />
            <Property name="ConnectedNodeIndices" value="6" />
          </Property>
        </Property>
        <Property name="NavNodeData" value="GcBaseBuildingPartNavNodeData">
          <Property name="Type" value="GcNPCNavSubgraphNodeType">
            <Property name="NPCNavSubgraphNodeType" value="Path" />
          </Property>
          <Property name="LocalPos">
            <Property name="X" value="2.600000" />
            <Property name="Y" value="-0.500000" />
            <Property name="Z" value="0.000000" />
          </Property>
          <Property name="ArriveDist" value="1.000000" />
          <Property name="AtDir">
            <Property name="X" value="-1.000000" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="0.000000" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property name="ConnectedNodeIndices" value="3" />
            <Property name="ConnectedNodeIndices" value="9" />
            <Property name="ConnectedNodeIndices" value="7" />
          </Property>
        </Property>
        <Property name="NavNodeData" value="GcBaseBuildingPartNavNodeData">
          <Property name="Type" value="GcNPCNavSubgraphNodeType">
            <Property name="NPCNavSubgraphNodeType" value="Path" />
          </Property>
          <Property name="LocalPos">
            <Property name="X" value="2.000000" />
            <Property name="Y" value="-0.500000" />
            <Property name="Z" value="2.200000" />
          </Property>
          <Property name="ArriveDist" value="1.000000" />
          <Property name="AtDir">
            <Property name="X" value="-0.7071070" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="-0.7071070" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property name="ConnectedNodeIndices" value="8" />
            <Property name="ConnectedNodeIndices" value="10" />
          </Property>
        </Property>
        <Property name="NavNodeData" value="GcBaseBuildingPartNavNodeData">
          <Property name="Type" value="GcNPCNavSubgraphNodeType">
            <Property name="NPCNavSubgraphNodeType" value="Path" />
          </Property>
          <Property name="LocalPos">
            <Property name="X" value="0.000000" />
            <Property name="Y" value="-0.500000" />
            <Property name="Z" value="2.892280" />
          </Property>
          <Property name="ArriveDist" value="1.000000" />
          <Property name="AtDir">
            <Property name="X" value="0.000000" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="-1.000000" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property name="ConnectedNodeIndices" value="12" />
            <Property name="ConnectedNodeIndices" value="9" />
            <Property name="ConnectedNodeIndices" value="11" />
            <Property name="ConnectedNodeIndices" value="0" />
          </Property>
        </Property>
        <Property name="NavNodeData" value="GcBaseBuildingPartNavNodeData">
          <Property name="Type" value="GcNPCNavSubgraphNodeType">
            <Property name="NPCNavSubgraphNodeType" value="Path" />
          </Property>
          <Property name="LocalPos">
            <Property name="X" value="-2.000000" />
            <Property name="Y" value="-0.500000" />
            <Property name="Z" value="2.200000" />
          </Property>
          <Property name="ArriveDist" value="1.000000" />
          <Property name="AtDir">
            <Property name="X" value="0.7071070" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="-0.7071070" />
          </Property>
          <Property name="InteractionID" value="" />
          <Property name="ConnectedNodeIndices">
            <Property name="ConnectedNodeIndices" value="4" />
            <Property name="ConnectedNodeIndices" value="10" />
          </Property>
        </Property>
        <Property name="NavNodeData" value="GcBaseBuildingPartNavNodeData">
          <Property name="Type" value="GcNPCNavSubgraphNodeType">
            <Property name="NPCNavSubgraphNodeType" value="PointOfInterest" />
          </Property>
          <Property name="LocalPos">
            <Property name="X" value="0.000000" />
            <Property name="Y" value="-0.500000" />
            <Property name="Z" value="2.336289" />
          </Property>
          <Property name="ArriveDist" value="1.000000" />
          <Property name="AtDir">
            <Property name="X" value="0.000000" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="-1.000000" />
          </Property>
          <Property name="InteractionID" value="TERMINAL" />
          <Property name="ConnectedNodeIndices">
            <Property name="ConnectedNodeIndices" value="10" />
          </Property>
        </Property>
      </Property>
    </Property>
  ]]
end

local AddToBBPartsNavDataTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][28]["MXML_CHANGE_TABLE"]
local BBPartsNavTable = {}

for i = 1, #AddNewBBPartsNavData do
    local BBPartsNavID          = string.upper(AddNewBBPartsNavData[i]["BBPartsNavID"])

  table.insert(BBPartsNavTable, CreateNewBBPartsNavData(BBPartsNavID))
    AddToBBPartsNavDataTable[#AddToBBPartsNavDataTable + 1]  =
    {
        ["PRECEDING_KEY_WORDS"] = {"Parts"},
        ["ADD"] = table.concat(BBPartsNavTable)
    }
end


function CreateKnownProduct(ProductID)
    return [[
        <Property name="KnownProducts" value="]]..ProductID..[[" />
    ]]
end

local AddToDefaultSaveData          = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][30]["MXML_CHANGE_TABLE"]

for i = 1, #AddNewExtrRooms do
    local ProductID         = string.upper(AddNewExtrRooms[i]["ProductID"])

    AddToDefaultSaveData[#AddToDefaultSaveData + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
        ["ADD"] = CreateKnownProduct(ProductID)
    }
end

function CreateNewPDEntity(NewEntityId, NewSnapPt)
    return
    [[
                    <Property name="Conditions" value="GcSnapPointCondition">
                      <Property name="GcSnapPointCondition">
                        <Property name="SnapPoint" value="]]..NewSnapPt..[[" />
                        <Property name="SnapState" value="GcBaseSnapState">
                          <Property name="SnapState" value="NotSnapped" />
                        </Property>
                        <Property name="ObjectId" value="]]..NewEntityId..[[" />
                        <Property name="SnapPointIndex" value="0" />
                      </Property>
                    </Property>
  ]]
end

function CreateNewFaceSnaps(NewEntityId, NewSnapPt)
  return
  [[
                    <Property name="Conditions" value="GcSnapPointCondition">
                      <Property name="GcSnapPointCondition">
                        <Property name="SnapPoint" value="]]..NewSnapPt..[[" />
                        <Property name="SnapState" value="GcBaseSnapState">
                          <Property name="SnapState" value="IsSnapped" />
                        </Property>
                        <Property name="ObjectId" value="]]..NewEntityId..[[" />
                        <Property name="SnapPointIndex" value="0" />
                      </Property>
                    </Property>
  ]]
end


local AddToPDEFront = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][31]["MXML_CHANGE_TABLE"]
local AddToPDEBack = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][31]["MXML_CHANGE_TABLE"]
local AddToPDELeft = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][31]["MXML_CHANGE_TABLE"]
local AddToPDERight = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][31]["MXML_CHANGE_TABLE"]
local AddToPDEFR = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][31]["MXML_CHANGE_TABLE"]
local AddToPDEFL = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][31]["MXML_CHANGE_TABLE"]
local AddToPDEnBR = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][31]["MXML_CHANGE_TABLE"]
local AddToPDEBL = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][31]["MXML_CHANGE_TABLE"]
local AddToFaceSnaps = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][32]["MXML_CHANGE_TABLE"]
local PDEFrontTable = {}
local PDEBackTable = {}
local PDELeftTable = {}
local PDERightTable = {}
local PDEFRTable = {}
local PDEFLTable = {}
local PDEBRTable = {}
local PDEBLTable = {}
local SPtFaceTable = {}
local SPtSpignFaceTable = {}

for i = 1, #AddNewPDEFront do
    local EntityId           = (AddNewPDEFront[i]["EntityId"])
  local SnapPt        = (AddNewPDEFront[i]["SnapPt"])

  table.insert(PDEFrontTable, CreateNewPDEntity(EntityId, SnapPt))
end

for i = 1, #AddNewPDEBack do
    local EntityId           = (AddNewPDEBack[i]["EntityId"])
  local SnapPt        = (AddNewPDEBack[i]["SnapPt"])

  table.insert(PDEBackTable, CreateNewPDEntity(EntityId, SnapPt))
end

for i = 1, #AddNewPDELeft do
    local EntityId           = (AddNewPDELeft[i]["EntityId"])
  local SnapPt        = (AddNewPDELeft[i]["SnapPt"])

  table.insert(PDELeftTable, CreateNewPDEntity(EntityId, SnapPt))
end

for i = 1, #AddNewPDERight do
    local EntityId           = (AddNewPDERight[i]["EntityId"])
  local SnapPt        = (AddNewPDERight[i]["SnapPt"])

  table.insert(PDERightTable, CreateNewPDEntity(EntityId, SnapPt))
end

for i = 1, #AddNewPDEFR do
    local EntityId           = (AddNewPDEFR[i]["EntityId"])
  local SnapPt        = (AddNewPDEFR[i]["SnapPt"])

  table.insert(PDEFRTable, CreateNewPDEntity(EntityId, SnapPt))
end

for i = 1, #AddNewPDEFL do
    local EntityId           = (AddNewPDEFL[i]["EntityId"])
  local SnapPt        = (AddNewPDEFL[i]["SnapPt"])

  table.insert(PDEFLTable, CreateNewPDEntity(EntityId, SnapPt))
end

for i = 1, #AddNewPDEBR do
    local EntityId           = (AddNewPDEBR[i]["EntityId"])
  local SnapPt        = (AddNewPDEBR[i]["SnapPt"])

  table.insert(PDEBRTable, CreateNewPDEntity(EntityId, SnapPt))
end

for i = 1, #AddNewPDEBL do
    local EntityId           = (AddNewPDEBL[i]["EntityId"])
  local SnapPt        = (AddNewPDEBL[i]["SnapPt"])

  table.insert(PDEBLTable, CreateNewPDEntity(EntityId, SnapPt))
end

for i = 1, #AddNewSnapPTFace do
    local EntityId           = (AddNewSnapPTFace[i]["EntityId"])
  local SnapPt        = (AddNewSnapPTFace[i]["SnapPt"])

  table.insert(SPtFaceTable, CreateNewFaceSnaps(EntityId, SnapPt))
end

for j = 1, #AddNewSnapPTSpignFace do
    local EntityId           = (AddNewSnapPTSpignFace[j]["EntityId"])
  local SnapPt        = (AddNewSnapPTSpignFace[j]["SnapPt"])

  table.insert(SPtSpignFaceTable, CreateNewFaceSnaps(EntityId, SnapPt))
end


AddToPDEFront[#AddToPDEFront + 1] =
{
  ["SPECIAL_KEY_WORDS"]         =   {"ObjectId", "FRE_ROOM_EXTR"},
  ["SECTION_ACTIVE"]            =     {5,7,11,20,23},
  ["ADD_OPTION"]                =   "ADDafterSECTION",
  ["ADD"]                       =     table.concat(PDEFrontTable)
}
AddToPDEBack[#AddToPDEBack + 1]  =
{
  ["SPECIAL_KEY_WORDS"]         =   {"ObjectId", "FRE_ROOM_EXTR"},
  ["SECTION_ACTIVE"]            =     {1,3,9,14,17},
  ["ADD_OPTION"]                =   "ADDafterSECTION",
  ["ADD"]                       =     table.concat(PDEBackTable)
}
AddToPDELeft[#AddToPDELeft + 1]  =
{
  ["SPECIAL_KEY_WORDS"]         =   {"ObjectId", "FRE_ROOM_EXTR"},
  ["SECTION_ACTIVE"]            =     {4,6,12,18,21},
  ["ADD_OPTION"]                =   "ADDafterSECTION",
  ["ADD"]                       =     table.concat(PDELeftTable)
}
AddToPDERight[#AddToPDERight + 1]  =
{
  ["SPECIAL_KEY_WORDS"]         =   {"ObjectId", "FRE_ROOM_EXTR"},
  ["SECTION_ACTIVE"]            =     {2,8,10,15,24},
  ["ADD_OPTION"]                =   "ADDafterSECTION",
  ["ADD"]                       =     table.concat(PDERightTable)
}
AddToPDEFR[#AddToPDEFR + 1]  =
{
  ["SPECIAL_KEY_WORDS"]         =   {"ObjectId", "FRE_ROOM_EXTR"},
  ["SECTION_ACTIVE"]            =     {22},
  ["ADD_OPTION"]                =   "ADDafterSECTION",
  ["ADD"]                       =     table.concat(PDEFRTable)
}
AddToPDEFL[#AddToPDEFL + 1]  =
{
  ["SPECIAL_KEY_WORDS"]         =   {"ObjectId", "FRE_ROOM_EXTR"},
  ["SECTION_ACTIVE"]            =     {19},
  ["ADD_OPTION"]                =   "ADDafterSECTION",
  ["ADD"]                       =     table.concat(PDEFLTable)
}
AddToPDEnBR[#AddToPDEnBR + 1]  =
{
  ["SPECIAL_KEY_WORDS"]         =   {"ObjectId", "FRE_ROOM_EXTR"},
  ["SECTION_ACTIVE"]            =     {13},
  ["ADD_OPTION"]                =   "ADDafterSECTION",
  ["ADD"]                       =     table.concat(PDEBRTable)
}
AddToPDEBL[#AddToPDEBL + 1]  =
{
  ["SPECIAL_KEY_WORDS"]         =   {"ObjectId", "FRE_ROOM_EXTR"},
  ["SECTION_ACTIVE"]            =     {16},
  ["ADD_OPTION"]                =   "ADDafterSECTION",
  ["ADD"]                       =     table.concat(PDEBLTable)
}
AddToFaceSnaps[#AddToFaceSnaps + 1]  =
{
  ["SPECIAL_KEY_WORDS"]         =   {"ObjectId", "FRE_ROOM_EXTR"},
  ["SECTION_ACTIVE"]            =     {1,2},
  ["ADD_OPTION"]                =   "ADDafterSECTION",
  ["ADD"]                       =     table.concat(SPtFaceTable)
}
AddToFaceSnaps[#AddToFaceSnaps + 1]  =
{
  ["SPECIAL_KEY_WORDS"]         =   {"ObjectId", "FRE_ROOM_EXTR"},
  ["SECTION_ACTIVE"]            =     {1,2},
  ["ADD_OPTION"]                =   "ADDafterSECTION",
  ["ADD"]                       =     table.concat(SPtSpignFaceTable)
}

function NewLanguagueFile(DescriptionEntries)
    return
    [[<?xml version="1.0" encoding="utf-8"?>
      <Data template="cTkLocalisationTable">
        <Property name="Table">]]
            ..DescriptionEntries..
            [[
        </Property>
      </Data>
    ]]
end

function NewLanguageEntry(Language, NewDescription)
    return
    [[
        <Property name="]]..Language..[[" value="]]..NewDescription..[[">
        </Property>
    ]]
end

function NewDescriptionText(newDescId, LanguageEntries)
    return
    [[
        <Property name="Table" value="TkLocalisationEntry">
            <Property name="Id" value="]]..newDescId..[[" />
            ]]..LanguageEntries..[[
        </Property>
    ]]
end

function FillCustomlangFile(Data)
    local NewProductLangEntries = {}

    for i = 1, #Data do
        local ProductID = string.upper(Data[i]["ProductID"])
    local UIDescEntries = {}
        local DescriptionEntries = {}
        local SubtitleEntries = {}
        local NameLCEntries = {}
        local NameEntries = {}

        local LanguagesData = Data[i]["Languages"]

        local NameID = "BLD_"..ProductID.."_NAME"
        local NameLCID = "BLD_"..ProductID.."_NAME_L"
        local SubID = "BLD_"..ProductID.."_SUB"
        local DescID = "BLD_"..ProductID.."_DESC"

    local UIDescID = "UI_"..ProductID.."_DESC"

        for j = 1, #LanguagesData do
            local Language = LanguagesData[j][1]

            local NameLC = LanguagesData[j][2]
            table.insert(NameLCEntries, NewLanguageEntry(Language, NameLC))

            local Name = string.upper(NameLC)
            table.insert(NameEntries, NewLanguageEntry(Language, Name))

            local NewSubTitle = LanguagesData[j][3]
            table.insert(SubtitleEntries, NewLanguageEntry(Language, NewSubTitle))

            local NewDescription = LanguagesData[j][4]
            table.insert(DescriptionEntries, NewLanguageEntry(Language, NewDescription))

      local NewUIDesc = LanguagesData[j][5]
      table.insert(UIDescEntries, NewLanguageEntry(Language, NewUIDesc))
        end

        table.insert(NewProductLangEntries, NewDescriptionText(NameLCID, table.concat(NameLCEntries)))
        table.insert(NewProductLangEntries, NewDescriptionText(NameID, table.concat(NameEntries)))
        table.insert(NewProductLangEntries, NewDescriptionText(SubID, table.concat(SubtitleEntries)))
        table.insert(NewProductLangEntries, NewDescriptionText(DescID, table.concat(DescriptionEntries)))
    table.insert(NewProductLangEntries, NewDescriptionText(UIDescID, table.concat(UIDescEntries)))
    end
    return NewLanguagueFile(table.concat(NewProductLangEntries))
end

local AddCustomLanguageFiles = NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"]
for Language in pairs(Languages) do

    local LanguageData = { ["ProductID"] = "" , ["Languages"] = {}}
    for i = 1, #AddNewExtrRooms do
        LanguageData[#LanguageData+1] =
        {
            ["ProductID"] = AddNewExtrRooms[i]["ProductID"],
            ["Languages"] = AddNewExtrRooms[i]["Languages"] ,
        }
    end

    AddCustomLanguageFiles[#AddCustomLanguageFiles +1] =
    {
        ["FILE_DESTINATION"]  = "LocTABLE.MXML",
        ["FILE_CONTENT"]    = FillCustomlangFile(LanguageData)
    }

end