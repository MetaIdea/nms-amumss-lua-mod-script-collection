NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Clearer Names",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.60",
["MOD_DESCRIPTION"] = "This mod replaces biome names, weather names, sentinel threat level, conflict, economy level, economy type, companion age, everything that has meaningless variety, only in flavor",
["MODIFICATIONS"]   =
  {
  },
["ADD_FILES"] =
  {
    {
      ["FILE_DESTINATION"] = "LocTable.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkLocalisationTable">
  <Property name="Table">
    <Property name="Table" value="TkLocalisationEntry" _id="SCORCHED1">
      <Property name="Id" value="SCORCHED1" />
      <Property name="English" value="Scorched %PLANETCLASS%" />
      <Property name="USEnglish" value="Scorched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SCORCHED2">
      <Property name="Id" value="SCORCHED2" />
      <Property name="English" value="Scorched %PLANETCLASS%" />
      <Property name="USEnglish" value="Scorched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SCORCHED3">
      <Property name="Id" value="SCORCHED3" />
      <Property name="English" value="Scorched %PLANETCLASS%" />
      <Property name="USEnglish" value="Scorched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SCORCHED4">
      <Property name="Id" value="SCORCHED4" />
      <Property name="English" value="Scorched %PLANETCLASS%" />
      <Property name="USEnglish" value="Scorched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SCORCHED5">
      <Property name="Id" value="SCORCHED5" />
      <Property name="English" value="Scorched %PLANETCLASS%" />
      <Property name="USEnglish" value="Scorched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SCORCHED6">
      <Property name="Id" value="SCORCHED6" />
      <Property name="English" value="Scorched %PLANETCLASS%" />
      <Property name="USEnglish" value="Scorched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SCORCHED7">
      <Property name="Id" value="SCORCHED7" />
      <Property name="English" value="Scorched %PLANETCLASS%" />
      <Property name="USEnglish" value="Scorched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SCORCHED8">
      <Property name="Id" value="SCORCHED8" />
      <Property name="English" value="Scorched %PLANETCLASS%" />
      <Property name="USEnglish" value="Scorched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SCORCHED9">
      <Property name="Id" value="SCORCHED9" />
      <Property name="English" value="Scorched %PLANETCLASS%" />
      <Property name="USEnglish" value="Scorched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SCORCHED10">
      <Property name="Id" value="SCORCHED10" />
      <Property name="English" value="Scorched %PLANETCLASS%" />
      <Property name="USEnglish" value="Scorched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="FROZEN1">
      <Property name="Id" value="FROZEN1" />
      <Property name="English" value="Frozen %PLANETCLASS%" />
      <Property name="USEnglish" value="Frozen %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="FROZEN2">
      <Property name="Id" value="FROZEN2" />
      <Property name="English" value="Frozen %PLANETCLASS%" />
      <Property name="USEnglish" value="Frozen %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="FROZEN3">
      <Property name="Id" value="FROZEN3" />
      <Property name="English" value="Frozen %PLANETCLASS%" />
      <Property name="USEnglish" value="Frozen %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="FROZEN4">
      <Property name="Id" value="FROZEN4" />
      <Property name="English" value="Frozen %PLANETCLASS%" />
      <Property name="USEnglish" value="Frozen %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="FROZEN5">
      <Property name="Id" value="FROZEN5" />
      <Property name="English" value="Frozen %PLANETCLASS%" />
      <Property name="USEnglish" value="Frozen %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="FROZEN6">
      <Property name="Id" value="FROZEN6" />
      <Property name="English" value="Frozen %PLANETCLASS%" />
      <Property name="USEnglish" value="Frozen %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="FROZEN7">
      <Property name="Id" value="FROZEN7" />
      <Property name="English" value="Frozen %PLANETCLASS%" />
      <Property name="USEnglish" value="Frozen %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="FROZEN8">
      <Property name="Id" value="FROZEN8" />
      <Property name="English" value="Frozen %PLANETCLASS%" />
      <Property name="USEnglish" value="Frozen %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="FROZEN9">
      <Property name="Id" value="FROZEN9" />
      <Property name="English" value="Frozen %PLANETCLASS%" />
      <Property name="USEnglish" value="Frozen %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="FROZEN10">
      <Property name="Id" value="FROZEN10" />
      <Property name="English" value="Frozen %PLANETCLASS%" />
      <Property name="USEnglish" value="Frozen %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="IRRADIATED1">
      <Property name="Id" value="IRRADIATED1" />
      <Property name="English" value="Irradiated %PLANETCLASS%" />
      <Property name="USEnglish" value="Irradiated %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="IRRADIATED2">
      <Property name="Id" value="IRRADIATED2" />
      <Property name="English" value="Irradiated %PLANETCLASS%" />
      <Property name="USEnglish" value="Irradiated %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="IRRADIATED3">
      <Property name="Id" value="IRRADIATED3" />
      <Property name="English" value="Irradiated %PLANETCLASS%" />
      <Property name="USEnglish" value="Irradiated %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="IRRADIATED4">
      <Property name="Id" value="IRRADIATED4" />
      <Property name="English" value="Irradiated %PLANETCLASS%" />
      <Property name="USEnglish" value="Irradiated %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="IRRADIATED5">
      <Property name="Id" value="IRRADIATED5" />
      <Property name="English" value="Irradiated %PLANETCLASS%" />
      <Property name="USEnglish" value="Irradiated %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="IRRADIATED6">
      <Property name="Id" value="IRRADIATED6" />
      <Property name="English" value="Irradiated %PLANETCLASS%" />
      <Property name="USEnglish" value="Irradiated %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="IRRADIATED7">
      <Property name="Id" value="IRRADIATED7" />
      <Property name="English" value="Irradiated %PLANETCLASS%" />
      <Property name="USEnglish" value="Irradiated %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="IRRADIATED8">
      <Property name="Id" value="IRRADIATED8" />
      <Property name="English" value="Irradiated %PLANETCLASS%" />
      <Property name="USEnglish" value="Irradiated %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="IRRADIATED9">
      <Property name="Id" value="IRRADIATED9" />
      <Property name="English" value="Irradiated %PLANETCLASS%" />
      <Property name="USEnglish" value="Irradiated %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="IRRADIATED10">
      <Property name="Id" value="IRRADIATED10" />
      <Property name="English" value="Irradiated %PLANETCLASS%" />
      <Property name="USEnglish" value="Irradiated %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="TOXIC1">
      <Property name="Id" value="TOXIC1" />
      <Property name="English" value="Toxic %PLANETCLASS%" />
      <Property name="USEnglish" value="Toxic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="TOXIC2">
      <Property name="Id" value="TOXIC2" />
      <Property name="English" value="Toxic %PLANETCLASS%" />
      <Property name="USEnglish" value="Toxic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="TOXIC3">
      <Property name="Id" value="TOXIC3" />
      <Property name="English" value="Toxic %PLANETCLASS%" />
      <Property name="USEnglish" value="Toxic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="TOXIC4">
      <Property name="Id" value="TOXIC4" />
      <Property name="English" value="Toxic %PLANETCLASS%" />
      <Property name="USEnglish" value="Toxic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="TOXIC5">
      <Property name="Id" value="TOXIC5" />
      <Property name="English" value="Toxic %PLANETCLASS%" />
      <Property name="USEnglish" value="Toxic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="TOXIC6">
      <Property name="Id" value="TOXIC6" />
      <Property name="English" value="Toxic %PLANETCLASS%" />
      <Property name="USEnglish" value="Toxic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="TOXIC7">
      <Property name="Id" value="TOXIC7" />
      <Property name="English" value="Toxic %PLANETCLASS%" />
      <Property name="USEnglish" value="Toxic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="TOXIC8">
      <Property name="Id" value="TOXIC8" />
      <Property name="English" value="Toxic %PLANETCLASS%" />
      <Property name="USEnglish" value="Toxic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="TOXIC9">
      <Property name="Id" value="TOXIC9" />
      <Property name="English" value="Toxic %PLANETCLASS%" />
      <Property name="USEnglish" value="Toxic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="TOXIC10">
      <Property name="Id" value="TOXIC10" />
      <Property name="English" value="Toxic %PLANETCLASS%" />
      <Property name="USEnglish" value="Toxic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BARREN1">
      <Property name="Id" value="BARREN1" />
      <Property name="English" value="Desert %PLANETCLASS%" />
      <Property name="USEnglish" value="Desert %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BARREN2">
      <Property name="Id" value="BARREN2" />
      <Property name="English" value="Desert %PLANETCLASS%" />
      <Property name="USEnglish" value="Desert %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BARREN3">
      <Property name="Id" value="BARREN3" />
      <Property name="English" value="Desert %PLANETCLASS%" />
      <Property name="USEnglish" value="Desert %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BARREN4">
      <Property name="Id" value="BARREN4" />
      <Property name="English" value="Desert %PLANETCLASS%" />
      <Property name="USEnglish" value="Desert %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BARREN5">
      <Property name="Id" value="BARREN5" />
      <Property name="English" value="Desert %PLANETCLASS%" />
      <Property name="USEnglish" value="Desert %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BARREN6">
      <Property name="Id" value="BARREN6" />
      <Property name="English" value="Desert %PLANETCLASS%" />
      <Property name="USEnglish" value="Desert %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BARREN7">
      <Property name="Id" value="BARREN7" />
      <Property name="English" value="Desert %PLANETCLASS%" />
      <Property name="USEnglish" value="Desert %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BARREN8">
      <Property name="Id" value="BARREN8" />
      <Property name="English" value="Desert %PLANETCLASS%" />
      <Property name="USEnglish" value="Desert %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BARREN9">
      <Property name="Id" value="BARREN9" />
      <Property name="English" value="Desert %PLANETCLASS%" />
      <Property name="USEnglish" value="Desert %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BARREN10">
      <Property name="Id" value="BARREN10" />
      <Property name="English" value="Desert %PLANETCLASS%" />
      <Property name="USEnglish" value="Desert %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="DEAD1">
      <Property name="Id" value="DEAD1" />
      <Property name="English" value="Dead %PLANETCLASS%" />
      <Property name="USEnglish" value="Dead %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="DEAD2">
      <Property name="Id" value="DEAD2" />
      <Property name="English" value="Dead %PLANETCLASS%" />
      <Property name="USEnglish" value="Dead %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="DEAD3">
      <Property name="Id" value="DEAD3" />
      <Property name="English" value="Dead %PLANETCLASS%" />
      <Property name="USEnglish" value="Dead %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="DEAD4">
      <Property name="Id" value="DEAD4" />
      <Property name="English" value="Dead %PLANETCLASS%" />
      <Property name="USEnglish" value="Dead %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="DEAD5">
      <Property name="Id" value="DEAD5" />
      <Property name="English" value="Dead %PLANETCLASS%" />
      <Property name="USEnglish" value="Dead %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="DEAD6">
      <Property name="Id" value="DEAD6" />
      <Property name="English" value="Dead %PLANETCLASS%" />
      <Property name="USEnglish" value="Dead %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="DEAD7">
      <Property name="Id" value="DEAD7" />
      <Property name="English" value="Dead %PLANETCLASS%" />
      <Property name="USEnglish" value="Dead %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="DEAD8">
      <Property name="Id" value="DEAD8" />
      <Property name="English" value="Dead %PLANETCLASS%" />
      <Property name="USEnglish" value="Dead %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="DEAD9">
      <Property name="Id" value="DEAD9" />
      <Property name="English" value="Dead %PLANETCLASS%" />
      <Property name="USEnglish" value="Dead %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="DEAD10">
      <Property name="Id" value="DEAD10" />
      <Property name="English" value="Dead %PLANETCLASS%" />
      <Property name="USEnglish" value="Dead %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LUSH1">
      <Property name="Id" value="LUSH1" />
      <Property name="English" value="Lush %PLANETCLASS%" />
      <Property name="USEnglish" value="Lush %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LUSH2">
      <Property name="Id" value="LUSH2" />
      <Property name="English" value="Lush %PLANETCLASS%" />
      <Property name="USEnglish" value="Lush %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LUSH3">
      <Property name="Id" value="LUSH3" />
      <Property name="English" value="Lush %PLANETCLASS%" />
      <Property name="USEnglish" value="Lush %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LUSH4">
      <Property name="Id" value="LUSH4" />
      <Property name="English" value="Lush %PLANETCLASS%" />
      <Property name="USEnglish" value="Lush %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LUSH5">
      <Property name="Id" value="LUSH5" />
      <Property name="English" value="Lush %PLANETCLASS%" />
      <Property name="USEnglish" value="Lush %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LUSH6">
      <Property name="Id" value="LUSH6" />
      <Property name="English" value="Lush %PLANETCLASS%" />
      <Property name="USEnglish" value="Lush %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LUSH7">
      <Property name="Id" value="LUSH7" />
      <Property name="English" value="Lush %PLANETCLASS%" />
      <Property name="USEnglish" value="Lush %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LUSH8">
      <Property name="Id" value="LUSH8" />
      <Property name="English" value="Lush %PLANETCLASS%" />
      <Property name="USEnglish" value="Lush %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LUSH9">
      <Property name="Id" value="LUSH9" />
      <Property name="English" value="Lush %PLANETCLASS%" />
      <Property name="USEnglish" value="Lush %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LUSH10">
      <Property name="Id" value="LUSH10" />
      <Property name="English" value="Lush %PLANETCLASS%" />
      <Property name="USEnglish" value="Lush %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WIRECELLSBIOME1">
      <Property name="Id" value="WIRECELLSBIOME1" />
      <Property name="English" value="Wire Cell %PLANETCLASS%" />
      <Property name="USEnglish" value="Wire Cell %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WIRECELLSBIOME2">
      <Property name="Id" value="WIRECELLSBIOME2" />
      <Property name="English" value="Wire Cell %PLANETCLASS%" />
      <Property name="USEnglish" value="Wire Cell %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WIRECELLSBIOME3">
      <Property name="Id" value="WIRECELLSBIOME3" />
      <Property name="English" value="Wire Cell %PLANETCLASS%" />
      <Property name="USEnglish" value="Wire Cell %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="CONTOURBIOME1">
      <Property name="Id" value="CONTOURBIOME1" />
      <Property name="English" value="Contoured %PLANETCLASS%" />
      <Property name="USEnglish" value="Contoured %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="CONTOURBIOME2">
      <Property name="Id" value="CONTOURBIOME2" />
      <Property name="English" value="Contoured %PLANETCLASS%" />
      <Property name="USEnglish" value="Contoured %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="CONTOURBIOME3">
      <Property name="Id" value="CONTOURBIOME3" />
      <Property name="English" value="Contoured %PLANETCLASS%" />
      <Property name="USEnglish" value="Contoured %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BONESPIREBIOME1">
      <Property name="Id" value="BONESPIREBIOME1" />
      <Property name="English" value="Bone Spire %PLANETCLASS%" />
      <Property name="USEnglish" value="Bone Spire %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BONESPIREBIOME2">
      <Property name="Id" value="BONESPIREBIOME2" />
      <Property name="English" value="Bone Spire %PLANETCLASS%" />
      <Property name="USEnglish" value="Bone Spire %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BONESPIREBIOME3">
      <Property name="Id" value="BONESPIREBIOME3" />
      <Property name="English" value="Bone Spire %PLANETCLASS%" />
      <Property name="USEnglish" value="Bone Spire %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="IRRISHELLSBIOME1">
      <Property name="Id" value="IRRISHELLSBIOME1" />
      <Property name="English" value="Irri Shells %PLANETCLASS%" />
      <Property name="USEnglish" value="Irri Shells %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="IRRISHELLSBIOME2">
      <Property name="Id" value="IRRISHELLSBIOME2" />
      <Property name="English" value="Irri Shells %PLANETCLASS%" />
      <Property name="USEnglish" value="Irri Shells %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="IRRISHELLSBIOME3">
      <Property name="Id" value="IRRISHELLSBIOME3" />
      <Property name="English" value="Irri Shells %PLANETCLASS%" />
      <Property name="USEnglish" value="Irri Shells %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="HYDROGARDENBIOME1">
      <Property name="Id" value="HYDROGARDENBIOME1" />
      <Property name="English" value="Hydro Garden %PLANETCLASS%" />
      <Property name="USEnglish" value="Hydro Garden %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="HYDROGARDENBIOME2">
      <Property name="Id" value="HYDROGARDENBIOME2" />
      <Property name="English" value="Hydro Garden %PLANETCLASS%" />
      <Property name="USEnglish" value="Hydro Garden %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="HYDROGARDENBIOME3">
      <Property name="Id" value="HYDROGARDENBIOME3" />
      <Property name="English" value="Hydro Garden %PLANETCLASS%" />
      <Property name="USEnglish" value="Hydro Garden %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="MSTRUCTBIOME1">
      <Property name="Id" value="MSTRUCTBIOME1" />
      <Property name="English" value="M Structure %PLANETCLASS%" />
      <Property name="USEnglish" value="M Structure %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="MSTRUCTBIOME2">
      <Property name="Id" value="MSTRUCTBIOME2" />
      <Property name="English" value="M Structure %PLANETCLASS%" />
      <Property name="USEnglish" value="M Structure %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="MSTRUCTBIOME3">
      <Property name="Id" value="MSTRUCTBIOME3" />
      <Property name="English" value="M Structure %PLANETCLASS%" />
      <Property name="USEnglish" value="M Structure %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BEAMSBIOME1">
      <Property name="Id" value="BEAMSBIOME1" />
      <Property name="English" value="Beam %PLANETCLASS%" />
      <Property name="USEnglish" value="Beam %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BEAMSBIOME2">
      <Property name="Id" value="BEAMSBIOME2" />
      <Property name="English" value="Beam %PLANETCLASS%" />
      <Property name="USEnglish" value="Beam %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BEAMSBIOME3">
      <Property name="Id" value="BEAMSBIOME3" />
      <Property name="English" value="Beam %PLANETCLASS%" />
      <Property name="USEnglish" value="Beam %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="HEXAGONBIOME1">
      <Property name="Id" value="HEXAGONBIOME1" />
      <Property name="English" value="Hexagonal %PLANETCLASS%" />
      <Property name="USEnglish" value="Hexagonal %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="HEXAGONBIOME2">
      <Property name="Id" value="HEXAGONBIOME2" />
      <Property name="English" value="Hexagonal %PLANETCLASS%" />
      <Property name="USEnglish" value="Hexagonal %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="HEXAGONBIOME3">
      <Property name="Id" value="HEXAGONBIOME3" />
      <Property name="English" value="Hexagonal %PLANETCLASS%" />
      <Property name="USEnglish" value="Hexagonal %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="FRACTCUBEBIOME1">
      <Property name="Id" value="FRACTCUBEBIOME1" />
      <Property name="English" value="Fract Cube %PLANETCLASS%" />
      <Property name="USEnglish" value="Fract Cube %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="FRACTCUBEBIOME2">
      <Property name="Id" value="FRACTCUBEBIOME2" />
      <Property name="English" value="Fract Cube %PLANETCLASS%" />
      <Property name="USEnglish" value="Fract Cube %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="FRACTCUBEBIOME3">
      <Property name="Id" value="FRACTCUBEBIOME3" />
      <Property name="English" value="Fract Cube %PLANETCLASS%" />
      <Property name="USEnglish" value="Fract Cube %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BUBBLEBIOME1">
      <Property name="Id" value="BUBBLEBIOME1" />
      <Property name="English" value="Bubble %PLANETCLASS%" />
      <Property name="USEnglish" value="Bubble %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BUBBLEBIOME2">
      <Property name="Id" value="BUBBLEBIOME2" />
      <Property name="English" value="Bubble %PLANETCLASS%" />
      <Property name="USEnglish" value="Bubble %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BUBBLEBIOME3">
      <Property name="Id" value="BUBBLEBIOME3" />
      <Property name="English" value="Bubble %PLANETCLASS%" />
      <Property name="USEnglish" value="Bubble %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SHARDSBIOME1">
      <Property name="Id" value="SHARDSBIOME1" />
      <Property name="English" value="Sharded %PLANETCLASS%" />
      <Property name="USEnglish" value="Sharded %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SHARDSBIOME2">
      <Property name="Id" value="SHARDSBIOME2" />
      <Property name="English" value="Sharded %PLANETCLASS%" />
      <Property name="USEnglish" value="Sharded %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SHARDSBIOME3">
      <Property name="Id" value="SHARDSBIOME3" />
      <Property name="English" value="Sharded %PLANETCLASS%" />
      <Property name="USEnglish" value="Sharded %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEAT1">
      <Property name="Id" value="WEATHER_HEAT1" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEAT2">
      <Property name="Id" value="WEATHER_HEAT2" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEAT3">
      <Property name="Id" value="WEATHER_HEAT3" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEAT4">
      <Property name="Id" value="WEATHER_HEAT4" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEAT5">
      <Property name="Id" value="WEATHER_HEAT5" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEAT6">
      <Property name="Id" value="WEATHER_HEAT6" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEAT7">
      <Property name="Id" value="WEATHER_HEAT7" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEAT8">
      <Property name="Id" value="WEATHER_HEAT8" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEAT9">
      <Property name="Id" value="WEATHER_HEAT9" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEAT10">
      <Property name="Id" value="WEATHER_HEAT10" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEAT_CLEAR1">
      <Property name="Id" value="WEATHER_HEAT_CLEAR1" />
      <Property name="English" value="Passive Heat" />
      <Property name="USEnglish" value="Passive Heat" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEAT_CLEAR2">
      <Property name="Id" value="WEATHER_HEAT_CLEAR2" />
      <Property name="English" value="Passive Heat" />
      <Property name="USEnglish" value="Passive Heat" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEAT_CLEAR3">
      <Property name="Id" value="WEATHER_HEAT_CLEAR3" />
      <Property name="English" value="Passive Heat" />
      <Property name="USEnglish" value="Passive Heat" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEAT_CLEAR4">
      <Property name="Id" value="WEATHER_HEAT_CLEAR4" />
      <Property name="English" value="Passive Heat" />
      <Property name="USEnglish" value="Passive Heat" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEAT_CLEAR5">
      <Property name="Id" value="WEATHER_HEAT_CLEAR5" />
      <Property name="English" value="Passive Heat" />
      <Property name="USEnglish" value="Passive Heat" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEAT_CLEAR6">
      <Property name="Id" value="WEATHER_HEAT_CLEAR6" />
      <Property name="English" value="Passive Heat" />
      <Property name="USEnglish" value="Passive Heat" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEAT_CLEAR7">
      <Property name="Id" value="WEATHER_HEAT_CLEAR7" />
      <Property name="English" value="Passive Heat" />
      <Property name="USEnglish" value="Passive Heat" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEAT_CLEAR8">
      <Property name="Id" value="WEATHER_HEAT_CLEAR8" />
      <Property name="English" value="Passive Heat" />
      <Property name="USEnglish" value="Passive Heat" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEATEXTREME1">
      <Property name="Id" value="WEATHER_HEATEXTREME1" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEATEXTREME2">
      <Property name="Id" value="WEATHER_HEATEXTREME2" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEATEXTREME3">
      <Property name="Id" value="WEATHER_HEATEXTREME3" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEATEXTREME4">
      <Property name="Id" value="WEATHER_HEATEXTREME4" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEATEXTREME5">
      <Property name="Id" value="WEATHER_HEATEXTREME5" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEATEXTREME6">
      <Property name="Id" value="WEATHER_HEATEXTREME6" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEATEXTREME7">
      <Property name="Id" value="WEATHER_HEATEXTREME7" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEATEXTREME8">
      <Property name="Id" value="WEATHER_HEATEXTREME8" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEATEXTREME9">
      <Property name="Id" value="WEATHER_HEATEXTREME9" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_HEATEXTREME10">
      <Property name="Id" value="WEATHER_HEATEXTREME10" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLDEXTREME1">
      <Property name="Id" value="WEATHER_COLDEXTREME1" />
      <Property name="English" value="Extreme Cold Storms" />
      <Property name="USEnglish" value="Extreme Cold Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLDEXTREME2">
      <Property name="Id" value="WEATHER_COLDEXTREME2" />
      <Property name="English" value="Extreme Cold Storms" />
      <Property name="USEnglish" value="Extreme Cold Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLDEXTREME3">
      <Property name="Id" value="WEATHER_COLDEXTREME3" />
      <Property name="English" value="Extreme Cold Storms" />
      <Property name="USEnglish" value="Extreme Cold Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLDEXTREME4">
      <Property name="Id" value="WEATHER_COLDEXTREME4" />
      <Property name="English" value="Extreme Cold Storms" />
      <Property name="USEnglish" value="Extreme Cold Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLDEXTREME5">
      <Property name="Id" value="WEATHER_COLDEXTREME5" />
      <Property name="English" value="Extreme Cold Storms" />
      <Property name="USEnglish" value="Extreme Cold Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLDEXTREME6">
      <Property name="Id" value="WEATHER_COLDEXTREME6" />
      <Property name="English" value="Extreme Cold Storms" />
      <Property name="USEnglish" value="Extreme Cold Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLDEXTREME7">
      <Property name="Id" value="WEATHER_COLDEXTREME7" />
      <Property name="English" value="Extreme Cold Storms" />
      <Property name="USEnglish" value="Extreme Cold Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLDEXTREME8">
      <Property name="Id" value="WEATHER_COLDEXTREME8" />
      <Property name="English" value="Extreme Cold Storms" />
      <Property name="USEnglish" value="Extreme Cold Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLDEXTREME9">
      <Property name="Id" value="WEATHER_COLDEXTREME9" />
      <Property name="English" value="Extreme Cold Storms" />
      <Property name="USEnglish" value="Extreme Cold Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLDEXTREME10">
      <Property name="Id" value="WEATHER_COLDEXTREME10" />
      <Property name="English" value="Extreme Cold Storms" />
      <Property name="USEnglish" value="Extreme Cold Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLD1">
      <Property name="Id" value="WEATHER_COLD1" />
      <Property name="English" value="Cold Storms" />
      <Property name="USEnglish" value="Cold Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLD2">
      <Property name="Id" value="WEATHER_COLD2" />
      <Property name="English" value="Cold Storms" />
      <Property name="USEnglish" value="Cold Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLD3">
      <Property name="Id" value="WEATHER_COLD3" />
      <Property name="English" value="Cold Storms" />
      <Property name="USEnglish" value="Cold Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLD4">
      <Property name="Id" value="WEATHER_COLD4" />
      <Property name="English" value="Cold Storms" />
      <Property name="USEnglish" value="Cold Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLD5">
      <Property name="Id" value="WEATHER_COLD5" />
      <Property name="English" value="Cold Storms" />
      <Property name="USEnglish" value="Cold Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLD6">
      <Property name="Id" value="WEATHER_COLD6" />
      <Property name="English" value="Cold Storms" />
      <Property name="USEnglish" value="Cold Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLD7">
      <Property name="Id" value="WEATHER_COLD7" />
      <Property name="English" value="Cold Storms" />
      <Property name="USEnglish" value="Cold Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLD8">
      <Property name="Id" value="WEATHER_COLD8" />
      <Property name="English" value="Cold Storms" />
      <Property name="USEnglish" value="Cold Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLD9">
      <Property name="Id" value="WEATHER_COLD9" />
      <Property name="English" value="Cold Storms" />
      <Property name="USEnglish" value="Cold Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLD10">
      <Property name="Id" value="WEATHER_COLD10" />
      <Property name="English" value="Cold Storms" />
      <Property name="USEnglish" value="Cold Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLD_CLEAR1">
      <Property name="Id" value="WEATHER_COLD_CLEAR1" />
      <Property name="English" value="Passive Cold" />
      <Property name="USEnglish" value="Passive Cold" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLD_CLEAR2">
      <Property name="Id" value="WEATHER_COLD_CLEAR2" />
      <Property name="English" value="Passive Cold" />
      <Property name="USEnglish" value="Passive Cold" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLD_CLEAR3">
      <Property name="Id" value="WEATHER_COLD_CLEAR3" />
      <Property name="English" value="Passive Cold" />
      <Property name="USEnglish" value="Passive Cold" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLD_CLEAR4">
      <Property name="Id" value="WEATHER_COLD_CLEAR4" />
      <Property name="English" value="Passive Cold" />
      <Property name="USEnglish" value="Passive Cold" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLD_CLEAR5">
      <Property name="Id" value="WEATHER_COLD_CLEAR5" />
      <Property name="English" value="Passive Cold" />
      <Property name="USEnglish" value="Passive Cold" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLD_CLEAR6">
      <Property name="Id" value="WEATHER_COLD_CLEAR6" />
      <Property name="English" value="Passive Cold" />
      <Property name="USEnglish" value="Passive Cold" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLD_CLEAR7">
      <Property name="Id" value="WEATHER_COLD_CLEAR7" />
      <Property name="English" value="Passive Cold" />
      <Property name="USEnglish" value="Passive Cold" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_COLD_CLEAR8">
      <Property name="Id" value="WEATHER_COLD_CLEAR8" />
      <Property name="English" value="Passive Cold" />
      <Property name="USEnglish" value="Passive Cold" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXICEXTREME1">
      <Property name="Id" value="WEATHER_TOXICEXTREME1" />
      <Property name="English" value="Extreme Toxic Storms" />
      <Property name="USEnglish" value="Extreme Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXICEXTREME2">
      <Property name="Id" value="WEATHER_TOXICEXTREME2" />
      <Property name="English" value="Extreme Toxic Storms" />
      <Property name="USEnglish" value="Extreme Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXICEXTREME3">
      <Property name="Id" value="WEATHER_TOXICEXTREME3" />
      <Property name="English" value="Extreme Toxic Storms" />
      <Property name="USEnglish" value="Extreme Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXICEXTREME4">
      <Property name="Id" value="WEATHER_TOXICEXTREME4" />
      <Property name="English" value="Extreme Toxic Storms" />
      <Property name="USEnglish" value="Extreme Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXICEXTREME5">
      <Property name="Id" value="WEATHER_TOXICEXTREME5" />
      <Property name="English" value="Extreme Toxic Storms" />
      <Property name="USEnglish" value="Extreme Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXICEXTREME6">
      <Property name="Id" value="WEATHER_TOXICEXTREME6" />
      <Property name="English" value="Extreme Toxic Storms" />
      <Property name="USEnglish" value="Extreme Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXICEXTREME7">
      <Property name="Id" value="WEATHER_TOXICEXTREME7" />
      <Property name="English" value="Extreme Toxic Storms" />
      <Property name="USEnglish" value="Extreme Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXICEXTREME8">
      <Property name="Id" value="WEATHER_TOXICEXTREME8" />
      <Property name="English" value="Extreme Toxic Storms" />
      <Property name="USEnglish" value="Extreme Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXICEXTREME9">
      <Property name="Id" value="WEATHER_TOXICEXTREME9" />
      <Property name="English" value="Extreme Toxic Storms" />
      <Property name="USEnglish" value="Extreme Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXICEXTREME10">
      <Property name="Id" value="WEATHER_TOXICEXTREME10" />
      <Property name="English" value="Extreme Toxic Storms" />
      <Property name="USEnglish" value="Extreme Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXICEXTREME11">
      <Property name="Id" value="WEATHER_TOXICEXTREME11" />
      <Property name="English" value="Extreme Toxic Storms" />
      <Property name="USEnglish" value="Extreme Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXICEXTREME12">
      <Property name="Id" value="WEATHER_TOXICEXTREME12" />
      <Property name="English" value="Extreme Toxic Storms" />
      <Property name="USEnglish" value="Extreme Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC1">
      <Property name="Id" value="WEATHER_TOXIC1" />
      <Property name="English" value="Toxic Storms" />
      <Property name="USEnglish" value="Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC2">
      <Property name="Id" value="WEATHER_TOXIC2" />
      <Property name="English" value="Toxic Storms" />
      <Property name="USEnglish" value="Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC3">
      <Property name="Id" value="WEATHER_TOXIC3" />
      <Property name="English" value="Toxic Storms" />
      <Property name="USEnglish" value="Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC4">
      <Property name="Id" value="WEATHER_TOXIC4" />
      <Property name="English" value="Toxic Storms" />
      <Property name="USEnglish" value="Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC5">
      <Property name="Id" value="WEATHER_TOXIC5" />
      <Property name="English" value="Toxic Storms" />
      <Property name="USEnglish" value="Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC6">
      <Property name="Id" value="WEATHER_TOXIC6" />
      <Property name="English" value="Toxic Storms" />
      <Property name="USEnglish" value="Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC7">
      <Property name="Id" value="WEATHER_TOXIC7" />
      <Property name="English" value="Toxic Storms" />
      <Property name="USEnglish" value="Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC8">
      <Property name="Id" value="WEATHER_TOXIC8" />
      <Property name="English" value="Toxic Storms" />
      <Property name="USEnglish" value="Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC9">
      <Property name="Id" value="WEATHER_TOXIC9" />
      <Property name="English" value="Toxic Storms" />
      <Property name="USEnglish" value="Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC10">
      <Property name="Id" value="WEATHER_TOXIC10" />
      <Property name="English" value="Toxic Storms" />
      <Property name="USEnglish" value="Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC11">
      <Property name="Id" value="WEATHER_TOXIC11" />
      <Property name="English" value="Toxic Storms" />
      <Property name="USEnglish" value="Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC12">
      <Property name="Id" value="WEATHER_TOXIC12" />
      <Property name="English" value="Toxic Storms" />
      <Property name="USEnglish" value="Toxic Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC_CLEAR1">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR1" />
      <Property name="English" value="Passive Toxicity" />
      <Property name="USEnglish" value="Passive Toxicity" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC_CLEAR2">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR2" />
      <Property name="English" value="Passive Toxicity" />
      <Property name="USEnglish" value="Passive Toxicity" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC_CLEAR3">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR3" />
      <Property name="English" value="Passive Toxicity" />
      <Property name="USEnglish" value="Passive Toxicity" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC_CLEAR4">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR4" />
      <Property name="English" value="Passive Toxicity" />
      <Property name="USEnglish" value="Passive Toxicity" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC_CLEAR5">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR5" />
      <Property name="English" value="Passive Toxicity" />
      <Property name="USEnglish" value="Passive Toxicity" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC_CLEAR6">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR6" />
      <Property name="English" value="Passive Toxicity" />
      <Property name="USEnglish" value="Passive Toxicity" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC_CLEAR7">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR7" />
      <Property name="English" value="Passive Toxicity" />
      <Property name="USEnglish" value="Passive Toxicity" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC_CLEAR8">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR8" />
      <Property name="English" value="Passive Toxicity" />
      <Property name="USEnglish" value="Passive Toxicity" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC_CLEAR9">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR9" />
      <Property name="English" value="Passive Toxicity" />
      <Property name="USEnglish" value="Passive Toxicity" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_TOXIC_CLEAR10">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR10" />
      <Property name="English" value="Passive Toxicity" />
      <Property name="USEnglish" value="Passive Toxicity" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIOEXTREME1">
      <Property name="Id" value="WEATHER_RADIOEXTREME1" />
      <Property name="English" value="Extreme Radioactive Storms" />
      <Property name="USEnglish" value="Extreme Radioactive Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIOEXTREME2">
      <Property name="Id" value="WEATHER_RADIOEXTREME2" />
      <Property name="English" value="Extreme Radioactive Storms" />
      <Property name="USEnglish" value="Extreme Radioactive Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIOEXTREME3">
      <Property name="Id" value="WEATHER_RADIOEXTREME3" />
      <Property name="English" value="Extreme Radioactive Storms" />
      <Property name="USEnglish" value="Extreme Radioactive Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIOEXTREME4">
      <Property name="Id" value="WEATHER_RADIOEXTREME4" />
      <Property name="English" value="Extreme Radioactive Storms" />
      <Property name="USEnglish" value="Extreme Radioactive Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIOEXTREME5">
      <Property name="Id" value="WEATHER_RADIOEXTREME5" />
      <Property name="English" value="Extreme Radioactive Storms" />
      <Property name="USEnglish" value="Extreme Radioactive Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIOEXTREME6">
      <Property name="Id" value="WEATHER_RADIOEXTREME6" />
      <Property name="English" value="Extreme Radioactive Storms" />
      <Property name="USEnglish" value="Extreme Radioactive Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIOEXTREME7">
      <Property name="Id" value="WEATHER_RADIOEXTREME7" />
      <Property name="English" value="Extreme Radioactive Storms" />
      <Property name="USEnglish" value="Extreme Radioactive Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIOEXTREME8">
      <Property name="Id" value="WEATHER_RADIOEXTREME8" />
      <Property name="English" value="Extreme Radioactive Storms" />
      <Property name="USEnglish" value="Extreme Radioactive Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIOEXTREME9">
      <Property name="Id" value="WEATHER_RADIOEXTREME9" />
      <Property name="English" value="Extreme Radioactive Storms" />
      <Property name="USEnglish" value="Extreme Radioactive Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIOEXTREME10">
      <Property name="Id" value="WEATHER_RADIOEXTREME10" />
      <Property name="English" value="Extreme Radioactive Storms" />
      <Property name="USEnglish" value="Extreme Radioactive Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIO1">
      <Property name="Id" value="WEATHER_RADIO1" />
      <Property name="English" value="Radioactive Storms" />
      <Property name="USEnglish" value="Radioactive Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIO2">
      <Property name="Id" value="WEATHER_RADIO2" />
      <Property name="English" value="Radioactive Storms" />
      <Property name="USEnglish" value="Radioactive Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIO3">
      <Property name="Id" value="WEATHER_RADIO3" />
      <Property name="English" value="Radioactive Storms" />
      <Property name="USEnglish" value="Radioactive Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIO4">
      <Property name="Id" value="WEATHER_RADIO4" />
      <Property name="English" value="Radioactive Storms" />
      <Property name="USEnglish" value="Radioactive Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIO5">
      <Property name="Id" value="WEATHER_RADIO5" />
      <Property name="English" value="Radioactive Storms" />
      <Property name="USEnglish" value="Radioactive Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIO6">
      <Property name="Id" value="WEATHER_RADIO6" />
      <Property name="English" value="Radioactive Storms" />
      <Property name="USEnglish" value="Radioactive Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIO7">
      <Property name="Id" value="WEATHER_RADIO7" />
      <Property name="English" value="Radioactive Storms" />
      <Property name="USEnglish" value="Radioactive Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIO8">
      <Property name="Id" value="WEATHER_RADIO8" />
      <Property name="English" value="Radioactive Storms" />
      <Property name="USEnglish" value="Radioactive Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIO9">
      <Property name="Id" value="WEATHER_RADIO9" />
      <Property name="English" value="Radioactive Storms" />
      <Property name="USEnglish" value="Radioactive Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIO10">
      <Property name="Id" value="WEATHER_RADIO10" />
      <Property name="English" value="Radioactive Storms" />
      <Property name="USEnglish" value="Radioactive Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIO_CLEAR1">
      <Property name="Id" value="WEATHER_RADIO_CLEAR1" />
      <Property name="English" value="Passive Radioactivity" />
      <Property name="USEnglish" value="Passive Radioactivity" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIO_CLEAR2">
      <Property name="Id" value="WEATHER_RADIO_CLEAR2" />
      <Property name="English" value="Passive Radioactivity" />
      <Property name="USEnglish" value="Passive Radioactivity" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIO_CLEAR3">
      <Property name="Id" value="WEATHER_RADIO_CLEAR3" />
      <Property name="English" value="Passive Radioactivity" />
      <Property name="USEnglish" value="Passive Radioactivity" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIO_CLEAR4">
      <Property name="Id" value="WEATHER_RADIO_CLEAR4" />
      <Property name="English" value="Passive Radioactivity" />
      <Property name="USEnglish" value="Passive Radioactivity" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIO_CLEAR5">
      <Property name="Id" value="WEATHER_RADIO_CLEAR5" />
      <Property name="English" value="Passive Radioactivity" />
      <Property name="USEnglish" value="Passive Radioactivity" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIO_CLEAR6">
      <Property name="Id" value="WEATHER_RADIO_CLEAR6" />
      <Property name="English" value="Passive Radioactivity" />
      <Property name="USEnglish" value="Passive Radioactivity" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIO_CLEAR7">
      <Property name="Id" value="WEATHER_RADIO_CLEAR7" />
      <Property name="English" value="Passive Radioactivity" />
      <Property name="USEnglish" value="Passive Radioactivity" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RADIO_CLEAR8">
      <Property name="Id" value="WEATHER_RADIO_CLEAR8" />
      <Property name="English" value="Passive Radioactivity" />
      <Property name="USEnglish" value="Passive Radioactivity" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSHEXTREME1">
      <Property name="Id" value="WEATHER_LUSHEXTREME1" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSHEXTREME2">
      <Property name="Id" value="WEATHER_LUSHEXTREME2" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSHEXTREME3">
      <Property name="Id" value="WEATHER_LUSHEXTREME3" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSHEXTREME4">
      <Property name="Id" value="WEATHER_LUSHEXTREME4" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSHEXTREME5">
      <Property name="Id" value="WEATHER_LUSHEXTREME5" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSHEXTREME6">
      <Property name="Id" value="WEATHER_LUSHEXTREME6" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSHEXTREME7">
      <Property name="Id" value="WEATHER_LUSHEXTREME7" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSHEXTREME8">
      <Property name="Id" value="WEATHER_LUSHEXTREME8" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSHEXTREME9">
      <Property name="Id" value="WEATHER_LUSHEXTREME9" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSHEXTREME10">
      <Property name="Id" value="WEATHER_LUSHEXTREME10" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSH1">
      <Property name="Id" value="WEATHER_LUSH1" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSH2">
      <Property name="Id" value="WEATHER_LUSH2" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSH3">
      <Property name="Id" value="WEATHER_LUSH3" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSH4">
      <Property name="Id" value="WEATHER_LUSH4" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSH5">
      <Property name="Id" value="WEATHER_LUSH5" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSH6">
      <Property name="Id" value="WEATHER_LUSH6" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSH7">
      <Property name="Id" value="WEATHER_LUSH7" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSH8">
      <Property name="Id" value="WEATHER_LUSH8" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSH9">
      <Property name="Id" value="WEATHER_LUSH9" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSH10">
      <Property name="Id" value="WEATHER_LUSH10" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSH_CLEAR1">
      <Property name="Id" value="WEATHER_LUSH_CLEAR1" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSH_CLEAR2">
      <Property name="Id" value="WEATHER_LUSH_CLEAR2" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSH_CLEAR3">
      <Property name="Id" value="WEATHER_LUSH_CLEAR3" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSH_CLEAR4">
      <Property name="Id" value="WEATHER_LUSH_CLEAR4" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSH_CLEAR5">
      <Property name="Id" value="WEATHER_LUSH_CLEAR5" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSH_CLEAR6">
      <Property name="Id" value="WEATHER_LUSH_CLEAR6" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSH_CLEAR7">
      <Property name="Id" value="WEATHER_LUSH_CLEAR7" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSH_CLEAR8">
      <Property name="Id" value="WEATHER_LUSH_CLEAR8" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSH_CLEAR9">
      <Property name="Id" value="WEATHER_LUSH_CLEAR9" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LUSH_CLEAR10">
      <Property name="Id" value="WEATHER_LUSH_CLEAR10" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARRENEXTREME1">
      <Property name="Id" value="WEATHER_BARRENEXTREME1" />
      <Property name="English" value="Extreme Heat Storms, Cold Nights" />
      <Property name="USEnglish" value="Extreme Heat Storms, Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARRENEXTREME2">
      <Property name="Id" value="WEATHER_BARRENEXTREME2" />
      <Property name="English" value="Extreme Heat Storms, Cold Nights" />
      <Property name="USEnglish" value="Extreme Heat Storms, Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARRENEXTREME3">
      <Property name="Id" value="WEATHER_BARRENEXTREME3" />
      <Property name="English" value="Extreme Heat Storms, Cold Nights" />
      <Property name="USEnglish" value="Extreme Heat Storms, Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARRENEXTREME4">
      <Property name="Id" value="WEATHER_BARRENEXTREME4" />
      <Property name="English" value="Extreme Heat Storms, Cold Nights" />
      <Property name="USEnglish" value="Extreme Heat Storms, Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARRENEXTREME5">
      <Property name="Id" value="WEATHER_BARRENEXTREME5" />
      <Property name="English" value="Extreme Heat Storms, Cold Nights" />
      <Property name="USEnglish" value="Extreme Heat Storms, Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARRENEXTREME6">
      <Property name="Id" value="WEATHER_BARRENEXTREME6" />
      <Property name="English" value="Extreme Heat Storms, Cold Nights" />
      <Property name="USEnglish" value="Extreme Heat Storms, Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARRENEXTREME7">
      <Property name="Id" value="WEATHER_BARRENEXTREME7" />
      <Property name="English" value="Extreme Heat Storms, Cold Nights" />
      <Property name="USEnglish" value="Extreme Heat Storms, Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARRENEXTREME8">
      <Property name="Id" value="WEATHER_BARRENEXTREME8" />
      <Property name="English" value="Extreme Heat Storms, Cold Nights" />
      <Property name="USEnglish" value="Extreme Heat Storms, Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARRENEXTREME9">
      <Property name="Id" value="WEATHER_BARRENEXTREME9" />
      <Property name="English" value="Extreme Heat Storms, Cold Nights" />
      <Property name="USEnglish" value="Extreme Heat Storms, Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARRENEXTREME10">
      <Property name="Id" value="WEATHER_BARRENEXTREME10" />
      <Property name="English" value="Extreme Heat Storms, Cold Nights" />
      <Property name="USEnglish" value="Extreme Heat Storms, Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARREN1">
      <Property name="Id" value="WEATHER_BARREN1" />
      <Property name="English" value="Heat Storms, Cold Nights" />
      <Property name="USEnglish" value="Heat Storms, Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARREN2">
      <Property name="Id" value="WEATHER_BARREN2" />
      <Property name="English" value="Heat Storms, Cold Nights" />
      <Property name="USEnglish" value="Heat Storms, Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARREN3">
      <Property name="Id" value="WEATHER_BARREN3" />
      <Property name="English" value="Heat Storms, Cold Nights" />
      <Property name="USEnglish" value="Heat Storms, Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARREN4">
      <Property name="Id" value="WEATHER_BARREN4" />
      <Property name="English" value="Heat Storms, Cold Nights" />
      <Property name="USEnglish" value="Heat Storms, Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARREN5">
      <Property name="Id" value="WEATHER_BARREN5" />
      <Property name="English" value="Heat Storms, Cold Nights" />
      <Property name="USEnglish" value="Heat Storms, Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARREN6">
      <Property name="Id" value="WEATHER_BARREN6" />
      <Property name="English" value="Heat Storms, Cold Nights" />
      <Property name="USEnglish" value="Heat Storms, Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARREN7">
      <Property name="Id" value="WEATHER_BARREN7" />
      <Property name="English" value="Heat Storms, Cold Nights" />
      <Property name="USEnglish" value="Heat Storms, Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARREN8">
      <Property name="Id" value="WEATHER_BARREN8" />
      <Property name="English" value="Heat Storms, Cold Nights" />
      <Property name="USEnglish" value="Heat Storms, Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARREN9">
      <Property name="Id" value="WEATHER_BARREN9" />
      <Property name="English" value="Heat Storms, Cold Nights" />
      <Property name="USEnglish" value="Heat Storms, Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARREN10">
      <Property name="Id" value="WEATHER_BARREN10" />
      <Property name="English" value="Heat Storms, Cold Nights" />
      <Property name="USEnglish" value="Heat Storms, Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARREN_CLEAR1">
      <Property name="Id" value="WEATHER_BARREN_CLEAR1" />
      <Property name="English" value="Cold Nights" />
      <Property name="USEnglish" value="Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARREN_CLEAR2">
      <Property name="Id" value="WEATHER_BARREN_CLEAR2" />
      <Property name="English" value="Cold Nights" />
      <Property name="USEnglish" value="Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARREN_CLEAR3">
      <Property name="Id" value="WEATHER_BARREN_CLEAR3" />
      <Property name="English" value="Cold Nights" />
      <Property name="USEnglish" value="Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARREN_CLEAR4">
      <Property name="Id" value="WEATHER_BARREN_CLEAR4" />
      <Property name="English" value="Cold Nights" />
      <Property name="USEnglish" value="Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARREN_CLEAR5">
      <Property name="Id" value="WEATHER_BARREN_CLEAR5" />
      <Property name="English" value="Cold Nights" />
      <Property name="USEnglish" value="Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARREN_CLEAR6">
      <Property name="Id" value="WEATHER_BARREN_CLEAR6" />
      <Property name="English" value="Cold Nights" />
      <Property name="USEnglish" value="Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARREN_CLEAR7">
      <Property name="Id" value="WEATHER_BARREN_CLEAR7" />
      <Property name="English" value="Cold Nights" />
      <Property name="USEnglish" value="Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BARREN_CLEAR8">
      <Property name="Id" value="WEATHER_BARREN_CLEAR8" />
      <Property name="English" value="Cold Nights" />
      <Property name="USEnglish" value="Cold Nights" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_DEAD1">
      <Property name="Id" value="WEATHER_DEAD1" />
      <Property name="English" value="Passive Life Support Drain" />
      <Property name="USEnglish" value="Passive Life Support Drain" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_DEAD2">
      <Property name="Id" value="WEATHER_DEAD2" />
      <Property name="English" value="Passive Life Support Drain" />
      <Property name="USEnglish" value="Passive Life Support Drain" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_DEAD3">
      <Property name="Id" value="WEATHER_DEAD3" />
      <Property name="English" value="Passive Life Support Drain" />
      <Property name="USEnglish" value="Passive Life Support Drain" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_DEAD4">
      <Property name="Id" value="WEATHER_DEAD4" />
      <Property name="English" value="Passive Life Support Drain" />
      <Property name="USEnglish" value="Passive Life Support Drain" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_DEAD5">
      <Property name="Id" value="WEATHER_DEAD5" />
      <Property name="English" value="Passive Life Support Drain" />
      <Property name="USEnglish" value="Passive Life Support Drain" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_DEAD6">
      <Property name="Id" value="WEATHER_DEAD6" />
      <Property name="English" value="Passive Life Support Drain" />
      <Property name="USEnglish" value="Passive Life Support Drain" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_DEAD7">
      <Property name="Id" value="WEATHER_DEAD7" />
      <Property name="English" value="Passive Life Support Drain" />
      <Property name="USEnglish" value="Passive Life Support Drain" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_DEAD8">
      <Property name="Id" value="WEATHER_DEAD8" />
      <Property name="English" value="Passive Life Support Drain" />
      <Property name="USEnglish" value="Passive Life Support Drain" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_DEAD9">
      <Property name="Id" value="WEATHER_DEAD9" />
      <Property name="English" value="Passive Life Support Drain" />
      <Property name="USEnglish" value="Passive Life Support Drain" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_DEAD10">
      <Property name="Id" value="WEATHER_DEAD10" />
      <Property name="English" value="Passive Life Support Drain" />
      <Property name="USEnglish" value="Passive Life Support Drain" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_CLEAR1">
      <Property name="Id" value="WEATHER_CLEAR1" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_CLEAR2">
      <Property name="Id" value="WEATHER_CLEAR2" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_CLEAR3">
      <Property name="Id" value="WEATHER_CLEAR3" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_CLEAR4">
      <Property name="Id" value="WEATHER_CLEAR4" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_CLEAR5">
      <Property name="Id" value="WEATHER_CLEAR5" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_CLEAR6">
      <Property name="Id" value="WEATHER_CLEAR6" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_CLEAR7">
      <Property name="Id" value="WEATHER_CLEAR7" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_CLEAR8">
      <Property name="Id" value="WEATHER_CLEAR8" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_CLEAR9">
      <Property name="Id" value="WEATHER_CLEAR9" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_CLEAR10">
      <Property name="Id" value="WEATHER_CLEAR10" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="REDBIOME1">
      <Property name="Id" value="REDBIOME1" />
      <Property name="English" value="Red %PLANETCLASS%" />
      <Property name="USEnglish" value="Red %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="REDBIOME2">
      <Property name="Id" value="REDBIOME2" />
      <Property name="English" value="Red %PLANETCLASS%" />
      <Property name="USEnglish" value="Red %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="REDBIOME3">
      <Property name="Id" value="REDBIOME3" />
      <Property name="English" value="Red %PLANETCLASS%" />
      <Property name="USEnglish" value="Red %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="REDBIOME4">
      <Property name="Id" value="REDBIOME4" />
      <Property name="English" value="Red %PLANETCLASS%" />
      <Property name="USEnglish" value="Red %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="REDBIOME5">
      <Property name="Id" value="REDBIOME5" />
      <Property name="English" value="Red %PLANETCLASS%" />
      <Property name="USEnglish" value="Red %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="REDBIOME6">
      <Property name="Id" value="REDBIOME6" />
      <Property name="English" value="Red %PLANETCLASS%" />
      <Property name="USEnglish" value="Red %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="REDBIOME7">
      <Property name="Id" value="REDBIOME7" />
      <Property name="English" value="Red %PLANETCLASS%" />
      <Property name="USEnglish" value="Red %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="REDBIOME8">
      <Property name="Id" value="REDBIOME8" />
      <Property name="English" value="Red %PLANETCLASS%" />
      <Property name="USEnglish" value="Red %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="REDBIOME9">
      <Property name="Id" value="REDBIOME9" />
      <Property name="English" value="Red %PLANETCLASS%" />
      <Property name="USEnglish" value="Red %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="REDBIOME10">
      <Property name="Id" value="REDBIOME10" />
      <Property name="English" value="Red %PLANETCLASS%" />
      <Property name="USEnglish" value="Red %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GREENBIOME1">
      <Property name="Id" value="GREENBIOME1" />
      <Property name="English" value="Green %PLANETCLASS%" />
      <Property name="USEnglish" value="Green %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GREENBIOME2">
      <Property name="Id" value="GREENBIOME2" />
      <Property name="English" value="Green %PLANETCLASS%" />
      <Property name="USEnglish" value="Green %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GREENBIOME3">
      <Property name="Id" value="GREENBIOME3" />
      <Property name="English" value="Green %PLANETCLASS%" />
      <Property name="USEnglish" value="Green %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GREENBIOME4">
      <Property name="Id" value="GREENBIOME4" />
      <Property name="English" value="Green %PLANETCLASS%" />
      <Property name="USEnglish" value="Green %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GREENBIOME5">
      <Property name="Id" value="GREENBIOME5" />
      <Property name="English" value="Green %PLANETCLASS%" />
      <Property name="USEnglish" value="Green %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GREENBIOME6">
      <Property name="Id" value="GREENBIOME6" />
      <Property name="English" value="Green %PLANETCLASS%" />
      <Property name="USEnglish" value="Green %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GREENBIOME7">
      <Property name="Id" value="GREENBIOME7" />
      <Property name="English" value="Green %PLANETCLASS%" />
      <Property name="USEnglish" value="Green %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GREENBIOME8">
      <Property name="Id" value="GREENBIOME8" />
      <Property name="English" value="Green %PLANETCLASS%" />
      <Property name="USEnglish" value="Green %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GREENBIOME9">
      <Property name="Id" value="GREENBIOME9" />
      <Property name="English" value="Green %PLANETCLASS%" />
      <Property name="USEnglish" value="Green %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GREENBIOME10">
      <Property name="Id" value="GREENBIOME10" />
      <Property name="English" value="Green %PLANETCLASS%" />
      <Property name="USEnglish" value="Green %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BLUEBIOME1">
      <Property name="Id" value="BLUEBIOME1" />
      <Property name="English" value="Blue %PLANETCLASS%" />
      <Property name="USEnglish" value="Blue %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BLUEBIOME2">
      <Property name="Id" value="BLUEBIOME2" />
      <Property name="English" value="Blue %PLANETCLASS%" />
      <Property name="USEnglish" value="Blue %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BLUEBIOME3">
      <Property name="Id" value="BLUEBIOME3" />
      <Property name="English" value="Blue %PLANETCLASS%" />
      <Property name="USEnglish" value="Blue %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BLUEBIOME4">
      <Property name="Id" value="BLUEBIOME4" />
      <Property name="English" value="Blue %PLANETCLASS%" />
      <Property name="USEnglish" value="Blue %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BLUEBIOME5">
      <Property name="Id" value="BLUEBIOME5" />
      <Property name="English" value="Blue %PLANETCLASS%" />
      <Property name="USEnglish" value="Blue %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BLUEBIOME6">
      <Property name="Id" value="BLUEBIOME6" />
      <Property name="English" value="Blue %PLANETCLASS%" />
      <Property name="USEnglish" value="Blue %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BLUEBIOME7">
      <Property name="Id" value="BLUEBIOME7" />
      <Property name="English" value="Blue %PLANETCLASS%" />
      <Property name="USEnglish" value="Blue %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BLUEBIOME8">
      <Property name="Id" value="BLUEBIOME8" />
      <Property name="English" value="Blue %PLANETCLASS%" />
      <Property name="USEnglish" value="Blue %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BLUEBIOME9">
      <Property name="Id" value="BLUEBIOME9" />
      <Property name="English" value="Blue %PLANETCLASS%" />
      <Property name="USEnglish" value="Blue %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="BLUEBIOME10">
      <Property name="Id" value="BLUEBIOME10" />
      <Property name="English" value="Blue %PLANETCLASS%" />
      <Property name="USEnglish" value="Blue %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GLITCHBIOME1">
      <Property name="Id" value="GLITCHBIOME1" />
      <Property name="English" value="Glitched %PLANETCLASS%" />
      <Property name="USEnglish" value="Glitched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GLITCHBIOME2">
      <Property name="Id" value="GLITCHBIOME2" />
      <Property name="English" value="Glitched %PLANETCLASS%" />
      <Property name="USEnglish" value="Glitched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GLITCHBIOME3">
      <Property name="Id" value="GLITCHBIOME3" />
      <Property name="English" value="Glitched %PLANETCLASS%" />
      <Property name="USEnglish" value="Glitched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GLITCHBIOME4">
      <Property name="Id" value="GLITCHBIOME4" />
      <Property name="English" value="Glitched %PLANETCLASS%" />
      <Property name="USEnglish" value="Glitched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GLITCHBIOME5">
      <Property name="Id" value="GLITCHBIOME5" />
      <Property name="English" value="Glitched %PLANETCLASS%" />
      <Property name="USEnglish" value="Glitched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GLITCHBIOME6">
      <Property name="Id" value="GLITCHBIOME6" />
      <Property name="English" value="Glitched %PLANETCLASS%" />
      <Property name="USEnglish" value="Glitched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GLITCHBIOME7">
      <Property name="Id" value="GLITCHBIOME7" />
      <Property name="English" value="Glitched %PLANETCLASS%" />
      <Property name="USEnglish" value="Glitched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GLITCHBIOME8">
      <Property name="Id" value="GLITCHBIOME8" />
      <Property name="English" value="Glitched %PLANETCLASS%" />
      <Property name="USEnglish" value="Glitched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GLITCHBIOME9">
      <Property name="Id" value="GLITCHBIOME9" />
      <Property name="English" value="Glitched %PLANETCLASS%" />
      <Property name="USEnglish" value="Glitched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GLITCHBIOME10">
      <Property name="Id" value="GLITCHBIOME10" />
      <Property name="English" value="Glitched %PLANETCLASS%" />
      <Property name="USEnglish" value="Glitched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GLITCHBIOME11">
      <Property name="Id" value="GLITCHBIOME11" />
      <Property name="English" value="Glitched %PLANETCLASS%" />
      <Property name="USEnglish" value="Glitched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="GLITCHBIOME12">
      <Property name="Id" value="GLITCHBIOME12" />
      <Property name="English" value="Glitched %PLANETCLASS%" />
      <Property name="USEnglish" value="Glitched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GLITCH1">
      <Property name="Id" value="WEATHER_GLITCH1" />
      <Property name="English" value="Glitch Weather" />
      <Property name="USEnglish" value="Glitch Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GLITCH2">
      <Property name="Id" value="WEATHER_GLITCH2" />
      <Property name="English" value="Glitch Weather" />
      <Property name="USEnglish" value="Glitch Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GLITCH3">
      <Property name="Id" value="WEATHER_GLITCH3" />
      <Property name="English" value="Glitch Weather" />
      <Property name="USEnglish" value="Glitch Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GLITCH4">
      <Property name="Id" value="WEATHER_GLITCH4" />
      <Property name="English" value="Glitch Weather" />
      <Property name="USEnglish" value="Glitch Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GLITCH5">
      <Property name="Id" value="WEATHER_GLITCH5" />
      <Property name="English" value="Glitch Weather" />
      <Property name="USEnglish" value="Glitch Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GLITCH6">
      <Property name="Id" value="WEATHER_GLITCH6" />
      <Property name="English" value="Glitch Weather" />
      <Property name="USEnglish" value="Glitch Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GLITCH7">
      <Property name="Id" value="WEATHER_GLITCH7" />
      <Property name="English" value="Glitch Weather" />
      <Property name="USEnglish" value="Glitch Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GLITCH8">
      <Property name="Id" value="WEATHER_GLITCH8" />
      <Property name="English" value="Glitch Weather" />
      <Property name="USEnglish" value="Glitch Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GLITCH9">
      <Property name="Id" value="WEATHER_GLITCH9" />
      <Property name="English" value="Glitch Weather" />
      <Property name="USEnglish" value="Glitch Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GLITCH10">
      <Property name="Id" value="WEATHER_GLITCH10" />
      <Property name="English" value="Glitch Weather" />
      <Property name="USEnglish" value="Glitch Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GLITCH11">
      <Property name="Id" value="WEATHER_GLITCH11" />
      <Property name="English" value="Glitch Weather" />
      <Property name="USEnglish" value="Glitch Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GLITCH12">
      <Property name="Id" value="WEATHER_GLITCH12" />
      <Property name="English" value="Glitch Weather" />
      <Property name="USEnglish" value="Glitch Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RED1">
      <Property name="Id" value="WEATHER_RED1" />
      <Property name="English" value="Red, Unknowable Weather" />
      <Property name="USEnglish" value="Red, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RED2">
      <Property name="Id" value="WEATHER_RED2" />
      <Property name="English" value="Red, Unknowable Weather" />
      <Property name="USEnglish" value="Red, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RED3">
      <Property name="Id" value="WEATHER_RED3" />
      <Property name="English" value="Red, Unknowable Weather" />
      <Property name="USEnglish" value="Red, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RED4">
      <Property name="Id" value="WEATHER_RED4" />
      <Property name="English" value="Red, Unknowable Weather" />
      <Property name="USEnglish" value="Red, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RED5">
      <Property name="Id" value="WEATHER_RED5" />
      <Property name="English" value="Red, Unknowable Weather" />
      <Property name="USEnglish" value="Red, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RED6">
      <Property name="Id" value="WEATHER_RED6" />
      <Property name="English" value="Red, Unknowable Weather" />
      <Property name="USEnglish" value="Red, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RED7">
      <Property name="Id" value="WEATHER_RED7" />
      <Property name="English" value="Red, Unknowable Weather" />
      <Property name="USEnglish" value="Red, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RED8">
      <Property name="Id" value="WEATHER_RED8" />
      <Property name="English" value="Red, Unknowable Weather" />
      <Property name="USEnglish" value="Red, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RED9">
      <Property name="Id" value="WEATHER_RED9" />
      <Property name="English" value="Red, Unknowable Weather" />
      <Property name="USEnglish" value="Red, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_RED10">
      <Property name="Id" value="WEATHER_RED10" />
      <Property name="English" value="Red, Unknowable Weather" />
      <Property name="USEnglish" value="Red, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GREEN1">
      <Property name="Id" value="WEATHER_GREEN1" />
      <Property name="English" value="Green, Unknowable Weather" />
      <Property name="USEnglish" value="Green, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GREEN2">
      <Property name="Id" value="WEATHER_GREEN2" />
      <Property name="English" value="Green, Unknowable Weather" />
      <Property name="USEnglish" value="Green, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GREEN3">
      <Property name="Id" value="WEATHER_GREEN3" />
      <Property name="English" value="Green, Unknowable Weather" />
      <Property name="USEnglish" value="Green, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GREEN4">
      <Property name="Id" value="WEATHER_GREEN4" />
      <Property name="English" value="Green, Unknowable Weather" />
      <Property name="USEnglish" value="Green, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GREEN5">
      <Property name="Id" value="WEATHER_GREEN5" />
      <Property name="English" value="Green, Unknowable Weather" />
      <Property name="USEnglish" value="Green, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GREEN6">
      <Property name="Id" value="WEATHER_GREEN6" />
      <Property name="English" value="Green, Unknowable Weather" />
      <Property name="USEnglish" value="Green, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GREEN7">
      <Property name="Id" value="WEATHER_GREEN7" />
      <Property name="English" value="Green, Unknowable Weather" />
      <Property name="USEnglish" value="Green, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GREEN8">
      <Property name="Id" value="WEATHER_GREEN8" />
      <Property name="English" value="Green, Unknowable Weather" />
      <Property name="USEnglish" value="Green, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GREEN9">
      <Property name="Id" value="WEATHER_GREEN9" />
      <Property name="English" value="Green, Unknowable Weather" />
      <Property name="USEnglish" value="Green, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GREEN10">
      <Property name="Id" value="WEATHER_GREEN10" />
      <Property name="English" value="Green, Unknowable Weather" />
      <Property name="USEnglish" value="Green, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BLUE1">
      <Property name="Id" value="WEATHER_BLUE1" />
      <Property name="English" value="Blue, Unknowable Weather" />
      <Property name="USEnglish" value="Blue, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BLUE2">
      <Property name="Id" value="WEATHER_BLUE2" />
      <Property name="English" value="Blue, Unknowable Weather" />
      <Property name="USEnglish" value="Blue, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BLUE3">
      <Property name="Id" value="WEATHER_BLUE3" />
      <Property name="English" value="Blue, Unknowable Weather" />
      <Property name="USEnglish" value="Blue, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BLUE4">
      <Property name="Id" value="WEATHER_BLUE4" />
      <Property name="English" value="Blue, Unknowable Weather" />
      <Property name="USEnglish" value="Blue, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BLUE5">
      <Property name="Id" value="WEATHER_BLUE5" />
      <Property name="English" value="Blue, Unknowable Weather" />
      <Property name="USEnglish" value="Blue, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BLUE6">
      <Property name="Id" value="WEATHER_BLUE6" />
      <Property name="English" value="Blue, Unknowable Weather" />
      <Property name="USEnglish" value="Blue, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BLUE7">
      <Property name="Id" value="WEATHER_BLUE7" />
      <Property name="English" value="Blue, Unknowable Weather" />
      <Property name="USEnglish" value="Blue, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BLUE8">
      <Property name="Id" value="WEATHER_BLUE8" />
      <Property name="English" value="Blue, Unknowable Weather" />
      <Property name="USEnglish" value="Blue, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BLUE9">
      <Property name="Id" value="WEATHER_BLUE9" />
      <Property name="English" value="Blue, Unknowable Weather" />
      <Property name="USEnglish" value="Blue, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_BLUE10">
      <Property name="Id" value="WEATHER_BLUE10" />
      <Property name="English" value="Blue, Unknowable Weather" />
      <Property name="USEnglish" value="Blue, Unknowable Weather" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_LOW_1">
      <Property name="Id" value="UI_CONFLICT_LEVEL_LOW_1" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_LOW_2">
      <Property name="Id" value="UI_CONFLICT_LEVEL_LOW_2" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_LOW_3">
      <Property name="Id" value="UI_CONFLICT_LEVEL_LOW_3" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_LOW_4">
      <Property name="Id" value="UI_CONFLICT_LEVEL_LOW_4" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_LOW_5">
      <Property name="Id" value="UI_CONFLICT_LEVEL_LOW_5" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_LOW_6">
      <Property name="Id" value="UI_CONFLICT_LEVEL_LOW_6" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_LOW_7">
      <Property name="Id" value="UI_CONFLICT_LEVEL_LOW_7" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_LOW_8">
      <Property name="Id" value="UI_CONFLICT_LEVEL_LOW_8" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_LOW_9">
      <Property name="Id" value="UI_CONFLICT_LEVEL_LOW_9" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_LOW_10">
      <Property name="Id" value="UI_CONFLICT_LEVEL_LOW_10" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_MED_1">
      <Property name="Id" value="UI_CONFLICT_LEVEL_MED_1" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_MED_2">
      <Property name="Id" value="UI_CONFLICT_LEVEL_MED_2" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_MED_3">
      <Property name="Id" value="UI_CONFLICT_LEVEL_MED_3" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_MED_4">
      <Property name="Id" value="UI_CONFLICT_LEVEL_MED_4" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_MED_5">
      <Property name="Id" value="UI_CONFLICT_LEVEL_MED_5" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_MED_6">
      <Property name="Id" value="UI_CONFLICT_LEVEL_MED_6" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_MED_7">
      <Property name="Id" value="UI_CONFLICT_LEVEL_MED_7" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_MED_8">
      <Property name="Id" value="UI_CONFLICT_LEVEL_MED_8" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_MED_9">
      <Property name="Id" value="UI_CONFLICT_LEVEL_MED_9" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_MED_10">
      <Property name="Id" value="UI_CONFLICT_LEVEL_MED_10" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_HIGH_1">
      <Property name="Id" value="UI_CONFLICT_LEVEL_HIGH_1" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_HIGH_2">
      <Property name="Id" value="UI_CONFLICT_LEVEL_HIGH_2" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_HIGH_3">
      <Property name="Id" value="UI_CONFLICT_LEVEL_HIGH_3" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_HIGH_4">
      <Property name="Id" value="UI_CONFLICT_LEVEL_HIGH_4" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_HIGH_5">
      <Property name="Id" value="UI_CONFLICT_LEVEL_HIGH_5" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_HIGH_6">
      <Property name="Id" value="UI_CONFLICT_LEVEL_HIGH_6" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_HIGH_7">
      <Property name="Id" value="UI_CONFLICT_LEVEL_HIGH_7" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_HIGH_8">
      <Property name="Id" value="UI_CONFLICT_LEVEL_HIGH_8" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_HIGH_9">
      <Property name="Id" value="UI_CONFLICT_LEVEL_HIGH_9" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_CONFLICT_LEVEL_HIGH_10">
      <Property name="Id" value="UI_CONFLICT_LEVEL_HIGH_10" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_LOW_1">
      <Property name="Id" value="UI_ECON_LEVEL_LOW_1" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_LOW_2">
      <Property name="Id" value="UI_ECON_LEVEL_LOW_2" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_LOW_3">
      <Property name="Id" value="UI_ECON_LEVEL_LOW_3" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_LOW_4">
      <Property name="Id" value="UI_ECON_LEVEL_LOW_4" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_LOW_5">
      <Property name="Id" value="UI_ECON_LEVEL_LOW_5" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_LOW_6">
      <Property name="Id" value="UI_ECON_LEVEL_LOW_6" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_LOW_7">
      <Property name="Id" value="UI_ECON_LEVEL_LOW_7" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_LOW_8">
      <Property name="Id" value="UI_ECON_LEVEL_LOW_8" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_MED_1">
      <Property name="Id" value="UI_ECON_LEVEL_MED_1" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_MED_2">
      <Property name="Id" value="UI_ECON_LEVEL_MED_2" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_MED_3">
      <Property name="Id" value="UI_ECON_LEVEL_MED_3" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_MED_4">
      <Property name="Id" value="UI_ECON_LEVEL_MED_4" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_MED_5">
      <Property name="Id" value="UI_ECON_LEVEL_MED_5" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_MED_6">
      <Property name="Id" value="UI_ECON_LEVEL_MED_6" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_MED_7">
      <Property name="Id" value="UI_ECON_LEVEL_MED_7" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_MED_8">
      <Property name="Id" value="UI_ECON_LEVEL_MED_8" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_HIGH_1">
      <Property name="Id" value="UI_ECON_LEVEL_HIGH_1" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_HIGH_2">
      <Property name="Id" value="UI_ECON_LEVEL_HIGH_2" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_HIGH_3">
      <Property name="Id" value="UI_ECON_LEVEL_HIGH_3" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_HIGH_4">
      <Property name="Id" value="UI_ECON_LEVEL_HIGH_4" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_HIGH_5">
      <Property name="Id" value="UI_ECON_LEVEL_HIGH_5" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_HIGH_6">
      <Property name="Id" value="UI_ECON_LEVEL_HIGH_6" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_HIGH_7">
      <Property name="Id" value="UI_ECON_LEVEL_HIGH_7" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_LEVEL_HIGH_8">
      <Property name="Id" value="UI_ECON_LEVEL_HIGH_8" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_TECH_1">
      <Property name="Id" value="UI_ECON_CLASS_TECH_1" />
      <Property name="English" value="Technology" />
      <Property name="USEnglish" value="Technology" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_TECH_2">
      <Property name="Id" value="UI_ECON_CLASS_TECH_2" />
      <Property name="English" value="Technology" />
      <Property name="USEnglish" value="Technology" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_TECH_3">
      <Property name="Id" value="UI_ECON_CLASS_TECH_3" />
      <Property name="English" value="Technology" />
      <Property name="USEnglish" value="Technology" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_TECH_4">
      <Property name="Id" value="UI_ECON_CLASS_TECH_4" />
      <Property name="English" value="Technology" />
      <Property name="USEnglish" value="Technology" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_MINING_1">
      <Property name="Id" value="UI_ECON_CLASS_MINING_1" />
      <Property name="English" value="Mining" />
      <Property name="USEnglish" value="Mining" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_MINING_2">
      <Property name="Id" value="UI_ECON_CLASS_MINING_2" />
      <Property name="English" value="Mining" />
      <Property name="USEnglish" value="Mining" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_MINING_3">
      <Property name="Id" value="UI_ECON_CLASS_MINING_3" />
      <Property name="English" value="Mining" />
      <Property name="USEnglish" value="Mining" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_MINING_4">
      <Property name="Id" value="UI_ECON_CLASS_MINING_4" />
      <Property name="English" value="Mining" />
      <Property name="USEnglish" value="Mining" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_TRADE_1">
      <Property name="Id" value="UI_ECON_CLASS_TRADE_1" />
      <Property name="English" value="Trading" />
      <Property name="USEnglish" value="Trading" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_TRADE_2">
      <Property name="Id" value="UI_ECON_CLASS_TRADE_2" />
      <Property name="English" value="Trading" />
      <Property name="USEnglish" value="Trading" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_TRADE_3">
      <Property name="Id" value="UI_ECON_CLASS_TRADE_3" />
      <Property name="English" value="Trading" />
      <Property name="USEnglish" value="Trading" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_TRADE_4">
      <Property name="Id" value="UI_ECON_CLASS_TRADE_4" />
      <Property name="English" value="Trading" />
      <Property name="USEnglish" value="Trading" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_MANUFACT_1">
      <Property name="Id" value="UI_ECON_CLASS_MANUFACT_1" />
      <Property name="English" value="Manufacturing" />
      <Property name="USEnglish" value="Manufacturing" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_MANUFACT_2">
      <Property name="Id" value="UI_ECON_CLASS_MANUFACT_2" />
      <Property name="English" value="Manufacturing" />
      <Property name="USEnglish" value="Manufacturing" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_MANUFACT_3">
      <Property name="Id" value="UI_ECON_CLASS_MANUFACT_3" />
      <Property name="English" value="Manufacturing" />
      <Property name="USEnglish" value="Manufacturing" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_MANUFACT_4">
      <Property name="Id" value="UI_ECON_CLASS_MANUFACT_4" />
      <Property name="English" value="Manufacturing" />
      <Property name="USEnglish" value="Manufacturing" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_ALLOY_1">
      <Property name="Id" value="UI_ECON_CLASS_ALLOY_1" />
      <Property name="English" value="Advanced Materials" />
      <Property name="USEnglish" value="Advanced Materials" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_ALLOY_2">
      <Property name="Id" value="UI_ECON_CLASS_ALLOY_2" />
      <Property name="English" value="Advanced Materials" />
      <Property name="USEnglish" value="Advanced Materials" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_ALLOY_3">
      <Property name="Id" value="UI_ECON_CLASS_ALLOY_3" />
      <Property name="English" value="Advanced Materials" />
      <Property name="USEnglish" value="Advanced Materials" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_ALLOY_4">
      <Property name="Id" value="UI_ECON_CLASS_ALLOY_4" />
      <Property name="English" value="Advanced Materials" />
      <Property name="USEnglish" value="Advanced Materials" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_SCIENCE_1">
      <Property name="Id" value="UI_ECON_CLASS_SCIENCE_1" />
      <Property name="English" value="Scientific" />
      <Property name="USEnglish" value="Scientific" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_SCIENCE_2">
      <Property name="Id" value="UI_ECON_CLASS_SCIENCE_2" />
      <Property name="English" value="Scientific" />
      <Property name="USEnglish" value="Scientific" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_SCIENCE_3">
      <Property name="Id" value="UI_ECON_CLASS_SCIENCE_3" />
      <Property name="English" value="Scientific" />
      <Property name="USEnglish" value="Scientific" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_SCIENCE_4">
      <Property name="Id" value="UI_ECON_CLASS_SCIENCE_4" />
      <Property name="English" value="Scientific" />
      <Property name="USEnglish" value="Scientific" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_POWER_1">
      <Property name="Id" value="UI_ECON_CLASS_POWER_1" />
      <Property name="English" value="Power Generation" />
      <Property name="USEnglish" value="Power Generation" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_POWER_2">
      <Property name="Id" value="UI_ECON_CLASS_POWER_2" />
      <Property name="English" value="Power Generation" />
      <Property name="USEnglish" value="Power Generation" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_POWER_3">
      <Property name="Id" value="UI_ECON_CLASS_POWER_3" />
      <Property name="English" value="Power Generation" />
      <Property name="USEnglish" value="Power Generation" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_ECON_CLASS_POWER_4">
      <Property name="Id" value="UI_ECON_CLASS_POWER_4" />
      <Property name="English" value="Power Generation" />
      <Property name="USEnglish" value="Power Generation" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LUSH_GAL_1">
      <Property name="Id" value="LUSH_GAL_1" />
      <Property name="English" value="&lt;TRADEABLE&gt;A lush galaxy.&lt;&gt;" />
      <Property name="USEnglish" value="&lt;TRADEABLE&gt;A lush galaxy.&lt;&gt;" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LUSH_GAL_2">
      <Property name="Id" value="LUSH_GAL_2" />
      <Property name="English" value="&lt;TRADEABLE&gt;A lush galaxy.&lt;&gt;" />
      <Property name="USEnglish" value="&lt;TRADEABLE&gt;A lush galaxy.&lt;&gt;" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LUSH_GAL_3">
      <Property name="Id" value="LUSH_GAL_3" />
      <Property name="English" value="&lt;TRADEABLE&gt;A lush galaxy.&lt;&gt;" />
      <Property name="USEnglish" value="&lt;TRADEABLE&gt;A lush galaxy.&lt;&gt;" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LUSH_GAL_4">
      <Property name="Id" value="LUSH_GAL_4" />
      <Property name="English" value="&lt;TRADEABLE&gt;A lush galaxy.&lt;&gt;" />
      <Property name="USEnglish" value="&lt;TRADEABLE&gt;A lush galaxy.&lt;&gt;" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="EMPTY_GAL_1">
      <Property name="Id" value="EMPTY_GAL_1" />
      <Property name="English" value="&lt;TECHNOLOGY&gt;An empty galaxy.&lt;&gt;" />
      <Property name="USEnglish" value="&lt;TECHNOLOGY&gt;An empty galaxy.&lt;&gt;" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="EMPTY_GAL_2">
      <Property name="Id" value="EMPTY_GAL_2" />
      <Property name="English" value="&lt;TECHNOLOGY&gt;An empty galaxy.&lt;&gt;" />
      <Property name="USEnglish" value="&lt;TECHNOLOGY&gt;An empty galaxy.&lt;&gt;" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="EMPTY_GAL_3">
      <Property name="Id" value="EMPTY_GAL_3" />
      <Property name="English" value="&lt;TECHNOLOGY&gt;An empty galaxy.&lt;&gt;" />
      <Property name="USEnglish" value="&lt;TECHNOLOGY&gt;An empty galaxy.&lt;&gt;" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="EMPTY_GAL_4">
      <Property name="Id" value="EMPTY_GAL_4" />
      <Property name="English" value="&lt;TECHNOLOGY&gt;An empty galaxy.&lt;&gt;" />
      <Property name="USEnglish" value="&lt;TECHNOLOGY&gt;An empty galaxy.&lt;&gt;" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="HARSH_GAL_1">
      <Property name="Id" value="HARSH_GAL_1" />
      <Property name="English" value="&lt;FUEL&gt;A harsh galaxy.&lt;&gt;" />
      <Property name="USEnglish" value="&lt;FUEL&gt;A harsh galaxy.&lt;&gt;" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="HARSH_GAL_2">
      <Property name="Id" value="HARSH_GAL_2" />
      <Property name="English" value="&lt;FUEL&gt;A harsh galaxy.&lt;&gt;" />
      <Property name="USEnglish" value="&lt;FUEL&gt;A harsh galaxy.&lt;&gt;" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="HARSH_GAL_3">
      <Property name="Id" value="HARSH_GAL_3" />
      <Property name="English" value="&lt;FUEL&gt;A harsh galaxy.&lt;&gt;" />
      <Property name="USEnglish" value="&lt;FUEL&gt;A harsh galaxy.&lt;&gt;" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="HARSH_GAL_4">
      <Property name="Id" value="HARSH_GAL_4" />
      <Property name="English" value="&lt;FUEL&gt;A harsh galaxy.&lt;&gt;" />
      <Property name="USEnglish" value="&lt;FUEL&gt;A harsh galaxy.&lt;&gt;" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="NORM_GAL_1">
      <Property name="Id" value="NORM_GAL_1" />
      <Property name="English" value="&lt;VAL_ON&gt;A normal galaxy.&lt;&gt;" />
      <Property name="USEnglish" value="&lt;VAL_ON&gt;A normal galaxy.&lt;&gt;" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="NORM_GAL_2">
      <Property name="Id" value="NORM_GAL_2" />
      <Property name="English" value="&lt;VAL_ON&gt;A normal galaxy.&lt;&gt;" />
      <Property name="USEnglish" value="&lt;VAL_ON&gt;A normal galaxy.&lt;&gt;" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="NORM_GAL_3">
      <Property name="Id" value="NORM_GAL_3" />
      <Property name="English" value="&lt;VAL_ON&gt;A normal galaxy.&lt;&gt;" />
      <Property name="USEnglish" value="&lt;VAL_ON&gt;A normal galaxy.&lt;&gt;" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="NORM_GAL_4">
      <Property name="Id" value="NORM_GAL_4" />
      <Property name="English" value="&lt;VAL_ON&gt;A normal galaxy.&lt;&gt;" />
      <Property name="USEnglish" value="&lt;VAL_ON&gt;A normal galaxy.&lt;&gt;" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LUSH_GAL_1_DESC">
      <Property name="Id" value="LUSH_GAL_1_DESC" />
      <Property name="English" value="&lt;TRADEABLE&gt;A lush galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
      <Property name="USEnglish" value="&lt;TRADEABLE&gt;A lush galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LUSH_GAL_2_DESC">
      <Property name="Id" value="LUSH_GAL_2_DESC" />
      <Property name="English" value="&lt;TRADEABLE&gt;A lush galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
      <Property name="USEnglish" value="&lt;TRADEABLE&gt;A lush galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LUSH_GAL_3_DESC">
      <Property name="Id" value="LUSH_GAL_3_DESC" />
      <Property name="English" value="&lt;TRADEABLE&gt;A lush galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
      <Property name="USEnglish" value="&lt;TRADEABLE&gt;A lush galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LUSH_GAL_4_DESC">
      <Property name="Id" value="LUSH_GAL_4_DESC" />
      <Property name="English" value="&lt;TRADEABLE&gt;A lush galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
      <Property name="USEnglish" value="&lt;TRADEABLE&gt;A lush galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="EMPTY_GAL_1_DESC">
      <Property name="Id" value="EMPTY_GAL_1_DESC" />
      <Property name="English" value="&lt;TECHNOLOGY&gt;An empty galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
      <Property name="USEnglish" value="&lt;TECHNOLOGY&gt;An empty galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="EMPTY_GAL_2_DESC">
      <Property name="Id" value="EMPTY_GAL_2_DESC" />
      <Property name="English" value="&lt;TECHNOLOGY&gt;An empty galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
      <Property name="USEnglish" value="&lt;TECHNOLOGY&gt;An empty galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="EMPTY_GAL_3_DESC">
      <Property name="Id" value="EMPTY_GAL_3_DESC" />
      <Property name="English" value="&lt;TECHNOLOGY&gt;An empty galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
      <Property name="USEnglish" value="&lt;TECHNOLOGY&gt;An empty galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="EMPTY_GAL_4_DESC">
      <Property name="Id" value="EMPTY_GAL_4_DESC" />
      <Property name="English" value="&lt;TECHNOLOGY&gt;An empty galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
      <Property name="USEnglish" value="&lt;TECHNOLOGY&gt;An empty galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="HARSH_GAL_1_DESC">
      <Property name="Id" value="HARSH_GAL_1_DESC" />
      <Property name="English" value="&lt;FUEL&gt;A harsh galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
      <Property name="USEnglish" value="&lt;FUEL&gt;A harsh galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="HARSH_GAL_2_DESC">
      <Property name="Id" value="HARSH_GAL_2_DESC" />
      <Property name="English" value="&lt;FUEL&gt;A harsh galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
      <Property name="USEnglish" value="&lt;FUEL&gt;A harsh galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="HARSH_GAL_3_DESC">
      <Property name="Id" value="HARSH_GAL_3_DESC" />
      <Property name="English" value="&lt;FUEL&gt;A harsh galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
      <Property name="USEnglish" value="&lt;FUEL&gt;A harsh galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="HARSH_GAL_4_DESC">
      <Property name="Id" value="HARSH_GAL_4_DESC" />
      <Property name="English" value="&lt;FUEL&gt;A harsh galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
      <Property name="USEnglish" value="&lt;FUEL&gt;A harsh galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="NORM_GAL_1_DESC">
      <Property name="Id" value="NORM_GAL_1_DESC" />
      <Property name="English" value="&lt;VAL_ON&gt;A normal galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
      <Property name="USEnglish" value="&lt;VAL_ON&gt;A normal galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="NORM_GAL_2_DESC">
      <Property name="Id" value="NORM_GAL_2_DESC" />
      <Property name="English" value="&lt;VAL_ON&gt;A normal galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
      <Property name="USEnglish" value="&lt;VAL_ON&gt;A normal galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="NORM_GAL_3_DESC">
      <Property name="Id" value="NORM_GAL_3_DESC" />
      <Property name="English" value="&lt;VAL_ON&gt;A normal galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
      <Property name="USEnglish" value="&lt;VAL_ON&gt;A normal galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="NORM_GAL_4_DESC">
      <Property name="Id" value="NORM_GAL_4_DESC" />
      <Property name="English" value="&lt;VAL_ON&gt;A normal galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
      <Property name="USEnglish" value="&lt;VAL_ON&gt;A normal galaxy.&lt;&gt; The Atlas has created a simulation of its own world, its entire existence, in an attempt to witness its own impending death. It wishes to show me its past, its future..." />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_NONE1">
      <Property name="Id" value="SENTINEL_NONE1" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_NONE2">
      <Property name="Id" value="SENTINEL_NONE2" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_NONE3">
      <Property name="Id" value="SENTINEL_NONE3" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_NONE4">
      <Property name="Id" value="SENTINEL_NONE4" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_NONE5">
      <Property name="Id" value="SENTINEL_NONE5" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_NONE6">
      <Property name="Id" value="SENTINEL_NONE6" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_NONE7">
      <Property name="Id" value="SENTINEL_NONE7" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_NONE8">
      <Property name="Id" value="SENTINEL_NONE8" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_NONE9">
      <Property name="Id" value="SENTINEL_NONE9" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_NONE10">
      <Property name="Id" value="SENTINEL_NONE10" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_NONE11">
      <Property name="Id" value="SENTINEL_NONE11" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_NONE12">
      <Property name="Id" value="SENTINEL_NONE12" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_RARE1">
      <Property name="Id" value="SENTINEL_RARE1" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_RARE2">
      <Property name="Id" value="SENTINEL_RARE2" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_RARE3">
      <Property name="Id" value="SENTINEL_RARE3" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_RARE4">
      <Property name="Id" value="SENTINEL_RARE4" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_RARE5">
      <Property name="Id" value="SENTINEL_RARE5" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_RARE6">
      <Property name="Id" value="SENTINEL_RARE6" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_RARE7">
      <Property name="Id" value="SENTINEL_RARE7" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_RARE8">
      <Property name="Id" value="SENTINEL_RARE8" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_RARE9">
      <Property name="Id" value="SENTINEL_RARE9" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_RARE10">
      <Property name="Id" value="SENTINEL_RARE10" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_RARE11">
      <Property name="Id" value="SENTINEL_RARE11" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_RARE12">
      <Property name="Id" value="SENTINEL_RARE12" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_DEFAULT1">
      <Property name="Id" value="SENTINEL_DEFAULT1" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_DEFAULT2">
      <Property name="Id" value="SENTINEL_DEFAULT2" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_DEFAULT3">
      <Property name="Id" value="SENTINEL_DEFAULT3" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_DEFAULT4">
      <Property name="Id" value="SENTINEL_DEFAULT4" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_DEFAULT5">
      <Property name="Id" value="SENTINEL_DEFAULT5" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_DEFAULT6">
      <Property name="Id" value="SENTINEL_DEFAULT6" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_DEFAULT7">
      <Property name="Id" value="SENTINEL_DEFAULT7" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_DEFAULT8">
      <Property name="Id" value="SENTINEL_DEFAULT8" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_DEFAULT9">
      <Property name="Id" value="SENTINEL_DEFAULT9" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_DEFAULT10">
      <Property name="Id" value="SENTINEL_DEFAULT10" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_AGGRESSIVE1">
      <Property name="Id" value="SENTINEL_AGGRESSIVE1" />
      <Property name="English" value="Aggressive" />
      <Property name="USEnglish" value="Aggressive" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_AGGRESSIVE2">
      <Property name="Id" value="SENTINEL_AGGRESSIVE2" />
      <Property name="English" value="Aggressive" />
      <Property name="USEnglish" value="Aggressive" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_AGGRESSIVE3">
      <Property name="Id" value="SENTINEL_AGGRESSIVE3" />
      <Property name="English" value="Aggressive" />
      <Property name="USEnglish" value="Aggressive" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_AGGRESSIVE4">
      <Property name="Id" value="SENTINEL_AGGRESSIVE4" />
      <Property name="English" value="Aggressive" />
      <Property name="USEnglish" value="Aggressive" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_AGGRESSIVE5">
      <Property name="Id" value="SENTINEL_AGGRESSIVE5" />
      <Property name="English" value="Aggressive" />
      <Property name="USEnglish" value="Aggressive" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_AGGRESSIVE6">
      <Property name="Id" value="SENTINEL_AGGRESSIVE6" />
      <Property name="English" value="Aggressive" />
      <Property name="USEnglish" value="Aggressive" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_AGGRESSIVE7">
      <Property name="Id" value="SENTINEL_AGGRESSIVE7" />
      <Property name="English" value="Aggressive" />
      <Property name="USEnglish" value="Aggressive" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_AGGRESSIVE8">
      <Property name="Id" value="SENTINEL_AGGRESSIVE8" />
      <Property name="English" value="Aggressive" />
      <Property name="USEnglish" value="Aggressive" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_AGGRESSIVE9">
      <Property name="Id" value="SENTINEL_AGGRESSIVE9" />
      <Property name="English" value="Aggressive" />
      <Property name="USEnglish" value="Aggressive" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="AGE1">
      <Property name="Id" value="AGE1" />
      <Property name="English" value="Young" />
      <Property name="USEnglish" value="Young" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="AGE2">
      <Property name="Id" value="AGE2" />
      <Property name="English" value="Young" />
      <Property name="USEnglish" value="Young" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="AGE3">
      <Property name="Id" value="AGE3" />
      <Property name="English" value="Young" />
      <Property name="USEnglish" value="Young" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="AGE4">
      <Property name="Id" value="AGE4" />
      <Property name="English" value="Matured" />
      <Property name="USEnglish" value="Matured" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="AGE5">
      <Property name="Id" value="AGE5" />
      <Property name="English" value="Matured" />
      <Property name="USEnglish" value="Matured" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="AGE6">
      <Property name="Id" value="AGE6" />
      <Property name="English" value="Matured" />
      <Property name="USEnglish" value="Matured" />
	</Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_HIGH1">
      <Property name="Id" value="RARITY_HIGH1" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_HIGH2">
      <Property name="Id" value="RARITY_HIGH2" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_HIGH3">
      <Property name="Id" value="RARITY_HIGH3" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_HIGH4">
      <Property name="Id" value="RARITY_HIGH4" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_HIGH5">
      <Property name="Id" value="RARITY_HIGH5" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_HIGH6">
      <Property name="Id" value="RARITY_HIGH6" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_HIGH7">
      <Property name="Id" value="RARITY_HIGH7" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_HIGH8">
      <Property name="Id" value="RARITY_HIGH8" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_HIGH9">
      <Property name="Id" value="RARITY_HIGH9" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_HIGH10">
      <Property name="Id" value="RARITY_HIGH10" />
      <Property name="English" value="High" />
      <Property name="USEnglish" value="High" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_MID1">
      <Property name="Id" value="RARITY_MID1" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_MID2">
      <Property name="Id" value="RARITY_MID2" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_MID3">
      <Property name="Id" value="RARITY_MID3" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_MID4">
      <Property name="Id" value="RARITY_MID4" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_MID5">
      <Property name="Id" value="RARITY_MID5" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_MID6">
      <Property name="Id" value="RARITY_MID6" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_MID7">
      <Property name="Id" value="RARITY_MID7" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_MID8">
      <Property name="Id" value="RARITY_MID8" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_MID9">
      <Property name="Id" value="RARITY_MID9" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_MID10">
      <Property name="Id" value="RARITY_MID10" />
      <Property name="English" value="Medium" />
      <Property name="USEnglish" value="Medium" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_LOW1">
      <Property name="Id" value="RARITY_LOW1" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_LOW2">
      <Property name="Id" value="RARITY_LOW2" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_LOW3">
      <Property name="Id" value="RARITY_LOW3" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_LOW4">
      <Property name="Id" value="RARITY_LOW4" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_LOW5">
      <Property name="Id" value="RARITY_LOW5" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_LOW6">
      <Property name="Id" value="RARITY_LOW6" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_LOW7">
      <Property name="Id" value="RARITY_LOW7" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_LOW8">
      <Property name="Id" value="RARITY_LOW8" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_LOW9">
      <Property name="Id" value="RARITY_LOW9" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_LOW10">
      <Property name="Id" value="RARITY_LOW10" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_NONE1">
      <Property name="Id" value="RARITY_NONE1" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_NONE2">
      <Property name="Id" value="RARITY_NONE2" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_NONE3">
      <Property name="Id" value="RARITY_NONE3" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_NONE4">
      <Property name="Id" value="RARITY_NONE4" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_NONE5">
      <Property name="Id" value="RARITY_NONE5" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_NONE6">
      <Property name="Id" value="RARITY_NONE6" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_NONE7">
      <Property name="Id" value="RARITY_NONE7" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_NONE8">
      <Property name="Id" value="RARITY_NONE8" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_NONE9">
      <Property name="Id" value="RARITY_NONE9" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_NONE10">
      <Property name="Id" value="RARITY_NONE10" />
      <Property name="English" value="None" />
      <Property name="USEnglish" value="None" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_WEIRD1">
      <Property name="Id" value="RARITY_WEIRD1" />
      <Property name="English" value="Weird" />
      <Property name="USEnglish" value="Weird" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_WEIRD2">
      <Property name="Id" value="RARITY_WEIRD2" />
      <Property name="English" value="Weird" />
      <Property name="USEnglish" value="Weird" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_WEIRD3">
      <Property name="Id" value="RARITY_WEIRD3" />
      <Property name="English" value="Weird" />
      <Property name="USEnglish" value="Weird" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_WEIRD4">
      <Property name="Id" value="RARITY_WEIRD4" />
      <Property name="English" value="Weird" />
      <Property name="USEnglish" value="Weird" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_WEIRD5">
      <Property name="Id" value="RARITY_WEIRD5" />
      <Property name="English" value="Weird" />
      <Property name="USEnglish" value="Weird" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_WEIRD6">
      <Property name="Id" value="RARITY_WEIRD6" />
      <Property name="English" value="Weird" />
      <Property name="USEnglish" value="Weird" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_WEIRD7">
      <Property name="Id" value="RARITY_WEIRD7" />
      <Property name="English" value="Weird" />
      <Property name="USEnglish" value="Weird" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_WEIRD8">
      <Property name="Id" value="RARITY_WEIRD8" />
      <Property name="English" value="Weird" />
      <Property name="USEnglish" value="Weird" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_INFESTED1">
      <Property name="Id" value="RARITY_INFESTED1" />
      <Property name="English" value="Infested" />
      <Property name="French" value="" />
      <Property name="USEnglish" value="Infested" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_INFESTED2">
      <Property name="Id" value="RARITY_INFESTED2" />
      <Property name="English" value="Infested" />
      <Property name="USEnglish" value="Infested" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_INFESTED3">
      <Property name="Id" value="RARITY_INFESTED3" />
      <Property name="English" value="Infested" />
      <Property name="USEnglish" value="Infested" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_INFESTED4">
      <Property name="Id" value="RARITY_INFESTED4" />
      <Property name="English" value="Infested" />
      <Property name="USEnglish" value="Infested" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_INFESTED5">
      <Property name="Id" value="RARITY_INFESTED5" />
      <Property name="English" value="Infested" />
      <Property name="USEnglish" value="Infested" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RARITY_INFESTED6">
      <Property name="Id" value="RARITY_INFESTED6" />
      <Property name="English" value="Infested" />
      <Property name="USEnglish" value="Infested" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_LOW1">
      <Property name="Id" value="SENTINEL_LOW1" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_LOW2">
      <Property name="Id" value="SENTINEL_LOW2" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_LOW3">
      <Property name="Id" value="SENTINEL_LOW3" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_LOW4">
      <Property name="Id" value="SENTINEL_LOW4" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_LOW5">
      <Property name="Id" value="SENTINEL_LOW5" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_LOW6">
      <Property name="Id" value="SENTINEL_LOW6" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_LOW7">
      <Property name="Id" value="SENTINEL_LOW7" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_LOW8">
      <Property name="Id" value="SENTINEL_LOW8" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_LOW9">
      <Property name="Id" value="SENTINEL_LOW9" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_LOW10">
      <Property name="Id" value="SENTINEL_LOW10" />
      <Property name="English" value="Low" />
      <Property name="USEnglish" value="Low" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_HIGH1">
      <Property name="Id" value="SENTINEL_HIGH1" />
      <Property name="English" value="Aggressive" />
      <Property name="USEnglish" value="Aggressive" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_HIGH2">
      <Property name="Id" value="SENTINEL_HIGH2" />
      <Property name="English" value="Aggressive" />
      <Property name="USEnglish" value="Aggressive" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_HIGH3">
      <Property name="Id" value="SENTINEL_HIGH3" />
      <Property name="English" value="Aggressive" />
      <Property name="USEnglish" value="Aggressive" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_HIGH4">
      <Property name="Id" value="SENTINEL_HIGH4" />
      <Property name="English" value="Aggressive" />
      <Property name="USEnglish" value="Aggressive" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_HIGH5">
      <Property name="Id" value="SENTINEL_HIGH5" />
      <Property name="English" value="Aggressive" />
      <Property name="USEnglish" value="Aggressive" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_CORRUPT1">
      <Property name="Id" value="SENTINEL_CORRUPT1" />
      <Property name="English" value="Dissonant" />
      <Property name="USEnglish" value="Dissonant" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_CORRUPT2">
      <Property name="Id" value="SENTINEL_CORRUPT2" />
      <Property name="English" value="Dissonant" />
      <Property name="USEnglish" value="Dissonant" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_CORRUPT3">
      <Property name="Id" value="SENTINEL_CORRUPT3" />
      <Property name="English" value="Dissonant" />
      <Property name="USEnglish" value="Dissonant" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_CORRUPT4">
      <Property name="Id" value="SENTINEL_CORRUPT4" />
      <Property name="English" value="Dissonant" />
      <Property name="USEnglish" value="Dissonant" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_CORRUPT5">
      <Property name="Id" value="SENTINEL_CORRUPT5" />
      <Property name="English" value="Dissonant" />
      <Property name="USEnglish" value="Dissonant" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_CORRUPT6">
      <Property name="Id" value="SENTINEL_CORRUPT6" />
      <Property name="English" value="Dissonant" />
      <Property name="USEnglish" value="Dissonant" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SENTINEL_CORRUPT7">
      <Property name="Id" value="SENTINEL_CORRUPT7" />
      <Property name="English" value="Dissonant" />
      <Property name="USEnglish" value="Dissonant" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP1">
      <Property name="Id" value="WEATHER_SWAMP1" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP2">
      <Property name="Id" value="WEATHER_SWAMP2" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP3">
      <Property name="Id" value="WEATHER_SWAMP3" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP4">
      <Property name="Id" value="WEATHER_SWAMP4" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP5">
      <Property name="Id" value="WEATHER_SWAMP5" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP6">
      <Property name="Id" value="WEATHER_SWAMP6" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP7">
      <Property name="Id" value="WEATHER_SWAMP7" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP8">
      <Property name="Id" value="WEATHER_SWAMP8" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP9">
      <Property name="Id" value="WEATHER_SWAMP9" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP10">
      <Property name="Id" value="WEATHER_SWAMP10" />
      <Property name="English" value="Heat Storms" />
      <Property name="USEnglish" value="Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP_CLEAR1">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR1" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP_CLEAR2">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR2" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP_CLEAR3">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR3" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP_CLEAR4">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR4" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP_CLEAR5">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR5" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP_CLEAR6">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR6" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP_CLEAR7">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR7" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP_CLEAR8">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR8" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP_CLEAR9">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR9" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP_CLEAR10">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR10" />
      <Property name="English" value="Clear" />
      <Property name="USEnglish" value="Clear" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP_EXTREME1">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME1" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP_EXTREME2">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME2" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP_EXTREME3">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME3" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP_EXTREME4">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME4" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP_EXTREME5">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME5" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP_EXTREME6">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME6" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP_EXTREME7">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME7" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP_EXTREME8">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME8" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP_EXTREME9">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME9" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_SWAMP_EXTREME10">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME10" />
      <Property name="English" value="Extreme Heat Storms" />
      <Property name="USEnglish" value="Extreme Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SWAMPBIOME1">
      <Property name="Id" value="SWAMPBIOME1" />
      <Property name="English" value="Swamp %PLANETCLASS%" />
      <Property name="USEnglish" value="Swamp %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SWAMPBIOME2">
      <Property name="Id" value="SWAMPBIOME2" />
      <Property name="English" value="Swamp %PLANETCLASS%" />
      <Property name="USEnglish" value="Swamp %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SWAMPBIOME3">
      <Property name="Id" value="SWAMPBIOME3" />
      <Property name="English" value="Swamp %PLANETCLASS%" />
      <Property name="USEnglish" value="Swamp %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SWAMPBIOME4">
      <Property name="Id" value="SWAMPBIOME4" />
      <Property name="English" value="Swamp %PLANETCLASS%" />
      <Property name="USEnglish" value="Swamp %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SWAMPBIOME5">
      <Property name="Id" value="SWAMPBIOME5" />
      <Property name="English" value="Swamp %PLANETCLASS%" />
      <Property name="USEnglish" value="Swamp %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SWAMPBIOME6">
      <Property name="Id" value="SWAMPBIOME6" />
      <Property name="English" value="Swamp %PLANETCLASS%" />
      <Property name="USEnglish" value="Swamp %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SWAMPBIOME7">
      <Property name="Id" value="SWAMPBIOME7" />
      <Property name="English" value="Swamp %PLANETCLASS%" />
      <Property name="USEnglish" value="Swamp %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SWAMPBIOME8">
      <Property name="Id" value="SWAMPBIOME8" />
      <Property name="English" value="Swamp %PLANETCLASS%" />
      <Property name="USEnglish" value="Swamp %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SWAMPBIOME9">
      <Property name="Id" value="SWAMPBIOME9" />
      <Property name="English" value="Swamp %PLANETCLASS%" />
      <Property name="USEnglish" value="Swamp %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SWAMPBIOME10">
      <Property name="Id" value="SWAMPBIOME10" />
      <Property name="English" value="Swamp %PLANETCLASS%" />
      <Property name="USEnglish" value="Swamp %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SWAMPBIOME11">
      <Property name="Id" value="SWAMPBIOME11" />
      <Property name="English" value="Swamp %PLANETCLASS%" />
      <Property name="USEnglish" value="Swamp %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SWAMPBIOME12">
      <Property name="Id" value="SWAMPBIOME12" />
      <Property name="English" value="Swamp %PLANETCLASS%" />
      <Property name="USEnglish" value="Swamp %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SWAMPBIOME13">
      <Property name="Id" value="SWAMPBIOME13" />
      <Property name="English" value="Swamp %PLANETCLASS%" />
      <Property name="USEnglish" value="Swamp %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="SWAMPBIOME14">
      <Property name="Id" value="SWAMPBIOME14" />
      <Property name="English" value="Swamp %PLANETCLASS%" />
      <Property name="USEnglish" value="Swamp %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA1">
      <Property name="Id" value="WEATHER_LAVA1" />
      <Property name="English" value="Firestorms" />
      <Property name="USEnglish" value="Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA2">
      <Property name="Id" value="WEATHER_LAVA2" />
      <Property name="English" value="Firestorms" />
      <Property name="USEnglish" value="Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA3">
      <Property name="Id" value="WEATHER_LAVA3" />
      <Property name="English" value="Firestorms" />
      <Property name="USEnglish" value="Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA4">
      <Property name="Id" value="WEATHER_LAVA4" />
      <Property name="English" value="Firestorms" />
      <Property name="USEnglish" value="Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA5">
      <Property name="Id" value="WEATHER_LAVA5" />
      <Property name="English" value="Firestorms" />
      <Property name="USEnglish" value="Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA6">
      <Property name="Id" value="WEATHER_LAVA6" />
      <Property name="English" value="Firestorms" />
      <Property name="USEnglish" value="Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA7">
      <Property name="Id" value="WEATHER_LAVA7" />
      <Property name="English" value="Firestorms" />
      <Property name="USEnglish" value="Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA8">
      <Property name="Id" value="WEATHER_LAVA8" />
      <Property name="English" value="Firestorms" />
      <Property name="USEnglish" value="Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA9">
      <Property name="Id" value="WEATHER_LAVA9" />
      <Property name="English" value="Firestorms" />
      <Property name="USEnglish" value="Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA10">
      <Property name="Id" value="WEATHER_LAVA10" />
      <Property name="English" value="Firestorms" />
      <Property name="USEnglish" value="Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA11">
      <Property name="Id" value="WEATHER_LAVA11" />
      <Property name="English" value="Firestorms" />
      <Property name="USEnglish" value="Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_CLEAR1">
      <Property name="Id" value="WEATHER_LAVA_CLEAR1" />
      <Property name="English" value="Passive Heat" />
      <Property name="USEnglish" value="Passive Heat" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_CLEAR2">
      <Property name="Id" value="WEATHER_LAVA_CLEAR2" />
      <Property name="English" value="Passive Heat" />
      <Property name="USEnglish" value="Passive Heat" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_CLEAR3">
      <Property name="Id" value="WEATHER_LAVA_CLEAR3" />
      <Property name="English" value="Passive Heat" />
      <Property name="USEnglish" value="Passive Heat" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_CLEAR4">
      <Property name="Id" value="WEATHER_LAVA_CLEAR4" />
      <Property name="English" value="Passive Heat" />
      <Property name="USEnglish" value="Passive Heat" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_CLEAR5">
      <Property name="Id" value="WEATHER_LAVA_CLEAR5" />
      <Property name="English" value="Passive Heat" />
      <Property name="USEnglish" value="Passive Heat" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_CLEAR6">
      <Property name="Id" value="WEATHER_LAVA_CLEAR6" />
      <Property name="English" value="Passive Heat" />
      <Property name="USEnglish" value="Passive Heat" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_CLEAR7">
      <Property name="Id" value="WEATHER_LAVA_CLEAR7" />
      <Property name="English" value="Passive Heat" />
      <Property name="USEnglish" value="Passive Heat" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_CLEAR8">
      <Property name="Id" value="WEATHER_LAVA_CLEAR8" />
      <Property name="English" value="Passive Heat" />
      <Property name="USEnglish" value="Passive Heat" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_CLEAR9">
      <Property name="Id" value="WEATHER_LAVA_CLEAR9" />
      <Property name="English" value="Passive Heat" />
      <Property name="USEnglish" value="Passive Heat" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_CLEAR10">
      <Property name="Id" value="WEATHER_LAVA_CLEAR10" />
      <Property name="English" value="Passive Heat" />
      <Property name="USEnglish" value="Passive Heat" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_EXTREME1">
      <Property name="Id" value="WEATHER_LAVA_EXTREME1" />
      <Property name="English" value="Extreme Firestorms" />
      <Property name="USEnglish" value="Extreme Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_EXTREME2">
      <Property name="Id" value="WEATHER_LAVA_EXTREME2" />
      <Property name="English" value="Extreme Firestorms" />
      <Property name="USEnglish" value="Extreme Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_EXTREME3">
      <Property name="Id" value="WEATHER_LAVA_EXTREME3" />
      <Property name="English" value="Extreme Firestorms" />
      <Property name="USEnglish" value="Extreme Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_EXTREME4">
      <Property name="Id" value="WEATHER_LAVA_EXTREME4" />
      <Property name="English" value="Extreme Firestorms" />
      <Property name="USEnglish" value="Extreme Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_EXTREME5">
      <Property name="Id" value="WEATHER_LAVA_EXTREME5" />
      <Property name="English" value="Extreme Firestorms" />
      <Property name="USEnglish" value="Extreme Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_EXTREME6">
      <Property name="Id" value="WEATHER_LAVA_EXTREME6" />
      <Property name="English" value="Extreme Firestorms" />
      <Property name="USEnglish" value="Extreme Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_EXTREME7">
      <Property name="Id" value="WEATHER_LAVA_EXTREME7" />
      <Property name="English" value="Extreme Firestorms" />
      <Property name="USEnglish" value="Extreme Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_EXTREME8">
      <Property name="Id" value="WEATHER_LAVA_EXTREME8" />
      <Property name="English" value="Extreme Firestorms" />
      <Property name="USEnglish" value="Extreme Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_EXTREME9">
      <Property name="Id" value="WEATHER_LAVA_EXTREME9" />
      <Property name="English" value="Extreme Firestorms" />
      <Property name="USEnglish" value="Extreme Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_EXTREME10">
      <Property name="Id" value="WEATHER_LAVA_EXTREME10" />
      <Property name="English" value="Extreme Firestorms" />
      <Property name="USEnglish" value="Extreme Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_LAVA_EXTREME11">
      <Property name="Id" value="WEATHER_LAVA_EXTREME11" />
      <Property name="English" value="Extreme Firestorms" />
      <Property name="USEnglish" value="Extreme Firestorms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LAVABIOME1">
      <Property name="Id" value="LAVABIOME1" />
      <Property name="English" value="Volcanic %PLANETCLASS%" />
      <Property name="USEnglish" value="Volcanic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LAVABIOME2">
      <Property name="Id" value="LAVABIOME2" />
      <Property name="English" value="Volcanic %PLANETCLASS%" />
      <Property name="USEnglish" value="Volcanic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LAVABIOME3">
      <Property name="Id" value="LAVABIOME3" />
      <Property name="English" value="Volcanic %PLANETCLASS%" />
      <Property name="USEnglish" value="Volcanic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LAVABIOME4">
      <Property name="Id" value="LAVABIOME4" />
      <Property name="English" value="Volcanic %PLANETCLASS%" />
      <Property name="USEnglish" value="Volcanic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LAVABIOME5">
      <Property name="Id" value="LAVABIOME5" />
      <Property name="English" value="Volcanic %PLANETCLASS%" />
      <Property name="USEnglish" value="Volcanic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LAVABIOME6">
      <Property name="Id" value="LAVABIOME6" />
      <Property name="English" value="Volcanic %PLANETCLASS%" />
      <Property name="USEnglish" value="Volcanic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LAVABIOME7">
      <Property name="Id" value="LAVABIOME7" />
      <Property name="English" value="Volcanic %PLANETCLASS%" />
      <Property name="USEnglish" value="Volcanic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LAVABIOME8">
      <Property name="Id" value="LAVABIOME8" />
      <Property name="English" value="Volcanic %PLANETCLASS%" />
      <Property name="USEnglish" value="Volcanic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LAVABIOME9">
      <Property name="Id" value="LAVABIOME9" />
      <Property name="English" value="Volcanic %PLANETCLASS%" />
      <Property name="USEnglish" value="Volcanic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LAVABIOME10">
      <Property name="Id" value="LAVABIOME10" />
      <Property name="English" value="Volcanic %PLANETCLASS%" />
      <Property name="USEnglish" value="Volcanic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LAVABIOME11">
      <Property name="Id" value="LAVABIOME11" />
      <Property name="English" value="Volcanic %PLANETCLASS%" />
      <Property name="USEnglish" value="Volcanic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LAVABIOME12">
      <Property name="Id" value="LAVABIOME12" />
      <Property name="English" value="Volcanic %PLANETCLASS%" />
      <Property name="USEnglish" value="Volcanic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LAVABIOME13">
      <Property name="Id" value="LAVABIOME13" />
      <Property name="English" value="Volcanic %PLANETCLASS%" />
      <Property name="USEnglish" value="Volcanic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="LAVABIOME14">
      <Property name="Id" value="LAVABIOME14" />
      <Property name="English" value="Volcanic %PLANETCLASS%" />
      <Property name="USEnglish" value="Volcanic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_PET_CLIMATE_LUSH">
      <Property name="Id" value="UI_PET_CLIMATE_LUSH" />
      <Property name="English" value="Lush" />
      <Property name="USEnglish" value="Lush" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_PET_CLIMATE_DUST">
      <Property name="Id" value="UI_PET_CLIMATE_DUST" />
      <Property name="English" value="Desert" />
      <Property name="USEnglish" value="Desert" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_PET_CLIMATE_WEIRD">
      <Property name="Id" value="UI_PET_CLIMATE_WEIRD" />
      <Property name="English" value="Weird" />
      <Property name="USEnglish" value="Weird" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="UI_PET_CLIMATE_DEAD">
      <Property name="Id" value="UI_PET_CLIMATE_DEAD" />
      <Property name="English" value="Dead" />
      <Property name="USEnglish" value="Dead" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDLUSH1">
      <Property name="Id" value="RUINEDLUSH1" />
      <Property name="English" value="Ruined Lush %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Lush %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDLUSH2">
      <Property name="Id" value="RUINEDLUSH2" />
      <Property name="English" value="Ruined Lush %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Lush %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDLUSH3">
      <Property name="Id" value="RUINEDLUSH3" />
      <Property name="English" value="Ruined Lush %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Lush %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDLUSH4">
      <Property name="Id" value="RUINEDLUSH4" />
      <Property name="English" value="Ruined Lush %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Lush %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDTOX1">
      <Property name="Id" value="RUINEDTOX1" />
      <Property name="English" value="Ruined Toxic %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Toxic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDTOX2">
      <Property name="Id" value="RUINEDTOX2" />
      <Property name="English" value="Ruined Toxic %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Toxic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDTOX3">
      <Property name="Id" value="RUINEDTOX3" />
      <Property name="English" value="Ruined Toxic %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Toxic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDHOT1">
      <Property name="Id" value="RUINEDHOT1" />
      <Property name="English" value="Ruined Scorched %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Scorched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDHOT2">
      <Property name="Id" value="RUINEDHOT2" />
      <Property name="English" value="Ruined Scorched %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Scorched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDHOT3">
      <Property name="Id" value="RUINEDHOT3" />
      <Property name="English" value="Ruined Scorched %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Scorched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDHOT4">
      <Property name="Id" value="RUINEDHOT4" />
      <Property name="English" value="Ruined Scorched %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Scorched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDRAD1">
      <Property name="Id" value="RUINEDRAD1" />
      <Property name="English" value="Ruined Irradiated %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Irradiated %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDRAD2">
      <Property name="Id" value="RUINEDRAD2" />
      <Property name="English" value="Ruined Irradiated %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Irradiated %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDRAD3">
      <Property name="Id" value="RUINEDRAD3" />
      <Property name="English" value="Ruined Irradiated %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Irradiated %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDCOLD1">
      <Property name="Id" value="RUINEDCOLD1" />
      <Property name="English" value="Ruined Frozen %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Frozen %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDCOLD2">
      <Property name="Id" value="RUINEDCOLD2" />
      <Property name="English" value="Ruined Frozen %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Frozen %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDCOLD3">
      <Property name="Id" value="RUINEDCOLD3" />
      <Property name="English" value="Ruined Frozen %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Frozen %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDDUST1">
      <Property name="Id" value="RUINEDDUST1" />
      <Property name="English" value="Ruined Desert %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Desert %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDDUST2">
      <Property name="Id" value="RUINEDDUST2" />
      <Property name="English" value="Ruined Desert %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Desert %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDDUST3">
      <Property name="Id" value="RUINEDDUST3" />
      <Property name="English" value="Ruined Desert %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Desert %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINEDDUST4">
      <Property name="Id" value="RUINEDDUST4" />
      <Property name="English" value="Ruined Desert %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined Desert %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="RUINED1">
      <Property name="Id" value="RUINED1" />
      <Property name="English" value="Ruined %PLANETCLASS%" />
      <Property name="USEnglish" value="Ruined %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WATERWORLD1">
      <Property name="Id" value="WATERWORLD1" />
      <Property name="English" value="Waterworld" />
      <Property name="USEnglish" value="Waterworld" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WATERWORLD2">
      <Property name="Id" value="WATERWORLD2" />
      <Property name="English" value="Waterworld" />
      <Property name="USEnglish" value="Waterworld" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WATERWORLD3">
      <Property name="Id" value="WATERWORLD3" />
      <Property name="English" value="Waterworld" />
      <Property name="USEnglish" value="Waterworld" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WATERWORLD4">
      <Property name="Id" value="WATERWORLD4" />
      <Property name="English" value="Waterworld" />
      <Property name="USEnglish" value="Waterworld" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WATERWORLD5">
      <Property name="Id" value="WATERWORLD5" />
      <Property name="English" value="Waterworld" />
      <Property name="USEnglish" value="Waterworld" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WATERWORLD6">
      <Property name="Id" value="WATERWORLD6" />
      <Property name="English" value="Waterworld" />
      <Property name="USEnglish" value="Waterworld" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WATERWORLD7">
      <Property name="Id" value="WATERWORLD7" />
      <Property name="English" value="Waterworld" />
      <Property name="USEnglish" value="Waterworld" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WATERWORLD8">
      <Property name="Id" value="WATERWORLD8" />
      <Property name="English" value="Waterworld" />
      <Property name="USEnglish" value="Waterworld" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_WATERWORLD1">
      <Property name="Id" value="WEATHER_WATERWORLD1" />
      <Property name="English" value="Unknown Storm Possibility" />
      <Property name="USEnglish" value="Unknown Storm Possibility" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GASGIANT1">
      <Property name="Id" value="WEATHER_GASGIANT1" />
      <Property name="English" value="Endless Heat Storms" />
      <Property name="USEnglish" value="Endless Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GASGIANT2">
      <Property name="Id" value="WEATHER_GASGIANT2" />
      <Property name="English" value="Endless Heat Storms" />
      <Property name="USEnglish" value="Endless Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GASGIANT3">
      <Property name="Id" value="WEATHER_GASGIANT3" />
      <Property name="English" value="Endless Heat Storms" />
      <Property name="USEnglish" value="Endless Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="WEATHER_GASGIANT4">
      <Property name="Id" value="WEATHER_GASGIANT4" />
      <Property name="English" value="Endless Heat Storms" />
      <Property name="USEnglish" value="Endless Heat Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDLUSH1">
      <Property name="Id" value="INFESTEDLUSH1" />
      <Property name="English" value="Infested Lush %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Lush %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDLUSH2">
      <Property name="Id" value="INFESTEDLUSH2" />
      <Property name="English" value="Infested Lush %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Lush %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDLUSH3">
      <Property name="Id" value="INFESTEDLUSH3" />
      <Property name="English" value="Infested Lush %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Lush %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDLUSH4">
      <Property name="Id" value="INFESTEDLUSH4" />
      <Property name="English" value="Infested Lush %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Lush %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDTOX1">
      <Property name="Id" value="INFESTEDTOX1" />
      <Property name="English" value="Infested Toxic %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Toxic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDTOX2">
      <Property name="Id" value="INFESTEDTOX2" />
      <Property name="English" value="Infested Toxic %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Toxic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDTOX3">
      <Property name="Id" value="INFESTEDTOX3" />
      <Property name="English" value="Infested Toxic %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Toxic %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDHOT1">
      <Property name="Id" value="INFESTEDHOT1" />
      <Property name="English" value="Infested Scorched %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Scorched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDHOT2">
      <Property name="Id" value="INFESTEDHOT2" />
      <Property name="English" value="Infested Scorched %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Scorched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDHOT3">
      <Property name="Id" value="INFESTEDHOT3" />
      <Property name="English" value="Infested Scorched %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Scorched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDHOT4">
      <Property name="Id" value="INFESTEDHOT4" />
      <Property name="English" value="Infested Scorched %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Scorched %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDRAD1">
      <Property name="Id" value="INFESTEDRAD1" />
      <Property name="English" value="Infested Radioactive %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Radioactive %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDRAD2">
      <Property name="Id" value="INFESTEDRAD2" />
      <Property name="English" value="Infested Radioactive %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Radioactive %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDRAD3">
      <Property name="Id" value="INFESTEDRAD3" />
      <Property name="English" value="Infested Radioactive %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Radioactive %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDCOLD1">
      <Property name="Id" value="INFESTEDCOLD1" />
      <Property name="English" value="Infested Frozen %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Frozen %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDCOLD2">
      <Property name="Id" value="INFESTEDCOLD2" />
      <Property name="English" value="Infested Frozen %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Frozen %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDCOLD3">
      <Property name="Id" value="INFESTEDCOLD3" />
      <Property name="English" value="Infested Frozen %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Frozen %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDDUST1">
      <Property name="Id" value="INFESTEDDUST1" />
      <Property name="English" value="Infested Desert %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Desert %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDDUST2">
      <Property name="Id" value="INFESTEDDUST2" />
      <Property name="English" value="Infested Desert %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Desert %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDDUST3">
      <Property name="Id" value="INFESTEDDUST3" />
      <Property name="English" value="Infested Desert %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Desert %PLANETCLASS%" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry" _id="INFESTEDDUST4">
      <Property name="Id" value="INFESTEDDUST4" />
      <Property name="English" value="Infested Desert %PLANETCLASS%" />
      <Property name="USEnglish" value="Infested Desert %PLANETCLASS%" />
    </Property>
	</Property>
</Data>
]]
    },
  }
}