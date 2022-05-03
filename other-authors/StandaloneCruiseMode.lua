NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= "___ChristianWidjaya_CruiseModeStandalone.pak",
["MOD_DESCRIPTION"]		= "Standalone CruiseMode,taken from https://www.nexusmods.com/nomanssky/mods/1608 , DIY: Do It Yourself. Compile with AMUMSS, and merge conflicts yourself.",
["MOD_AUTHOR"]			= "ChristianWidjaya",
["NMS_VERSION"]			= "3.87+",
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {

	{["MBIN_FILE_SOURCE"]	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
	["EXML_CHANGE_TABLE"]	= {
		{ --Nerf Player Ship's Regeneration, Tweaks Spawning, forces avoidance to 0
		["VALUE_CHANGE_TABLE"] = {
			{"ShieldRechargeMinHitTime","10"},
			{"ShieldRechargeRate","1"},
			{"WarpNexusRotation","0"},
			{"WarpNexusPitch","0"},
			{"BoostNoAsteroidRadius","0"},
			{"MaxOverspeedBrake","0"},
			{"AvoidancePower","0"},
			{"AvoidanceDistancePower","0"},
			{"_3rdPersonAvoidanceAdjustPitchFactor","0"},
			{"_3rdPersonAvoidanceAdjustRollFactor","0"},
			{"_3rdPersonAvoidanceAdjustPitchFactor","0"},
			{"HitAsteroidDamage","100000"},
			{"LootAttractDistance","1000"}
			}},
		{ --Disables Auto Avoid
		["PRECEDING_KEY_WORDS"] = {"Avoidance"},
		["VALUE_CHANGE_TABLE"] = {
			{"NumRays","0"},
			{"RayMinRange","0"},
			{"RaySpeedTime","0"},
			{"Force","0"},
			{"StartRadiusMultiplier","0"},
			{"EndRadiusMultiplier","0"},
			{"SpeedInterp","0"},
			{"SpeedInterpMinSpeed","0"},
			{"SpeedInterpRange","0"},
			}},
		{--Nerf Combat Engine MaxBoostSpeed
		["PRECEDING_KEY_WORDS"] = {"ControlHeavy","CombatEngine"},
			["VALUE_CHANGE_TABLE"] = {
				{"MinSpeed","10"},
				{"MinSpeedForce","0"},
				{"MaxSpeed","150"},
				{"BoostMaxSpeed","250"},
				{"OverspeedBrake","0"},
				{"ReverseBrake","1"},
				{"Falloff","0"}}},
		{
		["PRECEDING_KEY_WORDS"] = {"Control","CombatEngine"},
			["VALUE_CHANGE_TABLE"] = {
				{"MinSpeed","10"},
				{"MinSpeedForce","0"},
				{"MaxSpeed","150"},
				{"BoostMaxSpeed","250"},
				{"OverspeedBrake","0"},
				{"ReverseBrake","1"},
				{"Falloff","0"}}},
		{
		["PRECEDING_KEY_WORDS"] = {"ControlLight","CombatEngine"},
			["VALUE_CHANGE_TABLE"] = {
				{"MinSpeed","10"},
				{"MinSpeedForce","0"},
				{"MaxSpeed","150"},
				{"BoostMaxSpeed","250"},
				{"OverspeedBrake","0"},
				{"ReverseBrake","1"},
				{"Falloff","0"}}},
		{
		["PRECEDING_KEY_WORDS"] = {"ControlHeavy","AtmosCombatEngine"},
			["VALUE_CHANGE_TABLE"] = {
				{"MinSpeed","10"},
				{"MinSpeedForce","0"},
				{"MaxSpeed","150"},
				{"BoostMaxSpeed","250"},
				{"OverspeedBrake","0"},
				{"ReverseBrake","1"},
				{"Falloff","0"}}},
		{
		["PRECEDING_KEY_WORDS"] = {"Control","AtmosCombatEngine"},
			["VALUE_CHANGE_TABLE"] = {
				{"MinSpeed","10"},
				{"MinSpeedForce","0"},
				{"MaxSpeed","150"},
				{"BoostMaxSpeed","250"},
				{"OverspeedBrake","0"},
				{"ReverseBrake","1"},
				{"Falloff","0"}}},
		{
		["PRECEDING_KEY_WORDS"] = {"ControlLight","AtmosCombatEngine"},
			["VALUE_CHANGE_TABLE"] = {
				{"MinSpeed","10"},
				{"MinSpeedForce","0"},
				{"MaxSpeed","150"},
				{"BoostMaxSpeed","250"},
				{"OverspeedBrake","0"},
				{"ReverseBrake","1"},
				{"Falloff","0"}}},
		{ --Buff Player Ship's Non Combat Max Speed, cruise mode, add brake force for reverse
		["PRECEDING_KEY_WORDS"] = {"ControlHeavy","SpaceEngine"},
			["VALUE_CHANGE_TABLE"] = {
				{"MaxSpeed","150"},
				{"BoostMaxSpeed","250"},
				{"OverspeedBrake","0"},
				{"ReverseBrake","1"},
				{"Falloff","0"}}},
		{
		["PRECEDING_KEY_WORDS"] = {"ControlHeavy","PlanetEngine"},
			["VALUE_CHANGE_TABLE"] = {
				{"MinSpeed","0.01"},
				{"MinSpeedForce","0"},
				{"MaxSpeed","150"},
				{"BoostMaxSpeed","250"}}},
		{
		["PRECEDING_KEY_WORDS"] = {"Control","SpaceEngine"},
			["VALUE_CHANGE_TABLE"] = {
				{"MaxSpeed","150"},
				{"BoostMaxSpeed","250"},
				{"OverspeedBrake","0"},
				{"ReverseBrake","1"},
				{"Falloff","0"}}},
		{
		["PRECEDING_KEY_WORDS"] = {"Control","PlanetEngine"},
			["VALUE_CHANGE_TABLE"] = {
				{"MinSpeed","0.01"},
				{"MinSpeedForce","0"},
				{"MaxSpeed","150"},
				{"BoostMaxSpeed","250"}}},
		{
		["PRECEDING_KEY_WORDS"] = {"ControlLight","SpaceEngine"},
			["VALUE_CHANGE_TABLE"] = {
				{"MaxSpeed","150"},
				{"BoostMaxSpeed","250"},
				{"OverspeedBrake","0"},
				{"ReverseBrake","1"},
				{"Falloff","0"}}},
		{
		["PRECEDING_KEY_WORDS"] = {"ControlLight","PlanetEngine"},
			["VALUE_CHANGE_TABLE"] = {
				{"MinSpeed","0.01"},
				{"MinSpeedForce","0"},
				{"MaxSpeed","250"},
				{"BoostMaxSpeed","250"}}},
	}},
}}}}