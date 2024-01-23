FOR REAL TEST: turn OFF -SerializeScript in BUILDMOD_AUTO.bat

##### ****************************************************************   "PlayMods" with --SerializeScript ON
These Normal Results with AMUMSS 4.2.2.0W and NMS version 107389:

     0 [ERROR] detected

     4 [WARNING] raised

    23 [NOTICE]s raised (due to selene and DEBUG)
           NOTICES produce good PAK files but alert you to something.

     - CONFLICT Detection Skipped at user request

             >>> See "REPORT.lua" <<<

 ===>>> TOTAL TIME to complete: 00:22:14, next 15:51
 AMUMSS 4.2.1.4W ==> 21:48, next 18:32 on G:
 AMUMSS 4.2.2.0W ==> 36:45, next 26:57 on K:
 AMUMSS 4.2.3.0W ==> ??:??, next 22:57 on G:
 AMUMSS 4.3.0.1W ==> 23:55, next  on G:
 never issued: AMUMSS 4.3.1.1W ==> 18:55, next 17:54 on G: without Serializing
 AMUMSS 4.3.2.0W ==> 17:07, next 16:52, 16:32 on G: with Serializing 
  
##### ****************************************************************   "PubMods" with --SerializeScript ON
 ===>>> TOTAL TIME to complete: 1st pass: 17:01, next 10:59
 AMUMSS 4.2.1.4W ==> 15:25, next 11:05 on G:
 AMUMSS 4.2.2.0W ==> 10:53, next 10:23 on K:
 AMUMSS 4.2.3.0W ==> 09:39, next  on G:
 AMUMSS 4.3.0.0W ==> 10:15, next  on G:
 AMUMSS 4.3.0.1W ==> 10:21, next  9:20 on G: less 'Seed Generator'
 never issued: AMUMSS 4.3.1.1W ==> 21:10, next  on G: with 'Seed Generator'
 AMUMSS 4.3.2.0W ==> 12:08, next  11:35, 11:02, 11:51 on G: less 'Seed Generator'

with --SerializeScript OFF
 AMUMSS 4.3.1.1W ==> 11:54, next  on G: less 'Seed Generator'

#####  "PubMods"
These Normal Results with AMUMSS 4.2.1.5W and NMS version 103250:

>>> No script failed processing!

     0 [ERROR] detected

     0 [WARNING] raised

     0 [NOTICE] raised
     
 ===>>> TOTAL TIME to complete: 1st pass: 17:56, next 13:06
 
##### ****************************************************************   "TEST_SCRIPTS"
Much faster with GetFreshSources CODE

[ATTENTION] Failed scripts report:
   - TEST_ALL\TEST_SCRIPTS\Test_FUNC.lua: Failed to compile some/all files in MODBUILDER\MOD
   - TEST_ALL\TEST_SCRIPTS\Test_GNH.lua: Failed to compile some/all files in MODBUILDER\MOD
   - TEST_ALL\TEST_SCRIPTS\Test_LINE_OFFSET_0.lua: Failed to compile some/all files in MODBUILDER\MOD
   - TEST_ALL\TEST_SCRIPTS\Test_VCT_regularExpression.lua: Failed to compile some/all files in MODBUILDER\MOD

     8 [ERROR]s detected
           ERRORS will NOT produce MBIN files and a complete PAK file may not have been created.
           You need to correct the error first!

   133 [WARNING]s raised -- 128 on 1st pass (133 on 2nd) - 125
           WARNINGS may produce good or bad PAK files.  You have to be the judge!

    62 [NOTICE]s raised -- 61 - 58
           NOTICES produce good PAK files but alert you to something.

 ===>>> TOTAL TIME to complete: 1st pass: 5:37, next 5:38, 5:33, 6:05
These Normal Results with AMUMSS 4.2.1.5W and NMS version 103250:
These Normal Results with AMUMSS 4.2.2.0W and NMS version 107916:
These Normal Results with AMUMSS 4.3.0.0W and NMS version 108783:
These Normal Results with AMUMSS 4.3.0.1W and NMS version 111039: next 3:34
These Normal Results with AMUMSS 4.3.1.1W and NMS version 111039: next 3:37
These Normal Results with AMUMSS 4.3.2.0W and NMS version 115196: 3:54 next 3:08
ADDED one test script (+10 NOTICE) ==> +0:20
Made H local to functions
These Normal Results,  DEV, with AMUMSS 4.3.2.0W and NMS version 115196: next 3:34, 3:31, 3:13, 3:21
These Normal Results, LEAN, with AMUMSS 4.3.2.0W and NMS version 115196: next 3:09
 

                     @@@  OLDER  @@@

##### "TEST_SCRIPTS"
Much faster with IncrementalBuilds = 3 AND gFastPAKlist[]
These Normal Results with AMUMSS 4.2.1.5W and NMS version 103250:

[ATTENTION] Failed scripts report:
   - TEST_ALL\TEST_SCRIPTS\Test_FUNC.lua: Failed to compile some/all files in MODBUILDER\MOD
   - TEST_ALL\TEST_SCRIPTS\Test_GNH.lua: Failed to compile some/all files in MODBUILDER\MOD
   - TEST_ALL\TEST_SCRIPTS\Test_LINE_OFFSET_0.lua: Failed to compile some/all files in MODBUILDER\MOD
   - TEST_ALL\TEST_SCRIPTS\Test_VCT_regularExpression.lua: Failed to compile some/all files in MODBUILDER\MOD

     6 [ERROR]s detected
           ERRORS will NOT produce MBIN files and a complete PAK file may not have been created.
           You need to correct the error first!

   119 [WARNING]s raised
           WARNINGS may produce good or bad PAK files.  You have to be the judge!

    36 [NOTICE]s raised
           NOTICES produce good PAK files but alert you to something.

 ===>>> TOTAL TIME to complete: 1st pass: 7:45, next 5:12
 
#####  "PlayMods"
These Normal Results with AMUMSS 4.2.1.5W and NMS version 103250:

>>> No script failed processing!

     0 [ERROR] detected

    20 [WARNING]s raised
           WARNINGS may produce good or bad PAK files.  You have to be the judge!

    20 [NOTICE]s raised
           NOTICES produce good PAK files but alert you to something.

 ===>>> TOTAL TIME to complete: 1st pass: 8:59, next 6:27/6.43
 
##### "TEST_SCRIPTS"
These Normal Results with AMUMSS 4.2.1.5W and NMS version 103250:

 [ATTENTION] Failed scripts report:
   - TEST_ALL\TEST_SCRIPTS\Test_FUNC.lua: Failed to compile some/all files in MODBUILDER\MOD
   - TEST_ALL\TEST_SCRIPTS\Test_GNH.lua: Failed to compile some/all files in MODBUILDER\MOD
   - TEST_ALL\TEST_SCRIPTS\Test_LINE_OFFSET_0.lua: Failed to compile some/all files in MODBUILDER\MOD
   - TEST_ALL\TEST_SCRIPTS\Test_VCT_regularExpression.lua: Failed to compile some/all files in MODBUILDER\MOD

     6 [ERROR]s detected
           ERRORS will NOT produce MBIN files and a complete PAK file may not have been created.
           You need to correct the error first!

   119 [WARNING]s raised
           WARNINGS may produce good or bad PAK files.  You have to be the judge!

    36 [NOTICE]s raised
           NOTICES produce good PAK files but alert you to something.

 ===>>> TOTAL TIME to complete: 00:08:12

#####
These Normal Results with AMUMSS 4.1.0.0W and NMS version 4.08.0.1-10044304-97029:

[ATTENTION] Failed scripts report:
   - TEST_ALL\TEST_SCRIPTS\Test_VCT_regularExpression.lua: Failed to compile some/all files in MODBUILDER\MOD

     1 [ERROR] detected
           ERRORS will NOT produce MBIN files and a complete PAK file may not have been created.
           You need to correct the error first!

    31 [WARNING]s raised
           WARNINGS may produce good or bad PAK files.  You have to be the judge!

    22 [NOTICE]s raised
           NOTICES produce good PAK files but alert you to something.

 ===>>> TOTAL TIME to complete: 00:05:11

#####
These Normal Results with NMS version 4.08.0.1-10044304-97029:

[ATTENTION] Failed scripts report:
   - TEST_ALL\TEST_SCRIPTS\Test_VCT_regularExpression.lua: Failed to compile some/all files in MODBUILDER\MOD

     2 [ERROR]s detected
           ERRORS will NOT produce MBIN files and a complete PAK file may not have been created.
           You need to correct the error first!

    32 [WARNING]s raised
           WARNINGS may produce good or bad PAK files.  You have to be the judge!

    23 [NOTICE]s raised
           NOTICES produce good PAK files but alert you to something.

#####
These Normal Results with NMS version 3.99.0.1-9331830-91759:

[ATTENTION] Failed scripts report:
   - TEST_ALL\TEST_SCRIPTS\Test_VCT_regularExpression.lua: Failed to compile some/all files in MODBUILDER\MOD

     2 [ERROR]s detected
           ERRORS will NOT produce MBIN files and a complete PAK file may not have been created.
           You need to correct the error first!

    28 [WARNING]s raised
           WARNINGS may produce good or bad PAK files.  You have to be the judge!

    19 [NOTICE]s raised
           NOTICES produce good PAK files but alert you to something.
