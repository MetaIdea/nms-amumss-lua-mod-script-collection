NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME = "No_Sentinel_Terrain_Dmg",
    MOD_AUTHOR = "Demonessa",
    MODIFICATIONS =
    {
        {
            MBIN_CHANGE_TABLE =
            {
                {
                    MBIN_FILE_SOURCE = "METADATA/PROJECTILES/PROJECTILETABLE.MBIN",
                    EXML_CHANGE_TABLE =
                    {
                        {
                            SPECIAL_KEY_WORDS = {"ID", "ROBOTGRENADE"},
                            VALUE_CHANGE_TABLE =
                            {
								{"BehaviourFlags" , "ScareCreatures, ExplosionForce"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"ID", "ROBOTGRENADE2"},
                            VALUE_CHANGE_TABLE =
                            {
								{"BehaviourFlags" , "ScareCreatures, ExplosionForce"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"ID", "SENMECHCANON"},
                            VALUE_CHANGE_TABLE =
                            {
								{"BehaviourFlags" , "ScareCreatures, ExplosionForce"}
                            }
                        },
                    }
                },
				
            }
        }
    }
}