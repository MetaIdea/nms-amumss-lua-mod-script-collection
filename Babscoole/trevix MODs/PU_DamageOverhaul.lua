NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PU_DamageOverhaul",
["MOD_AUTHOR"]      = "Trevix",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.30",
["MOD_DESCRIPTION"] = "Things do more damage, you can stack a lot of upgrades to compensate",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxNumSameGroupTech", "9999"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ReportAllProjectileDamage",        "true"},
                {"DefaultHitPoints",                 "80"},
                {"DefaultHealthPips",                "4"},
                {"DefaultShipHealthPips",            "6"},
                {"MaxHealthPips",                    "12"},
                {"UseLargeHealthBar",                "true"},
                {"HealthRechargeMinTimeSinceDamage", "5.000000"},
                {"HealthPipRechargeRate",            "100.000000"},
                {"MinEnergyPercentOnRespawn",        "0.7500000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MELEE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Radius", "1.500000"},
                {"Life",   "3.000000"},
                {"Class",  "Player"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MELEE_KICK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Radius", "1.500000"},
                {"Life",   "3.000000"},
                {"Class",  "Player"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BOLTGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Radius", "0.050000"},
                {"Life",   "3.000000"},
                {"Class",  "Player"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SHOTGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Radius", "0.050000"},
                {"Life",   "2.000000"},
                {"Class",  "Player"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Radius", "0.0500000"},
                {"Life",   "3.000000"},
                {"Class",  "Player"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "MINIROBOTGUN"},
                {"Id", "ROBOTGUN"},
                {"Id", "ROBOTGUNFRIENDL"},
                {"Id", "ROBOTGUNWEAK"},
                {"Id", "ROBOTSMG"},
                {"Id", "ROBOTSHOTGUN"},
                {"Id", "ROBOTBIGGUN"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Radius", "1.0000000"},
                {"Life",   "3.000000"},
                {"Class",  "Robot"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\DAMAGETABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BASICDAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ENERGY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "56.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXTREMEHEATDMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "56.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "NOOXYDAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "56.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "EXTREMECOLDDMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "56.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TOXICGASDMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "56.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TOX_ANOMALY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "10.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "RADIATIONDMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "56.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "RAD_ANOMALY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "10.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "IMPACTDAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "20.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "IMPACTSHIP"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "20.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "IMPACTGROUND"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "20.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "IMPACTINSTANCE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "STANDING_STONE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "100.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTGUNDMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "4.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTGUNDMG_MED"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "7.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTBIGGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "12.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTGRENADEDMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "14.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "STONEGRENADEDMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "6.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "STONESPIN_DMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "16.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "STONEPUNCH_DMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "20.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "STONE_EXPLODE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "24.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "STONELASER_DMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "4.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SPIDER_EXPLODE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "36.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "LASERDAMAGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "6.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SMLCREATUREDMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "40.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MINISPIDERDMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "24.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SPIDERDMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MEDCREATUREDMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "LRGCREATUREDMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "100.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "HUGECREATUREDMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "160.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PLAYERPREDDMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "80.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PREDDMGVR"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "40.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WEIRDCRTDMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "80.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FIEND_DMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "LANDSQUID_DMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "LANDSQUID_SPIT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "10.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BUG_DMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "40.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "QUEEN_DMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "70.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FIENDSPIT_DMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "QUEENSPIT_DMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "10.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WORM_DMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PLANTDMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "40.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SPORE_VENT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "40.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "VENUSFLY_DMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "40.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "AISHIPGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "28.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SHIPLASER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "30.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BOUNTYGUN1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "32.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BOUNTYGUN2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "32.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BOUNTYGUN3"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "32.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BOUNTYLASER1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "40.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BOUNTYLASER2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BOUNTYLASER3"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "100.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WALKERLASER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "10.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "POLICEGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "32.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "POLICELASER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "30.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SMALLASTEROID"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "10.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MEDIUMASTEROID"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "30.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "LARGEASTEROID"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "80.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "LANDING"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "160.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTERGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "40.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTERLASER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "40.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "VOLUNTARY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "200.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MPGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "8.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MPSHIPGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "50.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MPSHIPSHOTGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MPSHIPMINIGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "35.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MPSHIPPLASMAGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "250.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MPPLAYER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "3.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MPPLAYER_SHIP"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "90.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MPPLAYER_RAIL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "10.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MPPLAYER_SHOT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MPPLAYER_SMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MPPLAYER_GUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "8.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MPPLAYER_CANNON"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MPVEHICLE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MPSHIPROCKET"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "500.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MPGRENADE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "100.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MPVEHICLEGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "GASPLANT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "36.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "LOSTINSPACE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "RADIATION_LEAK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "30.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "JUSTPUSH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "VENT_HEAT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "150.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FISHFIEND_DMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "130.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FLOATER_DMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "160.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "JELLYFISH_DMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "40.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "GRABPLANT_DMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "20.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FISHFIEND_PROP"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "CLAM_DMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "70.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "INTERACT_SMALL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "100.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "INTERACT_LARGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "160.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "INTERACT_ENERGY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "56.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BARRELEXPLODE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "100.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SCUTTLERSPITDMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "20.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BASETURRETPDMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "10.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "LIGHTNING"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "150.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "LIGHTNING_SMALL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "100.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "LIGHTNING_DOT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "METEOR"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "150.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TORNADO"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "70.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MINIDRONE_DMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "12.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FIRE_CE_DMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SENTINEL_FLAME"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "6.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATERAID"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "8.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BIOFRIGATE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Damage", "2.000000"},
              }
            },
          }
        },
      }
    }
  }
}