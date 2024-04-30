------------------------------------------------------------------
local base_parts = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/'

-- General notes:
  -- you can use 'xyz', "xyz" or [[xyz]]
  --    inside "" or '' string: use \\ (escaping \) or / when a path is used
  --    inside     [[]] string: use \ or / when a path is used

print("")
print([[ SEE 'TEST_SCRIPTS\Files to use with Test_DOFILE' for required auxiliary scripts]])
print([[ 
>>> Normal folder structure used by this script to test dofile()
    -- for testing explicit folder fullpath
    C:\ root
        Test_dofile folder
            SayHello - child_5.lua script
    
    -- for testing all other variations
    Any drive root:\
        other folder(s) (optional)
            AMUMSS MAIN folder or sub-folder
                TEST_HELPER_SCRIPTS_MAIN sub-folder
                ModScript
                    ModHelperScripts
                        TEST_HELPER_SCRIPTS sub-folder
                            SayHello - child_2.lua script
                        SayHello_1.lua script
                        SayHello - child_4.lua script
                    TEST_SCRIPTS
                        TEST_HELPER_SCRIPTS_local sub-folder
                            SayHello - child_2_local.lua script
                            ___HIDDEN.txt (used by AMM)
                            ___DONOTUSE.txt (used by AMM)
                    Test_DOFILE_GUIF.lua script

]])

-- Start of dofile loading

      print([[-- using default ModScript\ModHelperScripts folder
        --   contains function Test_SayHello_1()
        --     which calls dofile '.\TEST_HELPER_SCRIPTS\SayHello - child_2.lua', a sub-folder of 'ModScript\ModHelperScripts'
        --       which contains function Test_SayHello_child_2()

      -- NOTE: WORKS if 'SayHello_1.lua' EXISTS in 'ModScript\ModHelperScripts' sub-folder]])
        print([[dofile Loading: 'SayHello_1.lua']])
        print([[-- NOTE: WORKS if 'SayHello - child_2.lua' EXISTS in 'ModScript\ModHelperScripts\TEST_HELPER_SCRIPTS' sub-folder]])
        print([[  now 'SayHello_1.lua' is dofile Loading: '.\TEST_HELPER_SCRIPTS\SayHello - child_2.lua']])
        dofile([[SayHello_1.lua]])

        print()
        print([[-- using relative path to script sub-folder
        --   contains function Test_SayHello_child_2_local()]])
        print([[dofile Loading: '.\TEST_HELPER_SCRIPTS_local\SayHello - child_2_local.lua']])
        dofile([[.\TEST_HELPER_SCRIPTS_local\SayHello - child_2_local.lua]])

        print()
        print([[-- using relative folder to ModScript\ModHelperScripts
        --     1st ..\ gets out of ModHelperScripts
        --     2nd ..\ gets out of ModScript
        --     we are now in AMUMSS MAIN folder
        --     then gets into TEST_HELPER_SCRIPTS sub-folder to access SayHello - child_3.lua
        --   contains function Test_SayHello_child_3()

        -- NOTE: WORKS if 'TEST_HELPER_SCRIPTS_MAIN\SayHello - child_3.lua' EXISTS in your AMUMSS main folder]])
        print([[dofile Loading: '..\..\TEST_HELPER_SCRIPTS_MAIN\SayHello - child_3.lua']])
        dofile([[..\..\TEST_HELPER_SCRIPTS_MAIN\SayHello - child_3.lua]])

        print()
        print([[-- using fullpath folder with %AMUMSS_PATH% internally replaced by the actual AMUMSS MAIN folder path
        --   contains function Test_SayHello_child_4()]])
        print([[dofile Loading: '%AMUMSS_PATH%\ModScript\ModHelperScripts\SayHello - child_4.lua']])
        dofile([[%AMUMSS_PATH%\ModScript\ModHelperScripts\SayHello - child_4.lua]])

        print()
        print([[-- using fullpath folder, an explicit folder fullpath
        --   contains function Test_SayHello_child_5()]])
        print([[dofile Loading: 'C:\Test_dofile\SayHello - child_5.lua']])
        dofile([[C:\Test dofile\SayHello - child_5.lua]])

        print()
        print([[-- DOES NOT EXIST, WILL NOT LOAD]])
        print([[dofile Loading: 'X_SayHello.lua']])
        dofile([[X_SayHello.lua]]) -- WILL NOT BE FOUND, does not exist

-- END of dofile loading

print("")
print(">>> Testing dofile() calling variations...")
if type(Test_SayHello_1) == "function" then
  Test_SayHello_1()
else
  printf("  ==> function 'Test_SayHello_1()' does not exist")
end

if type(Test_SayHello_child_2) == "function" then
  Test_SayHello_child_2()
else
  printf("  ==> function 'Test_SayHello_child_2()' does not exist")
end

if type(Test_SayHello_child_2_local) == "function" then
  Test_SayHello_child_2_local()
else
  printf("  ==> function 'Test_SayHello_child_2_local()' does not exist")
end

if type(Test_SayHello_child_3) == "function" then
  Test_SayHello_child_3()
else
  printf("  ==> function 'Test_SayHello_child_3()' does not exist")
end

if type(Test_SayHello_child_4) == "function" then
  Test_SayHello_child_4()
else
  printf("  ==> function 'Test_SayHello_child_4()' does not exist")
end

if type(Test_SayHello_child_5) == "function" then
  Test_SayHello_child_5()
else
  printf("  ==> function 'Test_SayHello_child_5()' does not exist")
end

-- test unused variable
local IamAnUnusedvariable

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
    },
  }},
} --7 global replacements
