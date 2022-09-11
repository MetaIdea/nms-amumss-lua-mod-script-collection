ModName             =   "PTSd Starship Speed Rebalance"
ModAuthor           =   "Xen0nex"
LuaAuthor           =   "Hypn0tick,Xen0nex"
GameVersion         =   "3.99+"
BaseDescription     =   "Makes all ships start out slower but end up faster with enough upgrades, tweaks balance of boosting speed for different ship types."


------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
--------                    Multipliers & General Settings                  --------
------------------------------------------------------------------------------------
--------    This section mostly contains multipliers by which the "base numbers" further in the script will be affected.
--------    It also contains general settings and booleans (true/false statements) that affect the script in small ways.
--------    This section is more applicable to mod users wishing to tweak a particulr mod to their liking. It can also be used by mod authors to find appropriate base values.
--------    I have attempted to organize everything intuitively and comment each variable as clearly as possible. It should be easy to navigate, but if you have suggestions, please let me know.
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------

----------------------------------------------
-- General Settings
----------------------------------------------
Enable_Flight_Changes               =   true    --  This variable controls the main function of the script: re-writing the parameter blocks that control ship speeds.
                                                --  It is included to allow mods using only a subset of this script's features to maintain compatibility with other mods using this framework or otherwise altering the same core parameters.

Disable_Flight_Assist               =   false   --  When set to "true", the script will disable most automatic brake settings that act as an artificial "flight assist".
                                                --  This makes it so that ships will maintain their momentum while flying in space, similar to "Elite Dangerous".
                                                --  Note: This will only affect space travel and combat, but not planetary flight or atmospheric combat.

Disable_AutoAvoidance               =   false   --  When set to "true", the script will disable all flight automatic avoidance parameters.

Enable_Warp_Flight_Changes          =   false   --  When set to "true", the script will enable changes to warp drive parameters.
                                                --  Note: This does not include changes to freighters, which are handled by the "Enable_Freighter_Changes" variable.

Enable_Pulse_Flight_Changes         =   false   --  When set to "true", the script will enable changes to pulse flight (base numbers located at the top of the "Base Numbers" section).

Enable_Pulse_Distance_Changes       =   false   --  When set to "true", the script will enable changes to pulse distance and time minimums (base numbers located at the top of the "Base Numbers" section).
                                                --  Note: This does not include changes to pulse flight speeds. That is controlled by the "Enable_Flight_Changes" variable.

Enable_Freighter_Changes            =   false   --  When "true", the script will enable changes to freighter flight mechanics.
                                                --  This includes changes to warp distances, friendly fire ranges, summon distances, etc.

Disable_Pulse_Asteroids             =   false   --  This variable toggles whether asteroids will be generated while using the pulse engine.
                                                --  By default, the game will spawn up to 1000 asteroids per frame, which will often clip through the player's ship.
                                                --  Set this to "true" to disable asteroid generation while pulsing.

Disable_Speed_Lines                 =   false   --  When set to "true", the script will remove the "speed line" effect while flying.

Enable_Planet_Reverse               =   false   --  When "true", the script will alter values to allow for backwards planetary flight.
                                                --  Note: When "true", the script will ignore the "Enable_Planet_Hover" variable as they would conflict.

Enable_Planet_Hover                 =   false   --  When "true", the script will alter values to allow for hovering during planetary flight.
                                                --  Note: This has no effect when "Enable_Planet_Reverse" is set to "true", as it will be superceded.

Enable_Underwater_Flight            =   false   --  When "true", the script will alter values that to allow for underwater flight.
                                                --  Note: When "true", the script will ignore the "Enable_Low_Flight" variable as they would conflict.

Enable_Low_Flight                   =   false   --  When "true", the script will alter values that to allow for low flight relative to a planet's water level.
                                                --  Note: This has no effect when "Enable_Underwater_Flight" is set to "true", as it will be superceded.

Disable_Orientation_Limits          =   false   --  When set to "true", the script will disable all orientation limits.
                                                --  This will allow players to point their ships directly at the ground and rolling 360° in water.

Abandoned_Freighter_Enable_Saving   =   false   --  When "true", the game will save when a player exits their ship on an abandoned freighter.

Asteroid_Hit_Damage_Mult            =   1       --  Multiplier applied to damage from asteroid impacts.

Ship_Loot_Distance_Mult             =   1       --  This value sets the multipler for the distance at which loot will be attracted to the ship.

Ship_Inventory_Distance_Mult        =   1       --  Multiplier for ship inventory interaction range.

Ship_Teleporter_Distance_Mult       =   1       --  Multiplier for ship Teleport Receiver inventory interaction range bonus.

Ship_Scan_Distance_Mult             =   1       --  Multiplier for the radius of the ship's scaner range.

Ship_Scan_Cooldown_Mult             =   1       --  This sets the ship scanner cooldown; The lower the number, the quicker you're able to scan again.

Ship_Scan_Speed_Mult                =   1       --  This sets the speed of the scan pulse; The lower the number, the quicker it scans.

Ship_Launch_Cost_Mult               =   1       --  This sets the ship launch fuel cost. The lower the number, the cheaper it gets.
                                                --  Setting this to "0" makes launching your ship drain no fuel, setting it to "0.5" halves the amount, etc.

Buildings_Scan_Distance_Mult        =   1       --  Multiplier for the discovery radius of unknown buildings when scanning on a planet's surface.

Buildings_Icon_Distance_Max_Mult    =   1       --  Multiplier for the range at which icons will start to pop up when scanning.

Buildings_Scan_Number_Max_Mult      =   1       --  This will determine how many buildings you can scan at once.


----------------------------------------------
-- Freighter Settings
----------------------------------------------
Freighter_Remove_Multiplayer_Limit          =   false   --  When "true", the script will remove the game's default limit of one freighter summon per system.
                                                        --  This allows multiple players to summon their capital ships within a system.
                                                        --  Game default: false

Freighter_Spawn_Capital_First               =   false   --  When set to "true", this will replace the first freighter spawn in a given system with its capital freighter.
                                                        --  This will typically occur on the second spawn within a system, leading to an unecessary time barrier.
                                                        --  Game default: false

Freighter_Ignore_FriendlyFire_Distance      =   10000   --  This value determines the range at which freighters will ignore friendly fire.
                                                        --  Game default: 10000

Freighter_Tractor_Range                     =   500     --  This value determines the range at which a freighter's tractor beam will grab hold of the player's ship.
                                                        --  Game default: 500

Freighter_Planet_Summon_Distance_Offset     =   1000    --  This value determines the distance offset from a planet's surface when summoning a freighter.
                                                        --  Game default: 1000

Freighter_Hyperdrive_Core_Distance_Mult     =   1       --  This value sets a multiplier for freighter hyperdrive ranges at each tier.

Freighter_Hyperdrive_Bonus_Distance_Mult    =   1       --  This value sets a multiplier for the bonus granted by freighter hyperdrive upgrade modules.

Freighter_Hyperdrive_RGB_Distance_Mult      =   1       --  This value sets a multiplier for the bonus granted by the RGB hyperdrive upgrades (ones that let you access coloured star systems).


----------------------------------------------
-- Space Flight Settings
----------------------------------------------
Space_Speed_Max_Mult                =   1       --  This value sets a multiplier for the maximum speed of all ships.

Space_Speed_Min_Mult                =   1       --  This value sets a multiplier for the minimum speed for of all ships.

Space_Boost_Speed_Mult              =   1       --  This value sets a multiplier for the maximum boost speed of all ships.

Space_Thrust_Mult                   =   1       --  This value sets a multiplier for the thrust (acceleration) of all ships.

Space_Boost_Thrust_Mult             =   1       --  This value sets a multiplier for the thrust (acceleration) for all ships while boosting.

Space_Turn_Strength_Mult            =   1       --  This value sets a multiplier for the turn strength (maneuverability, more or less) for all ships during normal space flight.

Space_DirectionBrake_Mult           =   1       --  This value sets a multiplier for the speed reduction that occurs when changing directions in open space.

Space_TurnBrake_Mult                =   1       --  This value sets a multiplier for the speed reduction that occurs when turning in open space.

Pulse_Speed_Mult                    =   1       --  This value sets a multiplier for the speed of the pulse drive.
                                                --  By default, the script will increase this speed by 40%.

Pulse_Exit_Speed_Mult               =   1       --  This value sets a multiplier for the speed of the pulse drive.
                                                --  By default, the script will multiply this speed by 10x.

Pulse_Fuel_Time_Mult                =   1       --  This value determines the time between the fuel consumption "ticks" when using the pulse drive.
                                                --  By default, this script will double the fuel consumption to compensate for the lack of the need to maintain it with other changes posed by this mod.

Pulse_Stop_Distance_Planet_Mult     =   1       --  This value sets a multiplier for the distance from the targetted planet at which the player's ship will disengage the pulse engine.
                                                --  By default, the script will reduce this distance by 75%.
                                                --  Game default: 5000. Mod default: 1000 (5000 x 0.20).

Pulse_Stop_Distance_Default_Mult    =   1       --  This value sets a multiplier for the default distance from targetted POIs at which the player's ship will disengage the pulse engine.
                                                --  By default, the script will reduce this distance by 50%.

Warp_Jump_Distance_Mult             =   1       --  This value sets a multiplier for the base distance a ship can travel when using the warp drive.
                                                --  By default, the script will increase this value by 50%.
                                                --  Game default: 100. Mod default: 150 (100 x 1.5).
Warp_Fuel_JumpsPerCell_Mult         =   1       --  This value sets a multiplier for the amount of jumps that will consume an entire warp fuel cell.

----------------------------------------------
-- Planetary Flight Settings
----------------------------------------------
Planet_Speed_Min_Mult       =   1       --  This value sets the minimum possible speed while being inside a planet's atmosphere.

Planet_Speed_Max_Mult       =   1       --  This sets a multiplier for the maximum flight and maximum boost speed inside a planet's atmosphere (eg. 3 would mean flight speed would be at three times the normal speed).
                                        --  Base game default: 1. Mod default: 2.

Planet_Boost_Speed_Mult     =   1       --  Multiplier for strength of the boost acceleration. Set this depending on your Planet_Speed_Max_Mult setting.
                                        --  I recommend setting it to 3.5 for Planet_Speed_Max_Mult = 2. Set to 2 if Planet_Speed_Max_Mult = 1.

Planet_Turn_Strength_Mult   =   1       --  Change this depending on your Planet_Speed_Max_Mult setting. For Planet_Speed_Max_Mult = 1 set Planet_Turn_Strength_Mult = 1 as well. For Planet_Speed_Max_Mult = 2 I recommend setting Planet_Turn_Strength_Mult = 0.5, etc.

Planet_DirectionBrake_Mult  =   1       --  This value sets a multiplier for the speed reduction that occurs when changing directions inside a planet's atmosphere.

Planet_TurnBrake_Mult       =   1       --  This value sets a multiplier for the speed reduction that occurs when turning inside a planet's atmosphere.


----------------------------------------------
-- Combat Flight Settings
----------------------------------------------
Combat_Turn_Strength_Mult           =   1       --  This value sets a multiplier for the Maneuverability of all ships during combat.  There are other aspects to maneuverability as well, such as TurnBrakeMin, etc.

AtmosCombat_Turn_Strength_Mult      =   1       --  This value sets a multiplier for the thrust (acceleration) of all ships during atmospheric combat.

Combat_DirectionBrake_Mult          =   1       --  This value sets a multiplier for the speed reduction that occurs when changing directions during combat.

AtmosCombat_DirectionBrake_Mult     =   1       --  This value sets a multiplier for the speed reduction that occurs when changing directions during combat within a planet's atmosphere.

Combat_TurnBrake_Mult               =   1       --  This value sets a multiplier for the speed reduction that occurs when turning during combat.

AtmosCombat_TurnBrake_Mult          =   1       --  This value sets a multiplier for the speed reduction that occurs when turning during combat within a planet's atmosphere.


----------------------------------------------
-- Miscellaneous Settings
----------------------------------------------
Class_Bonus_Mult    =   1   --  Global multiplier for all Speed/Thrust related bonuses from Ship Class (C, B, A, S). Stacks with all the Global Thrust/Speed Multipliers above. Doesn't include maneuverability bonuses.



------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
--------                            Base Numbers                            --------
------------------------------------------------------------------------------------
--------    The following variables contain the base numbers for the script's parameters
--------    This section is more applicable to mod authors, or those wishing to share their settings with others.
--------    Simply insert the base numbers to be used for the various parameters, and users will be able to fine-tune to their liking with the multipliers.
--------    To find the appropriate numbers after tweaking the values using multipliers, simply open the affected files and search for the parameters associated with the different variables.
--------    I have attempted to arrange them untuitively, to minimize frutstration when entering values.
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------

----------------------------------------------
-- Base Numbers - Warp Drive
----------------------------------------------
Warp_Jump_Distance                  =   100     --  Default: 100
Warp_Fuel_JumpsPerCell_Default      =   2       --  Default: 2
Warp_Fuel_JumpsPerCell_Alien        =   1       --  Default: 1


----------------------------------------------
-- Base Numbers - Pulse Drive
----------------------------------------------
Pulse_Speed                         =   30000   --  Default: 30000
Pulse_Exit_Speed_Space              =   1000    --  Default: 1000
Pulse_Exit_Speed_Station            =   500     --  Default: 1000
Pulse_Speed_Acceleration_Time       =   0.1     --  Default: 0.1
Pulse_Cooldown                      =   2       --  Default: 2
Pulse_Fuel_Time                     =   0.5     --  Default: 0.5

Pulse_Stop_Distance_Planet          =   5000    --  Default: 5000
Pulse_Stop_Distance_Default         =   2500    --  Default: 2500
Pulse_Stop_Distance_Long            =   3500    --  Default: 3500

Pulse_HUD_AttractAngle              =   10      --  Default: 10
Pulse_HUD_AttractAngle_Station      =   5       --  Default: 5
Pulse_HUD_AttractAngle_Dense        =   4       --  Default: 4

Pulse_Min_Planet_Distance           =   2000    --  Default: 2000
Pulse_Min_Station_Distance          =   1000    --  Default: 2000
Pulse_Min_Asteroid_Distance         =   1000    --  Default: 2000
Pulse_Min_Anomaly_Distance          =   3000    --  Default: 3000
Pulse_Min_SpaceAnomaly_Distance     =   700     --  Default: 700
Pulse_Min_Freighter_Distance        =   800     --  Default: 800
Pulse_Min_Freighter_Angle           =   10      --  Default: 10
Pulse_Min_ShipDistance              =   2000    --  Default: 2000
Pulse_Min_ShipNear_MinTime          =   10      --  Default: 10
Pulse_Min_Ship_LastHitTime          =   10      --  Default: 10
Pulse_Min_Combat_MinBattleTime      =   35      --  Default: 35
Pulse_Min_Combat_MinTime            =   25      --  Default: 25
Pulse_Min_FreighterCombat_MinTime   =   55      --  Default: 55


----------------------------------------------
-- Base Numbers - AI Flight
----------------------------------------------
AI_Space_AvoidTime  =   3
AI_Planet_AvoidTime =   3
AI_Space_Hovering   =   "False"
AI_Planet_Hovering  =   "False"


----------------------------------------------
-- Base Numbers - Space Flight
----------------------------------------------
Space_MinSpeed_Force                    =   5
Planet_MinSpeed_Force                   =   31
Combat_MinSpeed_Force                   =   30
AtmosCombat_MinSpeed_Force              =   30

Control_Space_Thrust_Force              =   40
Control_Space_Speed_Max                 =   180
Control_Space_Speed_Min                 =   1
Control_Space_Falloff                   =   0.7
Control_Space_Boost_Thrust_Force        =   500
Control_Space_Boost_Speed               =   1800.0
Control_Space_Boost_Falloff             =   0.7
Control_Space_Boost_TurnDamp            =   0.1
Control_Space_DirectionBrake_Min        =   1
Control_Space_DirectionBrake_Max        =   1.5
Control_Space_Reverse_Brake             =   0.5
Control_Space_Overspeed_Brake           =   3
Control_Space_LowSpeed_TurnDamper       =   1
Control_Space_TurnBrake_Min             =   1
Control_Space_TurnBrake_Max             =   2
Control_Space_Turn_Strength             =   1
Control_Space_Roll_Amount               =   2
Control_Space_Roll_Force                =   1.25

ControlLight_Space_Thrust_Force         =   60
ControlLight_Space_Speed_Max            =   210
ControlLight_Space_Speed_Min            =   1
ControlLight_Space_Falloff              =   0.7
ControlLight_Space_Boost_Thrust_Force   =   600
ControlLight_Space_Boost_Speed          =   2250.0
ControlLight_Space_Boost_Falloff        =   0.7
ControlLight_Space_Boost_TurnDamp       =   0.1
ControlLight_Space_DirectionBrake_Min   =   0.8
ControlLight_Space_DirectionBrake_Max   =   1.2
ControlLight_Space_Reverse_Brake        =   0.5
ControlLight_Space_Overspeed_Brake      =   3
ControlLight_Space_LowSpeed_TurnDamper  =   1
ControlLight_Space_TurnBrake_Min        =   1
ControlLight_Space_TurnBrake_Max        =   3
ControlLight_Space_Turn_Strength        =   1.1
ControlLight_Space_Roll_Amount          =   2.3
ControlLight_Space_Roll_Force           =   1.25

ControlHeavy_Space_Thrust_Force         =   30
ControlHeavy_Space_Speed_Max            =   150
ControlHeavy_Space_Speed_Min            =   1
ControlHeavy_Space_Falloff              =   0.7
ControlHeavy_Space_Boost_Thrust_Force   =   400
ControlHeavy_Space_Boost_Speed          =   1500.0
ControlHeavy_Space_Boost_Falloff        =   0.7
ControlHeavy_Space_Boost_TurnDamp       =   0.1
ControlHeavy_Space_DirectionBrake_Min   =   1
ControlHeavy_Space_DirectionBrake_Max   =   1.5
ControlHeavy_Space_Reverse_Brake        =   0.5
ControlHeavy_Space_Overspeed_Brake      =   3
ControlHeavy_Space_LowSpeed_TurnDamper  =   1
ControlHeavy_Space_TurnBrake_Min        =   1
ControlHeavy_Space_TurnBrake_Max        =   3
ControlHeavy_Space_Turn_Strength        =   0.6
ControlHeavy_Space_Roll_Amount          =   1.5
ControlHeavy_Space_Roll_Force           =   1


----------------------------------------------
-- Base Numbers - Planetary Flight
----------------------------------------------
Control_Planet_Thrust_Force             =   30
Control_Planet_Speed_Max                =   130
Control_Planet_Speed_Min                =   20
Control_Planet_Falloff                  =   0.5
Control_Planet_Boost_Thrust_Force       =   100
Control_Planet_Boost_Speed              =   240.0
Control_Planet_Boost_Falloff            =   0.7
Control_Planet_Boost_TurnDamp           =   0.25
Control_Planet_DirectionBrake_Min       =   1
Control_Planet_DirectionBrake_Max       =   1.5
Control_Planet_Reverse_Brake            =   1
Control_Planet_Overspeed_Brake          =   3
Control_Planet_LowSpeed_TurnDamper      =   0.25
Control_Planet_TurnBrake_Min            =   2
Control_Planet_TurnBrake_Max            =   3
Control_Planet_Turn_Strength            =   1
Control_Planet_Roll_Amount              =   2
Control_Planet_Roll_Force               =   1.25

ControlLight_Planet_Thrust_Force        =   40
ControlLight_Planet_Speed_Max           =   150
ControlLight_Planet_Speed_Min           =   20
ControlLight_Planet_Falloff             =   0.5
ControlLight_Planet_Boost_Thrust_Force  =   200
ControlLight_Planet_Boost_Speed         =   270.0
ControlLight_Planet_Boost_Falloff       =   0.7
ControlLight_Planet_Boost_TurnDamp      =   0.3
ControlLight_Planet_DirectionBrake_Min  =   0.75
ControlLight_Planet_DirectionBrake_Max  =   1.15
ControlLight_Planet_Reverse_Brake       =   1
ControlLight_Planet_Overspeed_Brake     =   3
ControlLight_Planet_LowSpeed_TurnDamper =   0.01
ControlLight_Planet_TurnBrake_Min       =   3
ControlLight_Planet_TurnBrake_Max       =   4
ControlLight_Planet_Turn_Strength       =   1.65
ControlLight_Planet_Roll_Amount         =   2
ControlLight_Planet_Roll_Force          =   1.25

ControlHeavy_Planet_Thrust_Force        =   20
ControlHeavy_Planet_Speed_Max           =   110
ControlHeavy_Planet_Speed_Min           =   20
ControlHeavy_Planet_Falloff             =   0.5
ControlHeavy_Planet_Boost_Thrust_Force  =   50
ControlHeavy_Planet_Boost_Speed         =   210.0
ControlHeavy_Planet_Boost_Falloff       =   0.7
ControlHeavy_Planet_Boost_TurnDamp      =   0.15
ControlHeavy_Planet_DirectionBrake_Min  =   0.35
ControlHeavy_Planet_DirectionBrake_Max  =   0.8
ControlHeavy_Planet_Reverse_Brake       =   1
ControlHeavy_Planet_Overspeed_Brake     =   3
ControlHeavy_Planet_LowSpeed_TurnDamper =   0.4
ControlHeavy_Planet_TurnBrake_Min       =   1
ControlHeavy_Planet_TurnBrake_Max       =   2
ControlHeavy_Planet_Turn_Strength       =   0.7
ControlHeavy_Planet_Roll_Amount         =   1.25
ControlHeavy_Planet_Roll_Force          =   1


----------------------------------------------
-- Base Numbers - Combat Flight
----------------------------------------------
Control_Combat_Thrust_Force                     =   40
Control_Combat_Speed_Max                        =   80
Control_Combat_Speed_Min                        =   50
Control_Combat_Falloff                          =   0.7
Control_Combat_Boost_Thrust_Force               =   500
Control_Combat_Boost_Speed                      =   1800.0
Control_Combat_Boost_Falloff                    =   0.7
Control_Combat_Boost_TurnDamp                   =   0.1
Control_Combat_DirectionBrake_Min               =   1
Control_Combat_DirectionBrake_Max               =   2
Control_Combat_Reverse_Brake                    =   0.5
Control_Combat_Overspeed_Brake                  =   3
Control_Combat_LowSpeed_TurnDamper              =   1
Control_Combat_TurnBrake_Min                    =   1
Control_Combat_TurnBrake_Max                    =   4
Control_Combat_Turn_Strength                    =   1.3
Control_Combat_Roll_Amount                      =   2
Control_Combat_Roll_Force                       =   1.25

ControlLight_Combat_Thrust_Force                =   60
ControlLight_Combat_Speed_Max                   =   90
ControlLight_Combat_Speed_Min                   =   50
ControlLight_Combat_Falloff                     =   0.7
ControlLight_Combat_Boost_Thrust_Force          =   600
ControlLight_Combat_Boost_Speed                 =   2250.0
ControlLight_Combat_Boost_Falloff               =   0.7
ControlLight_Combat_Boost_TurnDamp              =   0.1
ControlLight_Combat_DirectionBrake_Min          =   1
ControlLight_Combat_DirectionBrake_Max          =   1.5
ControlLight_Combat_Reverse_Brake               =   0.5
ControlLight_Combat_Overspeed_Brake             =   3
ControlLight_Combat_LowSpeed_TurnDamper         =   1
ControlLight_Combat_TurnBrake_Min               =   1
ControlLight_Combat_TurnBrake_Max               =   4
ControlLight_Combat_Turn_Strength               =   1.5
ControlLight_Combat_Roll_Amount                 =   2.3
ControlLight_Combat_Roll_Force                  =   1.25

ControlHeavy_Combat_Thrust_Force                =   30
ControlHeavy_Combat_Speed_Max                   =   70
ControlHeavy_Combat_Speed_Min                   =   50
ControlHeavy_Combat_Falloff                     =   0.7
ControlHeavy_Combat_Boost_Thrust_Force          =   400
ControlHeavy_Combat_Boost_Speed                 =   1500.0
ControlHeavy_Combat_Boost_Falloff               =   0.7
ControlHeavy_Combat_Boost_TurnDamp              =   0.1
ControlHeavy_Combat_DirectionBrake_Min          =   1
ControlHeavy_Combat_DirectionBrake_Max          =   2
ControlHeavy_Combat_Reverse_Brake               =   0.5
ControlHeavy_Combat_Overspeed_Brake             =   3
ControlHeavy_Combat_LowSpeed_TurnDamper         =   1
ControlHeavy_Combat_TurnBrake_Min               =   1
ControlHeavy_Combat_TurnBrake_Max               =   4
ControlHeavy_Combat_Turn_Strength               =   1
ControlHeavy_Combat_Roll_Amount                 =   1.5
ControlHeavy_Combat_Roll_Force                  =   1


----------------------------------------------
-- Base Numbers - Atmospheric Combat Flight
----------------------------------------------
Control_AtmosCombat_Thrust_Force                =   40
Control_AtmosCombat_Speed_Max                   =   80
Control_AtmosCombat_Speed_Min                   =   10
Control_AtmosCombat_Falloff                     =   0.7
Control_AtmosCombat_Boost_Thrust_Force          =   80
Control_AtmosCombat_Boost_Speed                 =   210.0
Control_AtmosCombat_Boost_Falloff               =   0.7
Control_AtmosCombat_Boost_TurnDamp              =   0.1
Control_AtmosCombat_DirectionBrake_Min          =   1
Control_AtmosCombat_DirectionBrake_Max          =   2
Control_AtmosCombat_Reverse_Brake               =   0.5
Control_AtmosCombat_Overspeed_Brake             =   3
Control_AtmosCombat_LowSpeed_TurnDamper         =   0.01
Control_AtmosCombat_TurnBrake_Min               =   1
Control_AtmosCombat_TurnBrake_Max               =   4
Control_AtmosCombat_Turn_Strength               =   1.3
Control_AtmosCombat_Roll_Amount                 =   2
Control_AtmosCombat_Roll_Force                  =   1.25

ControlLight_AtmosCombat_Thrust_Force           =   60
ControlLight_AtmosCombat_Speed_Max              =   90
ControlLight_AtmosCombat_Speed_Min              =   10
ControlLight_AtmosCombat_Falloff                =   0.7
ControlLight_AtmosCombat_Boost_Thrust_Force     =   110
ControlLight_AtmosCombat_Boost_Speed            =   240.0
ControlLight_AtmosCombat_Boost_Falloff          =   0.7
ControlLight_AtmosCombat_Boost_TurnDamp         =   0.1
ControlLight_AtmosCombat_DirectionBrake_Min     =   1
ControlLight_AtmosCombat_DirectionBrake_Max     =   1.5
ControlLight_AtmosCombat_Reverse_Brake          =   0.5
ControlLight_AtmosCombat_Overspeed_Brake        =   3
ControlLight_AtmosCombat_LowSpeed_TurnDamper    =   0.01
ControlLight_AtmosCombat_TurnBrake_Min          =   1
ControlLight_AtmosCombat_TurnBrake_Max          =   4
ControlLight_AtmosCombat_Turn_Strength          =   1.5
ControlLight_AtmosCombat_Roll_Amount            =   2.3
ControlLight_AtmosCombat_Roll_Force             =   1.25

ControlHeavy_AtmosCombat_Thrust_Force           =   30
ControlHeavy_AtmosCombat_Speed_Max              =   70
ControlHeavy_AtmosCombat_Speed_Min              =   10
ControlHeavy_AtmosCombat_Falloff                =   0.7
ControlHeavy_AtmosCombat_Boost_Thrust_Force     =   60
ControlHeavy_AtmosCombat_Boost_Speed            =   180.0
ControlHeavy_AtmosCombat_Boost_Falloff          =   0.7
ControlHeavy_AtmosCombat_Boost_TurnDamp         =   0.1
ControlHeavy_AtmosCombat_DirectionBrake_Min     =   1
ControlHeavy_AtmosCombat_DirectionBrake_Max     =   2
ControlHeavy_AtmosCombat_Reverse_Brake          =   0.5
ControlHeavy_AtmosCombat_Overspeed_Brake        =   3
ControlHeavy_AtmosCombat_LowSpeed_TurnDamper    =   0.01
ControlHeavy_AtmosCombat_TurnBrake_Min          =   1
ControlHeavy_AtmosCombat_TurnBrake_Max          =   4
ControlHeavy_AtmosCombat_Turn_Strength          =   1
ControlHeavy_AtmosCombat_Roll_Amount            =   1.5
ControlHeavy_AtmosCombat_Roll_Force             =   1


----------------------------------------------
-- Base Numbers - Class Bonuses
----------------------------------------------
BonusC_Thrust_Max               =   30
BonusC_Thrust_Min               =   -5
BonusC_MaxSpeed_Max             =   5
BonusC_MaxSpeed_Min             =   0
BonusC_BoostSpeed_Max           =   7.5
BonusC_BoostSpeed_Min           =   0.0
BonusC_Boost_TurnDamp_Max       =   0
BonusC_Boost_TurnDamp_Min       =   0
BonusC_Boost_DirectionBrake_Max =   -0.25
BonusC_Boost_DirectionBrake_Min =   0.2
BonusC_Turn_Strength_Max        =   -0.05
BonusC_Turn_Strength_Min        =   0.05

BonusB_Thrust_Max               =   60
BonusB_Thrust_Min               =   20
BonusB_MaxSpeed_Max             =   5
BonusB_MaxSpeed_Min             =   0
BonusB_BoostSpeed_Max           =   7.5
BonusB_BoostSpeed_Min           =   0.0
BonusB_Boost_TurnDamp_Max       =   0.05
BonusB_Boost_TurnDamp_Min       =   -0.05
BonusB_Boost_DirectionBrake_Max =   0.2
BonusB_Boost_DirectionBrake_Min =   -0.2
BonusB_Turn_Strength_Max        =   0.1
BonusB_Turn_Strength_Min        =   0

BonusA_Thrust_Max               =   100
BonusA_Thrust_Min               =   50
BonusA_MaxSpeed_Max             =   20
BonusA_MaxSpeed_Min             =   3
BonusA_BoostSpeed_Max           =   15.0
BonusA_BoostSpeed_Min           =   7.5
BonusA_Boost_TurnDamp_Max       =   0.05
BonusA_Boost_TurnDamp_Min       =   -0.05
BonusA_Boost_DirectionBrake_Max =   0.2
BonusA_Boost_DirectionBrake_Min =   -0.2
BonusA_Turn_Strength_Max        =   0.15
BonusA_Turn_Strength_Min        =   0

BonusS_Thrust_Max               =   250
BonusS_Thrust_Min               =   50
BonusS_MaxSpeed_Max             =   30
BonusS_MaxSpeed_Min             =   15
BonusS_BoostSpeed_Max           =   22.5
BonusS_BoostSpeed_Min           =   7.5
BonusS_Boost_TurnDamp_Max       =   0.1
BonusS_Boost_TurnDamp_Min       =   0
BonusS_Boost_DirectionBrake_Max =   0.2
BonusS_Boost_DirectionBrake_Min =   -0.1
BonusS_Turn_Strength_Max        =   0.25
BonusS_Turn_Strength_Min        =   0.1


----------------------------------------------
-- Base Numbers - Miscellaneous
----------------------------------------------
Nexus_Spawn_Rotation        =   15      --  This value determines the rotation of the Nexus when spawned.
                                        --  Game default: 15

Nexus_Spawn_Pitch           =   15      --  This value determines the pitch of the Nexus when spawned.
                                        --  Game default: 15

Nexus_Spawn_Distance        =   -9000   --  This value determines the distance of the Nexus when spawned.
                                        --  Game default: -9000


------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
--------                                Code                                --------
------------------------------------------------------------------------------------
--------    This is where the script actually begins. Modifications to the following sections should be unnecessary, but hopefully informative as well!
--------    If there are any variables that you believe should be included above but were neglected, please feel free to let me know.
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------

----------------------------------------------
-- Ship Speed Changes
----------------------------------------------
Ship_Engine_Data =
{
   {
        ["PRECEDING"]   =   "Control",
        ["DATA"] =
        {
            {"SpaceEngine", Control_Space_Thrust_Force*Space_Thrust_Mult, Control_Space_Speed_Max*Space_Speed_Max_Mult, Control_Space_Speed_Min*Space_Speed_Min_Mult, Control_Space_Falloff, Space_MinSpeed_Force, Control_Space_Boost_Thrust_Force*Space_Boost_Thrust_Mult, Control_Space_Boost_Speed*Space_Boost_Speed_Mult, Control_Space_Boost_Falloff, Control_Space_Boost_TurnDamp, Control_Space_DirectionBrake_Min*Space_DirectionBrake_Mult, Control_Space_DirectionBrake_Max*Space_DirectionBrake_Mult, Control_Space_Reverse_Brake, Control_Space_Overspeed_Brake, Control_Space_LowSpeed_TurnDamper, Control_Space_TurnBrake_Min*Space_TurnBrake_Mult, Control_Space_TurnBrake_Max*Space_TurnBrake_Mult, Control_Space_Turn_Strength*Space_Turn_Strength_Mult, Control_Space_Roll_Amount, Control_Space_Roll_Force, "2", "0.4", "4", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
            {"PlanetEngine", Control_Planet_Thrust_Force*Space_Thrust_Mult, Control_Planet_Speed_Max*Planet_Speed_Max_Mult, Control_Planet_Speed_Min*Planet_Speed_Min_Mult, Control_Planet_Falloff, Planet_MinSpeed_Force, Control_Planet_Boost_Thrust_Force*Space_Boost_Thrust_Mult, Control_Planet_Boost_Speed*Planet_Boost_Speed_Mult, Control_Planet_Boost_Falloff, Control_Planet_Boost_TurnDamp, Control_Planet_DirectionBrake_Min*Planet_DirectionBrake_Mult, Control_Planet_DirectionBrake_Max*Planet_DirectionBrake_Mult, Control_Planet_Reverse_Brake, Control_Planet_Overspeed_Brake, Control_Planet_LowSpeed_TurnDamper, Control_Planet_TurnBrake_Min*Planet_TurnBrake_Mult, Control_Planet_TurnBrake_Max*Planet_TurnBrake_Mult, Control_Planet_Turn_Strength*Planet_Turn_Strength_Mult, Control_Planet_Roll_Amount, Control_Planet_Roll_Force, "0.5", "0.6", "0.7", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
            {"CombatEngine", Control_Combat_Thrust_Force*Space_Thrust_Mult, Control_Combat_Speed_Max*Space_Speed_Max_Mult, Control_Combat_Speed_Min*Space_Speed_Min_Mult, ControlHeavy_Combat_Falloff, Combat_MinSpeed_Force, Control_Combat_Boost_Thrust_Force*Space_Boost_Thrust_Mult, Control_Combat_Boost_Speed*Space_Boost_Speed_Mult, Control_Combat_Boost_Falloff, Control_Combat_Boost_TurnDamp, Control_Combat_DirectionBrake_Min*Combat_DirectionBrake_Mult, Control_Combat_DirectionBrake_Max*Combat_DirectionBrake_Mult, Control_Combat_Reverse_Brake, Control_Combat_Overspeed_Brake, Control_Combat_LowSpeed_TurnDamper, Control_Combat_TurnBrake_Min*Combat_TurnBrake_Mult, Control_Combat_TurnBrake_Max*Combat_TurnBrake_Mult, Control_Combat_Turn_Strength*Combat_Turn_Strength_Mult, Control_Combat_Roll_Amount, Control_Combat_Roll_Force, "2", "0.4", "4", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
            {"AtmosCombatEngine", Control_AtmosCombat_Thrust_Force*Space_Thrust_Mult, Control_AtmosCombat_Speed_Max*Planet_Speed_Max_Mult, Control_AtmosCombat_Speed_Min*Planet_Speed_Min_Mult, ControlHeavy_AtmosCombat_Falloff, AtmosCombat_MinSpeed_Force, Control_AtmosCombat_Boost_Thrust_Force*Space_Boost_Thrust_Mult, Control_AtmosCombat_Boost_Speed*Space_Boost_Speed_Mult, Control_AtmosCombat_Boost_Falloff, Control_AtmosCombat_Boost_TurnDamp, Control_AtmosCombat_DirectionBrake_Min*AtmosCombat_DirectionBrake_Mult, Control_AtmosCombat_DirectionBrake_Max*AtmosCombat_DirectionBrake_Mult, Control_AtmosCombat_Reverse_Brake, Control_AtmosCombat_Overspeed_Brake, Control_AtmosCombat_LowSpeed_TurnDamper, Control_AtmosCombat_TurnBrake_Min*AtmosCombat_TurnBrake_Mult, Control_AtmosCombat_TurnBrake_Max*AtmosCombat_TurnBrake_Mult, Control_AtmosCombat_Turn_Strength*AtmosCombat_Turn_Strength_Mult, Control_AtmosCombat_Roll_Amount, Control_AtmosCombat_Roll_Force, "2", "0.4", "4", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
        }
   },
   {    
        ["PRECEDING"]   =   "ControlLight",
        ["DATA"] =
        {
           {"SpaceEngine", ControlLight_Space_Thrust_Force*Space_Thrust_Mult, ControlLight_Space_Speed_Max*Space_Speed_Max_Mult, ControlLight_Space_Speed_Min*Space_Speed_Min_Mult, ControlLight_Space_Falloff, Space_MinSpeed_Force, ControlLight_Space_Boost_Thrust_Force*Space_Boost_Thrust_Mult, ControlLight_Space_Boost_Speed*Space_Boost_Speed_Mult, ControlLight_Space_Boost_Falloff, ControlLight_Space_Boost_TurnDamp, ControlLight_Space_DirectionBrake_Min*Space_DirectionBrake_Mult, ControlLight_Space_DirectionBrake_Max*Space_DirectionBrake_Mult, ControlLight_Space_Reverse_Brake, ControlLight_Space_Overspeed_Brake, ControlLight_Space_LowSpeed_TurnDamper, ControlLight_Space_TurnBrake_Min*Space_TurnBrake_Mult, ControlLight_Space_TurnBrake_Max*Space_TurnBrake_Mult, ControlLight_Space_Turn_Strength*Space_Turn_Strength_Mult, ControlLight_Space_Roll_Amount, ControlLight_Space_Roll_Force, "2", "0.4", "4", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
           {"PlanetEngine", ControlLight_Planet_Thrust_Force*Space_Thrust_Mult, ControlLight_Planet_Speed_Max*Planet_Speed_Max_Mult, ControlLight_Planet_Speed_Min*Planet_Speed_Min_Mult, ControlLight_Planet_Falloff, Planet_MinSpeed_Force, ControlLight_Planet_Boost_Thrust_Force*Space_Boost_Thrust_Mult, ControlLight_Planet_Boost_Speed*Planet_Boost_Speed_Mult, ControlLight_Planet_Boost_Falloff, ControlLight_Planet_Boost_TurnDamp, ControlLight_Planet_DirectionBrake_Min*Planet_DirectionBrake_Mult, ControlLight_Planet_DirectionBrake_Max*Planet_DirectionBrake_Mult, ControlLight_Planet_Reverse_Brake, ControlLight_Planet_Overspeed_Brake, ControlLight_Planet_LowSpeed_TurnDamper, ControlLight_Planet_TurnBrake_Min*Planet_TurnBrake_Mult, ControlLight_Planet_TurnBrake_Max*Planet_TurnBrake_Mult, ControlLight_Planet_Turn_Strength*Planet_Turn_Strength_Mult, ControlLight_Planet_Roll_Amount, ControlLight_Planet_Roll_Force, "0.5", "0.6", "1.7", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
           {"CombatEngine", ControlLight_Combat_Thrust_Force*Space_Thrust_Mult, ControlLight_Combat_Speed_Max*Space_Speed_Max_Mult, ControlLight_Combat_Speed_Min*Space_Speed_Min_Mult, ControlLight_Combat_Falloff, Combat_MinSpeed_Force, ControlLight_Combat_Boost_Thrust_Force*Space_Boost_Thrust_Mult, ControlLight_Combat_Boost_Speed*Space_Boost_Speed_Mult, ControlLight_Combat_Boost_Falloff, ControlLight_Combat_Boost_TurnDamp, ControlLight_Combat_DirectionBrake_Min*Combat_DirectionBrake_Mult, ControlLight_Combat_DirectionBrake_Max*Combat_DirectionBrake_Mult, ControlLight_Combat_Reverse_Brake, ControlLight_Combat_Overspeed_Brake, ControlLight_Combat_LowSpeed_TurnDamper, ControlLight_Combat_TurnBrake_Min*Combat_TurnBrake_Mult, ControlLight_Combat_TurnBrake_Max*Combat_TurnBrake_Mult, ControlLight_Combat_Turn_Strength*Combat_Turn_Strength_Mult, ControlLight_Combat_Roll_Amount, ControlLight_Combat_Roll_Force, "2", "0.4", "4", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
           {"AtmosCombatEngine", ControlLight_AtmosCombat_Thrust_Force*Space_Thrust_Mult, ControlLight_AtmosCombat_Speed_Max*Planet_Speed_Max_Mult, ControlLight_AtmosCombat_Speed_Min*Planet_Speed_Min_Mult, ControlLight_AtmosCombat_Falloff, AtmosCombat_MinSpeed_Force, ControlLight_AtmosCombat_Boost_Thrust_Force*Space_Boost_Thrust_Mult, ControlLight_AtmosCombat_Boost_Speed*Space_Boost_Speed_Mult, ControlLight_AtmosCombat_Boost_Falloff, ControlLight_AtmosCombat_Boost_TurnDamp, ControlLight_AtmosCombat_DirectionBrake_Min*AtmosCombat_DirectionBrake_Mult, ControlLight_AtmosCombat_DirectionBrake_Max*AtmosCombat_DirectionBrake_Mult, ControlLight_AtmosCombat_Reverse_Brake, ControlLight_AtmosCombat_Overspeed_Brake, ControlLight_AtmosCombat_LowSpeed_TurnDamper, ControlLight_AtmosCombat_TurnBrake_Min*AtmosCombat_TurnBrake_Mult, ControlLight_AtmosCombat_TurnBrake_Max*AtmosCombat_TurnBrake_Mult, ControlLight_AtmosCombat_Turn_Strength*AtmosCombat_Turn_Strength_Mult, ControlLight_AtmosCombat_Roll_Amount, ControlLight_AtmosCombat_Roll_Force, "2", "0.4", "4", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
       }
   },
   {
        ["PRECEDING"]   =   "ControlHeavy",
        ["DATA"] =
        {
            {"SpaceEngine", ControlHeavy_Space_Thrust_Force*Space_Thrust_Mult, ControlHeavy_Space_Speed_Max*Space_Speed_Max_Mult, ControlHeavy_Space_Speed_Min*Space_Speed_Min_Mult, ControlHeavy_Space_Falloff, Space_MinSpeed_Force, ControlHeavy_Space_Boost_Thrust_Force*Space_Boost_Thrust_Mult, ControlHeavy_Space_Boost_Speed*Space_Boost_Speed_Mult, ControlHeavy_Space_Boost_Falloff, ControlHeavy_Space_Boost_TurnDamp, ControlHeavy_Space_DirectionBrake_Min*Space_DirectionBrake_Mult, ControlHeavy_Space_DirectionBrake_Max*Space_DirectionBrake_Mult, ControlHeavy_Space_Reverse_Brake, ControlHeavy_Space_Overspeed_Brake, ControlHeavy_Space_LowSpeed_TurnDamper, ControlHeavy_Space_TurnBrake_Min*Space_TurnBrake_Mult, ControlHeavy_Space_TurnBrake_Max*Space_TurnBrake_Mult, ControlHeavy_Space_Turn_Strength*Space_Turn_Strength_Mult, ControlHeavy_Space_Roll_Amount, ControlHeavy_Space_Roll_Force, "2", "0.4", "4", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
            {"PlanetEngine", ControlHeavy_Planet_Thrust_Force*Space_Thrust_Mult, ControlHeavy_Planet_Speed_Max*Planet_Speed_Max_Mult, ControlHeavy_Planet_Speed_Min*Planet_Speed_Min_Mult, ControlHeavy_Planet_Falloff, Planet_MinSpeed_Force, ControlHeavy_Planet_Boost_Thrust_Force*Space_Boost_Thrust_Mult, ControlHeavy_Planet_Boost_Speed*Planet_Boost_Speed_Mult, ControlHeavy_Planet_Boost_Falloff, ControlHeavy_Planet_Boost_TurnDamp, ControlHeavy_Planet_DirectionBrake_Min*Planet_DirectionBrake_Mult, ControlHeavy_Planet_DirectionBrake_Max*Planet_DirectionBrake_Mult, ControlHeavy_Planet_Reverse_Brake, ControlHeavy_Planet_Overspeed_Brake, ControlHeavy_Planet_LowSpeed_TurnDamper, ControlHeavy_Planet_TurnBrake_Min*Planet_TurnBrake_Mult, ControlHeavy_Planet_TurnBrake_Max*Planet_TurnBrake_Mult, ControlHeavy_Planet_Turn_Strength*Planet_Turn_Strength_Mult, ControlHeavy_Planet_Roll_Amount, ControlHeavy_Planet_Roll_Force, "0.5", "0.65", "1.75", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
            {"CombatEngine", ControlHeavy_Combat_Thrust_Force*Space_Thrust_Mult, ControlHeavy_Combat_Speed_Max*Space_Speed_Max_Mult, ControlHeavy_Combat_Speed_Min*Space_Speed_Min_Mult, ControlHeavy_Combat_Falloff, Combat_MinSpeed_Force, ControlHeavy_Combat_Boost_Thrust_Force*Space_Boost_Thrust_Mult, ControlHeavy_Combat_Boost_Speed*Space_Boost_Speed_Mult, ControlHeavy_Combat_Boost_Falloff, ControlHeavy_Combat_Boost_TurnDamp, ControlHeavy_Combat_DirectionBrake_Min*Combat_DirectionBrake_Mult, ControlHeavy_Combat_DirectionBrake_Max*Combat_DirectionBrake_Mult, ControlHeavy_Combat_Reverse_Brake, ControlHeavy_Combat_Overspeed_Brake, ControlHeavy_Combat_LowSpeed_TurnDamper, ControlHeavy_Combat_TurnBrake_Min*Combat_TurnBrake_Mult, ControlHeavy_Combat_TurnBrake_Max*Combat_TurnBrake_Mult, ControlHeavy_Combat_Turn_Strength*AtmosCombat_Turn_Strength_Mult, ControlHeavy_Combat_Roll_Amount, ControlHeavy_Combat_Roll_Force, "2", "0.4", "4", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
            {"AtmosCombatEngine", ControlHeavy_AtmosCombat_Thrust_Force*Space_Thrust_Mult, ControlHeavy_AtmosCombat_Speed_Max*Planet_Speed_Max_Mult, ControlHeavy_AtmosCombat_Speed_Min*Planet_Speed_Min_Mult, ControlHeavy_AtmosCombat_Falloff, AtmosCombat_MinSpeed_Force, ControlHeavy_AtmosCombat_Boost_Thrust_Force*Space_Boost_Thrust_Mult, ControlHeavy_AtmosCombat_Boost_Speed*Space_Boost_Speed_Mult, ControlHeavy_AtmosCombat_Boost_Falloff, ControlHeavy_AtmosCombat_Boost_TurnDamp, ControlHeavy_AtmosCombat_DirectionBrake_Min*AtmosCombat_DirectionBrake_Mult, ControlHeavy_AtmosCombat_DirectionBrake_Max*AtmosCombat_DirectionBrake_Mult, ControlHeavy_AtmosCombat_Reverse_Brake, ControlHeavy_AtmosCombat_Overspeed_Brake, ControlHeavy_AtmosCombat_LowSpeed_TurnDamper, ControlHeavy_AtmosCombat_TurnBrake_Min*AtmosCombat_TurnBrake_Mult, ControlHeavy_AtmosCombat_TurnBrake_Max*AtmosCombat_TurnBrake_Mult, ControlHeavy_AtmosCombat_Turn_Strength*AtmosCombat_Turn_Strength_Mult, ControlHeavy_AtmosCombat_Roll_Amount, ControlHeavy_AtmosCombat_Roll_Force, "2", "0.4", "4", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
        }
    },
}

Ship_Bonus_Data =
{
  {
        ["DATA"] =
        {
            {"ControlBonusC", BonusC_Thrust_Max*Space_Thrust_Mult*Class_Bonus_Mult, BonusC_Thrust_Min*Space_Thrust_Mult*Class_Bonus_Mult, BonusC_MaxSpeed_Max*Space_Speed_Max_Mult*Class_Bonus_Mult, BonusC_MaxSpeed_Min*Space_Speed_Max_Mult*Class_Bonus_Mult, BonusC_BoostSpeed_Max*Space_Boost_Speed_Mult*Class_Bonus_Mult, BonusC_BoostSpeed_Min*Space_Boost_Speed_Mult*Class_Bonus_Mult, BonusC_Boost_TurnDamp_Max, BonusC_Boost_TurnDamp_Min, BonusC_Boost_DirectionBrake_Max*Space_DirectionBrake_Mult/Class_Bonus_Mult, BonusC_Boost_DirectionBrake_Min*Space_DirectionBrake_Mult/Class_Bonus_Mult, BonusC_Turn_Strength_Max*Space_Turn_Strength_Mult, BonusC_Turn_Strength_Min*Space_Turn_Strength_Mult},
            {"ControlBonusB", BonusB_Thrust_Max*Space_Thrust_Mult*Class_Bonus_Mult, BonusB_Thrust_Min*Space_Thrust_Mult*Class_Bonus_Mult, BonusB_MaxSpeed_Max*Space_Speed_Max_Mult*Class_Bonus_Mult, BonusB_MaxSpeed_Min*Space_Speed_Max_Mult*Class_Bonus_Mult, BonusB_BoostSpeed_Max*Space_Boost_Speed_Mult*Class_Bonus_Mult, BonusB_BoostSpeed_Min*Space_Boost_Speed_Mult*Class_Bonus_Mult, BonusB_Boost_TurnDamp_Max, BonusB_Boost_TurnDamp_Min, BonusB_Boost_DirectionBrake_Max*Space_DirectionBrake_Mult/Class_Bonus_Mult, BonusB_Boost_DirectionBrake_Min*Space_DirectionBrake_Mult/Class_Bonus_Mult, BonusB_Turn_Strength_Max*Space_Turn_Strength_Mult, BonusB_Turn_Strength_Min*Space_Turn_Strength_Mult},
            {"ControlBonusA", BonusA_Thrust_Max*Space_Thrust_Mult*Class_Bonus_Mult, BonusA_Thrust_Min*Space_Thrust_Mult*Class_Bonus_Mult, BonusA_MaxSpeed_Max*Space_Speed_Max_Mult*Class_Bonus_Mult, BonusA_MaxSpeed_Min*Space_Speed_Max_Mult*Class_Bonus_Mult, BonusA_BoostSpeed_Max*Space_Boost_Speed_Mult*Class_Bonus_Mult, BonusA_BoostSpeed_Min*Space_Boost_Speed_Mult*Class_Bonus_Mult, BonusA_Boost_TurnDamp_Max, BonusA_Boost_TurnDamp_Min, BonusA_Boost_DirectionBrake_Max*Space_DirectionBrake_Mult/Class_Bonus_Mult, BonusA_Boost_DirectionBrake_Min*Space_DirectionBrake_Mult/Class_Bonus_Mult, BonusA_Turn_Strength_Max*Space_Turn_Strength_Mult, BonusA_Turn_Strength_Min*Space_Turn_Strength_Mult},
            {"ControlBonusS", BonusS_Thrust_Max*Space_Thrust_Mult*Class_Bonus_Mult, BonusS_Thrust_Min*Space_Thrust_Mult*Class_Bonus_Mult, BonusS_MaxSpeed_Max*Space_Speed_Max_Mult*Class_Bonus_Mult, BonusS_MaxSpeed_Min*Space_Speed_Max_Mult*Class_Bonus_Mult, BonusS_BoostSpeed_Max*Space_Boost_Speed_Mult*Class_Bonus_Mult, BonusS_BoostSpeed_Min*Space_Boost_Speed_Mult*Class_Bonus_Mult, BonusS_Boost_TurnDamp_Max, BonusS_Boost_TurnDamp_Min, BonusS_Boost_DirectionBrake_Max*Space_DirectionBrake_Mult/Class_Bonus_Mult, BonusS_Boost_DirectionBrake_Min*Space_DirectionBrake_Mult/Class_Bonus_Mult, BonusS_Turn_Strength_Max*Space_Turn_Strength_Mult, BonusS_Turn_Strength_Min*Space_Turn_Strength_Mult},
        }
    },
}

AI_Flight_Data =
{
  {
        ["DATA"] =
        {
            {"SPACE_EASY", Control_Combat_Speed_Min*Space_Speed_Min_Mult, Control_Combat_Speed_Max*Space_Speed_Max_Mult, Control_Combat_Boost_Speed*Space_Boost_Speed_Mult, "100", Combat_MinSpeed_Force, Control_Combat_Turn_Strength*Combat_Turn_Strength_Mult/2, Control_Combat_Turn_Strength*Combat_Turn_Strength_Mult, Control_Combat_DirectionBrake_Max*Combat_DirectionBrake_Mult, Control_Combat_Overspeed_Brake, Control_Combat_Falloff, Control_Combat_Roll_Amount, "30", AI_Space_AvoidTime, AI_Space_Hovering},
            {"SPACE_HARD", Control_Combat_Speed_Min*Space_Speed_Min_Mult, Control_Combat_Speed_Max*Space_Speed_Max_Mult, Control_Combat_Boost_Speed*Space_Boost_Speed_Mult, "100", Combat_MinSpeed_Force, Control_Combat_Turn_Strength*Combat_Turn_Strength_Mult/2, Control_Combat_Turn_Strength*Combat_Turn_Strength_Mult, Control_Combat_DirectionBrake_Max*Combat_DirectionBrake_Mult, Control_Combat_Overspeed_Brake, Control_Combat_Falloff, Control_Combat_Roll_Amount, "30", AI_Space_AvoidTime, AI_Space_Hovering},
            {"PLANET_EASY", Control_AtmosCombat_Speed_Min*Planet_Speed_Min_Mult, Control_AtmosCombat_Speed_Max*Planet_Speed_Max_Mult, Control_AtmosCombat_Boost_Speed*Planet_Boost_Speed_Mult, "50", Planet_MinSpeed_Force, Control_Planet_Turn_Strength*Planet_Turn_Strength_Mult/2, Control_AtmosCombat_Turn_Strength*AtmosCombat_Turn_Strength_Mult, Control_AtmosCombat_DirectionBrake_Max*AtmosCombat_DirectionBrake_Mult, Control_AtmosCombat_Overspeed_Brake, Control_AtmosCombat_Falloff, Control_Planet_Roll_Amount, "25", AI_Planet_AvoidTime, AI_Planet_Hovering},
            {"PLANET_HARD", Control_AtmosCombat_Speed_Min*Planet_Speed_Min_Mult, Control_AtmosCombat_Speed_Max*Planet_Speed_Max_Mult, Control_AtmosCombat_Boost_Speed*Planet_Boost_Speed_Mult, "50", Planet_MinSpeed_Force, Control_Planet_Turn_Strength*Planet_Turn_Strength_Mult/2, Control_AtmosCombat_Turn_Strength*AtmosCombat_Turn_Strength_Mult, Control_AtmosCombat_DirectionBrake_Max*AtmosCombat_DirectionBrake_Mult, Control_AtmosCombat_Overspeed_Brake, Control_AtmosCombat_Falloff, Control_Planet_Roll_Amount, "25", AI_Planet_AvoidTime, AI_Planet_Hovering},
            {"RAID_BUILDING", Control_AtmosCombat_Speed_Min*Planet_Speed_Min_Mult, Control_AtmosCombat_Speed_Max*Planet_Speed_Max_Mult, Control_AtmosCombat_Boost_Speed*Planet_Boost_Speed_Mult, "50", Planet_MinSpeed_Force, Control_Planet_Turn_Strength*Planet_Turn_Strength_Mult/2, Control_AtmosCombat_Turn_Strength*AtmosCombat_TurnBrake_Mult, Control_AtmosCombat_DirectionBrake_Max*AtmosCombat_DirectionBrake_Mult, Control_AtmosCombat_Overspeed_Brake, Control_AtmosCombat_Falloff, Control_Planet_Roll_Amount, "25", AI_Planet_AvoidTime, AI_Planet_Hovering},
            {"SQUADRON_SLOW", Control_Space_Speed_Min*Space_Speed_Min_Mult, Control_Space_Speed_Max*Space_Speed_Max_Mult, Control_Space_Boost_Speed*Space_Boost_Speed_Mult, "100", Space_MinSpeed_Force, Control_Space_Turn_Strength*Space_Turn_Strength_Mult/2, Control_Space_Turn_Strength*Space_Turn_Strength_Mult, Control_Space_DirectionBrake_Max*Space_DirectionBrake_Mult, Control_Space_Overspeed_Brake, Control_Space_Falloff, Control_Space_Roll_Amount, "15", AI_Space_AvoidTime, AI_Space_Hovering},
            {"SQUADRON_FAST", Control_Space_Speed_Min*Space_Speed_Min_Mult, Control_Space_Speed_Max*Space_Speed_Max_Mult, Control_Space_Boost_Speed*Space_Boost_Speed_Mult, "100", Space_MinSpeed_Force, Control_Space_Turn_Strength*Space_Turn_Strength_Mult/2, Control_Space_Turn_Strength*Space_Turn_Strength_Mult, Control_Space_DirectionBrake_Max*Space_DirectionBrake_Mult, Control_Space_Overspeed_Brake, Control_Space_Falloff, Control_Space_Roll_Amount, "15", AI_Space_AvoidTime, AI_Space_Hovering},
        }
    },
}

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]      =   ..ModName..".pak",
  ["MOD_AUTHOR"]        =   ModAuthor,
  ["LUA_AUTHOR"]        =   LuaAuthor,
  ["NMS_VERSION"]       =   GameVersion,
  ["MOD_DESCRIPTION"]   =   BaseDescription,
  ["MODIFICATIONS"]     = 
    {
        {
            ["MBIN_CHANGE_TABLE"]   = 
            {
                {
                    ["MBIN_FILE_SOURCE"]    = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"WarpNexusRotation",Nexus_Spawn_Rotation}, --  Default: 15
                                {"WarpNexusPitch",Nexus_Spawn_Pitch},       --  Default: 15
                                {"WarpNexusDistance",Nexus_Spawn_Distance}, --  Default: -9000
                            }
                        },
                    }
                },
            }
        },      
    }
}

function CreateEngineProperty(PropertyData)
    local EnginePropertiesString = ""
    for v = 1, #PropertyData do
        EnginePropertiesString = EnginePropertiesString..[[
    <Property name="]].. PropertyData[v][1] ..[[" value="GcPlayerSpaceshipEngineData.xml">
      <Property name="ThrustForce" value="]].. PropertyData[v][2] ..[[" />
      <Property name="MaxSpeed" value="]].. PropertyData[v][3] ..[[" />
      <Property name="MinSpeed" value="]].. PropertyData[v][4] ..[[" />
      <Property name="Falloff" value="]].. PropertyData[v][5] ..[[" />
      <Property name="MinSpeedForce" value="]].. PropertyData[v][6] ..[[" />
      <Property name="BoostThrustForce" value="]].. PropertyData[v][7] ..[[" />
      <Property name="BoostMaxSpeed" value="]].. PropertyData[v][8] ..[[" />
      <Property name="BoostFalloff" value="]].. PropertyData[v][9] ..[[" />
      <Property name="BoostingTurnDamp" value="]].. PropertyData[v][10] ..[[" />
      <Property name="DirectionBrakeMin" value="]].. PropertyData[v][11] ..[[" />
      <Property name="DirectionBrake" value="]].. PropertyData[v][12] ..[[" />
      <Property name="ReverseBrake" value="]].. PropertyData[v][13] ..[[" />
      <Property name="OverspeedBrake" value="]].. PropertyData[v][14] ..[[" />
      <Property name="LowSpeedTurnDamper" value="]].. PropertyData[v][15] ..[[" />
      <Property name="TurnBrakeMin" value="]].. PropertyData[v][16] ..[[" />
      <Property name="TurnBrakeMax" value="]].. PropertyData[v][17] ..[[" />
      <Property name="TurnStrength" value="]].. PropertyData[v][18] ..[[" />
      <Property name="RollAmount" value="]].. PropertyData[v][19] ..[[" />
      <Property name="RollForce" value="]].. PropertyData[v][20] ..[[" />
      <Property name="RollAutoTime" value="]].. PropertyData[v][21] ..[[" />
      <Property name="BalanceTimeMin" value="]].. PropertyData[v][22] ..[[" />
      <Property name="BalanceTimeMax" value="]].. PropertyData[v][23] ..[[" />
      <Property name="FollowProportionalGain" value="]].. PropertyData[v][24] ..[[" />
      <Property name="FollowDerivativeGain" value="]].. PropertyData[v][25] ..[[" />
      <Property name="FollowIntegralGain" value="]].. PropertyData[v][26] ..[[" />
      <Property name="FollowProportionalLimit" value="]].. PropertyData[v][27] ..[[" />
      <Property name="FollowDerivativeLimit" value="]].. PropertyData[v][28] ..[[" />
      <Property name="FollowIntegralLimit" value="]].. PropertyData[v][29] ..[[" />
      <Property name="FollowIntegralDecay" value="]].. PropertyData[v][30] ..[[" />
    </Property>
]]
    end
return EnginePropertiesString
end

function CreateBonusProperty(PropertyData)
    local BonusPropertiesString = ""
    for v = 1, #PropertyData do
        BonusPropertiesString = BonusPropertiesString..[[
  <Property name="]].. PropertyData[v][1] ..[[" value="GcPlayerSpaceshipClassBonuses.xml">
    <Property name="ThrustForceMax" value="]].. PropertyData[v][2] ..[[" />
    <Property name="ThrustForceMin" value="]].. PropertyData[v][3] ..[[" />
    <Property name="MaxSpeedMax" value="]].. PropertyData[v][4] ..[[" />
    <Property name="MaxSpeedMin" value="]].. PropertyData[v][5] ..[[" />
    <Property name="BoostMaxSpeedMax" value="]].. PropertyData[v][6] ..[[" />
    <Property name="BoostMaxSpeedMin" value="]].. PropertyData[v][7] ..[[" />
    <Property name="BoostingTurnDampMax" value="]].. PropertyData[v][8] ..[[" />
    <Property name="BoostingTurnDampMin" value="]].. PropertyData[v][9] ..[[" />
    <Property name="DirectionBrakeMin" value="]].. PropertyData[v][10] ..[[" />
    <Property name="DirectionBrakeMax" value="]].. PropertyData[v][11] ..[[" />
    <Property name="TurnStrengthMax" value="]].. PropertyData[v][12] ..[[" />
    <Property name="TurnStrengthMin" value="]].. PropertyData[v][13] ..[[" />
  </Property>
]]
    end
return BonusPropertiesString
end

function CreateAIFlightProperty(PropertyData)
    local AIPropertiesString = ""
    for v = 1, #PropertyData do
        AIPropertiesString = AIPropertiesString..[[
    <Property value="GcSpaceshipTravelData.xml">
      <Property name="Id" value="]].. PropertyData[v][1] ..[[" />
      <Property name="MinSpeed" value="]].. PropertyData[v][2] ..[[" />
      <Property name="MaxSpeed" value="]].. PropertyData[v][3] ..[[" />
      <Property name="BoostSpeed" value="]].. PropertyData[v][4] ..[[" />
      <Property name="Force" value="]].. PropertyData[v][5] ..[[" />
      <Property name="MinSpeedForce" value="]].. PropertyData[v][6] ..[[" />
      <Property name="TurnMin" value="]].. PropertyData[v][7] ..[[" />
      <Property name="TurnMax" value="]].. PropertyData[v][8] ..[[" />
      <Property name="DirectionBrake" value="]].. PropertyData[v][9] ..[[" />
      <Property name="MaxSpeedBrake" value="]].. PropertyData[v][10] ..[[" />
      <Property name="Falloff" value="]].. PropertyData[v][11] ..[[" />
      <Property name="Roll" value="]].. PropertyData[v][12] ..[[" />
      <Property name="MinHeight" value="]].. PropertyData[v][13] ..[[" />
      <Property name="AvoidTime" value="]].. PropertyData[v][14] ..[[" />
      <Property name="Hovering" value="]].. PropertyData[v][15] ..[[" />
    </Property>
]]
    end
return AIPropertiesString
end

local PropertyTable  = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]

if Enable_Flight_Changes then
    for i = 1, #Ship_Engine_Data do
        local PropertyPrecedingKeyword = Ship_Engine_Data[i]["PRECEDING"]
        local PropertyData = Ship_Engine_Data[i]["DATA"]
    
        PropertyTable[#PropertyTable +1 ] =
        {
            ["MBIN_FILE_SOURCE"] = 
            { 
                [[GCSPACESHIPGLOBALS.GLOBAL.MBIN]],               
            },      
            ["EXML_CHANGE_TABLE"] =
            {
                {
                    ["PRECEDING_KEY_WORDS"] = {PropertyPrecedingKeyword,"SpaceEngine"},
                    ["REMOVE"] = "SECTION"
                },
                {
                    ["PRECEDING_KEY_WORDS"] = {PropertyPrecedingKeyword,"PlanetEngine"},
                    ["REMOVE"] = "SECTION"
                },
                {
                    ["PRECEDING_KEY_WORDS"] = {PropertyPrecedingKeyword,"CombatEngine"},
                    ["REMOVE"] = "SECTION"
                },
                {
                    ["PRECEDING_KEY_WORDS"] = {PropertyPrecedingKeyword,"AtmosCombatEngine"},
                    ["REMOVE"] = "SECTION"
                },
                {
                    ["PRECEDING_KEY_WORDS"] = {PropertyPrecedingKeyword },
                    ["ADD"] = CreateEngineProperty(PropertyData)
                },
            }
        }
    end
    for i = 1, #Ship_Bonus_Data do
        local PropertyData = Ship_Bonus_Data[i]["DATA"]
        PropertyTable[#PropertyTable +1 ] =
        {
            ["MBIN_FILE_SOURCE"] = 
            { 
                [[GCSPACESHIPGLOBALS.GLOBAL.MBIN]],               
            },      
            ["EXML_CHANGE_TABLE"] =
            {
                {
                    ["PRECEDING_KEY_WORDS"] = {"ControlBonusC"},
                    ["REMOVE"] = "SECTION"
                },
                {
                    ["PRECEDING_KEY_WORDS"] = {"ControlBonusB"},
                    ["REMOVE"] = "SECTION"
                },
                {
                    ["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
                    ["REMOVE"] = "SECTION"
                },
                {
                    ["PRECEDING_KEY_WORDS"] = {"ControlBonusS"},
                    ["REMOVE"] = "SECTION"
                },
                {
                    ["PRECEDING_KEY_WORDS"] = {"ControlHeavy"},
                    ["ADD_OPTION"] = "AddAfterSection",
                    ["ADD"] = CreateBonusProperty(PropertyData)
                },
            }
        }
    end
    for i = 1, #AI_Flight_Data do
        local PropertyData = AI_Flight_Data[i]["DATA"]
        PropertyTable[#PropertyTable +1 ] =
        {
            ["MBIN_FILE_SOURCE"] = 
            { 
                [[METADATA/SIMULATION/SPACE/AISPACESHIPATTACKDATATABLE.MBIN]],               
            },      
            ["EXML_CHANGE_TABLE"] =
            {
                {
                    ["SPECIAL_KEY_WORDS"] = {"Id","SPACE_EASY"},
                    ["REMOVE"] = "SECTION"
                },
                {
                    ["SPECIAL_KEY_WORDS"] = {"Id","SPACE_HARD"},
                    ["REMOVE"] = "SECTION"
                },
                {
                    ["SPECIAL_KEY_WORDS"] = {"Id","PLANET_EASY"},
                    ["REMOVE"] = "SECTION"
                },
                {
                    ["SPECIAL_KEY_WORDS"] = {"Id","PLANET_HARD"},
                    ["REMOVE"] = "SECTION"
                },
                {
                    ["SPECIAL_KEY_WORDS"] = {"Id","RAID_BUILDING"},
                    ["SECTION_ACTIVE"] = 3,
                    ["REMOVE"] = "SECTION"
                },
                {
                    ["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_SLOW"},
                    ["REMOVE"] = "SECTION"
                },
                {
                    ["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_FAST"},
                    ["REMOVE"] = "SECTION"
                },
                {
                    ["PRECEDING_KEY_WORDS"] = {"EngineTable"},
                    ["ADD"] = CreateAIFlightProperty(PropertyData)
                },
            }
        }
    end
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"]    = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
        ["EXML_CHANGE_TABLE"]   =
        {
            {
                ["MATH_OPERATION"]      = "*",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"HitAsteroidDamage",Asteroid_Hit_Damage_Mult}, -- Default: 10000
                    {"LootAttractDistance",Ship_Loot_Distance_Mult} -- Default: 120
                }
            },
            {
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"FreighterBattleIgnoreFriendlyFireDistance",Freighter_Ignore_FriendlyFire_Distance},   -- Default: 7200
                }
            },
        }
    }
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"]    = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
        ["EXML_CHANGE_TABLE"]   = 
        {
            {
                ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER","StatsType","Ship_Launcher_TakeOffCost"},
                ["SECTION_UP"] = 1,
                ["MATH_OPERATION"]      = "*",
                ["INTEGER_TO_FLOAT"]    = "FORCE",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"Bonus",Ship_Launch_Cost_Mult}
                }
            },
            {
                ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ALIEN","StatsType","Ship_Launcher_TakeOffCost"},
                ["SECTION_UP"] = 1,
                ["MATH_OPERATION"]      = "*",
                ["INTEGER_TO_FLOAT"]    = "FORCE",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"Bonus",Ship_Launch_Cost_Mult}
                }
            },
            {
                ["SPECIAL_KEY_WORDS"]   = {"ID", "SHIP_TELEPORT"},
                ["MATH_OPERATION"]      = "*",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"Bonus",Ship_Teleporter_Distance_Mult}
                }
            }
        }
    }
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"]    = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
        ["EXML_CHANGE_TABLE"]   = 
        {
            {
                ["PRECEDING_KEY_WORDS"] = "",
                ["MATH_OPERATION"]      = "*",
                ["INTEGER_TO_FLOAT"]    = "FORCE",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"ShipInteractRadius",Ship_Inventory_Distance_Mult},        
                }
            },
            {
                ["PRECEDING_KEY_WORDS"] = "ShipScan",
                ["MATH_OPERATION"]      = "*",
                ["INTEGER_TO_FLOAT"]    = "FORCE",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"PulseRange",Ship_Scan_Distance_Mult}, 
                    {"PulseTime",Ship_Scan_Speed_Mult},
                    {"ChargeTime",Ship_Scan_Cooldown_Mult},                     
                }
            },
        } 
    }
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"]    = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
        ["EXML_CHANGE_TABLE"]   = 
        {
            {
                ["PRECEDING_KEY_WORDS"] = "",
                ["MATH_OPERATION"]      = "*",
                ["INTEGER_TO_FLOAT"]    = "FORCE",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"UnknownBuildingRange",Buildings_Scan_Distance_Mult},
                    {"MaxIconRange",Buildings_Icon_Distance_Max_Mult},
                    {"MaxShipScanBuildings",Buildings_Scan_Number_Max_Mult},
                }
            },
            {
                ["PRECEDING_KEY_WORDS"] = "",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"MinShipScanBuildings","1"},  -- Do not change this.
                }
            },
        }
    }
end

if Enable_Pulse_Flight_Changes then
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"] = 
        { 
            [[GCSPACESHIPGLOBALS.GLOBAL.MBIN]],
        },      
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["REPLACE_TYPE"]        =   "ALL",
                ["INTEGER_TO_FLOAT"]    =   "FORCE",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"MiniWarpSpeed",Pulse_Speed*Pulse_Speed_Mult},                                 --  Default: 30000
                    {"MiniWarpFuelTime",Pulse_Fuel_Time*Pulse_Fuel_Time_Mult},                      --  Default: 0.5
                    {"MiniWarpExitSpeed",Pulse_Exit_Speed_Space*Pulse_Exit_Speed_Mult},             --  Default: 1000
                    {"MiniWarpExitSpeedStation",Pulse_Exit_Speed_Station*Pulse_Exit_Speed_Mult},    --  Default: 500
                    {"MiniWarpTopSpeedTime",Pulse_Speed_Acceleration_Time},                         --  Default: 0.1
                    {"MiniWarpCooldownTime",Pulse_Cooldown},                                        --  Default: 2
                    {"MiniWarpHUDArrowAttractAngle",Pulse_HUD_AttractAngle},                        --  Default: 10
                    {"MiniWarpHUDArrowAttractAngleStation",Pulse_HUD_AttractAngle_Station},         --  Default: 5
                    {"MiniWarpHUDArrowAttractAngleDense",Pulse_HUD_AttractAngle_Dense},             --  Default: 4
                    {"MiniWarpMinPlanetDistance",Pulse_Min_Planet_Distance},                        --  Default: 2000
                },
            },
            {
                ["REPLACE_TYPE"]        =   "ALL",
                ["MATH_OPERATION"]      =   "*",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"MiniWarpStoppingMarginPlanet",Pulse_Stop_Distance_Planet*Pulse_Stop_Distance_Planet_Mult},                        --  Default: 5000
                    {"MiniWarpStoppingMarginDefault",Pulse_Stop_Distance_Default*Pulse_Stop_Distance_Default_Mult},                     --  Default: 2500
                    {"MiniWarpStoppingMarginLong",Pulse_Stop_Distance_Long*Pulse_Stop_Distance_Default_Mult},                           --  Default: 3500
                },
            },
        }
    }
end

if Enable_Pulse_Distance_Changes then
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"] = 
        { 
            [[GCSPACESHIPGLOBALS.GLOBAL.MBIN]],
        },      
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["REPLACE_TYPE"]        =   "ALL",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"NoBoostStationDistance",Pulse_Min_Station_Distance},                      --  Default: 2000
                    {"BoostNoAsteroidRadius",Pulse_Min_Asteroid_Distance},                      --  Default: 2000
                    {"NoBoostAnomalyDistance",Pulse_Min_Anomaly_Distance},                      --  Default: 3000
                    {"NoBoostSpaceAnomalyDistance",Pulse_Min_SpaceAnomaly_Distance},            --  Default: 700
                    {"NoBoostFreighterDistance",Pulse_Min_Freighter_Distance},                  --  Default: 800
                    {"NoBoostFreighterAngle",Pulse_Min_Freighter_Angle},                        --  Default: 10
                    {"NoBoostShipDistance",Pulse_Min_ShipDistance},                             --  Default: 2000
                    {"NoBoostShipNearMinTime",Pulse_Min_ShipNear_MinTime},                      --  Default: 10
                    {"NoBoostShipLastHitTime",Pulse_Min_Ship_LastHitTime},                      --  Default: 15
                    {"NoBoostCombatEventMinBattleTime",Pulse_Min_Combat_MinBattleTime},         --  Default: 35
                    {"NoBoostCombatEventMinFreighterBattleTime",Pulse_Min_Combat_MinTime},      --  Default: 25
                    {"NoBoostCombatEventTime",Pulse_Min_FreighterCombat_MinTime},               --  Default: 55
                },
            },
        }
    }
end

if Enable_Warp_Flight_Changes then
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"]    = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
        ["EXML_CHANGE_TABLE"]   = 
        {
            {
                ["SPECIAL_KEY_WORDS"]   =   {"ID","HYPERDRIVE"},
                ["PRECEDING_KEY_WORDS"] =   {"Ship_Hyperdrive_JumpDistance"},
                ["SECTION_UP"]          =   1,
                ["INTEGER_TO_FLOAT"]    =   "FORCE",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"Bonus",Warp_Jump_Distance*Warp_Jump_Distance_Mult},   -- Default: 100
                },
            },
            {
                ["SPECIAL_KEY_WORDS"]   =   {"ID","WARP_ALIEN"},
                ["PRECEDING_KEY_WORDS"] =   {"Ship_Hyperdrive_JumpDistance"},
                ["SECTION_UP"]          =   1,
                ["INTEGER_TO_FLOAT"]    =   "FORCE",
                ["VALUE_CHANGE_TABLE"]  =
                {
                    {"Bonus",Warp_Jump_Distance*Warp_Jump_Distance_Mult},   -- Default: 100
                },
            },
            {
                ["SPECIAL_KEY_WORDS"]   =   {"ID","HYPERDRIVE_SPEC"},
                ["PRECEDING_KEY_WORDS"] =   {"Ship_Hyperdrive_JumpsPerCell"},
                ["SECTION_UP"]          =   1,
                ["INTEGER_TO_FLOAT"]    =   "FORCE",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"Bonus",Warp_Fuel_JumpsPerCell_Default*Warp_Fuel_JumpsPerCell_Mult},   -- Default: 2
                },
            },
            {
                ["SPECIAL_KEY_WORDS"]   =   {"ID","HYPERDRIVE"},
                ["PRECEDING_KEY_WORDS"] =   {"Ship_Hyperdrive_JumpsPerCell"},
                ["SECTION_UP"]          =   1,
                ["INTEGER_TO_FLOAT"]    =   "FORCE",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"Bonus",Warp_Fuel_JumpsPerCell_Default*Warp_Fuel_JumpsPerCell_Mult},   -- Default: 1
                },
            },
            {
                ["SPECIAL_KEY_WORDS"]   =   {"ID","WARP_ALIEN"},
                ["PRECEDING_KEY_WORDS"] =   {"Ship_Hyperdrive_JumpsPerCell"},
                ["SECTION_UP"]          =   1,
                ["INTEGER_TO_FLOAT"]    =   "FORCE",
                ["VALUE_CHANGE_TABLE"]  =
                {

                    {"Bonus",Warp_Fuel_JumpsPerCell_Alien*Warp_Fuel_JumpsPerCell_Mult}, -- Default: 1
                },
            },
        }
    }
end

if Enable_Freighter_Changes then
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"]    = "GCUIGLOBALS.GLOBAL.MBIN",
        ["EXML_CHANGE_TABLE"]   = 
        {
            {
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"FreighterSummonPlanetOffset",Freighter_Planet_Summon_Distance_Offset},    -- Default: 1000
                },
            },
        }
    }
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"]    = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
        ["EXML_CHANGE_TABLE"]   = 
        {
            {
                ["SPECIAL_KEY_WORDS"] = {"ID","F_HYPERDRIVE",},
                ["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
                ["SECTION_UP"] = 1,
                ["MATH_OPERATION"]  =   "*",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"Bonus",Freighter_Hyperdrive_Core_Distance_Mult}       -- Default: 100
                }
            },
            {
                ["SPECIAL_KEY_WORDS"] = {"ID","F_HDRIVEBOOST1",},
                ["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
                ["SECTION_UP"] = 1,
                ["MATH_OPERATION"]  =   "*",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"Bonus",Freighter_Hyperdrive_Bonus_Distance_Mult}      -- Default: 200
                }
            },
            {
                ["SPECIAL_KEY_WORDS"] = {"ID","F_HDRIVEBOOST2",},
                ["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
                ["SECTION_UP"] = 1,
                ["MATH_OPERATION"]  =   "*",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"Bonus",Freighter_Hyperdrive_Bonus_Distance_Mult}      -- Default: 300 
                }
            },
            {
                ["SPECIAL_KEY_WORDS"] = {"ID","F_HDRIVEBOOST3",},
                ["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
                ["SECTION_UP"] = 1,
                ["MATH_OPERATION"]  =   "*",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"Bonus",Freighter_Hyperdrive_Bonus_Distance_Mult}      -- Default: 800 
                }
            },
            {
                ["SPECIAL_KEY_WORDS"] = {"ID","F_HACCESS1",},
                ["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
                ["SECTION_UP"] = 1,
                ["MATH_OPERATION"]  =   "*",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"Bonus",Freighter_Hyperdrive_RGB_Distance_Mult}        -- Default: 50
                }
            },
            {
                ["SPECIAL_KEY_WORDS"] = {"ID","F_HACCESS2",},
                ["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
                ["SECTION_UP"] = 1,
                ["MATH_OPERATION"]  =   "*",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"Bonus",Freighter_Hyperdrive_RGB_Distance_Mult}        -- Default: 50 
                }
            },
            {
                ["SPECIAL_KEY_WORDS"] = {"ID","F_HACCESS3",},
                ["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
                ["SECTION_UP"] = 1,
                ["MATH_OPERATION"]  =   "*",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"Bonus",Freighter_Hyperdrive_RGB_Distance_Mult}        -- Default: 50 
                }
            },
        }
    }
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"]    = "METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
        ["EXML_CHANGE_TABLE"]   = 
        {
            {
                ["SPECIAL_KEY_WORDS"] = {"ID","UP_FRHYP1",},
                ["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
                ["SECTION_UP"] = 1,
                ["MATH_OPERATION"]  =   "*",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"ValueMin",Freighter_Hyperdrive_Core_Distance_Mult},   -- Default: 50
                    {"ValueMax",Freighter_Hyperdrive_Core_Distance_Mult}    -- Default: 100
                }
            },
            {
                ["SPECIAL_KEY_WORDS"] = {"ID","UP_FRHYP2",},
                ["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
                ["SECTION_UP"] = 1,
                ["MATH_OPERATION"]  =   "*",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"ValueMin",Freighter_Hyperdrive_Core_Distance_Mult},   -- Default: 100
                    {"ValueMax",Freighter_Hyperdrive_Core_Distance_Mult}    -- Default: 150
                }
            },
            {
                ["SPECIAL_KEY_WORDS"] = {"ID","UP_FRHYP3",},
                ["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
                ["SECTION_UP"] = 1,
                ["MATH_OPERATION"]  =   "*",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"ValueMin",Freighter_Hyperdrive_Core_Distance_Mult},   -- Default: 150
                    {"ValueMax",Freighter_Hyperdrive_Core_Distance_Mult}    -- Default: 200   
                }
            },
            {
                ["SPECIAL_KEY_WORDS"] = {"ID","UP_FRHYP4",},
                ["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
                ["SECTION_UP"] = 1,
                ["MATH_OPERATION"]  =   "*",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"ValueMin",Freighter_Hyperdrive_Core_Distance_Mult},   -- Default: 200
                    {"ValueMax",Freighter_Hyperdrive_Core_Distance_Mult}    -- Default: 250 
                }
            },
        }
    }
end

if Disable_Flight_Assist then
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"] = 
        { 
            [[GCSPACESHIPGLOBALS.GLOBAL.MBIN]],               
        },      
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["PRECEDING_KEY_WORDS"] =   {"SpaceEngine"},
                ["INTEGER_TO_FLOAT"]    =   "FORCE",
                ["REPLACE_TYPE"]        =   "ALL",
                ["VALUE_CHANGE_TABLE"]  =
                {
                    {"Falloff","0.0"},
                    {"BoostFalloff","0.0"},
                    {"DirectionBrakeMin","0.0"},
                    {"DirectionBrake","0.0"},
                    {"OverspeedBrake","0"},
                    {"TurnBrakeMin","0.0"},
                    {"TurnBrakeMax","0.0"},
                },
            },
            {
                ["PRECEDING_KEY_WORDS"] =   {"CombatEngine"},
                ["INTEGER_TO_FLOAT"]    =   "FORCE",
                ["REPLACE_TYPE"]        =   "ALL",
                ["VALUE_CHANGE_TABLE"]  =
                {
                    {"Falloff","0.0"},
                    {"BoostFalloff","0.0"},
                    {"DirectionBrakeMin","0.0"},
                    {"DirectionBrakeMax","0.0"},
                    {"OverspeedBrake","0"},
                    {"TurnBrakeMin","0.0"},
                    {"TurnBrakeMax","0.0"},
                },
            },
            {
                ["PRECEDING_KEY_WORDS"] =   {"ControlBonusC"},
                ["VALUE_CHANGE_TABLE"]  =
                {
                    {"DirectionBrakeMin","0.0"},
                    {"DirectionBrakeMax","0.0"},
                },
            },
            {
                ["PRECEDING_KEY_WORDS"] =   {"ControlBonusB"},
                ["VALUE_CHANGE_TABLE"]  =
                {
                    {"DirectionBrakeMin","0.0"},
                    {"DirectionBrakeMax","0.0"},
                },
            },
            {
                ["PRECEDING_KEY_WORDS"] =   {"ControlBonusA"},
                ["VALUE_CHANGE_TABLE"]  =
                {
                    {"DirectionBrakeMin","0.0"},
                    {"DirectionBrakeMax","0.0"},
                },
            },
            {
                ["PRECEDING_KEY_WORDS"] =   {"ControlBonusS"},
                ["VALUE_CHANGE_TABLE"]  =
                {
                    {"DirectionBrakeMin","0.0"},
                    {"DirectionBrakeMax","0.0"},
                },
            },
            {
                ["INTEGER_TO_FLOAT"]    =   "FORCE",
                ["VALUE_CHANGE_TABLE"]  =
                {
                    {"ApplyHeightForce","False"},               --  Default: True
                    {"AutoLevelWaterAngle","0"},                --  Default: 45
                    {"ThrustDecaySpring","90000"},              --  Default: 20
                    {"ThrustDecaySpringCombat","90000"},        --  Default: 30
                    {"DriftTurnStrengthMultiplier","0.05"},     --  Default: 2
                    {"CombatBoostMultiplier","2"},              --  Default: 5
                    {"CombatBoostTurnDamp","0.3"},              --  Default: 0.9
                    {"GroundHeightPostCollisionDamper","0.0"},  --  Default: 0.6
                    {"GroundHeightSmoothTime","10"},            --  Default: 0
                },
            },
        }
    }
end

if Disable_Pulse_Asteroids then
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"] = 
        { 
            [[GCENVIRONMENTGLOBALS.GLOBAL.MBIN]],
        },      
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["REPLACE_TYPE"]        = "ALL",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"MaxAsteroidGenerationPerFramePulseJump","0"}, --  Default: 1000
                },
            },
        }
    }
end

if Disable_Speed_Lines then
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"] = 
        { 
            [[MODELS\EFFECTS\LINES\SPEEDLINEMATERIAL.MATERIAL.MBIN]],
            [[MODELS\EFFECTS\LINES\SPEEDLINE2MATERIAL.MATERIAL.MBIN]],
            [[MODELS\EFFECTS\LINES\SPEEDLINE3MATERIAL.MATERIAL.MBIN]],
        },      
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["SPECIAL_KEY_WORDS"] = {"Name", "Line"},
                ["REPLACE_TYPE"]        = "ALL",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"Class", ""},
                },
            },
        }
    }
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"] = 
        { 
            [[GCSPACESHIPGLOBALS.GLOBAL.MBIN]],
        },      
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"MiniWarpLinesNum", "0"},
                },
            },
        }
    }
end

if Disable_AutoAvoidance then
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"] = 
        { 
            [[GCSPACESHIPGLOBALS.GLOBAL.MBIN]],               
        },      
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"AvoidancePower","0"},                         --  Default: 3
                    {"AvoidanceDistancePower","0"},                 --  Default: 1.5
                    {"_3rdPersonAvoidanceAdjustPitchFactor","0"},   --  Default: 0.08
                    {"_3rdPersonAvoidanceAdjustRollFactor","0"},    --  Default: 0.15
                    {"_3rdPersonAvoidanceAdjustPitchFactor","0"},   --  Default: -0.018
                    {"_3rdPersonAvoidanceAdjustYawFactor","0"},     --  Default: -0.1
                }
            },
            {
                ["PRECEDING_KEY_WORDS"] = {"Avoidance"},
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"NumRays","0"},                --  Default: 12
                    {"RayMinRange","0"},            --  Default: 40
                    {"RaySpeedTime","0"},           --  Default: 6
                    {"Force","0"},                  --  Default: 400
                    {"StartRadiusMultiplier","0"},  --  Default: 2
                    {"EndRadiusMultiplier","0"},    --  Default: 3
                    {"SpeedInterp","0"},            --  Default: 0.6
                    {"SpeedInterpMinSpeed","0"},    --  Default: 40
                    {"SpeedInterpRange","0"}        --  Default: 30
                }
            },
        }
    }
end

if Enable_Planet_Reverse then
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"] = 
        { 
            [[GCSPACESHIPGLOBALS.GLOBAL.MBIN]],               
        },      
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["PRECEDING_KEY_WORDS"] = {"PlanetEngine"},
                ["REPLACE_TYPE"] = "ALL",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"MinSpeed","0"},
                }
            },
        }
    }
elseif Enable_Planet_Hover then
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"] = 
        { 
            [[GCSPACESHIPGLOBALS.GLOBAL.MBIN]],               
        },      
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["PRECEDING_KEY_WORDS"] = {"PlanetEngine"},
                ["REPLACE_TYPE"] = "ALL",
                ["INTEGER_TO_FLOAT"] = "FORCE",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"MinSpeed","0.1"},
                }
            },
        }
    }
end

if Enable_Underwater_Flight then
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"] = 
        { 
            [[GCSPACESHIPGLOBALS.GLOBAL.MBIN]],               
        },      
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["INTEGER_TO_FLOAT"]    =   "FORCE",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"GroundHeightSoft","-150"},                        --  Default: 20
                    {"GroundHeightHard","-175"},                        --  Default: 5
                    {"GroundHeightHardHorizontal","0"},                 --  Default: 0
                    {"GroundHeightPostCollisionMultiplier","0"},        --  Default: 2
                    {"GroundHeightPostCollisionMultiplierTime","1.5"},  --  Default: 3
                    {"GroundHeightDownSpeedMultiplier","0"},            --  Default: 5
                    {"GroundHeightBrakeMultiplier","0.0"},              --  Default: 1.2
                    {"PitchCorrectMaxDownAngleWater","0"},              --  Default: 20
                    {"PitchCorrectSoftDownAngleWater","0"},             --  Default: 0
                    {"AutoLevelWaterAngle","0"},                        --  Default: 45
                }
            },
        }
    }
elseif Enable_Low_Flight then
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"] = 
        { 
            [[GCSPACESHIPGLOBALS.GLOBAL.MBIN]],               
        },      
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["INTEGER_TO_FLOAT"]    =   "FORCE",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"GroundHeightSoft","10"},                          --  Default: 20
                    {"GroundHeightHard","-5"},                          --  Default: 5
                    {"GroundHeightHardHorizontal","0"},                 --  Default: 0
                    {"GroundHeightPostCollisionMultiplier","0"},        --  Default: 2
                    {"GroundHeightPostCollisionMultiplierTime","1.5"},  --  Default: 3
                    {"GroundHeightDownSpeedMultiplier","0"},            --  Default: 5
                    {"GroundHeightBrakeMultiplier","0"},                --  Default: 1.2
                    {"AutoLevelWaterAngle","0"},                        --  Default: 45
                }
            },
        }
    }
end

if Disable_Orientation_Limits then
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"] = 
        { 
            [[GCSPACESHIPGLOBALS.GLOBAL.MBIN]],               
        },      
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"PitchCorrectMaxDownAngleWater","0"},  --  Default: 20
                    {"PitchCorrectSoftDownAngleWater","0"}, --  Default: 0
                    {"AutoLevelWaterAngle","0"},            --  Default: 45
                    {"PitchCorrectMaxDownAngle","90"},      --  Default: 50
                    {"PitchCorrectSoftDownAngle","90"},     --  Default: 25
                    {"CockpitRollAngleHmd","0"},            --  Default: -20
                    {"CockpitRollAngle","0"},               --  Default: -10.5
                    {"CockpitRollAngleExtra","0"},          --  Default: 2
                    {"_3rdPersonRollAngle","0"},            --  Default: 75
                    {"_3rdPersonRollAngleDropship","0"},    --  Default: 45
                    {"_3rdPersonRollAngleScience","0"},     --  Default: 62
                    {"_3rdPersonRollAngleAlien","0"},       --  Default: 30
                    {"_3rdPersonPitchAngle","0"},           --  Default: 12
                    {"_3rdPersonYawAngle","0"},             --  Default: 10
                    {"CockpitRollMultiplierCentre","0"},    --  Default: 0.66
                    {"CockpitRollMultiplierOpposite","0"},  --  Default: 0.38
                    {"BalanceTimeMin","9999"},              --  Default: 0.4
                    {"BalanceTimeMax","9999"},              --  Default: 4
                }
            },
        }
    }
end

if Freighter_Remove_Multiplayer_Limit then
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"] = 
        { 
            [[GCDEBUGOPTIONS.GLOBAL.MBIN]],               
        },      
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"MultiplePlayerFreightersInASystem","True"}, -- Default: False
                }
            },
        }
    }
end

if Abandoned_Freighter_Enable_Saving then
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"] = 
        { 
            [[GCDEBUGOPTIONS.GLOBAL.MBIN]],               
        },      
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"AllowSavingOnAbandonedFreighters","True"}, -- Default: False
                }
            },
        }
    }
end

if Freighter_Tractor_Range ~= 500 then
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"] = 
        { 
            [[MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/HANGARA/ENTITIES/HANGARA.ENTITY.MBIN]],               
        },      
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"PlayerAutoLandRange",Freighter_Tractor_Range}, -- Default: 300
                }
            },
        }
    }
end

if Freighter_Spawn_Capital_First then
    PropertyTable[#PropertyTable +1 ] =
    {
        ["MBIN_FILE_SOURCE"] = 
        { 
            [[METADATA/SIMULATION/SCENE/EXPERIENCESPAWNTABLE.MBIN]],               
        },      
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["PRECEDING_KEY_WORDS"] = "AmbientSpawns",
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"WarpIn","True"},  -- Default: False
                },
            },
            {
                ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns","Role"},
                ["VALUE_CHANGE_TABLE"]  = 
                {
                    {"AIShipRole","CapitalFreighter"},  -- Default: Freighter
                },
            },
        }
    }
end