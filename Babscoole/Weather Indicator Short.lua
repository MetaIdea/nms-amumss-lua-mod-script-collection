NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Weather Indicator Short",
["MOD_AUTHOR"]      = "beihaixingchen",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.58",
["MOD_DESCRIPTION"] = "Adds storm frequency indicators to all planetary weather descriptions",
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
<Data template="TkLocalisationTable">
  <Property name="Table">
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT1" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT2" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT3" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT4" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT5" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT6" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT7" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT8" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT9" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT10" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT_CLEAR1" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT_CLEAR2" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT_CLEAR3" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT_CLEAR4" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT_CLEAR5" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT_CLEAR6" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT_CLEAR7" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT_CLEAR8" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEATEXTREME1" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEATEXTREME2" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEATEXTREME3" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEATEXTREME4" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEATEXTREME5" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEATEXTREME6" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEATEXTREME7" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEATEXTREME8" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEATEXTREME9" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEATEXTREME10" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLDEXTREME1" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLDEXTREME2" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLDEXTREME3" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLDEXTREME4" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLDEXTREME5" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLDEXTREME6" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLDEXTREME7" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLDEXTREME8" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLDEXTREME9" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLDEXTREME10" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD1" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD2" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD3" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD4" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD5" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD6" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD7" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD8" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD9" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD10" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD_CLEAR1" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD_CLEAR2" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD_CLEAR3" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD_CLEAR4" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD_CLEAR5" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD_CLEAR6" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD_CLEAR7" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD_CLEAR8" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME1" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME2" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME3" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME4" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME5" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME6" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME7" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME8" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME9" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME10" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME11" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME12" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC1" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC2" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC3" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC4" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC5" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC6" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC7" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC8" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC9" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC10" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC11" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC12" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR1" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR2" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR3" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR4" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR5" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR6" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR7" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR8" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR9" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR10" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIOEXTREME1" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIOEXTREME2" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIOEXTREME3" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIOEXTREME4" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIOEXTREME5" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIOEXTREME6" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIOEXTREME7" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIOEXTREME8" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIOEXTREME9" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIOEXTREME10" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO1" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO2" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO3" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO4" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO5" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO6" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO7" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO8" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO9" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO10" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO_CLEAR1" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO_CLEAR2" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO_CLEAR3" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO_CLEAR4" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO_CLEAR5" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO_CLEAR6" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO_CLEAR7" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO_CLEAR8" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSHEXTREME1" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSHEXTREME2" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSHEXTREME3" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSHEXTREME4" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSHEXTREME5" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSHEXTREME6" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSHEXTREME7" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSHEXTREME8" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSHEXTREME9" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSHEXTREME10" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH1" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH2" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH3" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH4" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH5" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH6" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH7" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH8" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH9" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH10" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH_CLEAR1" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH_CLEAR2" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH_CLEAR3" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH_CLEAR4" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH_CLEAR5" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH_CLEAR6" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH_CLEAR7" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH_CLEAR8" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH_CLEAR9" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH_CLEAR10" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARRENEXTREME1" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARRENEXTREME2" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARRENEXTREME3" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARRENEXTREME4" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARRENEXTREME5" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARRENEXTREME6" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARRENEXTREME7" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARRENEXTREME8" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARRENEXTREME9" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARRENEXTREME10" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN1" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN2" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN3" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN4" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN5" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN6" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN7" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN8" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN9" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN10" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN_CLEAR1" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN_CLEAR2" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN_CLEAR3" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN_CLEAR4" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN_CLEAR5" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN_CLEAR6" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN_CLEAR7" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN_CLEAR8" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_DEAD1" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_DEAD2" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_DEAD3" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_DEAD4" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_DEAD5" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_DEAD6" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_DEAD7" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_DEAD8" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_DEAD9" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_DEAD10" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_CLEAR1" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_CLEAR2" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_CLEAR3" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_CLEAR4" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_CLEAR5" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_CLEAR6" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_CLEAR7" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_CLEAR8" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_CLEAR9" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_CLEAR10" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP1" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP2" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP3" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP4" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP5" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP6" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP7" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP8" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP9" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP10" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR1" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR2" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR3" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR4" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR5" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR6" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR7" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR8" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR9" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR10" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME1" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME2" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME3" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME4" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME5" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME6" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME7" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME8" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME9" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME10" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA1" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA2" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA3" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA4" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA5" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA6" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA7" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA8" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA9" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA10" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA11" />
      <Property name="BrazilianPortuguese" value="Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele stormen" />
      <Property name="English" value="Occasional Storms" />
      <Property name="French" value="Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste occasionali" />
      <Property name="Japanese" value="時折のストーム" />
      <Property name="Korean" value="가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ocasionais" />
      <Property name="Russian" value="Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶尔风暴" />
      <Property name="Spanish" value="Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶爾風暴" />
      <Property name="USEnglish" value="Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_CLEAR1" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_CLEAR2" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_CLEAR3" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_CLEAR4" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_CLEAR5" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_CLEAR6" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_CLEAR7" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_CLEAR8" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_CLEAR9" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_CLEAR10" />
      <Property name="BrazilianPortuguese" value="em tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME1" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME2" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME3" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME4" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME5" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME6" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME7" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME8" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME9" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME10" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME11" />
      <Property name="BrazilianPortuguese" value="Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige stormen" />
      <Property name="English" value="Frequent Storms" />
      <Property name="French" value="Tempêtes fréquentes" />
      <Property name="German" value="Häufige Stürme" />
      <Property name="Italian" value="Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なストーム" />
      <Property name="Korean" value="빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze" />
      <Property name="Portuguese" value="Tempestades frequentes" />
      <Property name="Russian" value="Частые штормы" />
      <Property name="SimplifiedChinese" value="经常风暴" />
      <Property name="Spanish" value="Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="經常風暴" />
      <Property name="USEnglish" value="Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH1" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH2" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH3" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH4" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH5" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH6" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH7" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH8" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH9" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH10" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH11" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH12" />
      <Property name="BrazilianPortuguese" value="Sem tempestade" />
      <Property name="Dutch" value="Geen storm" />
      <Property name="English" value="No Storms" />
      <Property name="French" value="Pas de tempête" />
      <Property name="German" value="Kein Sturm" />
      <Property name="Italian" value="Nessuna tempesta" />
      <Property name="Japanese" value="ストームなし" />
      <Property name="Korean" value="폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin tormentas" />
      <Property name="Polish" value="Brak burzy" />
      <Property name="Portuguese" value="Sem tempestade" />
      <Property name="Russian" value="Без шторма" />
      <Property name="SimplifiedChinese" value="无风暴" />
      <Property name="Spanish" value="Sin tormentas" />
      <Property name="TraditionalChinese" value="無風暴" />
      <Property name="USEnglish" value="No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RED1" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RED2" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RED3" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RED4" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RED5" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RED6" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RED7" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RED8" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RED9" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RED10" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GREEN1" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GREEN2" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GREEN3" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GREEN4" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GREEN5" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GREEN6" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GREEN7" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GREEN8" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GREEN9" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GREEN10" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BLUE1" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BLUE2" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BLUE3" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BLUE4" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BLUE5" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BLUE6" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BLUE7" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BLUE8" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BLUE9" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BLUE10" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_WATERWORLD1" />
      <Property name="BrazilianPortuguese" value="Desconhecido" />
      <Property name="Dutch" value="Onbekend" />
      <Property name="English" value="Unknown" />
      <Property name="French" value="Inconnu" />
      <Property name="German" value="Unbekannt" />
      <Property name="Italian" value="Sconosciuto" />
      <Property name="Japanese" value="不明" />
      <Property name="Korean" value="알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Desconocido" />
      <Property name="Polish" value="Nieznane" />
      <Property name="Portuguese" value="Desconhecido" />
      <Property name="Russian" value="Неизвестно" />
      <Property name="SimplifiedChinese" value="未知" />
      <Property name="Spanish" value="Desconocido" />
      <Property name="TraditionalChinese" value="未知" />
      <Property name="USEnglish" value="Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GASGIANT1" />
      <Property name="BrazilianPortuguese" value="Tempestades extremas" />
      <Property name="Dutch" value="Extreme stormen" />
      <Property name="English" value="Extreme Storms" />
      <Property name="French" value="Tempêtes extrêmes" />
      <Property name="German" value="Extreme Stürme" />
      <Property name="Italian" value="Tempeste estreme" />
      <Property name="Japanese" value="極端なストーム" />
      <Property name="Korean" value="극심한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas extremas" />
      <Property name="Polish" value="Ekstremalne burze" />
      <Property name="Portuguese" value="Tempestades extremas" />
      <Property name="Russian" value="Экстремальные штормы" />
      <Property name="SimplifiedChinese" value="极端风暴" />
      <Property name="Spanish" value="Tormentas extremas" />
      <Property name="TraditionalChinese" value="極端風暴" />
      <Property name="USEnglish" value="Extreme Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GASGIANT2" />
      <Property name="BrazilianPortuguese" value="Tempestades extremas" />
      <Property name="Dutch" value="Extreme stormen" />
      <Property name="English" value="Extreme Storms" />
      <Property name="French" value="Tempêtes extrêmes" />
      <Property name="German" value="Extreme Stürme" />
      <Property name="Italian" value="Tempeste estreme" />
      <Property name="Japanese" value="極端なストーム" />
      <Property name="Korean" value="극심한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas extremas" />
      <Property name="Polish" value="Ekstremalne burze" />
      <Property name="Portuguese" value="Tempestades extremas" />
      <Property name="Russian" value="Экстремальные штормы" />
      <Property name="SimplifiedChinese" value="极端风暴" />
      <Property name="Spanish" value="Tormentas extremas" />
      <Property name="TraditionalChinese" value="極端風暴" />
      <Property name="USEnglish" value="Extreme Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GASGIANT3" />
      <Property name="BrazilianPortuguese" value="Tempestades extremas" />
      <Property name="Dutch" value="Extreme stormen" />
      <Property name="English" value="Extreme Storms" />
      <Property name="French" value="Tempêtes extrêmes" />
      <Property name="German" value="Extreme Stürme" />
      <Property name="Italian" value="Tempeste estreme" />
      <Property name="Japanese" value="極端なストーム" />
      <Property name="Korean" value="극심한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas extremas" />
      <Property name="Polish" value="Ekstremalne burze" />
      <Property name="Portuguese" value="Tempestades extremas" />
      <Property name="Russian" value="Экстремальные штормы" />
      <Property name="SimplifiedChinese" value="极端风暴" />
      <Property name="Spanish" value="Tormentas extremas" />
      <Property name="TraditionalChinese" value="極端風暴" />
      <Property name="USEnglish" value="Extreme Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GASGIANT4" />
      <Property name="BrazilianPortuguese" value="Tempestades extremas" />
      <Property name="Dutch" value="Extreme stormen" />
      <Property name="English" value="Extreme Storms" />
      <Property name="French" value="Tempêtes extrêmes" />
      <Property name="German" value="Extreme Stürme" />
      <Property name="Italian" value="Tempeste estreme" />
      <Property name="Japanese" value="極端なストーム" />
      <Property name="Korean" value="극심한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas extremas" />
      <Property name="Polish" value="Ekstremalne burze" />
      <Property name="Portuguese" value="Tempestades extremas" />
      <Property name="Russian" value="Экстремальные штормы" />
      <Property name="SimplifiedChinese" value="极端风暴" />
      <Property name="Spanish" value="Tormentas extremas" />
      <Property name="TraditionalChinese" value="極端風暴" />
      <Property name="USEnglish" value="Extreme Storms" />
    </Property>
  </Property>
</Data>
]]
    },
  }
}