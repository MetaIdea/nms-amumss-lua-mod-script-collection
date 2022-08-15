-- Mod_Version = "1.21"

TechUpgradeChanges =
{
  { -- TechID, Number of Stats Min, Max, Curve, Originals -- Mining Laser C Class
    {"UP_LASER1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    { -- StatsType,                  Min,   Max, Curve, Originals
      {"Weapon_Laser_Mining_Speed", 0.90, 0.90, "NoWeighting"}, -- 0.90, 0.95, MinIsUncommon
      {"Weapon_Laser_HeatTime",     1.15, 1.15, "NoWeighting"}, -- 1.05, 1.15, MaxIsRare
      {"Weapon_Laser_Drain",        1.10, 1.10, "NoWeighting"}, -- 1.01, 1.10, MaxIsRare
      {"Weapon_Laser_ReloadTime",   0.90, 0.90, "NoWeighting"}, -- 0.90, 0.95, MinIsSuperRare
    }
  },
  { -- Mining Laser B Class
    {"UP_LASER2", 3, 3, "NoWeighting"}, -- 2, 3, MaxIsRare
    {
      {"Weapon_Laser_Mining_Speed", 0.85, 0.85, "NoWeighting"}, -- 0.85, 0.95, MinIsUncommon
      {"Weapon_Laser_HeatTime",     1.20, 1.20, "NoWeighting"}, -- 1.15, 1.20, MaxIsUncommon
      {"Weapon_Laser_Drain",        1.15, 1.15, "NoWeighting"}, -- 1.10, 1.15, MaxIsRare
      {"Weapon_Laser_ReloadTime",   0.85, 0.85, "NoWeighting"}, -- 0.85, 0.90, MinIsRare
    }
  },
  { -- Mining Laser A Class
    {"UP_LASER3", 4, 4, "NoWeighting"}, -- 3, 4, MaxIsRare
    {
      {"Weapon_Laser_Mining_Speed",  0.8,  0.8, "NoWeighting"}, -- 0.80, 0.90, MinIsUncommon
      {"Weapon_Laser_HeatTime",      1.4,  1.4, "NoWeighting"}, -- 1.20, 1.40, MaxIsUncommon
      {"Weapon_Laser_Drain",         1.2,  1.2, "NoWeighting"}, -- 1.15, 1.20, MaxIsRare
      {"Weapon_Laser_ReloadTime",   0.85, 0.85, "NoWeighting"}, -- 0.85, 0.90, MinIsUncommon
    }
  },
  { -- Mining Laser S Class
    {"UP_LASER4", 4, 4, "NoWeighting"}, -- 4, 4, NoWeighting
    {
      {"Weapon_Laser_Mining_Speed", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.85, MinIsUncommon
      {"Weapon_Laser_HeatTime",     1.50, 1.50, "NoWeighting"}, -- 1.40, 1.50, MaxIsUncommon
      {"Weapon_Laser_Drain",        1.20, 1.20, "NoWeighting"}, -- 1.20, 1.20, NoWeighting
      {"Weapon_Laser_ReloadTime",   0.80, 0.80, "NoWeighting"}, -- 0.80, 0.85, MinIsUncommon
    }
  },
  { -- Mining Laser X Class
    {"UP_LASERX", 4, 4, "NoWeighting"}, -- 1, 3, MaxIsRare
    {
      {"Weapon_Laser_Mining_Speed", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.95, MinIsUncommon
      {"Weapon_Laser_HeatTime",     1.55, 1.55, "NoWeighting"}, -- 1.05, 1.55, MaxIsUncommon
      {"Weapon_Laser_Drain",        1.25, 1.25, "NoWeighting"}, -- 1.01, 1.25, MaxIsRare
      {"Weapon_Laser_ReloadTime",   0.75, 0.75, "NoWeighting"}, -- 0.75, 0.95, MinIsUncommon
    }
  },
  { -- Scanner C Class
    {"UP_SCAN1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsSuperRare
    {
      {"Weapon_Scan_Radius",             1.10, 1.10, "NoWeighting"}, -- 1.05, 1.10, MaxIsUncommon
      {"Weapon_Scan_Discovery_Creature",   20,   20, "NoWeighting"}, --   10,   20, MaxIsUncommon
      {"Weapon_Scan_Discovery_Flora",      20,   20, "NoWeighting"}, --   10,   20, MaxIsUncommon
      {"Weapon_Scan_Discovery_Mineral",    20,   20, "NoWeighting"}, --   10,   20, MaxIsUncommon
    }
  },
  { -- Scanner B Class
    {"UP_SCAN2", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Weapon_Scan_Radius",             1.20, 1.20, "NoWeighting"}, -- 1.10, 1.20, MaxIsUncommon
      {"Weapon_Scan_Discovery_Creature",   50,   50, "NoWeighting"}, --   25,   50, MaxIsUncommon
      {"Weapon_Scan_Discovery_Flora",      50,   50, "NoWeighting"}, --   10,   20, MaxIsUncommon
      {"Weapon_Scan_Discovery_Mineral",    50,   50, "NoWeighting"}, --   25,   50, MaxIsUncommon
    }
  },
  { -- Scanner A Class
    {"UP_SCAN3", 3, 3, "NoWeighting"}, -- 2, 3, MaxIsUncommon
    {
      {"Weapon_Scan_Radius",             1.30, 1.30, "NoWeighting"}, -- 1.20, 1.30, MaxIsUncommon
      {"Weapon_Scan_Discovery_Creature",  100,  100, "NoWeighting"}, --   50,  100, MaxIsSuperRare
      {"Weapon_Scan_Discovery_Flora",     100,  100, "NoWeighting"}, --   50,  100, MaxIsSuperRare
      {"Weapon_Scan_Discovery_Mineral",   100,  100, "NoWeighting"}, --   50,  100, MaxIsSuperRare
    }
  },
  { -- Scanner S Class
    {"UP_SCAN4", 3, 3, "NoWeighting"}, -- 3, 3, NoWeighting
    {
      {"Weapon_Scan_Radius",             1.40, 1.40, "NoWeighting"}, -- 1.30, 1.40, MaxIsUncommon
      {"Weapon_Scan_Discovery_Creature",  100,  100, "NoWeighting"}, --   65,  100, MaxIsUncommon
      {"Weapon_Scan_Discovery_Flora",     100,  100, "NoWeighting"}, --   65,  100, MaxIsUncommon
      {"Weapon_Scan_Discovery_Mineral",   100,  100, "NoWeighting"}, --   65,  100, MaxIsUncommon
    }
  },
  { -- Scanner X Class
    {"UP_SCANX", 3, 3, "NoWeighting"}, -- 1, 3, MaxIsRare
    {
      {"Weapon_Scan_Radius",             1.50, 1.50, "NoWeighting"}, -- 1.05, 1.50, MaxIsUncommon
      {"Weapon_Scan_Discovery_Creature",  110,  110, "NoWeighting"}, --   10,  110, MaxIsUncommon
      {"Weapon_Scan_Discovery_Flora",     110,  110, "NoWeighting"}, --   10,  110, MaxIsUncommon
      {"Weapon_Scan_Discovery_Mineral",   110,  110, "NoWeighting"}, --   10,  110, MaxIsUncommon
    }
  },
  { -- Boltcaster C Class
    {"UP_BOLT1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Weapon_Projectile_Damage",           1,    1, "NoWeighting"}, --    1,    1, MaxIsUncommon
      {"Weapon_Projectile_ReloadTime",    0.90, 0.90, "NoWeighting"}, -- 0.90, 0.95, MinIsUncommon
      {"Weapon_Projectile_ClipSize",         2,    2, "NoWeighting"}, --    2,    2, NoWeighting
      {"Weapon_Projectile_Rate",          1.10, 1.10, "NoWeighting"}, -- 1.01, 1.10, MaxIsRare
      {"Weapon_Projectile_BurstCap",         1,    1, "NoWeighting"}, --    1,    1, NoWeighting
      {"Weapon_Projectile_BurstCooldown", 0.95, 0.95, "NoWeighting"}, -- 0.99, 0.95, MaxIsRare
    }
  },
  { -- Boltcaster B Class
    {"UP_BOLT2", 3, 3, "NoWeighting"}, -- 2, 3, MaxIsRare
    {
      {"Weapon_Projectile_Damage",           2,    2, "NoWeighting"}, --    1,    2, MaxIsUncommon
      {"Weapon_Projectile_ReloadTime",    0.85, 0.85, "NoWeighting"}, -- 0.85, 0.90, MinIsUncommon
      {"Weapon_Projectile_ClipSize",         4,    4, "NoWeighting"}, --    4,    4, NoWeighting
      {"Weapon_Projectile_Rate",          1.10, 1.10, "NoWeighting"}, -- 1.05, 1.10, MaxIsUncommon
      {"Weapon_Projectile_BurstCap",         1,    1, "NoWeighting"}, --    1,    1, NoWeighting
      {"Weapon_Projectile_BurstCooldown", 0.90, 0.90, "NoWeighting"}, -- 0.95, 0.90, MaxIsRare
    }
  },
  { -- Boltcaster A Class
    {"UP_BOLT3", 4, 4, "NoWeighting"}, -- 3, 4, MaxIsRare
    {
      {"Weapon_Projectile_Damage",           3,    3, "NoWeighting"}, --    2,    3, MaxIsUncommon
      {"Weapon_Projectile_ReloadTime",    0.80, 0.80, "NoWeighting"}, -- 0.80, 0.90, MinIsSuperRare
      {"Weapon_Projectile_ClipSize",         6,    6, "NoWeighting"}, --    6,    6, NoWeighting
      {"Weapon_Projectile_Rate",          1.15, 1.15, "NoWeighting"}, -- 1.10, 1.15, MaxIsSuperRare
      {"Weapon_Projectile_BurstCap",         2,    2, "NoWeighting"}, --    1,    2, MaxIsSuperRare
      {"Weapon_Projectile_BurstCooldown", 0.85, 0.85, "NoWeighting"}, -- 0.90, 0.85, MaxIsRare
    }
  },
  { -- Boltcaster S Class
    {"UP_BOLT4", 4, 4, "NoWeighting"}, -- 4, 4, NoWeighting
    {
      {"Weapon_Projectile_Damage",           4,    4, "NoWeighting"}, --    3,    4, MaxIsUncommon
      {"Weapon_Projectile_ReloadTime",    0.80, 0.80, "NoWeighting"}, -- 0.80, 0.90, MinIsUncommon
      {"Weapon_Projectile_ClipSize",         8,    8, "NoWeighting"}, --    8,    8, NoWeighting
      {"Weapon_Projectile_Rate",          1.15, 1.15, "NoWeighting"}, -- 1.10, 1.15, MaxIsUncommon
      {"Weapon_Projectile_BurstCap",         2,    2, "NoWeighting"}, --    1,    2, MaxIsRare
      {"Weapon_Projectile_BurstCooldown", 0.85, 0.85, "NoWeighting"}, -- 0.85, 0.85, NoWeighting
    }
  },
  { -- Boltcaster X Class
    {"UP_BOLTX", 4, 4, "NoWeighting"}, -- 1, 4, MaxIsRare
    {
      {"Weapon_Projectile_Damage",           5,    5, "NoWeighting"}, --    1,    5, MaxIsUncommon
      {"Weapon_Projectile_ReloadTime",    0.75, 0.75, "NoWeighting"}, -- 0.75, 0.95, MinIsUncommon
      {"Weapon_Projectile_ClipSize",        10,   10, "NoWeighting"}, --    2,   10, MaxIsRare
      {"Weapon_Projectile_Rate",          1.20, 1.20, "NoWeighting"}, -- 1.01, 1.20, MaxIsUncommon
      {"Weapon_Projectile_BurstCap",         2,    2, "NoWeighting"}, --    1,    2, MaxIsRare
      {"Weapon_Projectile_BurstCooldown", 0.80, 0.80, "NoWeighting"}, -- 0.99, 0.80, MaxIsRare
    }
  },
  { -- Plasma Launcher C Class
    {"UP_GREN1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Weapon_Grenade_Damage",  200,  200, "NoWeighting"}, --  100,  200, MaxIsUncommon
      {"Weapon_Grenade_Bounce",    1,    1, "NoWeighting"}, --    1,    1, NoWeighting
      {"Weapon_Grenade_Radius", 1.05, 1.05, "NoWeighting"}, -- 1.01, 1.05, MaxIsUncommon
      {"Weapon_Grenade_Speed",     2,    2, "NoWeighting"}, --    1,    2, MaxIsSuperRare
    }
  },
  { -- Plasma Launcher B Class
    {"UP_GREN2", 3, 3, "NoWeighting"}, -- 1, 3, MaxIsRare
    {
      {"Weapon_Grenade_Damage",  300,  300, "NoWeighting"}, --  200,  300, MaxIsUncommon
      {"Weapon_Grenade_Bounce",    2,    2, "NoWeighting"}, --    1,    2, MaxIsUncommon
      {"Weapon_Grenade_Radius", 1.10, 1.10, "NoWeighting"}, -- 1.05, 1.10, MaxIsSuperRare
      {"Weapon_Grenade_Speed",     3,    3, "NoWeighting"}, --    1,    3, MaxIsRare
    }
  },
  { -- Plasma Launcher A Class
    {"UP_GREN3", 3, 3, "NoWeighting"}, -- 2, 3, MaxIsUncommon
    {
      {"Weapon_Grenade_Damage",  400,  400, "NoWeighting"}, --  300,  400, MaxIsRare
      {"Weapon_Grenade_Bounce",    3,    3, "NoWeighting"}, --    2,    3, MaxIsUncommon
      {"Weapon_Grenade_Radius", 1.10, 1.10, "NoWeighting"}, -- 1.05, 1.10, MaxIsRare
      {"Weapon_Grenade_Speed",     3,    3, "NoWeighting"}, --    1,    3, MaxIsUncommon
    }
  },
  { -- Plasma Launcher S Class
    {"UP_GREN4", 3, 3, "NoWeighting"}, -- 3, 3, NoWeighting
    {
      {"Weapon_Grenade_Damage",  400,  400, "NoWeighting"}, --  350,  400, MaxIsUncommon
      {"Weapon_Grenade_Bounce",    3,    3, "NoWeighting"}, --    3,    3, NoWeighting
      {"Weapon_Grenade_Radius", 1.15, 1.15, "NoWeighting"}, -- 1.10, 1.15, MaxIsSuperRare
      {"Weapon_Grenade_Speed",     3,    3, "NoWeighting"}, --    2,    3, MaxIsUncommon
    }
  },
  { -- Plasma Launcher X Class
    {"UP_GRENX", 3, 3, "NoWeighting"}, -- 1, 3, MaxIsRare
    {
      {"Weapon_Grenade_Damage",  450,  450, "NoWeighting"}, --  100,  450, MaxIsUncommon
      {"Weapon_Grenade_Bounce",    4,    4, "NoWeighting"}, --    1,    4, MaxIsRare
      {"Weapon_Grenade_Radius", 1.20, 1.20, "NoWeighting"}, -- 1.01, 1.20, MaxIsSuperRare
      {"Weapon_Grenade_Speed",     4,    4, "NoWeighting"}, --    1,    4, MaxIsUncommon
    }
  },
  { -- Geology Cannon C Class
    {"UP_TGREN1", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Weapon_Grenade_Damage",  200,  200, "NoWeighting"}, --  100,  200, MaxIsUncommon
      {"Weapon_Grenade_Radius", 1.20, 1.20, "NoWeighting"}, -- 1.10, 1.20, MaxIsUncommon
      {"Weapon_Grenade_Speed",     2,    2, "NoWeighting"}, --    1,    2, MaxIsSuperRare
    }
  },
  { -- Geology Cannon B Class
    {"UP_TGREN2", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Weapon_Grenade_Damage",  300,  300, "NoWeighting"}, --  200,  300, MaxIsUncommon
      {"Weapon_Grenade_Radius", 1.30, 1.30, "NoWeighting"}, -- 1.20, 1.30, MaxIsUncommon
      {"Weapon_Grenade_Speed",     3,    3, "NoWeighting"}, --    1,    3, MaxIsRare
    }
  },
  { -- Geology Cannon A Class
    {"UP_TGREN3", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Weapon_Grenade_Damage",  400,  400, "NoWeighting"}, --  300,  400, MaxIsUncommon
      {"Weapon_Grenade_Radius", 1.50, 1.50, "NoWeighting"}, -- 1.30, 1.50, MaxIsRare
      {"Weapon_Grenade_Speed",     3,    3, "NoWeighting"}, --    1,    3, MaxIsUncommon
    }
  },
  { -- Geology Cannon S Class
    {"UP_TGREN4", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Weapon_Grenade_Damage",  400,  400, "NoWeighting"}, --  350,  400, MaxIsUncommon
      {"Weapon_Grenade_Radius", 1.50, 1.50, "NoWeighting"}, -- 1.40, 1.50, MaxIsUncommon
      {"Weapon_Grenade_Speed",     3,    3, "NoWeighting"}, --    2,    3, MaxIsUncommon
    }
  },
  { -- Geology Cannon X Class
    {"UP_TGRENX", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Weapon_Grenade_Damage",  450,  450, "NoWeighting"}, --  100,  450, MaxIsUncommon
      {"Weapon_Grenade_Radius", 1.60, 1.60, "NoWeighting"}, -- 1.10, 1.60, MaxIsUncommon
      {"Weapon_Grenade_Speed",     4,    4, "NoWeighting"}, --    1,    4, MaxIsUncommon
    }
  },
  { -- Blaze Javelin C Class
    {"UP_RAIL1", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Weapon_Laser_Damage",       40,   40, "NoWeighting"}, --   30,   40, MaxIsUncommon
      {"Weapon_Laser_ChargeTime", 0.90, 0.90, "NoWeighting"}, -- 0.90, 0.95, MinIsUncommon
    }
  },
  { -- Blaze Javelin B Class
    {"UP_RAIL2", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsUncommon
    {
      {"Weapon_Laser_Damage",       50,   50, "NoWeighting"}, --   40,   50, MaxIsUncommon
      {"Weapon_Laser_ChargeTime", 0.85, 0.85, "NoWeighting"}, -- 0.85, 0.90, MinIsUncommon
    }
  },
  { -- Blaze Javelin A Class
    {"UP_RAIL3", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Weapon_Laser_Damage",       60,   60, "NoWeighting"}, --   50,   60, MaxIsUncommon
      {"Weapon_Laser_ChargeTime", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.90, MinIsSuperRare
    }
  },
  { -- Blaze Javelin S Class
    {"UP_RAIL4", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Weapon_Laser_Damage",       75,   75, "NoWeighting"}, --   60,   75, MaxIsUncommon
      {"Weapon_Laser_ChargeTime", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.90, MinIsUncommon
    }
  },
  { -- Blaze Javelin X Class
    {"UP_RAILX", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Weapon_Laser_Damage",       85,   85, "NoWeighting"}, --   30,   85, MaxIsUncommon
      {"Weapon_Laser_ChargeTime", 0.75, 0.75, "NoWeighting"}, -- 0.75, 0.95, MinIsUncommon
    }
  },
  { -- Scatter Blaster C Class
    {"UP_SHOT1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Weapon_Projectile_Damage",        1,    1, "NoWeighting"}, --    1,    1, MaxIsUncommon
      {"Weapon_Projectile_ReloadTime", 0.90, 0.90, "NoWeighting"}, -- 0.90, 0.95, MinIsUncommon
      {"Weapon_Projectile_BurstCap",      1,    1, "NoWeighting"}, --    1,    1, NoWeighting
    }
  },
  { -- Scatter Blaster B Class
    {"UP_SHOT2", 3, 3, "NoWeighting"}, -- 2, 3, MaxIsRare
    {
      {"Weapon_Projectile_Damage",           2,    2, "NoWeighting"}, --    1,    2, MaxIsRare
      {"Weapon_Projectile_ReloadTime",    0.85, 0.85, "NoWeighting"}, -- 0.85, 0.90, MinIsUncommon
      {"Weapon_Projectile_ClipSize",         8,    8, "NoWeighting"}, --    8,    8, NoWeighting
      {"Weapon_Projectile_Rate",          1.05, 1.05, "NoWeighting"}, -- 1.01, 1.05, MaxIsUncommon
      {"Weapon_Projectile_BurstCap",         1,    1, "NoWeighting"}, --    1,    1, NoWeighting
      {"Weapon_Projectile_BurstCooldown", 0.90, 0.90, "NoWeighting"}, -- 0.90, 0.95, MinIsRare
    }
  },
  { -- Scatter Blaster A Class
    {"UP_SHOT3", 4, 4, "NoWeighting"}, -- 3, 4, MaxIsRare
    {
      {"Weapon_Projectile_Damage",           4,    4, "NoWeighting"}, --    2,    4, MaxIsSuperRare
      {"Weapon_Projectile_ReloadTime",    0.80, 0.80, "NoWeighting"}, -- 0.80, 0.85, MinIsUncommon
      {"Weapon_Projectile_ClipSize",         8,    8, "NoWeighting"}, --    8,    8, NoWeighting
      {"Weapon_Projectile_Rate",          1.05, 1.05, "NoWeighting"}, -- 1.05, 1.10, MaxIsUncommon
      {"Weapon_Projectile_BurstCap",         1,    1, "NoWeighting"}, --    1,    1, NoWeighting
      {"Weapon_Projectile_BurstCooldown", 0.85, 0.85, "NoWeighting"}, -- 0.85, 0.90, MinIsRare
    }
  },
  { -- Scatter Blaster S Class
    {"UP_SHOT4", 4, 4, "NoWeighting"}, -- 4, 4, NoWeighting
    {
      {"Weapon_Projectile_Damage",           5,    5, "NoWeighting"}, --    3,    5, MaxIsUncommon
      {"Weapon_Projectile_ReloadTime",    0.75, 0.75, "NoWeighting"}, -- 0.75, 0.80, MinIsUncommon
      {"Weapon_Projectile_ClipSize",         8,    8, "NoWeighting"}, --    8,    8, NoWeighting
      {"Weapon_Projectile_Rate",          1.15, 1.15, "NoWeighting"}, -- 1.10, 1.15, MaxIsUncommon
      {"Weapon_Projectile_BurstCap",         1,    1, "NoWeighting"}, --    1,    1, NoWeighting
      {"Weapon_Projectile_BurstCooldown", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.85, NoWeighting
    }
  },
  { -- Scatter Blaster X Class
    {"UP_SHOTX", 4, 4, "NoWeighting"}, -- 1, 4, MaxIsRare
    {
      {"Weapon_Projectile_Damage",           6,    6, "NoWeighting"}, --    1,    6, MaxIsUncommon
      {"Weapon_Projectile_ReloadTime",    0.70, 0.70, "NoWeighting"}, -- 0.70, 0.95, MinIsUncommon
      {"Weapon_Projectile_ClipSize",         8,    8, "NoWeighting"}, --    8,    8, NoWeighting
      {"Weapon_Projectile_Rate",          1.20, 1.20, "NoWeighting"}, -- 1.01, 1.20, MaxIsUncommon
      {"Weapon_Projectile_BurstCap",         1,    1, "NoWeighting"}, --    1,    1, NoWeighting
      {"Weapon_Projectile_BurstCooldown", 0.75, 0.75, "NoWeighting"}, -- 0.75, 0.95, MinIsRare
    }
  },
  { -- Pulse Spitter C Class
    {"UP_SMG1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Weapon_Projectile_Damage",      1,    1, "NoWeighting"}, --    1,    1, MaxIsUncommon
      {"Weapon_Projectile_Rate",     1.10, 1.10, "NoWeighting"}, -- 1.01, 1.10, MaxIsSuperRare
      {"Weapon_Projectile_ClipSize",   12,   12, "NoWeighting"}, --   12,   12, NoWeighting
    }
  },
  { -- Pulse Spitter B Class
    {"UP_SMG2", 3, 3, "NoWeighting"}, -- 2, 3, MaxIsRare
    {
      {"Weapon_Projectile_Damage",        2,    2, "NoWeighting"}, --    1,    2, MaxIsRare
      {"Weapon_Projectile_Rate",       1.10, 1.10, "NoWeighting"}, -- 1.01, 1.10, MaxIsRare
      {"Weapon_Projectile_ReloadTime", 0.90, 0.90, "NoWeighting"}, -- 0.90, 0.99, MinIsSuperRare
      {"Weapon_Projectile_ClipSize",     12,   12, "NoWeighting"}, --   12,   12, NoWeighting
    }
  },
  { -- Pulse Spitter A Class
    {"UP_SMG3", 4, 4, "NoWeighting"}, -- 3, 4, MaxIsRare
    {
      {"Weapon_Projectile_Damage",        3,    3, "NoWeighting"}, --    1,    3, MaxIsRare
      {"Weapon_Projectile_Rate",       1.10, 1.10, "NoWeighting"}, -- 1.05, 1.10, MaxIsUncommon
      {"Weapon_Projectile_ReloadTime", 0.90, 0.90, "NoWeighting"}, -- 0.90, 0.99, MinIsRare
      {"Weapon_Projectile_ClipSize",     12,   12, "NoWeighting"}, --   12,   12, NoWeighting
    }
  },
  { -- Pulse Spitter S Class
    {"UP_SMG4", 4, 4, "NoWeighting"}, -- 4, 4, NoWeighting
    {
      {"Weapon_Projectile_Damage",        3,    3, "NoWeighting"}, --    2,    3, MaxIsUncommon
      {"Weapon_Projectile_Rate",       1.15, 1.15, "NoWeighting"}, -- 1.10, 1.15, MaxIsUncommon
      {"Weapon_Projectile_ReloadTime", 0.90, 0.90, "NoWeighting"}, -- 0.90, 0.95, MinIsUncommon
      {"Weapon_Projectile_ClipSize",     12,   12, "NoWeighting"}, --   12,   12, NoWeighting
    }
  },
  { -- Pulse Spitter X Class
    {"UP_SMGX", 4, 4, "NoWeighting"}, -- 1, 4, MaxIsRare
    {
      {"Weapon_Projectile_Damage",        4,    4, "NoWeighting"}, --    1,    4, MaxIsUncommon
      {"Weapon_Projectile_Rate",       1.20, 1.20, "NoWeighting"}, -- 1.01, 1.20, MaxIsUncommon
      {"Weapon_Projectile_ReloadTime", 0.85, 0.85, "NoWeighting"}, -- 0.85, 0.99, MinIsRare
      {"Weapon_Projectile_ClipSize",     12,   12, "NoWeighting"}, --   12,   12, NoWeighting
    }
  },
  { -- Neutron Cannon C Class
    {"UP_CANN1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Weapon_Projectile_Damage",               5,    5, "NoWeighting"}, --    2,    5, MaxIsRare
      {"Weapon_Projectile_MaximumCharge",        1,    1, "NoWeighting"}, --    1,    1, NoWeighting
      {"Weapon_ChargedProjectile_ExtraSpeed",   10,   10, "NoWeighting"}, --    5,   10, MaxIsSuperRare
      {"Weapon_ChargedProjectile_ChargeTime", 0.90, 0.90, "NoWeighting"}, -- 0.90, 0.95, MinIsSuperRare
    }
  },
  { -- Neutron Cannon B Class
    {"UP_CANN2", 3, 3, "NoWeighting"}, -- 2, 3, MaxIsRare
    {
      {"Weapon_Projectile_Damage",               7,    7, "NoWeighting"}, --    5,    7, MaxIsUncommon
      {"Weapon_Projectile_MaximumCharge",        1,    1, "NoWeighting"}, --    1,    1, NoWeighting
      {"Weapon_ChargedProjectile_ExtraSpeed",   15,   15, "NoWeighting"}, --   10,   15, MaxIsRare
      {"Weapon_ChargedProjectile_ChargeTime", 0.85, 0.85, "NoWeighting"}, -- 0.85, 0.90, MinIsSuperRare
    }
  },
  { -- Neutron Cannon A Class
    {"UP_CANN3", 4, 4, "NoWeighting"}, -- 3, 4, MaxIsRare
    {
      {"Weapon_Projectile_Damage",              10,   10, "NoWeighting"}, --    7,   10, MaxIsRare
      {"Weapon_Projectile_MaximumCharge",        1,    1, "NoWeighting"}, --    1,    1, NoWeighting
      {"Weapon_ChargedProjectile_ExtraSpeed",   20,   20, "NoWeighting"}, --   15,   20, MaxIsUncommon
      {"Weapon_ChargedProjectile_ChargeTime", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.90, MinIsRare
    }
  },
  { -- Neutron Cannon S Class
    {"UP_CANN4", 4, 4, "NoWeighting"}, -- 4, 4, NoWeighting
    {
      {"Weapon_Projectile_Damage",              10,   10, "NoWeighting"}, --   10,   10, MaxIsUncommon
      {"Weapon_Projectile_MaximumCharge",        1,    1, "NoWeighting"}, --    1,    1, NoWeighting
      {"Weapon_ChargedProjectile_ExtraSpeed",   25,   25, "NoWeighting"}, --   20,   25, MaxIsUncommon
      {"Weapon_ChargedProjectile_ChargeTime", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.90, MinIsUncommon
    }
  },
  { -- Neutron Cannon X Class
    {"UP_CANNX", 4, 4, "NoWeighting"}, -- 1, 4, MaxIsRare
    {
      {"Weapon_Projectile_Damage",              15,   15, "NoWeighting"}, --    5,   15, MaxIsUncommon
      {"Weapon_Projectile_MaximumCharge",        1,    1, "NoWeighting"}, --    1,    1, NoWeighting
      {"Weapon_ChargedProjectile_ExtraSpeed",   25,   25, "NoWeighting"}, --    5,   25, MaxIsUncommon
      {"Weapon_ChargedProjectile_ChargeTime", 0.75, 0.75, "NoWeighting"}, -- 0.75, 0.95, MinIsRare
    }
  },
  { -- Sentinel Boltcaster
    {"UP_SENGUN", 3, 3, "NoWeighting"}, -- 1, 4, MaxIsRare
    {
      {"Weapon_Projectile_Damage",        4,    4, "NoWeighting"}, --    1,    4, MaxIsUncommon
      {"Weapon_Projectile_ReloadTime", 0.85, 0.85, "NoWeighting"}, -- 0.85, 0.99, MinIsRare
      {"Weapon_Projectile_Rate",       1.20, 1.20, "NoWeighting"}, -- 1.01, 1.20, MaxIsUncommon
    }
  },
  { -- Suit Life Support B Class (there isnt a C Class)
    {"UP_ENGY1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Suit_Energy",       0.20, 0.20, "NoWeighting"}, -- 0.05, 0.20, MaxIsUncommon
      {"Suit_Energy_Regen", 1.10, 1.10, "NoWeighting"}, -- 1.01, 1.10, MaxIsRare
    }
  },
  { -- Suit Life Support A Class
    {"UP_ENGY2", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Suit_Energy",       0.50, 0.50, "NoWeighting"}, -- 0.20, 0.50, MaxIsUncommon
      {"Suit_Energy_Regen", 1.25, 1.25, "NoWeighting"}, -- 1.01, 1.25, MaxIsRare
    }
  },
  { -- Suit Life Support S Class
    {"UP_ENGY3", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Suit_Energy",       1.00, 1.00, "NoWeighting"}, -- 0.50, 1.00, MaxIsUncommon
      {"Suit_Energy_Regen", 1.50, 1.50, "NoWeighting"}, -- 1.25, 1.50, MaxIsUncommon
    }
  },
  { -- Suit Life Support X Class
    {"UP_ENGYX", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Suit_Energy",       1.10, 1.10, "NoWeighting"}, -- 0.05, 1.10, MaxIsUncommon
      {"Suit_Energy_Regen", 1.75, 1.75, "NoWeighting"}, -- 1.01, 1.75, MaxIsUncommon
    }
  },
  { -- Suit Hazard Protection X Class
    {"UP_HAZX", 4, 4, "NoWeighting"}, -- 4, 4, NoWeighting
    {
      {"Suit_Protection_HeatDrain", 1.10, 1.10, "NoWeighting"}, -- 1.01, 1.10, MaxIsUncommon
      {"Suit_Protection_ColdDrain", 1.10, 1.10, "NoWeighting"}, -- 1.01, 1.10, MaxIsUncommon
      {"Suit_Protection_RadDrain",  1.10, 1.10, "NoWeighting"}, -- 1.01, 1.10, MaxIsRare
      {"Suit_Protection_ToxDrain",  1.10, 1.10, "NoWeighting"}, -- 1.01, 1.10, MaxIsRare
    }
  },
  { -- Suit Jetpack C Class
    {"UP_JET1", 3, 3, "NoWeighting"}, -- 2, 3, MaxIsRare
    {
      {"Suit_Jetpack_Tank",     1.50, 1.50, "NoWeighting"}, -- 1.00, 1.50, MaxIsRare
      {"Suit_Stamina_Strength", 0.20, 0.20, "NoWeighting"}, -- 0.10, 0.20, MaxIsUncommon
      {"Suit_Stamina_Recovery", 1.10, 1.10, "NoWeighting"}, -- 1.01, 1.10, MaxIsRare
      {"Suit_Jetpack_Drain",    0.90, 0.90, "NoWeighting"}, -- 0.90, 0.95, MinIsUncommon
      {"Suit_Jetpack_Refill",   1.05, 1.05, "NoWeighting"}, -- 1.01, 1.05, MaxIsRare
    }
  },
  { -- Suit Jetpack B Class
    {"UP_JET2", 4, 4, "NoWeighting"}, -- 2, 4, MaxIsRare
    {
      {"Suit_Jetpack_Tank",     1.50, 1.50, "NoWeighting"}, -- 1.00, 1.50, MaxIsUncommon
      {"Suit_Stamina_Strength", 0.30, 0.30, "NoWeighting"}, -- 0.10, 0.30, MaxIsUncommon
      {"Suit_Stamina_Recovery", 1.20, 1.20, "NoWeighting"}, -- 1.10, 1.20, MaxIsRare
      {"Suit_Jetpack_Drain",    0.85, 0.85, "NoWeighting"}, -- 0.85, 0.90, MinIsUncommon
      {"Suit_Jetpack_Ignition", 1.05, 1.05, "NoWeighting"}, -- 1.01, 1.05, MaxIsRare
      {"Suit_Jetpack_Refill",   1.10, 1.10, "NoWeighting"}, -- 1.05, 1.10, MaxIsRare
    }
  },
  { -- Suit Jetpack A Class
    {"UP_JET3", 4, 4, "NoWeighting"}, -- 3, 4, MaxIsUncommon
    {
      {"Suit_Jetpack_Tank",     2.00, 2.00, "NoWeighting"}, -- 1.50, 2.00, MaxIsUncommon
      {"Suit_Stamina_Strength", 0.50, 0.50, "NoWeighting"}, -- 0.20, 0.50, MaxIsUncommon
      {"Suit_Stamina_Recovery", 1.30, 1.30, "NoWeighting"}, -- 1.20, 1.30, MaxIsUncommon
      {"Suit_Jetpack_Drain",    0.80, 0.80, "NoWeighting"}, -- 0.80, 0.90, MinIsSuperRare
      {"Suit_Jetpack_Ignition", 1.05, 1.05, "NoWeighting"}, -- 1.01, 1.05, MaxIsUncommon
      {"Suit_Jetpack_Refill",   1.15, 1.15, "NoWeighting"}, -- 1.10, 1.15, MaxIsUncommon
    }
  },
  { -- Suit Jetpack S Class
    {"UP_JET4", 4, 4, "NoWeighting"}, -- 4, 4, NoWeighting
    {
      {"Suit_Jetpack_Tank",     2.25, 2.25, "NoWeighting"}, -- 2.00, 2.25, MaxIsUncommon
      {"Suit_Stamina_Strength", 0.50, 0.50, "NoWeighting"}, -- 0.40, 0.50, MaxIsUncommon
      {"Suit_Stamina_Recovery", 1.50, 1.50, "NoWeighting"}, -- 1.30, 1.50, MaxIsUncommon
      {"Suit_Jetpack_Drain",    0.80, 0.80, "NoWeighting"}, -- 0.80, 0.90, MinIsUncommon
      {"Suit_Jetpack_Ignition", 1.10, 1.10, "NoWeighting"}, -- 1.05, 1.10, MaxIsUncommon
      {"Suit_Jetpack_Refill",   1.25, 1.25, "NoWeighting"}, -- 1.15, 1.25, MaxIsUncommon
    }
  },
  { -- Suit Jetpack X Class
    {"UP_JETX", 4, 4, "NoWeighting"}, -- 2, 4, MaxIsRare
    {
      {"Suit_Jetpack_Tank",     2.30, 2.30, "NoWeighting"}, -- 1.00, 2.30, MaxIsUncommon
      {"Suit_Stamina_Strength", 0.60, 0.60, "NoWeighting"}, -- 0.10, 0.60, MaxIsUncommon
      {"Suit_Stamina_Recovery", 1.60, 1.60, "NoWeighting"}, -- 1.01, 1.60, MaxIsUncommon
      {"Suit_Jetpack_Drain",    0.75, 0.75, "NoWeighting"}, -- 0.75, 0.95, MinIsUncommon
      {"Suit_Jetpack_Ignition", 1.15, 1.15, "NoWeighting"}, -- 1.01, 1.15, MaxIsUncommon
      {"Suit_Jetpack_Refill",   1.30, 1.30, "NoWeighting"}, -- 1.05, 1.30, MaxIsUncommon
    }
  },
  { -- Suit Shield C Class
    {"UP_SHLD1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Suit_Armour_Shield_Strength", 0.15, 0.15, "NoWeighting"}, -- 0.10, 0.15, MaxIsUncommon
      {"Suit_Armour_Health",            20,   20, "NoWeighting"}, --   20,   20, NoWeighting
    }
  },
  { -- Suit Shield B Class
    {"UP_SHLD2", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsUncommon
    {
      {"Suit_Armour_Shield_Strength", 0.20, 0.20, "NoWeighting"}, -- 0.15, 0.20, MaxIsUncommon
      {"Suit_Armour_Health",            20,   20, "NoWeighting"}, --   20,   20, NoWeighting
    }
  },
  { -- Suit Shield A Class
    {"UP_SHLD3", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Suit_Armour_Shield_Strength", 0.30, 0.30, "NoWeighting"}, -- 0.20, 0.30, MaxIsSuperRare
      {"Suit_Armour_Health",            20,   20, "NoWeighting"}, --   20,   20, NoWeighting
    }
  },
  { -- Suit Shield S Class
    {"UP_SHLD4", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Suit_Armour_Shield_Strength", 0.35, 0.35, "NoWeighting"}, -- 0.30, 0.35, MaxIsUncommon
      {"Suit_Armour_Health",            20,   20, "NoWeighting"}, --   20,   20, NoWeighting
    }
  },
  { -- Suit Shield X Class
    {"UP_SHLDX", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Suit_Armour_Shield_Strength", 0.35, 0.35, "NoWeighting"}, -- 0.10, 0.35, MaxIsUncommon
      {"Suit_Armour_Health",            20,   20, "NoWeighting"}, --   20,   20, NoWeighting
    }
  },
  { -- Suit Sentinel
    {"UP_SNSUIT", 4, 4, "NoWeighting"}, -- 1, 4, MaxIsRare
    {
      {"Suit_Armour_Shield_Strength", 0.35, 0.35, "NoWeighting"}, -- 0.10, 0.35, MinIsUncommon
      {"Suit_Armour_Health",            20,   20, "NoWeighting"}, --   20,   20, NoWeighting
      {"Suit_Energy",                 1.10, 1.10, "NoWeighting"}, -- 0.05, 1.10, MaxIsUncommon
      {"Suit_Energy_Regen",           1.75, 1.75, "NoWeighting"}, -- 1.01, 1.75, MaxIsUncommon
      {"Suit_Jetpack_Drain",          0.75, 0.75, "NoWeighting"}, -- 0.75, 0.95, MinIsUncommon
      {"Suit_Stamina_Strength",       0.60, 0.60, "NoWeighting"}, -- 0.10, 0.60, MaxIsUncommon
    }
  },
  { -- Suit Underwater B Class (there isnt a C Class)
    {"UP_UNW1", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Suit_Underwater", 85, 85, "NoWeighting"}, -- 60, 85, MaxIsSuperRare
    }
  },
  { -- Suit Underwater A Class
    {"UP_UNW2", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Suit_Underwater", 105, 105, "NoWeighting"}, -- 75, 105, MaxIsRare
    }
  },
  { -- Suit Underwater S Class
    {"UP_UNW3", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Suit_Underwater", 105, 105, "NoWeighting"}, -- 95, 105, MaxIsUncommon
    }
  },
  { -- Suit Radiation Protection B Class (there isnt a C Class)
    {"UP_RAD1", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Suit_Protection_Radiation",    265,  265, "NoWeighting"}, --  180,  265, MaxIsSuperRare
      {"Suit_DamageReduce_Radiation", 0.95, 0.95, "NoWeighting"}, -- 0.95, 0.99, MinIsUncommon
    }
  },
  { -- Suit Radiation Protection A Class
    {"UP_RAD2", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Suit_Protection_Radiation",    265,  265, "NoWeighting"}, --  200,  265, MaxIsRare
      {"Suit_DamageReduce_Radiation", 0.85, 0.85, "NoWeighting"}, -- 0.85, 0.95, MinIsUncommon
    }
  },
  { -- Suit Radiation Protection S Class
    {"UP_RAD3", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Suit_Protection_Radiation",    265,  265, "NoWeighting"}, --  220,  265, MaxIsUncommon
      {"Suit_DamageReduce_Radiation", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.90, MinIsUncommon
    }
  },
  { -- Suit Toxic Protection B Class (there isnt a C Class)
    {"UP_TOX1", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Suit_Protection_Toxic",    265,  265, "NoWeighting"}, --  180,  265, MaxIsSuperRare
      {"Suit_DamageReduce_Toxic", 0.95, 0.95, "NoWeighting"}, -- 0.95, 0.99, MinIsUncommon
    }
  },
  { -- Suit Toxic Protection A Class
    {"UP_TOX2", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Suit_Protection_Toxic",    265,  265, "NoWeighting"}, --  200,  265, MaxIsRare
      {"Suit_DamageReduce_Toxic", 0.85, 0.85, "NoWeighting"}, -- 0.85, 0.95, MinIsUncommon
    }
  },
  { -- Suit Toxic Protection S Class
    {"UP_TOX3", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Suit_Protection_Toxic",    265,  265, "NoWeighting"}, --  220,  265, MaxIsUncommon
      {"Suit_DamageReduce_Toxic", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.90, MinIsUncommon
    }
  },
  { -- Suit Cold Protection B Class (there isnt a C Class)
    {"UP_COLD1", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Suit_Protection_Cold",    265,  265, "NoWeighting"}, --  180,  265, MaxIsSuperRare
      {"Suit_DamageReduce_Cold", 0.95, 0.95, "NoWeighting"}, -- 0.95, 0.99, MinIsUncommon
    }
  },
  { -- Suit Cold Protection A Class
    {"UP_COLD2", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Suit_Protection_Cold",    265,  265, "NoWeighting"}, --  200,  265, MaxIsRare
      {"Suit_DamageReduce_Cold", 0.85, 0.85, "NoWeighting"}, -- 0.85, 0.95, MinIsUncommon
    }
  },
  { -- Suit Cold Protection S Class
    {"UP_COLD3", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Suit_Protection_Cold",    265,  265, "NoWeighting"}, --  220,  265, MaxIsUncommon
      {"Suit_DamageReduce_Cold", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.90, MinIsUncommon
    }
  },
  { -- Suit Heat Protection B Class (there isnt a C Class)
    {"UP_HOT1", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Suit_Protection_Heat",    265,  265, "NoWeighting"}, --  180,  265, MaxIsSuperRare
      {"Suit_DamageReduce_Heat", 0.95, 0.95, "NoWeighting"}, -- 0.95, 0.99, MinIsUncommon
    }
  },
  { -- Suit Heat Protection A Class
    {"UP_HOT2", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Suit_Protection_Heat",    265,  265, "NoWeighting"}, --  200,  265, MaxIsRare
      {"Suit_DamageReduce_Heat", 0.85, 0.85, "NoWeighting"}, -- 0.85, 0.95, MinIsUncommon
    }
  },
  { -- Suit Heat Protection S Class
    {"UP_HOT3", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Suit_Protection_Heat",    265,  265, "NoWeighting"}, --  220,  265, MaxIsUncommon
      {"Suit_DamageReduce_Heat", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.90, MinIsUncommon
    }
  },
  { -- Ship Pulse Drive C Class
    {"UP_PULSE1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Ship_PulseDrive_MiniJumpFuelSpending", 0.90, 0.90, "NoWeighting"}, -- 0.90, 0.95, MinIsUncommon
      {"Ship_Boost",                           1.05, 1.05, "NoWeighting"}, -- 1.01, 1.05, MaxIsUncommon
      {"Ship_BoostManeuverability",            1.05, 1.05, "NoWeighting"}, -- 1.01, 1.05, MaxIsRare
      {"Ship_Maneuverability",               1.005, 1.005, "NoWeighting"}, -- 1.005, 1.005, NoWeighting
    }
  },
  { -- Ship Pulse Drive B Class
    {"UP_PULSE2", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Ship_PulseDrive_MiniJumpFuelSpending", 0.85, 0.85, "NoWeighting"}, -- 0.85, 0.90, MinIsUncommon
      {"Ship_Boost",                           1.10, 1.10, "NoWeighting"}, -- 1.05, 1.10, MaxIsUncommon
      {"Ship_BoostManeuverability",            1.10, 1.10, "NoWeighting"}, -- 1.01, 1.10, MaxIsRare
      {"Ship_Maneuverability",               1.005, 1.005, "NoWeighting"}, -- 1.005, 1.005, NoWeighting
    }
  },
  { -- Ship Pulse Drive A Class
    {"UP_PULSE3", 3, 3, "NoWeighting"}, -- 2, 3, MaxIsRare
    {
      {"Ship_PulseDrive_MiniJumpFuelSpending", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.85, MinIsUncommon
      {"Ship_Boost",                           1.15, 1.15, "NoWeighting"}, -- 1.05, 1.15, MaxIsUncommon
      {"Ship_BoostManeuverability",            1.12, 1.12, "NoWeighting"}, -- 1.05, 1.12, MaxIsRare
      {"Ship_Maneuverability",               1.005, 1.005, "NoWeighting"}, -- 1.005, 1.005, NoWeighting
    }
  },
  { -- Ship Pulse Drive S Class
    {"UP_PULSE4", 3, 3, "NoWeighting"}, -- 3, 3, NoWeighting
    {
      {"Ship_PulseDrive_MiniJumpFuelSpending", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.80, NoWeighting
      {"Ship_Boost",                           1.15, 1.15, "NoWeighting"}, -- 1.10, 1.15, MaxIsUncommon
      {"Ship_BoostManeuverability",            1.12, 1.12, "NoWeighting"}, -- 1.05, 1.12, MaxIsUncommon
      {"Ship_Maneuverability",               1.005, 1.005, "NoWeighting"}, -- 1.005, 1.005, NoWeighting
    }
  },
  { -- Ship Pulse Drive X Class
    {"UP_PULSEX", 3, 3, "NoWeighting"}, -- 1, 3, MaxIsRare
    {
      {"Ship_PulseDrive_MiniJumpFuelSpending", 0.75, 0.75, "NoWeighting"}, -- 0.75, 0.95, MinIsRare
      {"Ship_Boost",                           1.20, 1.20, "NoWeighting"}, -- 1.01, 1.20, MaxIsUncommon
      {"Ship_BoostManeuverability",            1.14, 1.14, "NoWeighting"}, -- 1.01, 1.14, MaxIsUncommon
      {"Ship_Maneuverability",               1.005, 1.005, "NoWeighting"}, -- 1.005, 1.005, NoWeighting
    }
  },
  { -- Ship Launch Thruster C Class
    {"UP_LAUN1", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Ship_Launcher_TakeOffCost", 0.90, 0.90, "NoWeighting"}, -- 0.90, 0.95, MinIsUncommon
      {"Ship_Boost",                1.01, 1.01, "NoWeighting"}, -- 1.01, 1.01, MaxIsUncommon
    }
  },
  { -- Ship Launch Thruster B Class
    {"UP_LAUN2", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsSuperRare
    {
      {"Ship_Launcher_TakeOffCost", 0.85, 0.85, "NoWeighting"}, -- 0.85, 0.90, MinIsUncommon
      {"Ship_Boost",                1.05, 1.05, "NoWeighting"}, -- 1.02, 1.05, MaxIsUncommon
    }
  },
  { -- Ship Launch Thruster A Class
    {"UP_LAUN3", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsUncommon
    {
      {"Ship_Launcher_TakeOffCost", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.85, MinIsUncommon
      {"Ship_Boost",                1.08, 1.08, "NoWeighting"}, -- 1.05, 1.08, MaxIsUncommon
    }
  },
  { -- Ship Launch Thruster S Class
    {"UP_LAUN4", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Ship_Launcher_TakeOffCost", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.80, MinIsUncommon
      {"Ship_Boost",                1.10, 1.10, "NoWeighting"}, -- 1.08, 1.10, MaxIsUncommon
    }
  },
  { -- Ship Launch Thruster X Class
    {"UP_LAUNX", 2, 2, "NoWeighting"}, -- 2, 2, MaxIsUncommon
    {
      {"Ship_Launcher_TakeOffCost", 0.75, 0.75, "NoWeighting"}, -- 0.75, 0.95, MinIsRare
      {"Ship_Boost",                1.10, 1.10, "NoWeighting"}, -- 1.01, 1.10, MaxIsUncommon
    }
  },
  { -- Ship Hyperdrive C Class
    {"UP_HYP1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Ship_Hyperdrive_JumpDistance",  100,  100, "NoWeighting"}, --   50,  100, MaxIsUncommon
    }
  },
  { -- Ship Hyperdrive B Class
    {"UP_HYP2", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsUncommon
    {
      {"Ship_Hyperdrive_JumpDistance",  150,  150, "NoWeighting"}, --  100,  150, MaxIsUncommon
    }
  },
  { -- Ship Hyperdrive A Class
    {"UP_HYP3", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Ship_Hyperdrive_JumpDistance",  200,  200, "NoWeighting"}, --  150,  200, MaxIsUncommon
      {"Ship_Hyperdrive_JumpsPerCell",    1,    1, "NoWeighting"}, --    1,    1, NoWeighting
    }
  },
  { -- Ship Hyperdrive S Class
    {"UP_HYP4", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Ship_Hyperdrive_JumpDistance",  250,  250, "NoWeighting"}, --  200,  250, MaxIsUncommon
      {"Ship_Hyperdrive_JumpsPerCell",    1,    1, "NoWeighting"}, --    1,    1, NoWeighting
    }
  },
  { -- Ship Hyperdrive X Class
    {"UP_HYPX", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Ship_Hyperdrive_JumpDistance",  300,  300, "NoWeighting"}, --   50,  300, MaxIsUncommon
      {"Ship_Hyperdrive_JumpsPerCell",    1,    1, "NoWeighting"}, --    1,    1, NoWeighting
    }
  },
  { -- Ship Shield C Class
    {"UP_S_SHL1", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Ship_Armour_Shield_Strength", 0.10, 0.10, "NoWeighting"}, -- 0.05, 0.10, MaxIsSuperRare
    }
  },
  { -- Ship Shield B Class
    {"UP_S_SHL2", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Ship_Armour_Shield_Strength", 0.10, 0.10, "NoWeighting"}, -- 0.05, 0.10, MaxIsUncommon
    }
  },
  { -- Ship Shield A Class
    {"UP_S_SHL3", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Ship_Armour_Shield_Strength", 0.20, 0.20, "NoWeighting"}, -- 0.10, 0.20, MaxIsUncommon
    }
  },
  { -- Ship Shield S Class
    {"UP_S_SHL4", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Ship_Armour_Shield_Strength", 0.20, 0.20, "NoWeighting"}, -- 0.20, 0.20, MaxIsUncommon
    }
  },
  { -- Ship Shield X Class
    {"UP_S_SHLX", 1, 1, "NoWeighting"}, -- 1, 1, MaxIsRare
    {
      {"Ship_Armour_Shield_Strength", 0.25, 0.25, "NoWeighting"}, -- 0.05, 0.25, MaxIsUncommon
    }
  },
  { -- Ship Photon Cannon C Class
    {"UP_SGUN1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Ship_Weapons_Guns_Damage",      16,    16, "NoWeighting"}, --     8,    16, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",     1.011, 1.011, "NoWeighting"}, -- 1.001, 1.011, MaxIsUncommon
      {"Ship_Weapons_Guns_HeatTime", 1.010, 1.010, "NoWeighting"}, -- 1.001, 1.010, MaxIsUncommon
    }
  },
  { -- Ship Photon Cannon B Class
    {"UP_SGUN2", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsUncommon
    {
      {"Ship_Weapons_Guns_Damage",      20,    20, "NoWeighting"}, --    12,    20, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",     1.016, 1.016, "NoWeighting"}, -- 1.006, 1.016, MaxIsUncommon
      {"Ship_Weapons_Guns_HeatTime", 1.020, 1.020, "NoWeighting"}, -- 1.010, 1.020, MaxIsUncommon
    }
  },
  { -- Ship Photon Cannon A Class
    {"UP_SGUN3", 3, 3, "NoWeighting"}, -- 2, 3, MaxIsUncommon
    {
      {"Ship_Weapons_Guns_Damage",      24,    24, "NoWeighting"}, --    16,    24, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",     1.021, 1.021, "NoWeighting"}, -- 1.016, 1.021, MaxIsUncommon
      {"Ship_Weapons_Guns_HeatTime", 1.030, 1.030, "NoWeighting"}, -- 1.020, 1.030, MaxIsUncommon
    }
  },
  { -- Ship Photon Cannon S Class
    {"UP_SGUN4", 3, 3, "NoWeighting"}, -- 3, 3, NoWeighting
    {
      {"Ship_Weapons_Guns_Damage",      28,    28, "NoWeighting"}, --    20,    28, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",     1.021, 1.021, "NoWeighting"}, -- 1.021, 1.021, NoWeighting
      {"Ship_Weapons_Guns_HeatTime", 1.030, 1.030, "NoWeighting"}, -- 1.030, 1.030, MaxIsUncommon
    }
  },
  { -- Ship Photon Cannon X Class
    {"UP_SGUNX", 3, 3, "NoWeighting"}, -- 1, 3, MaxIsRare
    {
      {"Ship_Weapons_Guns_Damage",      32,    32, "NoWeighting"}, --     8,    32, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",     1.026, 1.026, "NoWeighting"}, -- 1.001, 1.026, MaxIsUncommon
      {"Ship_Weapons_Guns_HeatTime", 1.035, 1.035, "NoWeighting"}, -- 1.001, 1.035, MaxIsUncommon
    }
  },
  { -- Ship Phase Beam C Class
    {"UP_SLASR1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Ship_Weapons_Lasers_HeatTime", 1.35, 1.35, "NoWeighting"}, -- 1.10, 1.35, MaxIsUncommon
      {"Ship_Weapons_Lasers_Damage",     40,   40, "NoWeighting"}, --   30,   40, MaxIsUncommon
    }
  },
  { -- Ship Phase Beam B Class
    {"UP_SLASR2", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsUncommon
    {
      {"Ship_Weapons_Lasers_HeatTime", 1.55, 1.55, "NoWeighting"}, -- 1.35, 1.55, MaxIsUncommon
      {"Ship_Weapons_Lasers_Damage",     50,   50, "NoWeighting"}, --   40,   50, MaxIsUncommon
    }
  },
  { -- Ship Phase Beam A Class
    {"UP_SLASR3", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Ship_Weapons_Lasers_HeatTime", 1.75, 1.75, "NoWeighting"}, -- 1.55, 1.75, MaxIsUncommon
      {"Ship_Weapons_Lasers_Damage",     60,   60, "NoWeighting"}, --   50,   60, MaxIsUncommon
    }
  },
  { -- Ship Phase Beam S Class
    {"UP_SLASR4", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Ship_Weapons_Lasers_HeatTime", 1.95, 1.95, "NoWeighting"}, -- 1.75, 1.95, MaxIsUncommon
      {"Ship_Weapons_Lasers_Damage",     70,   70, "NoWeighting"}, --   60,   70, MaxIsUncommon
    }
  },
  { -- Ship Phase Beam X Class
    {"UP_SLASRX", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Ship_Weapons_Lasers_HeatTime", 2.00, 2.00, "NoWeighting"}, -- 1.10, 2.00, MaxIsUncommon
      {"Ship_Weapons_Lasers_Damage",     80,   80, "NoWeighting"}, --   30,   80, MaxIsUncommon
    }
  },
  { -- Ship Positron C Class
    {"UP_SSHOT1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsUncommon
    {
      {"Ship_Weapons_Guns_Damage",      6,    6, "NoWeighting"}, --    2,    6, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",     1.10, 1.10, "NoWeighting"}, -- 1.05, 1.10, MaxIsUncommon
      {"Ship_Weapons_Guns_HeatTime", 1.05, 1.05, "NoWeighting"}, -- 1.01, 1.05, MaxIsUncommon
    }
  },
  { -- Ship Positron B Class
    {"UP_SSHOT2", 3, 3, "NoWeighting"}, -- 2, 3, MaxIsUncommon
    {
      {"Ship_Weapons_Guns_Damage",      10,    10, "NoWeighting"}, --    4,    10, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",     1.135, 1.135, "NoWeighting"}, -- 1.10, 1.135, MaxIsUncommon
      {"Ship_Weapons_Guns_HeatTime",  1.10,  1.10, "NoWeighting"}, -- 1.05,  1.10, MaxIsUncommon
    }
  },
  { -- Ship Positron A Class
    {"UP_SSHOT3", 3, 3, "NoWeighting"}, -- 3, 3, NoWeighting
    {
      {"Ship_Weapons_Guns_Damage",      10,   10, "NoWeighting"}, --    8,    10, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",      1.15, 1.15, "NoWeighting"}, -- 1.135, 1.15, MaxIsUncommon
      {"Ship_Weapons_Guns_HeatTime",  1.15, 1.15, "NoWeighting"}, -- 1.10,  1.15, MaxIsRare
    }
  },
  { -- Ship Positron S Class
    {"UP_SSHOT4", 3, 3, "NoWeighting"}, -- 3, 3, NoWeighting
    {
      {"Ship_Weapons_Guns_Damage",      10,   10, "NoWeighting"}, --   10,   10, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",      1.15, 1.15, "NoWeighting"}, -- 1.15, 1.15, NoWeighting
      {"Ship_Weapons_Guns_HeatTime",  1.15, 1.15, "NoWeighting"}, -- 1.15, 1.15, MaxIsUncommon
    }
  },
  { -- Ship Positron X Class
    {"UP_SSHOTX", 3, 3, "NoWeighting"}, -- 1, 3, MaxIsRare
    {
      {"Ship_Weapons_Guns_Damage",      12,   12, "NoWeighting"}, --    2,   12, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",      1.20, 1.20, "NoWeighting"}, -- 1.05, 1.20, MaxIsUncommon
      {"Ship_Weapons_Guns_HeatTime",  1.20, 1.20, "NoWeighting"}, -- 1.01, 1.20, MaxIsUncommon
    }
  },
  { -- Ship Infra-Knife C Class
    {"UP_SMINI1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsUncommon
    {
      {"Ship_Weapons_Guns_Damage",       6,    6, "NoWeighting"}, --    2,    6, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",      1.05, 1.05, "NoWeighting"}, -- 1.01, 1.05, MaxIsRare
      {"Ship_Weapons_Guns_HeatTime",  1.03, 1.03, "NoWeighting"}, -- 1.01, 1.03, MaxIsUncommon
    }
  },
  { -- Ship Infra-Knife B Class
    {"UP_SMINI2", 3, 3, "NoWeighting"}, -- 2, 3, MaxIsUncommon
    {
      {"Ship_Weapons_Guns_Damage",      10,   10, "NoWeighting"}, --    4,   10, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",      1.05, 1.05, "NoWeighting"}, -- 1.01, 1.05, MaxIsUncommon
      {"Ship_Weapons_Guns_HeatTime",  1.05, 1.05, "NoWeighting"}, -- 1.03, 1.05, MaxIsUncommon
    }
  },
  { -- Ship Infra-Knife A Class
    {"UP_SMINI3", 3, 3, "NoWeighting"}, -- 3, 3, NoWeighting
    {
      {"Ship_Weapons_Guns_Damage",      12,   12, "NoWeighting"}, --    8,   12, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",      1.10, 1.10, "NoWeighting"}, -- 1.05, 1.10, MaxIsRare
      {"Ship_Weapons_Guns_HeatTime",  1.07, 1.07, "NoWeighting"}, -- 1.05, 1.07, MaxIsUncommon
    }
  },
  { -- Ship Infra-Knife S Class
    {"UP_SMINI4", 3, 3, "NoWeighting"}, -- 3, 3, NoWeighting
    {
      {"Ship_Weapons_Guns_Damage",      12,   12, "NoWeighting"}, --   10,   12, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",      1.10, 1.10, "NoWeighting"}, -- 1.05, 1.10, MaxIsUncommon
      {"Ship_Weapons_Guns_HeatTime",  1.09, 1.09, "NoWeighting"}, -- 1.07, 1.09, MaxIsUncommon
    }
  },
  { -- Ship Infra-Knife X Class
    {"UP_SMINIX", 3, 3, "NoWeighting"}, -- 1, 3, MaxIsRare
    {
      {"Ship_Weapons_Guns_Damage",      14,   14, "NoWeighting"}, --    2,   14, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",      1.15, 1.15, "NoWeighting"}, -- 1.01, 1.15, MaxIsUncommon
      {"Ship_Weapons_Guns_HeatTime",  1.13, 1.13, "NoWeighting"}, -- 1.01, 1.13, MaxIsUncommon
    }
  },
  { -- Ship Cyclotron C Class
    {"UP_SBLOB1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsUncommon
    {
      {"Ship_Weapons_Guns_Damage",       6,    6, "NoWeighting"}, --    2,    6, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",      1.05, 1.05, "NoWeighting"}, -- 1.01, 1.05, MaxIsUncommon
      {"Ship_Weapons_Guns_HeatTime",  1.20, 1.20, "NoWeighting"}, -- 1.10, 1.20, MaxIsUncommon
    }
  },
  { -- Ship Cyclotron B Class
    {"UP_SBLOB2", 3, 3, "NoWeighting"}, -- 2, 3, MaxIsUncommon
    {
      {"Ship_Weapons_Guns_Damage",      10,   10, "NoWeighting"}, --    4,   10, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",      1.05, 1.05, "NoWeighting"}, -- 1.01, 1.05, MaxIsUncommon
      {"Ship_Weapons_Guns_HeatTime",  1.25, 1.25, "NoWeighting"}, -- 1.20, 1.25, MaxIsUncommon
    }
  },
  { -- Ship Cyclotron A Class
    {"UP_SBLOB3", 3, 3, "NoWeighting"}, -- 3, 3, NoWeighting
    {
      {"Ship_Weapons_Guns_Damage",      12,   12, "NoWeighting"}, --    8,   12, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",      1.10, 1.10, "NoWeighting"}, -- 1.05, 1.10, MaxIsUncommon
      {"Ship_Weapons_Guns_HeatTime",  1.30, 1.30, "NoWeighting"}, -- 1.25, 1.30, MaxIsUncommon
    }
  },
  { -- Ship Cyclotron S Class
    {"UP_SBLOB4", 3, 3, "NoWeighting"}, -- 3, 3, NoWeighting
    {
      {"Ship_Weapons_Guns_Damage",      12,   12, "NoWeighting"}, --   10,   12, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",      1.15, 1.15, "NoWeighting"}, -- 1.10, 1.15, MaxIsUncommon
      {"Ship_Weapons_Guns_HeatTime",  1.35, 1.35, "NoWeighting"}, -- 1.30, 1.35, MaxIsUncommon
    }
  },
  { -- Ship Cyclotron X Class
    {"UP_SBLOBX", 3, 3, "NoWeighting"}, -- 1, 3, MaxIsRare
    {
      {"Ship_Weapons_Guns_Damage",      14,   14, "NoWeighting"}, --    2,   14, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",      1.20, 1.20, "NoWeighting"}, -- 1.01, 1.20, MaxIsUncommon
      {"Ship_Weapons_Guns_HeatTime",  1.40, 1.40, "NoWeighting"}, -- 1.10, 1.40, MaxIsUncommon
    }
  },
  { -- Exocraft Cannon C Class
    {"UP_EXGUN1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsUncommon
    {
      {"Vehicle_GunDamage",     10,   10, "NoWeighting"}, --    5,   10, MaxIsUncommon
      {"Vehicle_GunHeatTime", 0.95, 0.95, "NoWeighting"}, -- 0.95, 0.99, MinIsUncommon
      {"Vehicle_GunRate",     0.97, 0.97, "NoWeighting"}, -- 0.97, 0.99, MinIsUncommon
    }
  },
  { -- Exocraft Cannon B Class
    {"UP_EXGUN2", 3, 3, "NoWeighting"}, -- 2, 3, MaxIsUncommon
    {
      {"Vehicle_GunDamage",     20,   20, "NoWeighting"}, --   10,   20, MaxIsUncommon
      {"Vehicle_GunHeatTime", 0.90, 0.90, "NoWeighting"}, -- 0.90, 0.95, MinIsUncommon
      {"Vehicle_GunRate",     0.95, 0.95, "NoWeighting"}, -- 0.95, 0.97, MinIsUncommon
    }
  },
  { -- Exocraft Cannon A Class
    {"UP_EXGUN3", 3, 3, "NoWeighting"}, -- 3, 3, NoWeighting
    {
      {"Vehicle_GunDamage",     30,   30, "NoWeighting"}, --   20,   30, MaxIsUncommon
      {"Vehicle_GunHeatTime", 0.85, 0.85, "NoWeighting"}, -- 0.85, 0.90, MinIsUncommon
      {"Vehicle_GunRate",     0.93, 0.93, "NoWeighting"}, -- 0.93, 0.95, MinIsUncommon
    }
  },
  { -- Exocraft Cannon S Class
    {"UP_EXGUN4", 3, 3, "NoWeighting"}, -- 3, 3, NoWeighting
    {
      {"Vehicle_GunDamage",     40,   40, "NoWeighting"}, --   30,   40, MaxIsUncommon
      {"Vehicle_GunHeatTime", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.85, MinIsUncommon
      {"Vehicle_GunRate",     0.90, 0.90, "NoWeighting"}, -- 0.90, 0.93, MinIsUncommon
    }
  },
  { -- Exocraft Mining Laser C Class
    {"UP_EXLAS1", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Vehicle_LaserDamage",     10,   10, "NoWeighting"}, --    5,   10, MaxIsUncommon
      {"Vehicle_LaserHeatTime", 0.95, 0.95, "NoWeighting"}, -- 0.95, 0.99, MinIsUncommon
    }
  },
  { -- Exocraft Mining Laser B Class
    {"UP_EXLAS2", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsSuperRare
    {
      {"Vehicle_LaserDamage",     20,   20, "NoWeighting"}, --   10,   20, MaxIsUncommon
      {"Vehicle_LaserHeatTime", 0.90, 0.90, "NoWeighting"}, -- 0.90, 0.95, MinIsUncommon
    }
  },
  { -- Exocraft Mining Laser A Class
    {"UP_EXLAS3", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsUncommon
    {
      {"Vehicle_LaserDamage",     30,   30, "NoWeighting"}, --   20,   30, MaxIsUncommon
      {"Vehicle_LaserHeatTime", 0.85, 0.85, "NoWeighting"}, -- 0.85, 0.90, MinIsUncommon
    }
  },
  { -- Exocraft Mining Laser S Class
    {"UP_EXLAS4", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Vehicle_LaserDamage",     40,   40, "NoWeighting"}, --   30,   40, MaxIsUncommon
      {"Vehicle_LaserHeatTime", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.85, MinIsUncommon
    }
  },
  { -- Exocraft Boost C Class
    {"UP_BOOST1", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Vehicle_BoostSpeed", 0.20, 0.20, "NoWeighting"}, -- 0.10, 0.20, MaxIsUncommon
      {"Vehicle_BoostTanks", 0.20, 0.20, "NoWeighting"}, -- 0.10, 0.20, MaxIsUncommon
    }
  },
  { -- Exocraft Boost B Class
    {"UP_BOOST2", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsSuperRare
    {
      {"Vehicle_BoostSpeed", 0.35, 0.35, "NoWeighting"}, -- 0.20, 0.35, MaxIsUncommon
      {"Vehicle_BoostTanks", 0.30, 0.30, "NoWeighting"}, -- 0.15, 0.30, MaxIsUncommon
    }
  },
  { -- Exocraft Boost A Class
    {"UP_BOOST3", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsUncommon
    {
      {"Vehicle_BoostSpeed", 0.55, 0.55, "NoWeighting"}, -- 0.35, 0.55, MaxIsUncommon
      {"Vehicle_BoostTanks", 0.50, 0.50, "NoWeighting"}, -- 0.30, 0.50, MaxIsUncommon
    }
  },
  { -- Exocraft Boost S Class
    {"UP_BOOST4", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Vehicle_BoostSpeed", 0.70, 0.70, "NoWeighting"}, -- 0.55, 0.70, MaxIsUncommon
      {"Vehicle_BoostTanks", 0.60, 0.60, "NoWeighting"}, -- 0.50, 0.60, MaxIsUncommon
    }
  },
  { -- Exocraft Engine C Class
    {"UP_EXENG1", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Vehicle_EngineFuelUse",  0.95, 0.95, "NoWeighting"}, -- 0.95, 0.99, MinIsUncommon
      {"Vehicle_EngineTopSpeed", 1.03, 1.03, "NoWeighting"}, -- 1.01, 1.03, MaxIsUncommon
    }
  },
  { -- Exocraft Engine B Class
    {"UP_EXENG2", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsSuperRare
    {
      {"Vehicle_EngineFuelUse",  0.90, 0.90, "NoWeighting"}, -- 0.90, 0.95, MinIsUncommon
      {"Vehicle_EngineTopSpeed", 1.08, 1.08, "NoWeighting"}, -- 1.03, 1.08, MaxIsUncommon
    }
  },
  { -- Exocraft Engine A Class
    {"UP_EXENG3", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Vehicle_EngineFuelUse",  0.85, 0.85, "NoWeighting"}, -- 0.85, 0.90, MinIsUncommon
      {"Vehicle_EngineTopSpeed", 1.15, 1.15, "NoWeighting"}, -- 1.08, 1.15, MaxIsSuperRare
    }
  },
  { -- Exocraft Engine S Class
    {"UP_EXENG4", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Vehicle_EngineFuelUse",  0.80, 0.80, "NoWeighting"}, -- 0.80, 0.85, MinIsUncommon
      {"Vehicle_EngineTopSpeed", 1.15, 1.15, "NoWeighting"}, -- 1.10, 1.15, MaxIsUncommon
    }
  },
  { -- Exocraft Nautilon Engine C Class
    {"UP_EXSUB1", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Vehicle_EngineFuelUse",  0.95, 0.95, "NoWeighting"}, -- 0.95, 0.99, MinIsUncommon
      {"Vehicle_EngineTopSpeed", 1.03, 1.03, "NoWeighting"}, -- 1.01, 1.03, MaxIsUncommon
      {"Vehicle_SubBoostSpeed",  0.20, 0.20, "NoWeighting"}, -- 0.10, 0.20, MaxIsUncommon
    }
  },
  { -- Exocraft Nautilon Engine B Class
    {"UP_EXSUB2", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsSuperRare
    {
      {"Vehicle_EngineFuelUse",  0.90, 0.90, "NoWeighting"}, -- 0.90, 0.95, MinIsUncommon
      {"Vehicle_EngineTopSpeed", 1.08, 1.08, "NoWeighting"}, -- 1.03, 1.08, MaxIsUncommon
      {"Vehicle_SubBoostSpeed",  0.35, 0.35, "NoWeighting"}, -- 0.20, 0.35, MaxIsUncommon
    }
  },
  { -- Exocraft Nautilon Engine A Class
    {"UP_EXSUB3", 3, 3, "NoWeighting"}, -- 2, 3, MaxIsRare
    {
      {"Vehicle_EngineFuelUse",  0.85, 0.85, "NoWeighting"}, -- 0.85, 0.90, MinIsUncommon
      {"Vehicle_EngineTopSpeed", 1.15, 1.15, "NoWeighting"}, -- 1.08, 1.15, MaxIsSuperRare
      {"Vehicle_SubBoostSpeed",  0.55, 0.55, "NoWeighting"}, -- 0.35, 0.55, MaxIsUncommon
    }
  },
  { -- Exocraft Nautilon Engine S Class
    {"UP_EXSUB4", 3, 3, "NoWeighting"}, -- 3, 3, NoWeighting
    {
      {"Vehicle_EngineFuelUse",  0.80, 0.80, "NoWeighting"}, -- 0.80, 0.85, MinIsUncommon
      {"Vehicle_EngineTopSpeed", 1.15, 1.15, "NoWeighting"}, -- 1.10, 1.15, MaxIsUncommon
      {"Vehicle_SubBoostSpeed",  0.70, 0.70, "NoWeighting"}, -- 0.55, 0.70, MaxIsUncommon
    }
  },
  { -- Exocraft Nautilon Cannon C Class
    {"UP_SUGUN1", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Vehicle_GunDamage",   10,   10, "NoWeighting"}, --    5,   10, MaxIsUncommon
      {"Vehicle_GunRate",   0.97, 0.97, "NoWeighting"}, -- 0.97, 0.99, MinIsRare
    }
  },
  { -- Exocraft Nautilon Cannon B Class
    {"UP_SUGUN2", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsSuperRare
    {
      {"Vehicle_GunDamage",   20,   20, "NoWeighting"}, --   10,   20, MaxIsUncommon
      {"Vehicle_GunRate",   0.95, 0.95, "NoWeighting"}, -- 0.95, 0.97, MinIsRare
    }
  },
  { -- Exocraft Nautilon Cannon A Class
    {"UP_SUGUN3", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Vehicle_GunDamage",   30,   30, "NoWeighting"}, --   20,   30, MaxIsUncommon
      {"Vehicle_GunRate",   0.93, 0.93, "NoWeighting"}, -- 0.93, 0.95, MinIsRare
    }
  },
  { -- Exocraft Nautilon Cannon S Class
    {"UP_SUGUN4", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Vehicle_GunDamage",   40,   40, "NoWeighting"}, --   30,   40, MaxIsUncommon
      {"Vehicle_GunRate",   0.90, 0.90, "NoWeighting"}, -- 0.90, 0.93, MinIsRare
    }
  },
  { -- Exocraft Mech Mining Laser B Class (there isnt a C Class)
    {"UP_MCLAS2", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsSuperRare
    {
      {"Vehicle_LaserDamage",     20,   20, "NoWeighting"}, --   10,   20, MaxIsUncommon
      {"Vehicle_LaserHeatTime", 0.90, 0.90, "NoWeighting"}, -- 0.90, 0.95, MinIsUncommon
    }
  },
  { -- Exocraft Mech Mining Laser A Class
    {"UP_MCLAS3", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsUncommon
    {
      {"Vehicle_LaserDamage",     30,   30, "NoWeighting"}, --   20,   30, MaxIsUncommon
      {"Vehicle_LaserHeatTime", 0.85, 0.85, "NoWeighting"}, -- 0.85, 0.90, MinIsUncommon
    }
  },
  { -- Exocraft Mech Mining Laser S Class
    {"UP_MCLAS4", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Vehicle_LaserDamage",     40,   40, "NoWeighting"}, --   30,   40, MaxIsUncommon
      {"Vehicle_LaserHeatTime", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.85, MinIsUncommon
    }
  },
  { -- Exocraft Mech Cannon B Class (there isnt a C Class)
    {"UP_MCGUN2", 3, 3, "NoWeighting"}, -- 2, 3, MaxIsUncommon
    {
      {"Vehicle_GunDamage",     20,   20, "NoWeighting"}, --   10,   20, MaxIsUncommon
      {"Vehicle_GunHeatTime", 0.90, 0.90, "NoWeighting"}, -- 0.90, 0.95, MinIsUncommon
      {"Vehicle_GunRate",     0.95, 0.95, "NoWeighting"}, -- 0.95, 0.97, MinIsUncommon
    }
  },
  { -- Exocraft Mech Cannon A Class
    {"UP_MCGUN3", 3, 3, "NoWeighting"}, -- 3, 3, NoWeighting
    {
      {"Vehicle_GunDamage",     30,   30, "NoWeighting"}, --   20,   30, MaxIsUncommon
      {"Vehicle_GunHeatTime", 0.85, 0.85, "NoWeighting"}, -- 0.85, 0.90, MinIsUncommon
      {"Vehicle_GunRate",     0.93, 0.93, "NoWeighting"}, -- 0.93, 0.95, MinIsRare
    }
  },
  { -- Exocraft Mech Cannon S Class
    {"UP_MCGUN4", 3, 3, "NoWeighting"}, -- 3, 3, NoWeighting
    {
      {"Vehicle_GunDamage",     40,   40, "NoWeighting"}, --   30,   40, MaxIsUncommon
      {"Vehicle_GunHeatTime", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.85, MinIsUncommon
      {"Vehicle_GunRate",     0.90, 0.90, "NoWeighting"}, -- 0.90, 0.93, MinIsRare
    }
  },
  { -- Exocraft Mech Engine B Class (there isnt a C Class)
    {"UP_MCENG2", 1, 1, "NoWeighting"}, -- 1, 1, MaxIsSuperRare
    {
      {"Vehicle_EngineFuelUse", 0.90, 0.90, "NoWeighting"}, -- 0.90, 0.95, MinIsUncommon
      {"Vehicle_BoostTanks",    0.15, 0.15, "NoWeighting"}, -- 0.10, 0.15, MaxIsUncommon
    }
  },
  { -- Exocraft Mech Engine A Class
    {"UP_MCENG3", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Vehicle_EngineFuelUse", 0.85, 0.85, "NoWeighting"}, -- 0.85, 0.90, MinIsUncommon
      {"Vehicle_BoostTanks",    0.25, 0.25, "NoWeighting"}, -- 0.15, 0.25, MaxIsUncommon
    }
  },
  { -- Exocraft Mech Engine S Class
    {"UP_MCENG4", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Vehicle_EngineFuelUse", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.85, MinIsUncommon
      {"Vehicle_BoostTanks",    0.30, 0.30, "NoWeighting"}, -- 0.25, 0.30, MaxIsUncommon
    }
  },
  { -- Ship Alien Pulsing Heart C Class
    {"UA_PULSE1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Ship_PulseDrive_MiniJumpFuelSpending", 0.90, 0.90, "NoWeighting"}, -- 0.90, 0.95, MinIsUncommon
      {"Ship_Boost",                           1.05, 1.05, "NoWeighting"}, -- 1.01, 1.05, MaxIsUncommon
      {"Ship_BoostManeuverability",            1.05, 1.05, "NoWeighting"}, -- 1.01, 1.05, MaxIsRare
      {"Ship_Maneuverability",                 1.005, 1.005, "NoWeighting"}, -- 1.005, 1.005, NoWeighting
    }
  },
  { -- Ship Alien Pulsing Heart B Class
    {"UA_PULSE2", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Ship_PulseDrive_MiniJumpFuelSpending", 0.85, 0.85, "NoWeighting"}, -- 0.85, 0.90, MinIsUncommon
      {"Ship_Boost",                           1.10, 1.10, "NoWeighting"}, -- 1.05, 1.10, MaxIsUncommon
      {"Ship_BoostManeuverability",            1.10, 1.10, "NoWeighting"}, -- 1.01, 1.10, MaxIsRare
      {"Ship_Maneuverability",                 1.005, 1.005, "NoWeighting"}, -- 1.005, 1.005, NoWeighting
    }
  },
  { -- Ship Alien Pulsing Heart A Class
    {"UA_PULSE3", 3, 3, "NoWeighting"}, -- 2, 3, MaxIsRare
    {
      {"Ship_PulseDrive_MiniJumpFuelSpending", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.85, MinIsUncommon
      {"Ship_Boost",                           1.15, 1.15, "NoWeighting"}, -- 1.05, 1.15, MaxIsUncommon
      {"Ship_BoostManeuverability",            1.12, 1.12, "NoWeighting"}, -- 1.05, 1.12, MaxIsRare
      {"Ship_Maneuverability",                 1.005, 1.005, "NoWeighting"}, -- 1.005, 1.005, NoWeighting
    }
  },
  { -- Ship Alien Pulsing Heart S Class
    {"UA_PULSE4", 3, 3, "NoWeighting"}, -- 3, 3, NoWeighting
    {
      {"Ship_PulseDrive_MiniJumpFuelSpending", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.80, NoWeighting
      {"Ship_Boost",                           1.15, 1.15, "NoWeighting"}, -- 1.10, 1.15, MaxIsUncommon
      {"Ship_BoostManeuverability",            1.12, 1.12, "NoWeighting"}, -- 1.05, 1.12, MaxIsUncommon
      {"Ship_Maneuverability",                 1.005, 1.005, "NoWeighting"}, -- 1.005, 1.005, NoWeighting
    }
  },
  { -- Ship Alien Neural Assembly C Class
    {"UA_LAUN1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Ship_Launcher_TakeOffCost", 0.90, 0.90, "NoWeighting"}, -- 0.95, 0.90, MaxIsSuperRare
    }
  },
  { -- Ship Alien Neural Assembly B Class
    {"UA_LAUN2", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsUncommon
    {
      {"Ship_Launcher_TakeOffCost", 0.85, 0.85, "NoWeighting"}, -- 0.90, 0.85, MinIsRare
    }
  },
  { -- Ship Alien Neural Assembly A Class
    {"UA_LAUN3", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Ship_Launcher_TakeOffCost", 0.80, 0.80, "NoWeighting"}, -- 0.85, 0.80, MinIsRare
    }
  },
  { -- Ship Alien Neural Assembly S Class
    {"UA_LAUN4", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Ship_Launcher_TakeOffCost", 0.80, 0.80, "NoWeighting"}, -- 0.80, 0.80, MinIsUncommon
      {"Ship_Launcher_AutoCharge",     1,    1, "NoWeighting"}, --    1,    1, NoWeighting
    }
  },
  { -- Ship Alien Singularity Cortex C Class
    {"UA_HYP1", 1, 1, "NoWeighting"}, -- 1, 1, MaxIsRare
    {
      {"Ship_Hyperdrive_JumpDistance", 100, 100, "NoWeighting"}, --  50, 100, MaxIsUncommon
    }
  },
  { -- Ship Alien Singularity Cortex B Class
    {"UA_HYP2", 1, 1, "NoWeighting"}, -- 1, 1, MaxIsUncommon
    {
      {"Ship_Hyperdrive_JumpDistance", 150, 150, "NoWeighting"}, -- 100, 150, MaxIsUncommon
    }
  },
  { -- Ship Alien Singularity Cortex A Class
    {"UA_HYP3", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Ship_Hyperdrive_JumpDistance", 200, 200, "NoWeighting"}, -- 150, 200, MaxIsUncommon
      {"Ship_Hyperdrive_JumpsPerCell",   1,   1, "NoWeighting"}, --   1,   1, NoWeighting
    }
  },
  { -- Ship Alien Singularity Cortex S Class
    {"UA_HYP4", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Ship_Hyperdrive_JumpDistance", 250, 250, "NoWeighting"}, -- 200, 250, MaxIsUncommon
      {"Ship_Hyperdrive_JumpsPerCell",   1,   1, "NoWeighting"}, --   1,   1, NoWeighting
    }
  },
  { -- Ship Alien Scream Suppressor C Class
    {"UA_S_SHL1", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Ship_Armour_Shield_Strength", 0.10, 0.10, "NoWeighting"}, -- 0.05, 0.10, MaxIsSuperRare
    }
  },
  { -- Ship Alien Scream Suppressor B Class
    {"UA_S_SHL2", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Ship_Armour_Shield_Strength", 0.10, 0.10, "NoWeighting"}, -- 0.05, 0.10, MaxIsUncommon
    }
  },
  { -- Ship Alien Scream Suppressor A Class
    {"UA_S_SHL3", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Ship_Armour_Shield_Strength", 0.20, 0.20, "NoWeighting"}, -- 0.10, 0.20, MaxIsUncommon
    }
  },
  { -- Ship Alien Scream Suppressor S Class
    {"UA_S_SHL4", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Ship_Armour_Shield_Strength", 0.20, 0.20, "NoWeighting"}, -- 0.20, 0.20, MaxIsUncommon
    }
  },
  { -- Ship Alien Spewing Vents C Class
    {"UA_SGUN1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Ship_Weapons_Guns_Damage",      16,    16, "NoWeighting"}, --     8,    16, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",     1.011, 1.011, "NoWeighting"}, -- 1.001, 1.011, MaxIsUncommon
      {"Ship_Weapons_Guns_HeatTime", 1.010, 1.010, "NoWeighting"}, -- 1.001, 1.010, MaxIsUncommon
    }
  },
  { -- Ship Alien Spewing Vents B Class
    {"UA_SGUN2", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsUncommon
    {
      {"Ship_Weapons_Guns_Damage",      20,    20, "NoWeighting"}, --    12,    20, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",     1.016, 1.016, "NoWeighting"}, -- 1.006, 1.016, MaxIsUncommon
      {"Ship_Weapons_Guns_HeatTime", 1.020, 1.020, "NoWeighting"}, -- 1.010, 1.020, MaxIsUncommon
    }
  },
  { -- Ship Alien Spewing Vents A Class
    {"UA_SGUN3", 3, 3, "NoWeighting"}, -- 2, 3, MaxIsUncommon
    {
      {"Ship_Weapons_Guns_Damage",      24,    24, "NoWeighting"}, --    16,    24, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",     1.021, 1.021, "NoWeighting"}, -- 1.016, 1.021, MaxIsUncommon
      {"Ship_Weapons_Guns_HeatTime", 1.030, 1.030, "NoWeighting"}, -- 1.020, 1.030, MaxIsUncommon
    }
  },
  { -- Ship Alien Spewing Vents S Class
    {"UA_SGUN4", 3, 3, "NoWeighting"}, -- 3, 3, NoWeighting
    {
      {"Ship_Weapons_Guns_Damage",      28,    28, "NoWeighting"}, --    20,    28, MaxIsUncommon
      {"Ship_Weapons_Guns_Rate",     1.021, 1.021, "NoWeighting"}, -- 1.021, 1.021, NoWeighting
      {"Ship_Weapons_Guns_HeatTime", 1.030, 1.030, "NoWeighting"}, -- 1.030, 1.030, MaxIsUncommon
    }
  },
  { -- Ship Alien Grafted Eyes C Class
    {"UA_SLASR1", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsRare
    {
      {"Ship_Weapons_Lasers_HeatTime", 1.35, 1.35, "NoWeighting"}, -- 1.10, 1.35, MaxIsUncommon
      {"Ship_Weapons_Lasers_Damage",     40,   40, "NoWeighting"}, --   30,   40, MaxIsUncommon
      {"Ship_Weapons_ShieldLeech",     0.1,   0.1, "NoWeighting"}, -- 0.05,  0.1, MaxIsUncommon
    }
  },
  { -- Ship Alien Grafted Eyes B Class
    {"UA_SLASR2", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsUncommon
    {
      {"Ship_Weapons_Lasers_HeatTime", 1.55, 1.55, "NoWeighting"}, -- 1.35, 1.55, MaxIsUncommon
      {"Ship_Weapons_Lasers_Damage",     50,   50, "NoWeighting"}, --   40,   50, MaxIsUncommon
      {"Ship_Weapons_ShieldLeech",     0.15, 0.15, "NoWeighting"}, --  0.1, 0.15, MaxIsUncommon
    }
  },
  { -- Ship Alien Grafted Eyes A Class
    {"UA_SLASR3", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Ship_Weapons_Lasers_HeatTime", 1.75, 1.75, "NoWeighting"}, -- 1.55, 1.75, MaxIsUncommon
      {"Ship_Weapons_Lasers_Damage",     60,   60, "NoWeighting"}, --   50,   60, MaxIsUncommon
      {"Ship_Weapons_ShieldLeech",     0.2,   0.2, "NoWeighting"}, -- 0.15,  0.2, MaxIsUncommon
    }
  },
  { -- Ship Alien Grafted Eyes S Class
    {"UA_SLASR4", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Ship_Weapons_Lasers_HeatTime", 1.95, 1.95, "NoWeighting"}, -- 1.75, 1.95, MaxIsUncommon
      {"Ship_Weapons_Lasers_Damage",     70,   70, "NoWeighting"}, --   60,   70, MaxIsUncommon
      {"Ship_Weapons_ShieldLeech",     0.3,   0.3, "NoWeighting"}, --  0.2,  0.3, MaxIsUncommon
    }
  },
  { -- Freighter Hyperdrive C Class
    {"UP_FRHYP1", 1, 1, "NoWeighting"}, -- 1, 1, MaxIsRare
    {
      {"Freighter_Hyperdrive_JumpDistance", 100, 100, "NoWeighting"}, --  50, 100, MaxIsUncommon
    }
  },
  { -- Freighter Hyperdrive B Class
    {"UP_FRHYP2", 2, 2, "NoWeighting"}, -- 1, 2, MaxIsUncommon
    {
      {"Freighter_Hyperdrive_JumpDistance", 150, 150, "NoWeighting"}, -- 100, 150, MaxIsUncommon
    }
  },
  { -- Freighter Hyperdrive A Class
    {"UP_FRHYP3", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Freighter_Hyperdrive_JumpDistance", 200, 200, "NoWeighting"}, -- 150, 200, MaxIsUncommon
      {"Freighter_Hyperdrive_JumpsPerCell",   1,   1, "NoWeighting"}, --   1,   1, NoWeighting
    }
  },
  { -- Freighter Hyperdrive S Class
    {"UP_FRHYP4", 2, 2, "NoWeighting"}, -- 2, 2, NoWeighting
    {
      {"Freighter_Hyperdrive_JumpDistance", 250, 250, "NoWeighting"}, -- 200, 250, MaxIsUncommon
      {"Freighter_Hyperdrive_JumpsPerCell",   1,   1, "NoWeighting"}, --   1,   1, NoWeighting
    }
  },
  { -- Freighter Speed C Class
    {"UP_FRSPE1", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Speed", 1.05, 1.05, "NoWeighting"}, -- 1.01, 1.05, MaxIsUncommon
    }
  },
  { -- Freighter Speed B Class
    {"UP_FRSPE2", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Speed", 1.10, 1.10, "NoWeighting"}, -- 1.05, 1.10, MaxIsUncommon
    }
  },
  { -- Freighter Speed A Class
    {"UP_FRSPE3", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Speed", 1.14, 1.14, "NoWeighting"}, -- 1.10, 1.14, MaxIsUncommon
    }
  },
  { -- Freighter Speed S Class
    {"UP_FRSPE4", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Speed", 1.15, 1.15, "NoWeighting"}, -- 1.15, 1.15, MaxIsUncommon
    }
  },
  { -- Freighter Fuel C Class
    {"UP_FRFUE1", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Fuel", 0.95, 0.95, "NoWeighting"}, -- 0.99, 0.95, MinIsUncommon
    }
  },
  { -- Freighter Fuel B Class
    {"UP_FRFUE2", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Fuel", 0.90, 0.90, "NoWeighting"}, -- 0.95, 0.90, MinIsUncommon
    }
  },
  { -- Freighter Fuel A Class
    {"UP_FRFUE3", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Fuel", 0.85, 0.85, "NoWeighting"}, -- 0.90, 0.85, MinIsUncommon
    }
  },
  { -- Freighter Fuel S Class
    {"UP_FRFUE4", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Fuel", 0.80, 0.80, "NoWeighting"}, -- 0.85, 0.80, MinIsUncommon
    }
  },
  { -- Freighter Combat C Class
    {"UP_FRCOM1", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Combat", 1.05, 1.05, "NoWeighting"}, -- 1.01, 1.05, MaxIsUncommon
    }
  },
  { -- Freighter Combat B Class
    {"UP_FRCOM2", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Combat", 1.10, 1.10, "NoWeighting"}, -- 1.05, 1.10, MaxIsUncommon
    }
  },
  { -- Freighter Combat A Class
    {"UP_FRCOM3", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Combat", 1.14, 1.14, "NoWeighting"}, -- 1.10, 1.14, MaxIsUncommon
    }
  },
  { -- Freighter Combat S Class
    {"UP_FRCOM4", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Combat", 1.15, 1.15, "NoWeighting"}, -- 1.15, 1.15, MaxIsUncommon
    }
  },
  { -- Freighter Trade C Class
    {"UP_FRTRA1", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Trade", 1.05, 1.05, "NoWeighting"}, -- 1.01, 1.05, MaxIsUncommon
    }
  },
  { -- Freighter Trade B Class
    {"UP_FRTRA2", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Trade", 1.10, 1.10, "NoWeighting"}, -- 1.05, 1.10, MaxIsUncommon
    }
  },
  { -- Freighter Trade A Class
    {"UP_FRTRA3", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Trade", 1.14, 1.14, "NoWeighting"}, -- 1.10, 1.14, MaxIsUncommon
    }
  },
  { -- Freighter Trade S Class
    {"UP_FRTRA4", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Trade", 1.15, 1.15, "NoWeighting"}, -- 1.15, 1.15, MaxIsUncommon
    }
  },
  { -- Freighter Explore C Class
    {"UP_FREXP1", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Explore", 1.05, 1.05, "NoWeighting"}, -- 1.01, 1.05, MaxIsUncommon
    }
  },
  { -- Freighter Explore B Class
    {"UP_FREXP2", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Explore", 1.10, 1.10, "NoWeighting"}, -- 1.05, 1.10, MaxIsUncommon
    }
  },
  { -- Freighter Explore A Class
    {"UP_FREXP3", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Explore", 1.14, 1.14, "NoWeighting"}, -- 1.10, 1.14, MaxIsUncommon
    }
  },
  { -- Freighter Explore S Class
    {"UP_FREXP4", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Explore", 1.15, 1.15, "NoWeighting"}, -- 1.15, 1.15, MaxIsUncommon
    }
  },
  { -- Freighter Mining C Class
    {"UP_FRMIN1", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Mine", 1.05, 1.05, "NoWeighting"}, -- 1.01, 1.05, MaxIsUncommon
    }
  },
  { -- Freighter Mining B Class
    {"UP_FRMIN2", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Mine", 1.10, 1.10, "NoWeighting"}, -- 1.05, 1.10, MaxIsUncommon
    }
  },
  { -- Freighter Mining A Class
    {"UP_FRMIN3", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Mine", 1.14, 1.14, "NoWeighting"}, -- 1.10, 1.14, MaxIsUncommon
    }
  },
  { -- Freighter Mining S Class
    {"UP_FRMIN4", 1, 1, "NoWeighting"}, -- 1, 1, NoWeighting
    {
      {"Freighter_Fleet_Mine", 1.15, 1.15, "NoWeighting"}, -- 1.15, 1.15, MaxIsUncommon
    }
  },
}

-- File Settings --
FileName    = "Max Technology Stats.pak"
ModAuthor   = "JustRuthless"
LuaAuthor   = "JustRuthless"
ModMaintenance = "Babscoole, DarkScythe"
Description = ""
NMS_Version = "3.99"

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]    = FileName,
  ["MOD_AUTHOR"]      = ModAuthor,
  ["LUA_AUTHOR"]      = LuaAuthor,
  ["MOD_MAINTENANCE"] = ModMaintenance,
  ["MOD_DESCRIPTION"] = Description,
  ["NMS_VERSION"]     = NMS_Version,
  ["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] = 
      { 
        {
          ["MBIN_FILE_SOURCE"]  = FileSource1,
          ["EXML_CHANGE_TABLE"] = 
          {
            -- ProceduralTechnologyTable
          }
        },
      }
    },
  }
}

local ProceduralTechnologyTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

-- Tech Upgrade Changes Table --
for i = 1, #TechUpgradeChanges do
  local TechID   = TechUpgradeChanges[i][1][1]
  local NumMin   = TechUpgradeChanges[i][1][2]
  local NumMax   = TechUpgradeChanges[i][1][3]
  local NumCurve = TechUpgradeChanges[i][1][4]
    -- Number of Tech Stats --
  ProceduralTechnologyTable[#ProceduralTechnologyTable+1] =
  {
    ["SPECIAL_KEY_WORDS"]  = {"ID", TechID},
    ["VALUE_CHANGE_TABLE"] = 
    {
      {"NumStatsMin", NumMin},
      {"NumStatsMax", NumMax},
    },
  }
  ProceduralTechnologyTable[#ProceduralTechnologyTable+1] =
  {
    ["SPECIAL_KEY_WORDS"]   = {"ID", TechID},
    ["PRECEDING_KEY_WORDS"] = {"WeightingCurve"},
    ["SECTION_ACTIVE"]      = 1,
    ["VALUE_MATCH"]         = "GcWeightingCurve.xml",
    ["VALUE_MATCH_OPTIONS"] = "~=",
    ["VALUE_MATCH_TYPE"]    = "STRING",
    ["VALUE_CHANGE_TABLE"]  = 
    {
      {"WeightingCurve", NumCurve},
    },
  }
end
for i = 1, #TechUpgradeChanges do
  local TechID = TechUpgradeChanges[i][1][1]
  local Change = TechUpgradeChanges[i][2]
  for j = 1, #Change do
    local StatsType = Change[j][1]
    local Min       = Change[j][2]
    local Max       = Change[j][3]
    local Curve     = Change[j][4]
    -- Tech Stats --
    ProceduralTechnologyTable[#ProceduralTechnologyTable+1] =
    {
      ["SPECIAL_KEY_WORDS"]  = {"ID", TechID, "StatsType", StatsType},
      ["SECTION_UP_SPECIAL"] = 1,
      ["INTEGER_TO_FLOAT"]   = "FORCE",
      ["VALUE_CHANGE_TABLE"] = 
      {
        {"ValueMin", Min},
        {"ValueMax", Max},
      },
    }
    ProceduralTechnologyTable[#ProceduralTechnologyTable+1] =
    {
      ["SPECIAL_KEY_WORDS"]   = {"ID", TechID, "StatsType", StatsType},
      ["SECTION_UP_SPECIAL"]  = 1,
      ["PRECEDING_KEY_WORDS"] = {"WeightingCurve"},
      ["VALUE_MATCH"]         = "GcWeightingCurve.xml",
      ["VALUE_MATCH_OPTIONS"] = "~=",
      ["VALUE_MATCH_TYPE"]    = "STRING",
      ["VALUE_CHANGE_TABLE"]  = 
      {
        {"WeightingCurve", Curve},
      },
    }
  end
end