Mod_Version = "1.0"

-- How to Add More Prices:
-- add another price at the end of MultitoolSlotPrices or ShipSlotPrices like:

--   2500000, -- 29 -- 90000000
--   3000000, -- 30 --
-- }

-- then add another cost line in the function for MultitoolCosts or ShipCosts like:

--           <Property value="]]..cost[29]..[[" />
--           <Property value="]]..cost[30]..[[" />
--         </Property>

-- this example adds a 30th price to Multitools
-- the last price will be whats used for the cap price when buying slots pass that number. 30 price would be used for 31, 32, 33... on the Multitool.

MultitoolSlotPrices =
{-- Price,  Slot,   Original Price
  50000,   -- 1  -- 100000
  60000,   -- 2  -- 100000
  70000,   -- 3  -- 100000
  80000,   -- 4  -- 100000
  90000,   -- 5  -- 100000
  100000,  -- 6  -- 100000
  110000,  -- 7  -- 110000
  120000,  -- 8  -- 120000
  130000,  -- 9  -- 130000
  140000,  -- 10 -- 140000
  150000,  -- 11 -- 150000
  200000,  -- 12 -- 200000
  250000,  -- 13 -- 250000
  300000,  -- 14 -- 250000
  350000,  -- 15 -- 500000
  400000,  -- 16 -- 750000
  450000,  -- 17 -- 1000000
  500000,  -- 18 -- 2000000
  600000,  -- 19 -- 5000000
  700000,  -- 20 -- 8000000
  800000,  -- 21 -- 10000000
  900000,  -- 22 -- 20000000
  1000000, -- 23 -- 30000000
  1250000, -- 24 -- 40000000
  1500000, -- 25 -- 50000000
  1750000, -- 26 -- 60000000
  2000000, -- 27 -- 70000000
  2250000, -- 28 -- 80000000
  2500000, -- 29 -- 90000000
} -- all slots after 24 will also cost 1mil

ShipSlotPrices = -- Prices and Slots for ships are general, tech, and cargo tabs added together. Ex: 10 general, 5 tech, 5 cargo = 20 slots so the next one will cost the 21st price
{-- Price,  Slot,   Original Price
  100000,   -- 1  -- 100000
  100000,   -- 2  -- 100000
  100000,   -- 3  -- 100000
  100000,   -- 4  -- 100000
  100000,   -- 5  -- 100000
  100000,   -- 6  -- 100000
  100000,   -- 7  -- 100000
  100000,   -- 8  -- 100000
  100000,   -- 9  -- 100000
  100000,   -- 10 -- 100000
  100000,   -- 11 -- 100000
  100000,   -- 12 -- 100000
  100000,   -- 13 -- 100000
  100000,   -- 14 -- 100000
  100000,   -- 15 -- 100000
  100000,   -- 16 -- 100000
  200000,   -- 17 -- 250000
  300000,   -- 18 -- 500000
  400000,   -- 19 -- 750000
  500000,   -- 20 -- 1000000
  600000,   -- 21 -- 2000000
  700000,   -- 22 -- 3000000
  800000,   -- 23 -- 4000000
  900000,   -- 24 -- 5000000
  1000000,  -- 25 -- 6000000
  2000000,  -- 26 -- 7000000
  3000000,  -- 27 -- 8000000
  4000000,  -- 28 -- 9000000
  5000000,  -- 29 -- 10000000
  6000000,  -- 30 -- 11000000
  7000000,  -- 31 -- 12000000
  8000000,  -- 32 -- 13000000
  9000000,  -- 33 -- 14000000
  10000000, -- 34 -- 15000000
  11000000, -- 35 -- 16000000
  12000000, -- 36 -- 17000000
  13000000, -- 37 -- 18000000
  14000000, -- 38 -- 19000000
  15000000, -- 39 -- 20000000
  16000000, -- 40 -- 21000000
  17000000, -- 41 -- 22000000
  18000000, -- 42 -- 23000000
  19000000, -- 43 -- 24000000
  20000000, -- 44 -- 25000000
  21000000, -- 45 -- 30000000
  22000000, -- 46 -- 35000000
  23000000, -- 47 -- 40000000
  24000000, -- 48 -- 45000000
  25000000, -- 49 -- 50000000
  25000000, -- 50 -- 55000000
} -- all slots after 50 will also cost 25mil

-- Weapon Costs Function --
local function MultitoolCosts(cost)
return
[[
        <Property name="Costs">
          <Property value="]]..cost[1]..[[" />
          <Property value="]]..cost[2]..[[" />
          <Property value="]]..cost[3]..[[" />
          <Property value="]]..cost[4]..[[" />
          <Property value="]]..cost[5]..[[" />
          <Property value="]]..cost[6]..[[" />
          <Property value="]]..cost[7]..[[" />
          <Property value="]]..cost[8]..[[" />
          <Property value="]]..cost[9]..[[" />
          <Property value="]]..cost[10]..[[" />
          <Property value="]]..cost[11]..[[" />
          <Property value="]]..cost[12]..[[" />
          <Property value="]]..cost[13]..[[" />
          <Property value="]]..cost[14]..[[" />
          <Property value="]]..cost[15]..[[" />
          <Property value="]]..cost[16]..[[" />
          <Property value="]]..cost[17]..[[" />
          <Property value="]]..cost[18]..[[" />
          <Property value="]]..cost[19]..[[" />
          <Property value="]]..cost[20]..[[" />
          <Property value="]]..cost[21]..[[" />
          <Property value="]]..cost[22]..[[" />
          <Property value="]]..cost[23]..[[" />
          <Property value="]]..cost[24]..[[" />
          <Property value="]]..cost[25]..[[" />
          <Property value="]]..cost[26]..[[" />
          <Property value="]]..cost[27]..[[" />
          <Property value="]]..cost[28]..[[" />
          <Property value="]]..cost[29]..[[" />
        </Property>
]]
end
-- Ship Costs Function --
local function ShipCosts(cost)
return
[[
        <Property name="Costs">
          <Property value="]]..cost[1]..[[" />
          <Property value="]]..cost[2]..[[" />
          <Property value="]]..cost[3]..[[" />
          <Property value="]]..cost[4]..[[" />
          <Property value="]]..cost[5]..[[" />
          <Property value="]]..cost[6]..[[" />
          <Property value="]]..cost[7]..[[" />
          <Property value="]]..cost[8]..[[" />
          <Property value="]]..cost[9]..[[" />
          <Property value="]]..cost[10]..[[" />
          <Property value="]]..cost[11]..[[" />
          <Property value="]]..cost[12]..[[" />
          <Property value="]]..cost[13]..[[" />
          <Property value="]]..cost[14]..[[" />
          <Property value="]]..cost[15]..[[" />
          <Property value="]]..cost[16]..[[" />
          <Property value="]]..cost[17]..[[" />
          <Property value="]]..cost[18]..[[" />
          <Property value="]]..cost[19]..[[" />
          <Property value="]]..cost[20]..[[" />
          <Property value="]]..cost[21]..[[" />
          <Property value="]]..cost[22]..[[" />
          <Property value="]]..cost[23]..[[" />
          <Property value="]]..cost[24]..[[" />
          <Property value="]]..cost[25]..[[" />
          <Property value="]]..cost[26]..[[" />
          <Property value="]]..cost[27]..[[" />
          <Property value="]]..cost[28]..[[" />
          <Property value="]]..cost[29]..[[" />
          <Property value="]]..cost[30]..[[" />
          <Property value="]]..cost[31]..[[" />
          <Property value="]]..cost[32]..[[" />
          <Property value="]]..cost[33]..[[" />
          <Property value="]]..cost[34]..[[" />
          <Property value="]]..cost[35]..[[" />
          <Property value="]]..cost[36]..[[" />
          <Property value="]]..cost[37]..[[" />
          <Property value="]]..cost[38]..[[" />
          <Property value="]]..cost[39]..[[" />
          <Property value="]]..cost[40]..[[" />
          <Property value="]]..cost[41]..[[" />
          <Property value="]]..cost[42]..[[" />
          <Property value="]]..cost[43]..[[" />
          <Property value="]]..cost[44]..[[" />
          <Property value="]]..cost[45]..[[" />
          <Property value="]]..cost[46]..[[" />
          <Property value="]]..cost[47]..[[" />
          <Property value="]]..cost[48]..[[" />
          <Property value="]]..cost[49]..[[" />
          <Property value="]]..cost[50]..[[" />
        </Property>
]]
end

-- File Settings --
FileName    = "Cheaper Multitool and Ship Slot Upgrades "..Mod_Version..".pak"
ModAuthor   = "JustRuthless"
LuaAuthor   = "JustRuthless"
Description = ""
NMS_Version = "Leviathan 3.93"

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/COSTTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]    = FileName,
  ["MOD_AUTHOR"]      = ModAuthor,
  ["LUA_AUTHOR"]      = LuaAuthor,
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
            { -- remove original multitool dialogue option display price
              ["SPECIAL_KEY_WORDS"]   = {"Id", "C_INV_WEAP_C"},
              ["PRECEDING_KEY_WORDS"] = {"Costs"},
              ["REMOVE"] = "SECTION",
            },
            { -- remove original multitool menu prices
              ["SPECIAL_KEY_WORDS"]   = {"Id", "C_INV_WEAP_CR"},
              ["PRECEDING_KEY_WORDS"] = {"Costs"},
              ["REMOVE"] = "SECTION",
            },
            { -- remove original ship dialogue option display price
              ["SPECIAL_KEY_WORDS"]   = {"Id", "C_INV_SAL_CASH"},
              ["PRECEDING_KEY_WORDS"] = {"Costs"},
              ["REMOVE"] = "SECTION",
            },
            { -- remove original ship menu prices
              ["SPECIAL_KEY_WORDS"]   = {"Id", "C_INV_SAL_CASHR"},
              ["PRECEDING_KEY_WORDS"] = {"Costs"},
              ["REMOVE"] = "SECTION",
            },
            { -- add new multitool dialogue option display price
              ["SPECIAL_KEY_WORDS"]   = {"Id", "C_INV_WEAP_C"},
              ["PRECEDING_KEY_WORDS"] = {"Cost"},
              ["ADD"] = MultitoolCosts(MultitoolSlotPrices),
            },
            { -- add new multitool menu prices
              ["SPECIAL_KEY_WORDS"]   = {"Id", "C_INV_WEAP_CR"},
              ["PRECEDING_KEY_WORDS"] = {"Cost"},
              ["ADD"] = MultitoolCosts(MultitoolSlotPrices),
            },
            { -- add new ship dialogue option display price
              ["SPECIAL_KEY_WORDS"]   = {"Id", "C_INV_SAL_CASH"},
              ["PRECEDING_KEY_WORDS"] = {"Cost"},
              ["ADD"] = ShipCosts(ShipSlotPrices),
            },
            { -- add new ship menu prices
              ["SPECIAL_KEY_WORDS"]   = {"Id", "C_INV_SAL_CASHR"},
              ["PRECEDING_KEY_WORDS"] = {"Cost"},
              ["ADD"] = ShipCosts(ShipSlotPrices),
            },
          }
        },
      }
    },
  }
}