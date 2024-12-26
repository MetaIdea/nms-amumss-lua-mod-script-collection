-----------------------------------------------------------------------
dofile('LIB/_lua_2_exml.lua')
dofile('LIB/reward_entry.lua')
-----------------------------------------------------------------------
local mod_desc = [[
  A system for adding & replacing rewards.
  - freighter defense reward (requires changes in AlienPuzzle)
  - crashed freighter containers
  - salvaged glass (sentinel loot)
  - pirate ships battle loot
  - jetpack boost bonuses
  - wild plants harvest higher and more varid yield
  - caltivated plants harvest varid yield
  - more words learned at word stones and other places
]]---------------------------------------------------------------------

local new_rewards = {
	{--- huge flora prop ---
		id			= 'DE_PLANT_HUGE',
		choice		= RC_.ALL,
		itemlist	= {
			--id					Min		Max			%		function
			{id='FUEL2',			mn=50,	mx=150,		c=100,	f=R_Substance},
			{id='SPACEGUNK5',		mn=15,	mx=45,		c=100,	f=R_Substance},
		}
	},
	{--- huge rock prop ---
		id			= 'DE_ROCK_HUGE',
		choice		= RC_.ALL,
		itemlist	= {
			--id					Min		Max			%		function
			{id='LAND2',			mn=50,	mx=150,		c=100,	f=R_Substance},
			{id='GEODE_LAND', 		mn=1,	mx=2,		c=10,	f=R_DisguisedProduct,	display='LAND2'}
		}
	},
	{--- sentinel salvaged glass shard ---
		id			= 'DE_SENT_LOOT',
		choice		= RC_.ONE,
		replacement	= true,
		itemlist	= {
			--id					Min		Max			%		function
			{id='CHART_HIVE',				mx=1,		c=2,	f=R_Product},
			{id='U_SENTGUN',				mx=1,		c=25,	f=R_Product},
			{id='U_SENTSUIT',				mx=1,		c=25,	f=R_Product},
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
		itemlist	= {
			{id=CU_.UT,	mn=25000,	mx=75000,	c=50,	f=R_Money},
			{
				f	= R_MultiItem,
				c	= 45,
				list= {
					{id='LAUNCHFUEL',		mn=1, 	tp=MI_.PRD},
					{id='BP_SALVAGE',		mn=3, 	tp=MI_.PRD},
					{pid=PC_.DTC, 			qt=2,	tp=MI_.PRP}
				}
			},
			{
				f	= R_MultiItem,
				c	= 45,
				list= {
					{id='ANTIMATTER',		mn=2, 	tp=MI_.PRD},
					{id='AM_HOUSING',		mn=2, 	tp=MI_.PRD},
					{id='TECHFRAG',			mn=230, tp=MI_.SBT}
				}
			},
			{
				f	= R_MultiItem,
				c	= 35,
				list= {
					{id='FRIG_TOKEN',		mn=1, 	tp=MI_.PRD},
					{id='TIMEMILK',			mn=94, 	tp=MI_.SBT}
				}
			},
			{
				f	= R_MultiItem,
				c	= 35,
				list= {
					{id='WEAP_INV_TOKEN',	mn=1, 	tp=MI_.PRD},
					{id='AF_METAL',			mn=117, tp=MI_.SBT}
				}
			},
			{id=CU_.UT,	mn=150000,	mx=260000,	c=20,	f=R_Money},
			{
				f	= R_MultiItem,
				c	= 25,
				list= {
					{id='FARMPROD1',		mn=1, 	tp=MI_.PRD},	-- Acid
					{id='WATER1',			mn=243, tp=MI_.SBT}
				}
			},
			{
				f	= R_MultiItem,
				c	= 25,
				list= {
					{id='FARMPROD5',		mn=1, 	tp=MI_.PRD},	-- Poly Fibre
					{id='WATER2',			mn=189, tp=MI_.SBT}
				}
			},
			{
				f	= R_MultiItem,
				c	= 25,
				list= {
					{id='SALVAGE_TECH8',	mn=1, 	tp=MI_.PRD},	-- Subatomic Regulators
					{id='ROBOT1',			mn=203, tp=MI_.SBT}
				}
			},
			{
				f	= R_MultiItem,
				c	= 25,
				list= {
					{id='SALVAGE_TECH7',	mn=1, 	tp=MI_.PRD},	-- Recycled Circuitry
					{id='ROBOT2',			mn=180, tp=MI_.SBT}
				}
			},
			{
				f	= R_MultiItem,
				c	= 2,
				list= {
					{id='FREI_INV_TOKEN',	mn=2, 	tp=MI_.PRD},	-- freighter inv
					{id='SENTFREI_PROD',	mn=3, 	tp=MI_.PRD}		-- AI Fragment
				}
			},
			-- freighter hyper
			{
				f	= R_MultiItem,
				c	= 5,
				list= {
					{pid=PC_.FRH, 			qt=0,	tp=MI_.PRP},
					{id='CASING',			mn=5, 	tp=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 2,
				list= {
					{pid=PC_.FRH, 			qt=1,	tp=MI_.PRP},
					{id='COMPOUND6',		mn=1, 	tp=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 1,
				list= {
					{pid=PC_.FRH, 			qt=2,	tp=MI_.PRP},
					{id='PRODFUEL2',		mn=1, 	tp=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 1,
				list= {
					{pid=PC_.FRH, 			qt=3,	tp=MI_.PRP},
					{id='ILLEGAL_PROD6',	mn=1, 	tp=MI_.PRD}
				}
			},
			-- freighter fuel
			{
				f	= R_MultiItem,
				c	= 5,
				list= {
					{pid=PC_.FRF, 			qt=0,	tp=MI_.PRP},
					{id='NANOTUBES',		mn=5, 	tp=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 2,
				list= {
					{pid=PC_.FRF, 			qt=1,	tp=MI_.PRP},
					{id='COMPOUND5',		mn=1, 	tp=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 1,
				list= {
					{pid=PC_.FRF, 			qt=2,	tp=MI_.PRP},
					{id='REPAIRKIT',		mn=1, 	tp=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 1,
				list= {
					{pid=PC_.FRF, 			qt=3,	tp=MI_.PRP},
					{id='ILLEGAL_PROD5',	mn=1, 	tp=MI_.PRD}
				}
			},
			-- freighter trade
			{
				f	= R_MultiItem,
				c	= 5,
				list= {
					{pid=PC_.FRT, 			qt=0,	tp=MI_.PRP},
					{id='JELLY',			mn=5, 	tp=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 2,
				list= {
					{pid=PC_.FRT, 			qt=1,	tp=MI_.PRP},
					{id='COMPOUND4',		mn=1, 	tp=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 1,
				list= {
					{pid=PC_.FRT, 			qt=2,	tp=MI_.PRP},
					{id='BIO',				mn=1, 	tp=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 1,
				list= {
					{pid=PC_.FRT, 			qt=3,	tp=MI_.PRP},
					{id='ILLEGAL_PROD4',	mn=1, 	tp=MI_.PRD}
				}
			},
			-- freighter combat
			{
				f	= R_MultiItem,
				c	= 5,
				list= {
					{pid=PC_.FRC, 			qt=0,	tp=MI_.PRP},
					{id='POWERCELL',		mn=5, 	tp=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 2,
				list= {
					{pid=PC_.FRC, 			qt=1,	tp=MI_.PRP},
					{id='COMPOUND3',		mn=1, 	tp=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 1,
				list= {
					{pid=PC_.FRC, 			qt=2,	tp=MI_.PRP},
					{id='MIRROR',			mn=1, 	tp=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 1,
				list= {
					{pid=PC_.FRC, 			qt=3,	tp=MI_.PRP},
					{id='ILLEGAL_PROD3',	mn=1, 	tp=MI_.PRD}
				}
			},
			-- freighter mining
			{
				f	= R_MultiItem,
				c	= 5,
				list= {
					{pid=PC_.FRM, 			qt=0,	tp=MI_.PRP},
					{id='HYDRALIC',			mn=3, 	tp=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 2,
				list= {
					{pid=PC_.FRM, 			qt=1,	tp=MI_.PRP},
					{id='COMPOUND2',		mn=1, 	tp=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 1,
				list= {
					{pid=PC_.FRM, 			qt=2,	tp=MI_.PRP},
					{id='MICROCHIP',		mn=1, 	tp=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 1,
				list= {
					{pid=PC_.FRM, 			qt=3,	tp=MI_.PRP},
					{id='ILLEGAL_PROD2',	mn=1, 	tp=MI_.PRD}
				}
			},
			-- freighter explore
			{
				f	= R_MultiItem,
				c	= 5,
				list= {
					{pid=PC_.FRE, 			qt=0,	tp=MI_.PRP},
					{id='CARBON_SEAL',		mn=3, 	tp=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 2,
				list= {
					{pid=PC_.FRE, 			qt=1,	tp=MI_.PRP},
					{id='COMPOUND1',		mn=1, 	tp=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 1,
				list= {
					{pid=PC_.FRE, 			qt=2,	tp=MI_.PRP},
					{id='TRA_ENERGY5',		mn=1, 	tp=MI_.PRD}
				}
			},
			{
				f	= R_MultiItem,
				c	= 1,
				list= {
					{pid=PC_.FRE, 			qt=3,	tp=MI_.PRP},
					{id='ILLEGAL_PROD1',	mn=1, 	tp=MI_.PRD}
				}
			}
		}
	},
	{--- freighter defense :: explorer ---
		id			= 'FREIGHTERSAVE_E',
		choice		= RC_.ALL,
		itemlist	= {
			{
				f	= R_MultiItem,
				c	= 100,
				list= {
					{id='HYPERFUEL1',		mn=1, 		tp=MI_.PRD},	-- Hyperdrive fuel
					{id='SCRAP_TECH',		mn=1, 		tp=MI_.PRD},
					{id='FREI_INV_TOKEN',	mn=1, 		tp=MI_.PRD},	-- freighter inv slot
					{id='ASTEROID3',		mn=169, 	tp=MI_.SBT},	-- Platinum
					{pid=PC_.SPB,			qt=1,		tp=MI_.PRP},	-- Space Bones Procedural
				}
			},
			{id=CU_.HG,	mn=50,		mx=60,		c=100,	f=R_Money},
		}
	},
	{--- freighter defense :: trader ---
		id			= 'FREIGHTERSAVE_T',
		choice		= RC_.ALL,
		itemlist	= {
			{
				f	= R_MultiItem,
				c	= 100,
				list= {
					{id='HYPERFUEL1',		mn=1, 		tp=MI_.PRD},
					{id='GEODE_RARE',		mn=1, 		tp=MI_.PRD},
					{id='FREI_INV_TOKEN',	mn=1, 		tp=MI_.PRD},
					{id='ASTEROID1',		mn=523, 	tp=MI_.SBT},	-- silver
					{pid=PC_.SLV,			qt=1,		tp=MI_.PRP},	-- Salvage Procedural
				}
			},
			{id=CU_.UT,	mn=35100,	mx=50200,	c=100,	f=R_Money},
		}
	},
	{--- freighter defense :: warior ---
		id			= 'FREIGHTERSAVE_W',
		choice		= RC_.ALL,
		itemlist	= {
			{
				f	= R_MultiItem,
				c	= 100,
				list= {
					{id='HYPERFUEL1',		mn=1, 		tp=MI_.PRD},
					{id='SCRAP_WEAP',		mn=1, 		tp=MI_.PRD},
					{id='FREI_INV_TOKEN',	mn=1, 		tp=MI_.PRD},
					{id='ASTEROID2',		mn=387, 	tp=MI_.SBT},	-- gold
					{pid=PC_.DTC,			qt=1,		tp=MI_.PRP}		-- Procedural
				}
			},
			{id=CU_.NN,	mn=190,		mx=270,		c=100,	f=R_Money},
		}
	},
	{--- pirate attack :: easy ---
		id			= 'PIRATELOOT_EASY',
		choice		= RC_.ONE_S,
		itemlist	= {
			--id					Min			Max			%		function
			{id='SHIPCHARGE',					mx=1,		c=50,	f=R_Product},
			{id='TRA_ALLOY1',		mn=1,		mx=2,		c=40,	f=R_Product},
			{id='TRA_ENERGY1',		mn=1,		mx=2,		c=40,	f=R_Product},
			{id='TRA_EXOTICS1',		mn=1,		mx=2,		c=40,	f=R_Product},
			{id='ILLEGAL_PROD3',	mn=1,		mx=2,		c=40,	f=R_Product},
			{id=PC_.DBI,			rt=RT_.C,				c=30,	f=R_Procedural},
			{id=PC_.DTC,			rt=RT_.C,				c=30,	f=R_Procedural},
			{id=CU_.UT,				mn=18000,	mx=30000,	c=30,	f=R_Money}
		}
	},
	{--- pirate attack :: normal ---
		id			= 'PIRATELOOT',
		choice 		= RC_.ONE_S,
		zeroseed 	= true,
		replacement	= true,
		itemlist	= {
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
			{id=PC_.DBI,			ort=true,	rt=RT_.U,	c=30,	f=R_Procedural},
			{id=PC_.DTC,			ort=true,	rt=RT_.U,	c=30,	f=R_Procedural},
			{id=CU_.NN,				mn=100,		mx=250,		c=20,	f=R_Money}
		}
	},
	{--- pirate attack :: hard level ---
		id			= 'PIRATELOOT_HARD',
		choice		= RC_.ONE_S,
		zeroseed	= true,
		itemlist	= {
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
			{id=PC_.DBI,			ort=true,	rt=RT_.U,	c=20,	f=R_Procedural},
			{id=PC_.DTC,			ort=true,	rt=RT_.U,	c=20,	f=R_Procedural},
			{id=CU_.NN,				mn=300,		mx=400,		c=20,	f=R_Money}
		}
	},
	{--- pirate attack :: building raid ---
		id			= 'RAIDLOOT',
		choice		= RC_.ONE_S,
		itemlist	= {
			--id					Min			Max			%		function
			{id='SHIPCHARGE',					mx=1,		c=50,	f=R_Product},
			{id='SCRAP_GOODS',					mx=1,		c=40,	f=R_Product},
			{id='SCRAP_TECH',					mx=1,		c=40,	f=R_Product},
			{id='ILLEGAL_PROD2',	mn=1,		mx=4,		c=30,	f=R_Product},
			{id='WATER2',			mn=260,		mx=280,		c=30,	f=R_Substance},
			{id='GEODE_RARE',					mx=1,		c=20,	f=R_Product},
			{id=PC_.DBI,			ort=true,	rt=RT_.U,	c=20,	f=R_Procedural},
			{id=PC_.DTC,			ort=true,	rt=RT_.U,	c=20,	f=R_Procedural},
			{id=CU_.UT,				mn=25000,	mx=35000,	c=20,	f=R_Money}
		}
	},
	{--- jetpack boost :: tech plant ---
		id			= 'JETPACK_BOOST',
		choice		= RC_.ALL,
		replacement	= true,
		itemlist	= {
			{id='jetboost',			tm=5,	pw=1.25,	c=100,	f=R_Jetboost}
		}
	},
	{--- jetpack boost :: ? ---
		id			= 'MIXER_JETPACK',
		choice		= RC_.ALL,
		replacement	= true,
		itemlist	= {
			{id='jetboost',			tm=4,	pw=1.2,		c=100,	f=R_Jetboost}
		}
	},
	{--- jetpack boost :: consumable product ---
		id			= 'DE_FOOD_JETPACK',
		choice		= RC_.ALL,
		replacement	= true,
		itemlist	= {
			{id='jetboost',			tm=3,	pw=1.15,	c=100,	f=R_Jetboost}
		}
	},
	{--- health + shield + stamina + hazard + jetboost = balatant cheat! ---
		id			= 'HEALTH_MAJOR',
		choice		= RC_.ALL_S,
		itemlist	= {
			{id='wanted_level',		lvl=0,				c=98,	f=R_Wanted},
			{id='no_sentinels',		tm=20,				c=98,	f=R_NoSentinels},
			{id='health',			mn=3,	mx=5,		c=98,	f=R_Health},
			{id='shield',			mn=70,	mx=100,		c=98,	f=R_Shield},
			{id='hazard',			hz=80,				c=98,	f=R_Hazard},
			{id='stamina',			tm=6,				c=98,	f=R_Stamina},
			{id='jetboost',			tm=4,	pw=1.2,		c=98,	f=R_Jetboost}
		}
	},
	{--- quicksilver tiny=30 ---
		id			= 'RS_QUICKSILV_T',
		choice		= RC_.ALL,
		itemlist	= {
			{id=CU_.HG,	mx=36,			c=100,	f=R_Money}
		}
	},
	{--- open page ---
		id			= 'R_OPEN_PAGE_0',
		choice		= RC_.ALL,
		itemlist	= {
			{id='WeaponCustomisation',	c=100,	f=R_OpenPage}
		}
	},
	{--- open unlockable recipe tree ---
		id			= 'R_OPEN_TREE_0',
		choice		= RC_.ALL,
		itemlist	= {
			{id='BaseParts',			c=100,	f=R_UnlockTree}
		}
	},
	{--- test 9 ---
		id			= 'TEST_09',
		choice		= RC_.ALL,
		itemlist	= {
			-- id					details					%		function
			{id='storm',			tm=180,					c=95,	f=R_Storm},
			-- {id=PC_.PLT,			rt=RT_.R,				c=92,	f=R_Procedural},
			-- {id=PC_.SPH,			rt=RT_.U,				c=2,	f=R_Procedural},
			-- {id='BIO',				mn=1,		mx=2,		c=92,	f=R_Product},
			-- {id='FOOD_CM_JHOT',		mn=1,		mx=2,		c=2,	f=R_Product},
			-- {id='SCRAP_WEAP',					mx=1,		c=52,	f=R_Product},
			-- {id='WATER2',			mn=260,		mx=280,		c=2,	f=R_Substance},
			{id='WORMDUST',			mn=1060,	mx=1180,	c=2,	f=R_Substance},
		}
	},
	{--- more tests ---
		unused		= true,
		id			= 'TEST_99',
		choice		= RC_.ONE,
		itemlist	= {
			-- id					details					%		function
			{id='wanted_level',		lvl=1,					c=95,	f=R_Wanted},
			{id='no_sentinels',		tm=20,					c=95,	f=R_NoSentinels},
			{id='flyby',			tm=5,					c=95,	f=R_FlyBy},
			{id='ROGUE_HAZBOX',					mx=1,		c=10,	f=R_Product},
			{id='UT_SHIPLAS',					mx=1,		c=10,	f=R_Product},
			{id=PC_.FOS,			rt=RT_.R,				c=10,	f=R_Procedural},
			{id=PC_.SPH,			rt=RT_.U,				c=10,	f=R_Procedural},
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
local function AddNewRewardsToChangeTable(T)
	local rewards = {}
	local rw_rd = #T+1
	T[rw_rd] = { SKW={}, REMOVE='Section' }

	for _,rwd in ipairs(new_rewards) do
		-- collect exisitng rewards to be removed in SKW
		if not rwd.unused then
			if rwd.replacement then
				T[rw_rd].SKW[#T[rw_rd].SKW+1] = {'Id', rwd.id}
			end
			rewards[#rewards+1] = R_RewardTableEntry(rwd)
		end
	end
	-- remove SKW if none added
	if #T[rw_rd].SKW <= 0 then T[rw_rd] = nil end

	T[#T+1] = {
		PRECEDING_KEY_WORDS	= 'GenericTable',
		ADD					= ToExml(rewards)
	}
end

local function IncreasePlantHarvest(T)
	for rwd, amnt in pairs({
		['DE_COOK_.-']	= { mn=1.25,	mx=1.55	},
		['WILD_.-']		= { mn=1.5,		mx=1.8	},
		['PLANT_.-']	= { mn=0.9,		mx=1.1	}
	}) do
		T[#T+1] = {
			INTEGER_TO_FLOAT	= 'Preserve',
			SPECIAL_KEY_WORDS	= {'Id', rwd},
			VALUE_CHANGE_TABLE 	= {
				{'AmountMin',	'@ *'..amnt.mn},
				{'AmountMax',	'@ *'..amnt.mx}
			}
		}
	end
end

local function LearnMoreWords(T)
	for id, word in pairs({
		WORD			= {ar=AR_.NON,	n=3},
		EXP_WORD		= {ar=AR_.XPR,	n=3},
		TRA_WORD		= {ar=AR_.TRD,	n=3},
		WAR_WORD		= {ar=AR_.WAR,	n=3},
		TEACHWORD_EXP	= {ar=AR_.XPR,	n=3},
		TEACHWORD_TRA	= {ar=AR_.TRD,	n=3},
		TEACHWORD_WAR	= {ar=AR_.WAR,	n=3},
		TEACHWORD_ATLAS	= {ar=AR_.ATL,	n=3},
		TEACHWORD_BUI	= {ar=AR_.BLD,	n=3},
	}) do
		for _=1, (word.n - 1) do
			T[#T+1] = {
				SPECIAL_KEY_WORDS	= {'Id', id},
				SECTION_ACTIVE		= -1,
				PRECEDING_KEY_WORDS = 'GcRewardTableItem.xml',
				ADD_OPTION			= 'ADDAfterSection',
				ADD					= ToExml(R_Word({ar=word.ar, mx=1, c=45}))
			}
		end
	end
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__REALITY REWARD.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN',
		EXML_CHANGE_TABLE	= (
			function()
				local ECT = {}
				AddNewRewardsToChangeTable(ECT)
				IncreasePlantHarvest(ECT)
				LearnMoreWords(ECT)

				ECT[#ECT+1] = {
					REPLACE_TYPE 		= 'All',
					MATH_OPERATION 		= '*',
					SPECIAL_KEY_WORDS	= {'Currency', 'Specials'},
					SECTION_UP			= 1,
					VALUE_CHANGE_TABLE 	= {
						{'AmountMin',	2},
						{'AmountMax',	2}
					}
				}
				-- ECT[#ECT+1] = {
					-- SPECIAL_KEY_WORDS	= {'Id', 'REFRESH_HAZ', 'LabelID', 'UI_RESTORE_HAZARD'},
					-- ADD_OPTION			= 'ADDAfterSection',
					-- ADD					= ToExml(R_ProductRecipe({id='RAMMOULD5', c=100, sl=true}))
				-- }
				return ECT
			end
		)()
	}
}}}}
