------------------------------------------------------------------
local base_parts = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/'

-- to ask the user if he/she wants to configure the script
--   true/false allow/disallow control of configuration for this script
--   unless preempted by the global OPTION '-DoConfigGlobal' in BULDMOD_AUTO.bat
--   or the user say 'N' to all script configuration
DoConfig = true

-- variables that can be configured
version = 33
MyOwnVariable = "The Elephant"
Author = "Wbertro"

-- using a table to define some internal to the script body variable that can be used as usual in a script
GUI = {
		DoConfig = {false,[[Would you like to edit this script? Y/N 
                              ]]},
    version = {version,"The version of the script "},
    MyOwnVariable = {MyOwnVariable,"My new ship name "},
    Author = {Author,"New author name "},
	}

valuesAreAcceptable = false
if DoConfig then
  -- GUIF will return the same type() as provided or the default value
  -- here a boolean was asked for
  DoConfig = GUIF(GUI.DoConfig,1)

  if DoConfig then
    print("     *** DoConfig is true, we will ask the user! ***")
    print("")
    version = GUIF(GUI.version,1)
    MyOwnVariable = GUIF(GUI.MyOwnVariable,1)
    Author = GUIF(GUI.Author,1)

    -- here would be code to check/assert if the values returned
    --   are acceptable for the script
    valuesAreAcceptable = true

  else
    -- no configuration done, values are always acceptable
    valuesAreAcceptable = true
  end
else
  -- no configuration done, values are always acceptable
  valuesAreAcceptable = true
end

if not valuesAreAcceptable then
  print("User entered unacceptable values!")
  print("Exiting script")
  return
end

-- script will fail with problems if this function is uncommented
-- function GUIF(version)
  -- print("TEST GUIF()")
-- end

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME     = 'Test_GUIF_VCT.pak',
  MOD_AUTHOR      = Author,
  NMS_VERSION      = version,
  MODIFICATIONS     = {{
    MBIN_CHANGE_TABLE  = {
      {
        MBIN_FILE_SOURCE  = base_parts..'BIOROOM/ENTITIES/INTERACTION.ENTITY.MBIN',
        EXML_CHANGE_TABLE  = {
          {
            VALUE_CHANGE_TABLE   = {
              {'Radius', "24", }, -- a normal change

              -- using a short string prompt, requested input appears on the same line
              
              -- This one, we want to ask the user, so we use DoConfig
              
              {'Radius', DoConfig and "GUIF( {24,[[Radius (default: 24)]]} )" or 24, }, -- asking for user input, a number

              -- using a short string prompt, requested input appears on the same line
              
              -- This one, we want to ask the user, so we use DoConfig
              
              {'SimpleInteractionType', DoConfig and [[GUIF( {"Interact",[=[SimpleInteractionType (default: Interact)
              Enter 'CallShip' or 'CallVehicle'
              ]=]} , 1)]] or "Interact", }, -- asking for user input, a string

              -- using a long string prompt, requested input appears on the same line
              -- asking for user input, a string
              -- BUT with 'True' or 'False' (case does not matter), it is translated to a boolean internally
              
              -- This one, we 'always' want to ask the user regardless, so we do not use DoConfig
              
              {'InteractIsCrime', [[GUIF( {"False",[=[InteractIsCrime (default: False)
              Enter 'Y' if you want Interaction as a crime or press ENTER for default value ]=]} ,1)]], },

              -- using a long string prompt, requested input appears on the same line
              -- asking for user input, a boolean
              -- NOTICE: we are using the LUA boolean 'false' here, not the string 'False'
              --         same goes for the lUA boolean 'true', not the string 'True'
              -- they will be translated to the strings "True" and "False"
              
              -- This one, we want to ask the user, so we use DoConfig and NMS "False" as default if no DoConfig
              
              {'InteractIsCrime', DoConfig and [[GUIF( {false,[=[InteractIsCrime (default: false)
              Enter 'Y' if you want Interaction as a crime or 'N' for default ]=]} ,1)]] or "False", },

              -- using a long string prompt to 'push' the requested input to a new line
              
              -- This one, we 'always' want to ask the user regardless, so we do not use DoConfig
              
              {'Gravity', [[GUIF( {"33",[=[Gravity (default: 33)
              ]=]} ,1)]], }, -- asking for user input, entered as a string but being a number, a number will be asked 

              {'Gravity', 15,}, -- another normal change
            },
          },
        },
      },
      
}}}} --7 global replacements
