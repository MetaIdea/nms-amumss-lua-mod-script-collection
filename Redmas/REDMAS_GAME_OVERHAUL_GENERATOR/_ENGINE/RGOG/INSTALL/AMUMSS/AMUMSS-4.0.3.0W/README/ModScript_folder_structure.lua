--BASIC ModScript structure

ModExtraFilesToInclude --files to be added to ALL created paks

ModScript
  scripts in ModScript--creates Individual paks
  
  \sub-folder_1 --like PlayMods
    scripts in sub-folder --creates Individual paks      

    \A1 --contains scripts and MEFTI, creates Individual paks
      \MEFTI --files to be added to these paks
        ... --paths and files the same or similar to NMS 
        \... --paths and files the same or similar to NMS 
      scripts

    \A2 --contains scripts and MEFTI, creates a COMBINE pak due to flag
      \MEFTI --files to be added to this COMBINE pak
        ... --paths and files the same or similar to NMS 
        \... --paths and files the same or similar to NMS 
      ___COMBINE.txt --auto_COMBINE flag
      scripts

    \B --contains only scripts, creates Individual paks
      scripts

    \C --contains only scripts, creates a COMBINE pak due to flag
      ___COMBINE.txt --auto_COMBINE flag
      scripts

    \D --IGNORED by AMUMSS due to flag
      ___DONOTUSE.txt --DONOTUSE flag
      -- anything here

  \sub-folder_2 --like MyMods, IGNORED by AMUMSS due to flag
    ___DONOTUSE.txt --DONOTUSE flag
    -- anything here

    \D --IGNORED by AMUMSS due to flag
      \E --IGNORED by AMUMSS due to flag
        ___DONOTUSE.txt --DONOTUSE flag
        anything here
      \F --flagged as '[NOTICE] TOO DEEP' and IGNORED (paste DONOTUSE flag to cancel NOTICE)
        anything here
      
  \sub-folder_3 --like OtherMods
    scripts in sub-folder --creates Individual paks      
    anything --like in sub-folder_1
  
  ... --any other sun-folders