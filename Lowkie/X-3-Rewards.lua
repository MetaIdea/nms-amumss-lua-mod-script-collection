--------------------------------------------------------------------------
local desc = [[
 re-Write Replace space pirates & raids loot with a more varied selection
]]------------------------------------------------------------------------
local function bool(b)
	return (b == true) and 'True' or 'False'
end

local function R_TableItem(item, reward, data)
	local function Amount()
		if not item.x then return '' end
		return [[
                <Property name="AmountMin" value="]]..(item.n or item.x)..[["/>
                        <Property name="AmountMax" value="]]..item.x..[["/>]]
	end
	return [[
                  <Property value="GcRewardTableItem.xml">
                      <Property name="PercentageChance" value="]]..item.c..[["/>
                      <Property name="Reward" value="]]..reward..[[">
                          ]]  ..data..Amount()..[[
                      </Property>
                  </Property>
	]]
end

local function R_Procedural(item)
	return R_TableItem(
		item,
		'GcRewardProceduralProduct.xml',
[[<Property name="Type" value="GcProceduralProductCategory.xml">
                <Property name="ProceduralProductCategory" value="]]..item.id..[["/>
                        </Property>
                        <Property name="Rarity" value="GcRarity.xml">
                            <Property name="Rarity" value="]]..(item.r or 'Common')..[["/>
                        </Property>
        ]]
	)
end
local function R_Product(item)
	return R_TableItem(
		item,
		'GcRewardSpecificProduct.xml',
		[[<Property name="ID" value="]]..item.id..[["/>
                        <Property name="Silent" value="]]..bool(item.s)..[["/>
		]]
	)
end
local function R_Substance(item)
	return R_TableItem(
		item,
		'GcRewardSpecificSubstance.xml',
	[[<Property name="ID" value="]]..item.id..[["/>
                        <Property name="Silent" value="]]..bool(item.s)..[["/>
		]]
	)
end
local function R_Money(item)
	return R_TableItem(
		item,
		'GcRewardMoney.xml',
	[[<Property name="Currency" value="GcCurrency.xml">
                        <Property name="Currency" value="]]..item.id..[["/>
                    </Property>
		]]
	)
end

local function R_Alien(item)
	return R_TableItem(item, 
        'GcRewardStanding.xml',
        [[<Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="]]..item.id..[["/>
                        </Property>
        ]]
    )
end
--<Property name="RewardChoice" value="GiveAll" />
--use this for rewarding ship scrap
-- <Property value="GcRewardTableItem.xml">
            -- <Property name="PercentageChance" value="100" />
            -- <Property name="Reward" value="GcRewardSalvageShip.xml" />
            -- <Property name="LabelID" value="" />
          -- </Property>
          
          
local E_ = {
	-- ProceduralProductCategoryEnum
	LOT='Loot',
	FRH='FreighterTechHyp',
	FRS='FreighterTechSpeed',
	FRF='FreighterTechFuel',
	FRT='FreighterTechTrade',
	FRC='FreighterTechCombat',
	FRM='FreighterTechMine',
	FRE='FreighterTechExp',
	DBI='DismantleBio',
	DTC='DismantleTech',
	DDT='DismantleData',
	BIO='BioSample',
	BNS='Bones',
	FOS='Fossil',
	SLT='SeaLoot',
	SHR='SeaHorror',
	SPB='SpaceBones',
	SPH='SpaceHorror',
	SLV='Salvage',

	-- MultiItemRewardTypeEnum
	PDT='Product',	SBT='Substance',	PRP='ProcProduct',
	-- PRT='ProcTech', not supported

	-- RarityEnum
	C='Common',		U='Uncommon',		R='Rare',

	-- Money --Should set MONEY MONEY_S MONEY_M  MONEY_L  MONEY_XL
	UT='Units',		NN='Nanites',		HG='Specials', -- quicksilver
}

local new_reward = { 
    --UI_SALVAGE_TECH 
    --SALVAGE_TECH1  = Once Useful springs     1k UT
    --SALVAGE_TECH2  = Handful of Cogs        10k UT
    --SALVAGE_TECH3  = Reinforced Piping      50k UT
    --SALVAGE_TECH4  = Thermal Pannels       100k UT
    --SALVAGE_TECH5  = Tank of Coolant       200k UT
    --SALVAGE_TECH6  = Spool of Nano Cable   400k UT
    --SALVAGE_TECH7  = Recycled Circuity     600k UT
    --SALVAGE_TECH8  = Subatomic Regulator   800k UT
    --SALVAGE_TECH9  = Compressed Iridum     3mil UT
    --SALVAGE_TECH10 = AI Valves            50mil UT
    
    {--- Squadron loot - easy level ---
		id			= 'SQUADRONLOOT_CB',
		choice		= 'SelectAlways',
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=50,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='WEAPON_INV_TOKEN',	n=1,	x=1,	c=10,	f=R_Product},
			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_WEAP',	        	x=1,	c=10,	f=R_Product},--Original Loot
            {id='SALVAGE_TECH1',	n=2,	x=10,	c=60,	f=R_Product},
			{id='SALVAGE_TECH2',	n=2,	x=8,	c=50,	f=R_Product},
			{id='SALVAGE_TECH3',	n=2,	x=8,	c=40,	f=R_Product},
			{id='SALVAGE_TECH4',	n=2,	x=8,	c=30,	f=R_Product},
            {id='None',	            n=1,	x=1,	c=100,	f=R_Alien},		
			{id=E_.DTC,				r=E_.C,			c=100,	f=R_Procedural},
			{id=E_.UT,				n=500  ,x=1000, c=100,	f=R_Money},
			{id=E_.NN,				n=50,  x=100,  c=100,	f=R_Money},
		}
	},
    {--- Squadron loot - normal level ---
		id			= 'SQUADRONLOOT_A',
		choice		= 'SelectAlways',
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=50,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='WEAPON_INV_TOKEN',	n=1,	x=1,	c=10,	f=R_Product},
			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_WEAP',	        	x=1,	c=10,	f=R_Product},--Original Loot
            {id='SALVAGE_TECH1',	n=3,	x=15,	c=50,	f=R_Product},
			{id='SALVAGE_TECH2',	n=3,	x=10,	c=50,	f=R_Product},
			{id='SALVAGE_TECH3',	n=3,	x=10,	c=50,	f=R_Product},
			{id='SALVAGE_TECH4',	n=3,	x=8,	c=30,	f=R_Product},
			{id='SALVAGE_TECH5',	n=1,	x=3,	c=20,	f=R_Product},
			{id='SALVAGE_TECH6',	n=1,	x=1,	c=20,	f=R_Product},
            {id='None',	            n=1,	x=1,	c=100,	f=R_Alien},
			{id=E_.DTC,				r=E_.C,			c=100,	f=R_Procedural},
			{id=E_.UT,				n=1000, x=2000, c=100,	f=R_Money},
			{id=E_.NN,				n=100,  x=200,  c=100,	f=R_Money},
		}
	},
    {--- Squadron loot - hard level ---
		id			= 'SQUADRONLOOT_S',
		choice		= 'SelectAlways',
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=50,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='WEAPON_INV_TOKEN',	n=1,	x=1,	c=10,	f=R_Product},
			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_WEAP',	        	x=1,	c=10,	f=R_Product},--Original Loot
            {id='SALVAGE_TECH1',	n=3,	x=15,	c=50,	f=R_Product},
			{id='SALVAGE_TECH2',	n=3,	x=10,	c=50,	f=R_Product},
			{id='SALVAGE_TECH3',	n=3,	x=10,	c=40,	f=R_Product},
			{id='SALVAGE_TECH4',	n=3,	x=8,	c=30,	f=R_Product},
			{id='SALVAGE_TECH5',	n=1,	x=3,	c=20,	f=R_Product},
			{id='SALVAGE_TECH6',	n=1,	x=1,	c=20,	f=R_Product},
			{id='SALVAGE_TECH7',	n=1,	x=1,	c=20,	f=R_Product},
            {id='None',	            n=1,	x=1,	c=100,	f=R_Alien},
			{id=E_.UT,				n=2000, x=3000, c=100,	f=R_Money},
			{id=E_.NN,				n=150,  x=300,  c=100,	f=R_Money},
		}
	},
    {--- pirate loot - easy level ---
		id			= 'PIRATELOOT_EASY',
		choice		= 'SelectAlways',
		zeroseed 	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=50,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='WATER2',			n=260,	x=360,	c=40,	f=R_Substance},
			{id='EX_GREEN',			n=150,	x=250,	c=40,	f=R_Substance},
			{id='EX_BLUE',			n=120,	x=220,	c=40,	f=R_Substance},
			--{id='AF_METAL',			n=110,	x=180,	c=80,	f=R_Substance},
			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_WEAP',	        	x=1,	c=10,	f=R_Product},--Original Loot
            {id='SALVAGE_TECH1',	n=3,	x=15,	c=50,	f=R_Product},
			{id='SALVAGE_TECH2',	n=3,	x=10,	c=40,	f=R_Product},
			{id='SALVAGE_TECH3',	n=3,	x=10,	c=30,	f=R_Product},
			{id='SALVAGE_TECH4',	n=3,	x=8,	c=20,	f=R_Product},
            {id='None',	            n=1,	x=1,	c=100,	f=R_Alien},
			{id=E_.DTC,				r=E_.C,			c=100,	f=R_Procedural},
			{id=E_.UT,				n=1000  ,x=2000,c=100,	f=R_Money},
			{id=E_.NN,				n=50,    x=100, c=100,	f=R_Money},
		}
	},
    {--- pirate loot - hard level ---
		id			= 'PIRATELOOT_HARD',
		choice		= 'SelectAlways',
		zeroseed	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',		n=1,	x=1,	c=50,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='WATER2',			n=260,	x=360,	c=30,	f=R_Substance},
			{id='EX_GREEN',			n=150,	x=250,	c=30,	f=R_Substance},
			{id='EX_BLUE',			n=120,	x=220,	c=30,	f=R_Substance},
			--{id='AF_METAL',			n=110,	x=180,	c=80,	f=R_Substance}
			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_WEAP',	        	x=1,	c=10,	f=R_Product},--Original Loot
            {id='SALVAGE_TECH1',	n=3,	x=15,	c=70,	f=R_Product},
			{id='SALVAGE_TECH2',	n=3,	x=15,	c=60,	f=R_Product},
			{id='SALVAGE_TECH3',	n=3,	x=15,	c=50,	f=R_Product},
			{id='SALVAGE_TECH4',	n=3,	x=10,	c=50,	f=R_Product},
			{id='SALVAGE_TECH5',	n=1,	x=5,	c=40,	f=R_Product},
			{id='SALVAGE_TECH6',	n=1,	x=1,	c=30,	f=R_Product},
			{id='SALVAGE_TECH7',	n=1,	x=1,	c=20,	f=R_Product},
            {id='None',	            n=1,	x=1,	c=100,	f=R_Alien},
			{id=E_.DTC,				r=E_.R,			c=100,	f=R_Procedural},
			{id=E_.UT,				n=6000,x=30000,c=100,	f=R_Money},
			{id=E_.NN,				n=200,	x=400,	c=100,	f=R_Money},
		}
	},
    {--- pirate loot - building raid -RAID_DOGFIGHT-RAID_BUILDING Give Pirate loot or trader loot-
		id			= 'RAIDLOOT',
		choice		= 'SelectAlways',
		zeroseed 	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=50,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='WATER2',			n=260,	x=360,	c=30,	f=R_Substance},
			{id='EX_GREEN',			n=150,	x=250,	c=30,	f=R_Substance},
			{id='EX_BLUE',			n=120,	x=220,	c=30,	f=R_Substance},
			--{id='AF_METAL',			n=110,	x=180,	c=80,	f=R_Substance},
			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_WEAP',	        	x=1,	c=10,	f=R_Product},--Original Loot
            {id='SALVAGE_TECH1',	n=3,	x=15,	c=60,	f=R_Product},
			{id='SALVAGE_TECH2',	n=3,	x=10,	c=50,	f=R_Product},
			{id='SALVAGE_TECH3',	n=3,	x=10,	c=40,	f=R_Product},
			{id='SALVAGE_TECH4',	n=3,	x=8,	c=40,	f=R_Product},
			{id='SALVAGE_TECH5',	n=1,	x=3,	c=30,	f=R_Product},
			{id='SALVAGE_TECH6',	n=1,	x=1,	c=20,	f=R_Product},
            {id='None',	            n=1,	x=1,	c=100,	f=R_Alien},
			{id=E_.DBI,				r=E_.U,			c=100,	f=R_Procedural},
			{id=E_.DTC,				r=E_.U,			c=100,	f=R_Procedural},
			{id=E_.UT,				n=2500,x=3500,c=100,	f=R_Money},
			{id=E_.NN,				n=150,	x=300,	c=100,	f=R_Money},
		}
	},
    {--- Pirate Bounty 3 loot  SHOULD BE AN UPDATE NOT AN ADD---
		id			= 'PIRATE_BOUNTY3',
		choice		= 'SelectAlways',
		replacement	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=50,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='WEAPON_INV_TOKEN',	n=1,	x=1,	c=10,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_WEAP',	        	x=1,	c=10,	f=R_Product},--Original Loot
            {id='SALVAGE_TECH1',	n=3,	x=15,	c=70,	f=R_Product},
			{id='SALVAGE_TECH2',	n=3,	x=15,	c=60,	f=R_Product},
			{id='SALVAGE_TECH3',	n=3,	x=15,	c=50,	f=R_Product},
			{id='SALVAGE_TECH4',	n=3,	x=10,	c=50,	f=R_Product},
			{id='SALVAGE_TECH5',	n=1,	x=5,	c=40,	f=R_Product},
			{id='SALVAGE_TECH6',	n=1,	x=1,	c=30,	f=R_Product},
			{id='SALVAGE_TECH7',	n=1,	x=1,	c=20,	f=R_Product},
			{id='None',	            n=1,	x=1,	c=100,	f=R_Alien},
			{id=E_.DTC,				r=E_.C,			c=100,	f=R_Procedural},
			{id=E_.UT,				n=20000,x=40000,c=100,f=R_Money},
			{id=E_.NN,				n=50,  x=100,  c=100,	f=R_Money},
		}
	},   
    {--- Pirate Bounty 2 loot   SHOULD BE AN UPDATE NOT AN ADD------
		id			= 'PIRATE_BOUNTY2',
		choice		= 'SelectAlways',
		replacement	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=50,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='WEAPON_INV_TOKEN',	n=1,	x=1,	c=10,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_WEAP',	        	x=1,	c=10,	f=R_Product},--Original Loot
            {id='SALVAGE_TECH1',	n=3,	x=15,	c=60,	f=R_Product},
			{id='SALVAGE_TECH2',	n=3,	x=10,	c=50,	f=R_Product},
			{id='SALVAGE_TECH3',	n=3,	x=10,	c=50,	f=R_Product},
			{id='SALVAGE_TECH4',	n=3,	x=8,	c=40,	f=R_Product},
			{id='SALVAGE_TECH5',	n=1,	x=3,	c=20,	f=R_Product},
			{id='None',	            n=1,	x=1,	c=100,	f=R_Alien},
			{id=E_.DTC,				r=E_.C,			c=100,	f=R_Procedural},
			{id=E_.UT,				n=10000, x=25000, c=100,	f=R_Money},
			{id=E_.NN,				n=50,  x=100,  c=100,	f=R_Money},
		}
	}, 
    {--- Pirate Bounty 1 loot   SHOULD BE AN UPDATE NOT AN ADD------
		id			= 'PIRATE_BOUNTY1',
		choice		= 'SelectAlways',
		replacement	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=50,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='WEAPON_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_WEAP',	        	x=1,	c=10,	f=R_Product},--Original Loot
            {id='SALVAGE_TECH1',	n=5,	x=20,	c=60,	f=R_Product},
			{id='SALVAGE_TECH2',	n=2,	x=8,	c=50,	f=R_Product},
			{id='SALVAGE_TECH3',	n=2,	x=8,	c=40,	f=R_Product},
			{id='SALVAGE_TECH4',	n=2,	x=8,	c=30,	f=R_Product},
			{id='None',	            n=1,	x=1,	c=100,	f=R_Alien},
			{id=E_.DTC,				r=E_.C,			c=100,	f=R_Procedural},
			{id=E_.UT,				n=5000,x=9000,c=100,	f=R_Money},
			{id=E_.NN,				n=50,  x=100,  c=100,	f=R_Money},
		}
    },
    {--- Trader loot    SHOULD BE AN UPDATE NOT AN ADD--TRADERLOOT Copy?-
		id			= 'KILLED_CIV',--Current is -1 standing
		choice		= 'SelectAlways',
		zeroseed	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',				x=1,	c=60,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='WATER2',			n=150,	x=300,	c=40,	f=R_Substance},
			--{id='AF_METAL',			n=110,	x=180,	c=80,	f=R_Substance},
			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_WEAP',	        	x=1,	c=10,	f=R_Product},--Original Loot
            {id='SALVAGE_TECH1',	n=3,	x=15,	c=50,	f=R_Product},
			{id='SALVAGE_TECH2',	n=3,	x=10,	c=40,	f=R_Product},
			{id='SALVAGE_TECH3',	n=3,	x=10,	c=40,	f=R_Product},
			{id='SALVAGE_TECH4',	n=3,	x=8,	c=30,	f=R_Product},
			{id='SALVAGE_TECH5',	n=1,	x=3,	c=20,	f=R_Product},
			{id='SPACEGUNK3',		n=80,	x=150,	c=80,	f=R_Substance},
			{id=E_.DTC,				r=E_.C,			c=100,	f=R_Procedural},
			-- {id=E_.UT,				n=5000,x=10000, c=100,	f=R_Money},
			-- {id=E_.NN,				n=20,  x=30,   c=100,	f=R_Money},
		}
	},
    {--- Police loot    SHOULD BE AN UPDATE NOT AN ADD---
		id			= 'POLICELOOT',
		choice		= 'SelectAlways',
		replacement	= true,
		zeroseed 	= true,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SALVAGE_TECH5',	n=1,	x=8,	c=50,	f=R_Product},
			{id='SALVAGE_TECH6',	n=1,	x=8,	c=50,	f=R_Product},
			{id='SENTINEL_LOOT',	n=1,	x=1,	c=45,	f=R_Product},
			{id='ROBOT1',	        n=60,	x=80,	c=80,	f=R_Substance},
			{id=E_.DTC,				r=E_.C,			c=100,	f=R_Procedural},
			{id=E_.UT,				n=90,   x=160, c=100,	f=R_Money},
			{id=E_.NN,				n=90,  x=160,  c=100,	f=R_Money},
		}
	},
    {--- pirate loot - normal level  SHOULD BE AN UPDATE NOT AN ADD ---
		id			= 'PIRATELOOT',
		choice 		= 'SelectAlways',
		zeroseed 	= true,
		replacement	= false,
		rewardlist	= {
			--id					Min		Max		%		function
			{id='SHIPCHARGE',		    	x=1,	c=60,	f=R_Product},
			{id='SHIP_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='FREI_INV_TOKEN',	n=1,	x=1,	c=15,	f=R_Product},
			{id='WATER2',			n=260,	x=360,	c=50,	f=R_Substance},
			{id='EX_GREEN',			n=150,	x=250,	c=50,	f=R_Substance},
			{id='EX_BLUE',			n=120,	x=220,	c=50,	f=R_Substance},
			--{id='AF_METAL',			n=110,	x=180,	c=80,	f=R_Substance},
			{id='SCRAP_GOODS',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_TECH',	        	x=1,	c=10,	f=R_Product},--Original Loot
			{id='SCRAP_WEAP',	        	x=1,	c=10,	f=R_Product},--Original Loot
            {id='SALVAGE_TECH1',	n=3,	x=15,	c=60,	f=R_Product},
			{id='SALVAGE_TECH2',	n=3,	x=8,	c=50,	f=R_Product},
			{id='SALVAGE_TECH3',	n=2,	x=8,	c=50,	f=R_Product},
			{id='SALVAGE_TECH4',	n=2,	x=8,	c=40,	f=R_Product},
			{id='SALVAGE_TECH5',	n=1,	x=3,	c=30,	f=R_Product},
			{id='SALVAGE_TECH6',	    	x=1,	c=20,	f=R_Product},
            {id='None',	                	x=1,	c=100,	f=R_Alien},
			{id=E_.DTC,				r=E_.U,			c=100,	f=R_Procedural},
			{id=E_.UT,				n=1800,x=3000,c=100,	f=R_Money},
			{id=E_.NN,				n=100,	x=200,	c=100,	f=R_Money},
		}
	},
}

function new_reward:AddTableEntry(rte)
	local function getRewardsList(list)
		local exml = {}
		table.insert(exml, '<Property name="List">')
		for _,rwd in pairs(list) do
			table.insert(exml, rwd.f(rwd))
		end
		table.insert(exml, '</Property>')
		return table.concat(exml)
	end
	return [[
		<Property value="GcGenericRewardTableEntry.xml">
			<Property name="Id" value="]]..rte.id..[["/>
			<Property name="List" value="GcRewardTableItemList.xml">
				<Property name="RewardChoice" value="]]..rte.choice..[["/>
				<Property name="OverrideZeroSeed" value="]]..bool(rte.zeroseed)..[["/>
				]]..getRewardsList(rte.rewardlist)..[[
            </Property>
         </Property>
	]]
end

local function AddNewRewardsToChangeTable()
	local T = {}
	T[1] = { FSKWG={}, REMOVE='Section' }
	local rewards = ''
	for _,rwd in ipairs(new_reward) do
		-- collect exisitng rewards to be removed in FSKWG
		if rwd.replacement then
			table.insert(T[1].FSKWG, {'Id', rwd.id})
		end
		rewards = rewards..new_reward:AddTableEntry(rwd)
	end
	table.insert(T, {
		PRECEDING_KEY_WORDS	= 'GenericTable',
		ADD					= rewards
	})
	return T
end


-- ADD_BLANK =
-- [[
-- <?xml version="1.0" encoding="utf-8"?>

-- <Data template="GcExternalObjectList">
  -- <Property name="Objects" value="GcEnvironmentSpawnData.xml">
    -- <Property name="Creatures" />
    -- <Property name="DistantObjects" />
    -- <Property name="Landmarks" />
    -- <Property name="Objects" />
    -- <Property name="DetailObjects" />
    -- <Property name="SelectableObjects" />
  -- </Property>
-- </Data>
-- ]]	

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= "R.pak",
["MOD_AUTHOR"]				= "Lowkie",
["LUA_AUTHOR"]				= "",
["NMS_VERSION"]				= "3.99",
["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
                        {
							["SPECIAL_KEY_WORDS"]  = {"Id", "KILLED_CIV"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "STD_DEC_EXP"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "STD_DEC_TRA"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "STD_DEC_WAR"},
							["REMOVE"] = "SECTION",
						},
						-- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Id", "POLICELOOT"},
                            -- ["VALUE_CHANGE_TABLE"] = 
							-- {
								-- {"RewardChoice" value="SelectAlways"},
							-- }
                        -- },
						-- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Id", "DE_WATERPLANT_A", "ID", "FUEL1"},
                            -- ["VALUE_CHANGE_TABLE"] = 
							-- {
								-- {"ID", "CATALYST1"},
							-- }
                        -- },
						-- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Id", "DE_WATERPLANT_S", "ID", "WATERPLANT"},
                            -- ["VALUE_CHANGE_TABLE"] = 
							-- {
								-- {"ID", "CATALYST1"},
							-- }
                        -- },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_TGUILD_GIFT2", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_TGUILD_GIFT3", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_TGUILD_GIFT4", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "8"},
								{"AmountMax", "16"}								
							}
                        },							
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "S3_SALVAGE", "Id","BP_SALVAGE",},
							["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"Amount", "6"},
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BP_SALVAGE_ONLY", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "4"},
								{"AmountMax", "12"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BP_SALVAGE", "ID", "BP_SALVAGE"},
							["SECTION_ACTIVE"] = {8},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_COMM_UG_HARD", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "10"},
								{"AmountMax", "10"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MB_LOW", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "15"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MB_MED", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "15"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MB_HIGH", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "5"},
								{"AmountMax", "15"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MB_MEGA", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "15"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_MED", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "15"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_MEGA", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "10"},
								{"AmountMax", "10"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_PIRATEBOARD_A", "ID", "BP_SALVAGE"},
                            ["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMax", "18"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "FUEL2"},
							["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "100"},
								{"AmountMax", "150"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "CATALYST1"},
							["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "100"},
								{"AmountMax", "150"}						
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "OXYGEN"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "100"},
								{"AmountMax", "200"}						
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "AMMO"},
							["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "40"},
								{"AmountMax", "140"}						
							}
                        },
					}
				}
            }
        }
    }
}