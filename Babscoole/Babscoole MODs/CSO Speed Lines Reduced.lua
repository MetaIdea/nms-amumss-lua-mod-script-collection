NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "CSO Speed Lines Reduced",
  ["MOD_DESCRIPTION"] = "Speed lines numbers/length/width/transparency reduced by ~70%",
  ["MOD_AUTHOR"]      = "NeptuneX3 & Babscoole",
  ["NMS_VERSION"]     = "6.10",
  ["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        -- Pulse speed --
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number Of Particles",300},        -- Vanilla 1000, mod default 300
                --{"Radius",7000},            -- Vanilla 7000, mod default 7000 // radius of the cylinder of particles, the lower the closer from the ship
                {"Length",3000},            -- Vanilla 10000, mod default 2000 // particles length
                --{"Remove Cylinder Radius",2000},    -- Vanilla 2000, mod default 2000 // determines the radius of the clear view in front of the ship
                {"Width",150},              -- Vanilla 500, mod default 150 // particles width
                {"Alpha",0.15},             -- Vanilla 0.5, mod default 0.15 // particles transparency
              },
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number Of Particles",600},      -- Vanilla 2000, mod default 600
                --{"Radius",20000},         -- Vanilla 20000, mod default 20000
                {"Length",6000},          -- Vanilla 20000, mod default 6000
                --{"Remove Cylinder Radius",1000},  -- Vanilla 1000, mod default 1000
                {"Width",36},           -- Vanilla 120, mod default 40
                {"Alpha",0.3},            -- Vanilla 1, mod default 0.3
              },
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES3.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number Of Particles",600},      -- Vanilla 2000, mod default 600
                --{"Radius",20000},         -- Vanilla 20000, mod default 20000
                {"Length",3000},          -- Vanilla 10000, mod default 3000
                --{"Remove Cylinder Radius",2000},  -- Vanilla 2000, mod default 2000
                {"Width",111},            -- Vanilla 370, mod default 111
                {"Alpha",0.3},            -- Vanilla 1, mod default 0.3
              },
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES4.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number Of Particles",90},     -- Vanilla 300, mod default 90
                --{"Radius",1000},          -- Vanilla 1000, mod default 1000
                {"Length",15},            -- Vanilla 50, mod default 15
                --{"Remove Cylinder Radius",2},   -- Vanilla 2, mod default 2
                {"Width",6},            -- Vanilla 20, mod default 6
                {"Alpha",0.3},            -- Vanilla 1, mod default 0.3
              },
            },
          },
        },
        -- Cruise/Boost speed --
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\SPACE.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number Of Particles",1500},   -- Vanilla 5000, mod default 1500
                --{"Radius",400},       -- Vanilla 400, mod default 400
                --{"Length",6},         -- Vanilla 6, mod default 6
                --{"Remove Cylinder Radius",0}, -- Vanilla 0, mod default 0
                --{"Width",1},          -- Vanilla 1, mod default 1
                {"Alpha",0.2},          -- Vanilla 0.4, mod default 0.2
                --{"MinVisibleSpeed",0},    -- Vanilla 0, mod default 0
              },
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\SPACE2.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number Of Particles",1200},   -- Vanilla 4000, mod default 1200
                --{"Radius",220},       -- Vanilla 220, mod default 220
                --{"Length",3.5},       -- Vanilla 3.5, mod default 3.5
                --{"Remove Cylinder Radius",5}, -- Vanilla 5, mod default 5
                --{"Width",0.4},        -- Vanilla 0.4, mod default 0.4
                {"Alpha",0.25},         -- Vanilla 0.5, mod default 0.25
                --{"Min Visible Speed",0},    -- Vanilla 0, mod default 0
              },
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\SPACEBIG.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number Of Particles",750},    -- Vanilla 2500, mod default 750
                --{"Radius",300},       -- Vanilla 300, mod default 300
                --{"Length",4},         -- Vanilla 4, mod default 4
                --{"Remove Cylinder Radius",10},  -- Vanilla 10, mod default 10
                --{"Width",4},          -- Vanilla 4, mod default 4
                {"Alpha",0.25},         -- Vanilla 0.5, mod default 0.25
                --{"Min Visible Speed",15},   -- Vanilla 15, mod default 15
              },
            },
          },
        },
      },
    },
  },
}