dofile([[.\TEST_HELPER_SCRIPTS\SayHello - child_2.lua]]) -- using default ModScript\ModHelperScripts folder and a sub-folder

say = "Hello from SayHello_1.lua using default ModHelperScripts folder!!!"

print("    >>> "..say)

function Test_SayHello_1()
  print(" - SayHello_1.lua              : Test is OK")
end
