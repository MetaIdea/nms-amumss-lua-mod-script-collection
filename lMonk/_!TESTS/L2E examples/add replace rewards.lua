-----------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
dofile('LIB/reward_entry.lua')
-----------------------------------------------------------------------
local mod_desc = [[
  Replacing and adding new rewards:
  - freighter defense reward (requires changes in AlienPuzzle)
  - crashed freighter containers
  - salvaged glass (sentinel loot)
  - pirate ships battle loot
  - jetpack boost bonuses
]]---------------------------------------------------------------------

local new_rewards = {
	{
	---	add new ship ---
		id			= 'MY_1ST_SHIP',
		choice		= RC_.ALL,
		rewardlist	= {
			{
				f			= R_Ship,
				c			= 100,
				name		= 'Scrap Bucket',
				filename	= 'MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN',
				seed		= '0x1015EED',
				slots		= 42,
				class		= 'A',
				shiptype	= 'Shuttle',
				inventory	= {
					{id='HYPERDRIVE',	amount=true},
					{id='LAUNCHER',		amount=true},
					{id='SHIPSHIELD',	amount=true},
					{id='SHIPJUMP1',	amount=true},
					{id='SHIPGUN1'}
				}
			},
			{id=CU_.HG,	mn=100,	mx=160,	c=100,	f=R_Money}
		}
	},
	{
	---	add new multitool ---
		id			= 'MY_1ST_TOOL',
		choice		= RC_.ALL,
		rewardlist	= {
			{
				f			= R_Multitool,
				c			= 100,
				name		= 'Royale With Cheese',
				filename	= 'MODELS/COMMON/WEAPONS/MULTITOOL/ROYALMULTITOOL.SCENE.MBIN',
				seed		= '0x1015EED',
				slots		= 24,
				class		= 'A',
				weapontype	= 'Royal',
				inventory	= {
					{id='LASER',	amount=true},
					{id='BOLT'},
					{id='SCAN1'},
					{id='SCANBINOC1'}
				}
			},
			{id=CU_.HG,	mn=100,	mx=160,	c=100,	f=R_Money}
		}
	},
	{--- sentinel salvaged glass shard ---
		id			= 'DE_SENT_LOOT',
		choice		= RC_.ONE,
		replacement	= true,
		rewardlist	= {
			--id					Min		Max			%		function
			{id='CHART_HIVE',				mx=1,		c=2,	f=R_Product},
			{id='U_SENTGUN',				mx=1,		c=30,	f=R_Product},
			{id='U_SENTSUIT',				mx=1,		c=30,	f=R_Product},
			{id='COMPUTER',     	mn=1,	mx=2,		c=6,	f=R_Product},
			{id='ANTIMATTER',   	mn=1,	mx=2,		c=6,	f=R_Product},
			{id='MAGNET',       	mn=1,	mx=2,		c=6,	f=R_Product},
			{id='HYDRALIC',     	mn=1,	mx=2,		c=6,	f=R_Product},
			{id='MIRROR',       	mn=1,	mx=2,		c=6,	f=R_Product},
			{id='BIO',          	mn=1,	mx=2,		c=6,	f=R_Product},
			{id='MECH_PROD',    	mn=1,	mx=2,		c=6,	f=R_Product},
			{id='WALKER_PROD',  	mn=1,	mx=2,		c=6,	f=R_Product},
			{id='ALLOY1',    				mx=1,		c=4,	f=R_Product},
			{id='ALLOY2',    				mx=1,		c=4,	f=R_Product},
			{id='ALLOY3',    				mx=1,		c=4,	f=R_Product},
			{id='ALLOY4',    				mx=1,		c=4,	f=R_Product},
			{id='ALLOY5',    				mx=1,		c=4,	f=R_Product},
			{id='ALLOY6',    				mx=1,		c=4,	f=R_Product},
			{id='ALLOY7',    				mx=1,		c=1,	f=R_Product},
			{id='ALLOY8',    				mx=1,		c=1,	f=R_Product},
			{id=CU_.HG,				mn=100,	mx=160,		c=10,	f=R_Money}
		}
	},
	{--- crashed freighter containers ---
		id			= 'CRASHCONT_M',
		choice		= RC_.ONE,
		replacement	= true,
		rewardlist	= {
			{id=CU_.UT,	mn=25000,	mx=75000,	c=50,	f=R_Money},
			{
				f=R_MultiItem,
				c=45,
				{id='LAUNCHFUEL',		mn=1, 	tp=RM_.PRD},
				{id='BP_SALVAGE',		mn=3, 	tp=RM_.PRD},
				{pid=PC_.DTC, 			qt=2,	tp=RM_.PRP},
			},
			{
				f=R_MultiItem,
				c=45,
				{id='ANTIMATTER',		mn=2, 	tp=RM_.PRD},
				{id='AM_HOUSING',		mn=2, 	tp=RM_.PRD},
				{id='TECHFRAG',			mn=230, tp=RM_.SBT},
			},
			{
				f=R_MultiItem,
				c=35,
				{id='FRIG_TOKEN',		mn=1, 	tp=RM_.PRD},
				{id='TIMEMILK',			mn=94, 	tp=RM_.SBT},
			},
			{
				f=R_MultiItem,
				c=35,
				{id='WEAP_INV_TOKEN',	mn=1, 	tp=RM_.PRD},
				{id='AF_METAL',			mn=117, tp=RM_.SBT},
			},
			{id=CU_.UT,	mn=150000,	mx=260000,	c=20,	f=R_Money},
			{
				f=R_MultiItem,
				{id='FARMPROD1',		mn=1, 	tp=RM_.PRD},	-- Acid
				{id='WATER1',			mn=243, tp=RM_.SBT},
				c=25,
			},
			{
				f=R_MultiItem,
				c=25,
				{id='FARMPROD5',		mn=1, 	tp=RM_.PRD},	-- Poly Fibre
				{id='WATER2',			mn=189, tp=RM_.SBT},
			},
			{
				f=R_MultiItem,
				c=25,
				{id='SALVAGE_TECH8',	mn=1, 	tp=RM_.PRD},	-- Subatomic Regulators
				{id='ROBOT1',			mn=203, tp=RM_.SBT},
			},
			{
				f=R_MultiItem,
				c=25,
				{id='SALVAGE_TECH7',	mn=1, 	tp=RM_.PRD},	-- Recycled Circuitry
				{id='ROBOT2',			mn=180, tp=RM_.SBT},
			},
			{
				f=R_MultiItem,
				c=2,
				{id='FREI_INV_TOKEN',	mn=2, 	tp=RM_.PRD},	-- freighter inv
				{id='SENTFREI_PROD',	mn=3, 	tp=RM_.PRD},	-- AI Fragment
			},

			-- freighter hyper
			{
				f=R_MultiItem,
				c=5,
				{pid=PC_.FRH, 			qt=0,	tp=RM_.PRP},
				{id='CASING',			mn=5, 	tp=RM_.PRD},
			},
			{
				f=R_MultiItem,
				c=2,
				{pid=PC_.FRH, 			qt=1,	tp=RM_.PRP},
				{id='COMPOUND6',		mn=1, 	tp=RM_.PRD},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=PC_.FRH, 			qt=2,	tp=RM_.PRP},
				{id='PRODFUEL2',		mn=1, 	tp=RM_.PRD},
			},
			{
				c=1,
				{pid=PC_.FRH, 			qt=3,	tp=RM_.PRP},
				{id='ILLEGAL_PROD6',	mn=1, 	tp=RM_.PRD},
				f=R_MultiItem,
			},
			-- freighter fuel
			{
				f=R_MultiItem,
				c=5,
				{pid=PC_.FRF, 			qt=0,	tp=RM_.PRP},
				{id='NANOTUBES',		mn=5, 	tp=RM_.PRD},
			},
			{
				f=R_MultiItem,
				c=2,
				{pid=PC_.FRF, 			qt=1,	tp=RM_.PRP},
				{id='COMPOUND5',		mn=1, 	tp=RM_.PRD},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=PC_.FRF, 			qt=2,	tp=RM_.PRP},
				{id='REPAIRKIT',		mn=1, 	tp=RM_.PRD},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=PC_.FRF, 			qt=3,	tp=RM_.PRP},
				{id='ILLEGAL_PROD5',	mn=1, 	tp=RM_.PRD},
			},
			-- freighter trade
			{
				f=R_MultiItem,
				c=5,
				{pid=PC_.FRT, 			qt=0,	tp=RM_.PRP},
				{id='JELLY',			mn=5, 	tp=RM_.PRD},
			},
			{
				f=R_MultiItem,
				c=2,
				{pid=PC_.FRT, 			qt=1,	tp=RM_.PRP},
				{id='COMPOUND4',		mn=1, 	tp=RM_.PRD},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=PC_.FRT, 			qt=2,	tp=RM_.PRP},
				{id='BIO',				mn=1, 	tp=RM_.PRD},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=PC_.FRT, 			qt=3,	tp=RM_.PRP},
				{id='ILLEGAL_PROD4',	mn=1, 	tp=RM_.PRD},
			},
			-- freighter combat
			{
				f=R_MultiItem,
				c=5,
				{pid=PC_.FRC, 			qt=0,	tp=RM_.PRP},
				{id='POWERCELL',		mn=5, 	tp=RM_.PRD},
			},
			{
				f=R_MultiItem,
				c=2,
				{pid=PC_.FRC, 			qt=1,	tp=RM_.PRP},
				{id='COMPOUND3',		mn=1, 	tp=RM_.PRD},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=PC_.FRC, 			qt=2,	tp=RM_.PRP},
				{id='MIRROR',			mn=1, 	tp=RM_.PRD},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=PC_.FRC, 			qt=3,	tp=RM_.PRP},
				{id='ILLEGAL_PROD3',	mn=1, 	tp=RM_.PRD},
			},
			-- freighter mining
			{
				f=R_MultiItem,
				c=5,
				{pid=PC_.FRM, 			qt=0,	tp=RM_.PRP},
				{id='HYDRALIC',			mn=3, 	tp=RM_.PRD},
			},
			{
				f=R_MultiItem,
				c=2,
				{pid=PC_.FRM, 			qt=1,	tp=RM_.PRP},
				{id='COMPOUND2',		mn=1, 	tp=RM_.PRD},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=PC_.FRM, 			qt=2,	tp=RM_.PRP},
				{id='MICROCHIP',		mn=1, 	tp=RM_.PRD},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=PC_.FRM, 			qt=3,	tp=RM_.PRP},
				{id='ILLEGAL_PROD2',	mn=1, 	tp=RM_.PRD},
			},
			-- freighter explore
			{
				f=R_MultiItem,
				c=5,
				{pid=PC_.FRE, 			qt=0,	tp=RM_.PRP},
				{id='CARBON_SEAL',		mn=3, 	tp=RM_.PRD},
			},
			{
				f=R_MultiItem,
				c=2,
				{pid=PC_.FRE, 			qt=1,	tp=RM_.PRP},
				{id='COMPOUND1',		mn=1, 	tp=RM_.PRD},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=PC_.FRE, 			qt=2,	tp=RM_.PRP},
				{id='TRA_ENERGY5',		mn=1, 	tp=RM_.PRD},
			},
			{
				f=R_MultiItem,
				c=1,
				{pid=PC_.FRE, 			qt=3,	tp=RM_.PRP},
				{id='ILLEGAL_PROD1',	mn=1, 	tp=RM_.PRD},
			}
		}
	},
	{--- freighter defense :: explorer ---
		id			= 'FREIGHTERSAVE_E',
		choice		= RC_.ALL,
		rewardlist	= {
			{
				--id					Amount		type
				{id='HYPERFUEL1',		mn=1, 		tp=RM_.PRD},	-- Hyperdrive fuel
				{id='SCRAP_TECH',		mn=1, 		tp=RM_.PRD},
				{id='FREI_INV_TOKEN',	mn=1, 		tp=RM_.PRD},	-- freighter inv slot
				{id='ASTEROID3',		mn=169, 	tp=RM_.SBT},	-- Platinum
				{pid=PC_.SPB,			qt=1,		tp=RM_.PRP},	-- Space Bones Procedural
				c=100,
				f=R_MultiItem
			},
			{id=CU_.HG,	mn=50,		mx=60,		c=100,	f=R_Money},
		}
	},
	{--- freighter defense :: trader ---
		id			= 'FREIGHTERSAVE_T',
		choice		= RC_.ALL,
		rewardlist	= {
			{
				--id					Amount		type
				{id='HYPERFUEL1',		mn=1, 		tp=RM_.PRD},
				{id='GEODE_RARE',		mn=1, 		tp=RM_.PRD},
				{id='FREI_INV_TOKEN',	mn=1, 		tp=RM_.PRD},
				{id='ASTEROID1',		mn=523, 	tp=RM_.SBT},	-- silver
				{pid=PC_.SLV,			qt=1,		tp=RM_.PRP},	-- Salvage Procedural
				c=100,
				f=R_MultiItem
			},
			{id=CU_.UT,	mn=35100,	mx=50200,	c=100,	f=R_Money},
		}
	},
	{--- freighter defense :: warior ---
		id			= 'FREIGHTERSAVE_W',
		choice		= RC_.ALL,
		rewardlist	= {
			{
				--id					Amount		type
				{id='HYPERFUEL1',		mn=1, 		tp=RM_.PRD},
				{id='SCRAP_WEAP',		mn=1, 		tp=RM_.PRD},
				{id='FREI_INV_TOKEN',	mn=1, 		tp=RM_.PRD},
				{id='ASTEROID2',		mn=387, 	tp=RM_.SBT},	-- gold
				{pid=PC_.DTC,			qt=1,		tp=RM_.PRP},	-- Procedural
				c=100,
				f=R_MultiItem
			},
			{id=CU_.NN,	mn=190,		mx=270,		c=100,	f=R_Money},
		}
	},
	{
	---	pirate attack loot - easy level ---
		id			= 'PIRATELOOT_EASY',
		choice		= RC_.ONE_S,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=80,	f=R_Product},
			{id='TRA_ALLOY1',		n=1,	x=2,	c=40,	f=R_Product},
			{id='TRA_ENERGY1',		n=1,	x=2,	c=40,	f=R_Product},
			{id='TRA_EXOTICS1',		n=1,	x=2,	c=40,	f=R_Product},
			{id='ILLEGAL_PROD3',	n=1,	x=2,	c=40,	f=R_Product},
			{id=PC_.DBI,				r=RT_.C,			c=30,	f=R_Procedural},
			{id=PC_.DTC,				r=RT_.C,			c=30,	f=R_Procedural},
			{id=CU_.UT,				n=18000,x=30000,c=80,	f=R_Money}
		}
	},
	{--- pirate attack :: easy ---
		id			= 'PIRATELOOT_EASY',
		choice		= RC_.ONE_S,
		rewardlist	= {
			--id					Min			Max			%		function
			{id='SHIPCHARGE',					mx=1,		c=50,	f=R_Product},
			{id='TRA_ALLOY1',		mn=1,		mx=2,		c=40,	f=R_Product},
			{id='TRA_ENERGY1',		mn=1,		mx=2,		c=40,	f=R_Product},
			{id='TRA_EXOTICS1',		mn=1,		mx=2,		c=40,	f=R_Product},
			{id='ILLEGAL_PROD3',	mn=1,		mx=2,		c=40,	f=R_Product},
			{id=PC_.DBI,				rt=RT_.C,				c=30,	f=R_Procedural},
			{id=PC_.DTC,				rt=RT_.C,				c=30,	f=R_Procedural},
			{id=CU_.UT,				mn=18000,	mx=30000,	c=30,	f=R_Money}
		}
	},
	{--- pirate attack :: normal ---
		id			= 'PIRATELOOT',
		choice 		= RC_.ONE_S,
		zeroseed 	= true,
		replacement	= true,
		rewardlist	= {
			--id					Min			Max			%		function
			{id='SHIPCHARGE',		mn=1,		mx=2,		c=50,	f=R_Product},
			{id='SCRAP_GOODS',					mx=1,		c=60,	f=R_Product},
			{id='SCRAP_TECH',					mx=1,		c=60,	f=R_Product},
			{id='SCRAP_WEAP',					mx=1,		c=60,	f=R_Product},
			{id='TRA_ALLOY3',		mn=1,		mx=3,		c=40,	f=R_Product},
			{id='TRA_ENERGY3',		mn=1,		mx=3,		c=40,	f=R_Product},
			{id='TRA_COMPONENT3',	mn=1,		mx=3,		c=40,	f=R_Product},
			{id='TRA_MINERALS3',	mn=1,		mx=3,		c=40,	f=R_Product},
			{id='ILLEGAL_PROD4',	mn=1,		mx=2,		c=30,	f=R_Product},
			{id='AF_METAL',			mn=100,		mx=130,		c=30,	f=R_Substance},
			{id=PC_.DBI,				ort=true,	rt=RT_.U,	c=30,	f=R_Procedural},
			{id=PC_.DTC,				ort=true,	rt=RT_.U,	c=30,	f=R_Procedural},
			{id=CU_.NN,				mn=100,		mx=250,		c=20,	f=R_Money}
		}
	},
	{--- pirate attack :: hard level ---
		id			= 'PIRATELOOT_HARD',
		choice		= RC_.ONE_S,
		zeroseed	= true,
		rewardlist	= {
			--id					Min			Max			%		function
			{id='SHIPCHARGE',		mn=1,		mx=3,		c=50,	f=R_Product},
			{id='WATER2',			mn=260,		mx=360,		c=40,	f=R_Substance},
			{id='EX_GREEN',			mn=150,		mx=250,		c=40,	f=R_Substance},
			{id='EX_BLUE',			mn=120,		mx=220,		c=40,	f=R_Substance},
			{id='AF_METAL',			mn=110,		mx=180,		c=40,	f=R_Substance},
			{id='SCRAP_GOODS',					mx=1,		c=40,	f=R_Product},
			{id='SCRAP_TECH',					mx=1,		c=40,	f=R_Product},
			{id='SCRAP_WEAP',					mx=1,		c=40,	f=R_Product},
			{id='TRA_ENERGY4',		mn=1,		mx=3,		c=50,	f=R_Product},
			{id='TRA_ALLOY4',		mn=1,		mx=3,		c=50,	f=R_Product},
			{id='TRA_EXOTICS4',		mn=1,		mx=3,		c=50,	f=R_Product},
			{id='TRA_TECH4',		mn=1,		mx=3,		c=50,	f=R_Product},
			{id='ILLEGAL_PROD5',	mn=1,		mx=2,		c=30,	f=R_Product},
			{id='GEODE_RARE',					mx=1,		c=20,	f=R_Product},
			{id=PC_.DBI,				ort=true,	rt=RT_.U,	c=20,	f=R_Procedural},
			{id=PC_.DTC,				ort=true,	rt=RT_.U,	c=20,	f=R_Procedural},
			{id=CU_.NN,				mn=300,		mx=400,		c=20,	f=R_Money}
		}
	},
	{--- pirate attack :: building raid ---
		id			= 'RAIDLOOT',
		choice		= RC_.ONE_S,
		rewardlist	= {
			--id					Min			Max			%		function
			{id='SHIPCHARGE',					mx=1,		c=50,	f=R_Product},
			{id='SCRAP_GOODS',					mx=1,		c=40,	f=R_Product},
			{id='SCRAP_TECH',					mx=1,		c=40,	f=R_Product},
			{id='ILLEGAL_PROD2',	mn=1,		mx=4,		c=30,	f=R_Product},
			{id='WATER2',			mn=260,		mx=280,		c=30,	f=R_Substance},
			{id='GEODE_RARE',					mx=1,		c=20,	f=R_Product},
			{id=PC_.DBI,				ort=true,	rt=RT_.U,	c=20,	f=R_Procedural},
			{id=PC_.DTC,				ort=true,	rt=RT_.U,	c=20,	f=R_Procedural},
			{id=CU_.UT,				mn=25000,	mx=35000,	c=20,	f=R_Money}
		}
	},
	{--- jetpack boost :: tech plant ---
		id			= 'JETPACK_BOOST',
		choice		= RC_.ALL,
		replacement	= true,
		rewardlist	= {
			{id='jetboost',			tm=5,	pw=1.25,	c=100,	f=R_Jetboost}
		}
	},
	{--- health + shield + stamina + hazard + jetboost = balatant cheat! ---
		id			= 'HEALTH_MAJOR',
		choice		= RC_.ALL_S,
		rewardlist	= {
			{id='health',			mn=3,	mx=5,		c=100,	f=R_Health},
			{id='shield',			mn=70,	mx=100,		c=100,	f=R_Shield},
			{id='hazard',			hz=80,				c=100,	f=R_Hazard},
			{id='stamina',			tm=6,				c=100,	f=R_Stamina},
			{id='jetboost',			tm=4,	pw=1.2,		c=100,	f=R_Jetboost}
		}
	},
	{--- more tests ---
		unused		= true,
		id			= 'TEST_99',
		choice		= RC_.ONE,
		rewardlist	= {
			-- id					details					%		function
			{id='wanted_level',		lvl=1,					c=95,	f=R_Wanted},
			{id='flyby',			tm=5,					c=95,	f=R_FlyBy},
			{id='no_sentinels',		tm=20,					c=95,	f=R_NoSentinels},
			{id='ROGUE_HAZBOX',					mx=1,		c=10,	f=R_Product},
			{id='UT_SHIPLAS',					mx=1,		c=10,	f=R_Product},
			{id=PC_.FOS,				rt=RT_.R,				c=10,	f=R_Procedural},
			{id=PC_.SPH,				rt=RT_.U,				c=10,	f=R_Procedural},
			{id='SCRAP_WEAP',					mx=1,		c=10,	f=R_Product},
			{id='STEALTH',			sl=true,				c=10,	f=R_Technology},
			{id='ACCESS1',			sl=true,				c=10,	f=R_ProductRecipe},
			{id={'ALLOY7','ALLOY8'},mn=2,		mx=5,		c=2,	f=R_ProductSysList},
			{id={'ALLOY4','ALLOY5'},						c=2,	f=R_ProductAllList},
			{id=CU_.NN,				mn=101,		mx=202,		c=100,	f=R_Money}
		}
	}
}

-- loop through the rewards list and return the generated exml
local function AddNewRewardsToChangeTable()
	local T = {}
	T[1] = {
		FSKWG	= {},
		REMOVE	= 'Section'
	}
	local rewards = {}
	for _,rwd in ipairs(new_rewards) do
		-- collect exisitng rewards to be removed in FSKWG
		if not rwd.unused then
			if rwd.replacement then
				T[1].FSKWG[#T[1].FSKWG+1] = {'Id', rwd.id}
			end
			rewards[#rewards+1] = R_RewardTableEntry(rwd)
		end
	end
	-- remove FSKWG if none added
	if #T[1].FSKWG <= 0 then T[1] = nil end

	T[#T+1] = {
		PRECEDING_KEY_WORDS	= 'GenericTable',
		ADD					= ToExml(rewards)
	}
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_TEST L2E add replace rewards.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN',
		EXML_CHANGE_TABLE	= AddNewRewardsToChangeTable()
	}
}}}}
