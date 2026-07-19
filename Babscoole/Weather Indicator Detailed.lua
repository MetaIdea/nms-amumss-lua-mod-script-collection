NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Weather Indicator Detailed",
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
      <Property name="BrazilianPortuguese" value="Raras tempestades de calor - Tempestades ocasionais" />
      <Property name="Dutch" value="Onregelmatige hittestormen - Incidentele stormen" />
      <Property name="English" value="Infrequent Heat Storms - Occasional Storms" />
      <Property name="French" value="Canicules occasionnelles - Tempêtes occasionnelles" />
      <Property name="German" value="Vereinzelte Hitzestürme - Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste di calore infrequenti - Tempeste occasionali" />
      <Property name="Japanese" value="不定期に起こる熱嵐 - 時折のストーム" />
      <Property name="Korean" value="드문 열폭풍 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de calor inusuales - Tormentas ocasionales" />
      <Property name="Polish" value="Nieczęste burze gorąca - Sporadyczne burze" />
      <Property name="Portuguese" value="Escassas tempestades de calor - Tempestades ocasionais" />
      <Property name="Russian" value="Нечастые тепловые бури - Редкие штормы" />
      <Property name="SimplifiedChinese" value="罕见热量风暴-偶尔风暴" />
      <Property name="Spanish" value="Tormentas de calor inusuales - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="稀有的熱風暴-偶爾風暴" />
      <Property name="USEnglish" value="Infrequent Heat Storms - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT2" />
      <Property name="BrazilianPortuguese" value="Tempestades de fogo raras - Tempestades ocasionais" />
      <Property name="Dutch" value="Zeldzame vuurstormen - Incidentele stormen" />
      <Property name="English" value="Rare Firestorms - Occasional Storms" />
      <Property name="French" value="Tempêtes de feu rares - Tempêtes occasionnelles" />
      <Property name="German" value="Seltene Feuerstürme - Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste di fuoco rare - Tempeste occasionali" />
      <Property name="Japanese" value="稀に起こる炎の旋風 - 時折のストーム" />
      <Property name="Korean" value="희귀한 화선풍 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Lluvias de fuego raras - Tormentas ocasionales" />
      <Property name="Polish" value="Rzadkie burze ognia - Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades de fogo raras - Tempestades ocasionais" />
      <Property name="Russian" value="Редкие огненные бури - Редкие штормы" />
      <Property name="SimplifiedChinese" value="稀有火焰风暴-偶尔风暴" />
      <Property name="Spanish" value="Lluvias de fuego raras - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="罕見的火焰風暴-偶爾風暴" />
      <Property name="USEnglish" value="Rare Firestorms - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT3" />
      <Property name="BrazilianPortuguese" value="Bolsões de gás superaquecido - Tempestades ocasionais" />
      <Property name="Dutch" value="Superhete gasbellen - Incidentele stormen" />
      <Property name="English" value="Superheated Gas Pockets - Occasional Storms" />
      <Property name="French" value="Poches de gaz surchauffées - Tempêtes occasionnelles" />
      <Property name="German" value="Überhitzte Gaseinschlüsse - Gelegentliche Stürme" />
      <Property name="Italian" value="Sacche di gas super-caldo - Tempeste occasionali" />
      <Property name="Japanese" value="過熱したガス嚢 - 時折のストーム" />
      <Property name="Korean" value="과열된 기공 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Bolsas de gas supercalientes - Tormentas ocasionales" />
      <Property name="Polish" value="Podgrzane złoża gazu - Sporadyczne burze" />
      <Property name="Portuguese" value="Nuvens de gás superaquecido - Tempestades ocasionais" />
      <Property name="Russian" value="Зоны раскаленного газа - Редкие штормы" />
      <Property name="SimplifiedChinese" value="过热化气窝-偶尔风暴" />
      <Property name="Spanish" value="Bolsas de gas supercalientes - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="極熱氣袋-偶爾風暴" />
      <Property name="USEnglish" value="Superheated Gas Pockets - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT4" />
      <Property name="BrazilianPortuguese" value="Pontos de calor móveis - Tempestades ocasionais" />
      <Property name="Dutch" value="Zwervende hotspots - Incidentele stormen" />
      <Property name="English" value="Wandering Hot Spots - Occasional Storms" />
      <Property name="French" value="Points chauds mobiles - Tempêtes occasionnelles" />
      <Property name="German" value="Wechselnde Temperaturspitzen - Gelegentliche Stürme" />
      <Property name="Italian" value="Ondate di caldo - Tempeste occasionali" />
      <Property name="Japanese" value="遊走性のホットスポット - 時折のストーム" />
      <Property name="Korean" value="방랑하는 열점 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Zonas calientes ambulantes - Tormentas ocasionales" />
      <Property name="Polish" value="Wędrujące gorące pola - Sporadyczne burze" />
      <Property name="Portuguese" value="Pontos quentes errantes - Tempestades ocasionais" />
      <Property name="Russian" value="Блуждающие горячие облака - Редкие штормы" />
      <Property name="SimplifiedChinese" value="游离的热点-偶尔风暴" />
      <Property name="Spanish" value="Zonas calientes ambulantes - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="游移熱點-偶爾風暴" />
      <Property name="USEnglish" value="Wandering Hot Spots - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT5" />
      <Property name="BrazilianPortuguese" value="Calor atmosférico instável - Tempestades ocasionais" />
      <Property name="Dutch" value="Warmte-instabiliteiten - Incidentele stormen" />
      <Property name="English" value="Atmospheric Heat Instabilities - Occasional Storms" />
      <Property name="French" value="Chaleur instable - Tempêtes occasionnelles" />
      <Property name="German" value="Variable atmosphärische Wärme - Gelegentliche Stürme" />
      <Property name="Italian" value="Fluttuazioni di calore aeree - Tempeste occasionali" />
      <Property name="Japanese" value="不安定な大気熱 - 時折のストーム" />
      <Property name="Korean" value="대기열 불안정 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Inestabilidades de calor  - Tormentas ocasionales" />
      <Property name="Polish" value="Niestabilne ciepło atmosfery - Sporadyczne burze" />
      <Property name="Portuguese" value="Oscilação de calor atmosférico - Tempestades ocasionais" />
      <Property name="Russian" value="Темп. аномалии в атмосфере - Редкие штормы" />
      <Property name="SimplifiedChinese" value="大气热量不稳定-偶尔风暴" />
      <Property name="Spanish" value="Inestabilidades de calor  - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="大氣熱度不穩定性-偶爾風暴" />
      <Property name="USEnglish" value="Atmospheric Heat Instabilities - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT6" />
      <Property name="BrazilianPortuguese" value="Luz direta do sol - Tempestades ocasionais" />
      <Property name="Dutch" value="Felle zon - Incidentele stormen" />
      <Property name="English" value="Direct Sunlight - Occasional Storms" />
      <Property name="French" value="Radiation solaire directe - Tempêtes occasionnelles" />
      <Property name="German" value="Direktes Sonnenlicht - Gelegentliche Stürme" />
      <Property name="Italian" value="Luce diretta - Tempeste occasionali" />
      <Property name="Japanese" value="直射日光 - 時折のストーム" />
      <Property name="Korean" value="태양 직사광 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Exposición directa al sol - Tormentas ocasionales" />
      <Property name="Polish" value="Bezpośrednie światło słon. - Sporadyczne burze" />
      <Property name="Portuguese" value="Luz solar direta - Tempestades ocasionais" />
      <Property name="Russian" value="Прямые солнечные лучи - Редкие штормы" />
      <Property name="SimplifiedChinese" value="阳光直射-偶尔风暴" />
      <Property name="Spanish" value="Exposición directa al sol - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="陽光直射-偶爾風暴" />
      <Property name="USEnglish" value="Direct Sunlight - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT7" />
      <Property name="BrazilianPortuguese" value="Atmosfera aquecida - Tempestades ocasionais" />
      <Property name="Dutch" value="Hete atmosfeer - Incidentele stormen" />
      <Property name="English" value="Heated Atmosphere - Occasional Storms" />
      <Property name="French" value="Atmosphère brûlante - Tempêtes occasionnelles" />
      <Property name="German" value="Aufgeheizte Atmosphäre - Gelegentliche Stürme" />
      <Property name="Italian" value="Atmosfera surriscaldata - Tempeste occasionali" />
      <Property name="Japanese" value="熱せられた大気 - 時折のストーム" />
      <Property name="Korean" value="가열된 대기 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Atmósfera ardiente - Tormentas ocasionales" />
      <Property name="Polish" value="Podgrzana atmosfera - Sporadyczne burze" />
      <Property name="Portuguese" value="Atmosfera aquecida - Tempestades ocasionais" />
      <Property name="Russian" value="Нагретая атмосфера - Редкие штормы" />
      <Property name="SimplifiedChinese" value="高热大气-偶尔风暴" />
      <Property name="Spanish" value="Atmósfera ardiente - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="高溫大氣-偶爾風暴" />
      <Property name="USEnglish" value="Heated Atmosphere - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT8" />
      <Property name="BrazilianPortuguese" value="Raras tempestades de cinzas - Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele asstormen - Incidentele stormen" />
      <Property name="English" value="Occasional Ash Storms - Occasional Storms" />
      <Property name="French" value="Tempêtes de cendres - Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Aschestürme - Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste di cenere fortuite - Tempeste occasionali" />
      <Property name="Japanese" value="時折の灰嵐 - 時折のストーム" />
      <Property name="Korean" value="가끔씩 재 폭풍 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Lluvias de ceniza ocasionales - Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze popiołu - Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestade de cinza ocasional - Tempestades ocasionais" />
      <Property name="Russian" value="Нерегулярные выбросы пепла - Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶见灰烬风暴-偶尔风暴" />
      <Property name="Spanish" value="Lluvias de ceniza ocasionales - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶發的灰塵暴-偶爾風暴" />
      <Property name="USEnglish" value="Occasional Ash Storms - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT9" />
      <Property name="BrazilianPortuguese" value="Perigosamente quente - Tempestades ocasionais" />
      <Property name="Dutch" value="Gevaarlijk heet - Incidentele stormen" />
      <Property name="English" value="Dangerously Hot - Occasional Storms" />
      <Property name="French" value="Chaleur dangereuse - Tempêtes occasionnelles" />
      <Property name="German" value="Gefährlich heiß - Gelegentliche Stürme" />
      <Property name="Italian" value="Pericolosamente caldo - Tempeste occasionali" />
      <Property name="Japanese" value="非常に暑い - 時折のストーム" />
      <Property name="Korean" value="위험할 정도로 뜨거움 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Peligrosamente caliente - Tormentas ocasionales" />
      <Property name="Polish" value="Niebezpiecznie gorąco - Sporadyczne burze" />
      <Property name="Portuguese" value="Perigosamente quente - Tempestades ocasionais" />
      <Property name="Russian" value="Опасный жар - Редкие штормы" />
      <Property name="SimplifiedChinese" value="极度危险的热量-偶尔风暴" />
      <Property name="Spanish" value="Peligrosamente caliente - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="危險高溫-偶爾風暴" />
      <Property name="USEnglish" value="Dangerously Hot - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT10" />
      <Property name="BrazilianPortuguese" value="Ar abrasador - Tempestades ocasionais" />
      <Property name="Dutch" value="Brandende lucht - Incidentele stormen" />
      <Property name="English" value="Burning Air - Occasional Storms" />
      <Property name="French" value="Air brûlant - Tempêtes occasionnelles" />
      <Property name="German" value="Brennende Luft - Gelegentliche Stürme" />
      <Property name="Italian" value="Aria ardente - Tempeste occasionali" />
      <Property name="Japanese" value="灼熱の大気 - 時折のストーム" />
      <Property name="Korean" value="불타는 공기 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Aire abrasador - Tormentas ocasionales" />
      <Property name="Polish" value="Palące powietrze - Sporadyczne burze" />
      <Property name="Portuguese" value="Ar ardente - Tempestades ocasionais" />
      <Property name="Russian" value="Пылающий воздух - Редкие штормы" />
      <Property name="SimplifiedChinese" value="火热的空气-偶尔风暴" />
      <Property name="Spanish" value="Aire abrasador - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="火焰空氣-偶爾風暴" />
      <Property name="USEnglish" value="Burning Air - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT_CLEAR1" />
      <Property name="BrazilianPortuguese" value="Tostado - Sem tempestade" />
      <Property name="Dutch" value="Verdord - Geen storm" />
      <Property name="English" value="Parched - No Storms" />
      <Property name="French" value="Desséché - Pas de tempête" />
      <Property name="German" value="Ausgetrocknet - Kein Sturm" />
      <Property name="Italian" value="Prosciugato - Nessuna tempesta" />
      <Property name="Japanese" value="干ばつ - ストームなし" />
      <Property name="Korean" value="건조 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Reseco - Sin tormentas" />
      <Property name="Polish" value="Spieczony - Brak burzy" />
      <Property name="Portuguese" value="Ressequido - Sem tempestade" />
      <Property name="Russian" value="Сухая - Без шторма" />
      <Property name="SimplifiedChinese" value="焦干的-无风暴" />
      <Property name="Spanish" value="Reseco - Sin tormentas" />
      <Property name="TraditionalChinese" value="乾裂-無風暴" />
      <Property name="USEnglish" value="Parched - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT_CLEAR2" />
      <Property name="BrazilianPortuguese" value="Muito quente - Sem tempestade" />
      <Property name="Dutch" value="Buitensporig warm - Geen storm" />
      <Property name="English" value="Overly Warm - No Storms" />
      <Property name="French" value="Trop chaud - Pas de tempête" />
      <Property name="German" value="Überaus warm - Kein Sturm" />
      <Property name="Italian" value="Spiccatamente caldo - Nessuna tempesta" />
      <Property name="Japanese" value="あまりにも暖かい - ストームなし" />
      <Property name="Korean" value="과도하게 따뜻함 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Excesivamente cálido - Sin tormentas" />
      <Property name="Polish" value="Zbyt ciepły - Brak burzy" />
      <Property name="Portuguese" value="Demasiado quente - Sem tempestade" />
      <Property name="Russian" value="Чрезмерно теплая - Без шторма" />
      <Property name="SimplifiedChinese" value="非常温暖-无风暴" />
      <Property name="Spanish" value="Excesivamente cálido - Sin tormentas" />
      <Property name="TraditionalChinese" value="過度溫暖-無風暴" />
      <Property name="USEnglish" value="Overly Warm - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT_CLEAR3" />
      <Property name="BrazilianPortuguese" value="Ensolarado - Sem tempestade" />
      <Property name="Dutch" value="Zonnig - Geen storm" />
      <Property name="English" value="Sunny - No Storms" />
      <Property name="French" value="Ensoleillé - Pas de tempête" />
      <Property name="German" value="Sonnig - Kein Sturm" />
      <Property name="Italian" value="Soleggiato - Nessuna tempesta" />
      <Property name="Japanese" value="晴天 - ストームなし" />
      <Property name="Korean" value="화창 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Soleado - Sin tormentas" />
      <Property name="Polish" value="Słoneczny - Brak burzy" />
      <Property name="Portuguese" value="Solarengo - Sem tempestade" />
      <Property name="Russian" value="Солнечная - Без шторма" />
      <Property name="SimplifiedChinese" value="晴朗-无风暴" />
      <Property name="Spanish" value="Soleado - Sin tormentas" />
      <Property name="TraditionalChinese" value="陽光普照-無風暴" />
      <Property name="USEnglish" value="Sunny - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT_CLEAR4" />
      <Property name="BrazilianPortuguese" value="Desidratado - Sem tempestade" />
      <Property name="Dutch" value="Uitgedroogd - Geen storm" />
      <Property name="English" value="Dehydrated - No Storms" />
      <Property name="French" value="Déshydraté - Pas de tempête" />
      <Property name="German" value="Dehydriert - Kein Sturm" />
      <Property name="Italian" value="Inaridito - Nessuna tempesta" />
      <Property name="Japanese" value="乾燥 - ストームなし" />
      <Property name="Korean" value="탈수 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Deshidratado - Sin tormentas" />
      <Property name="Polish" value="Odwodniony - Brak burzy" />
      <Property name="Portuguese" value="Desidratado - Sem tempestade" />
      <Property name="Russian" value="Обезвоженная - Без шторма" />
      <Property name="SimplifiedChinese" value="脱水-无风暴" />
      <Property name="Spanish" value="Deshidratado - Sin tormentas" />
      <Property name="TraditionalChinese" value="脫水-無風暴" />
      <Property name="USEnglish" value="Dehydrated - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT_CLEAR5" />
      <Property name="BrazilianPortuguese" value="Luz do sol interminável - Sem tempestade" />
      <Property name="Dutch" value="Oneindig zonlicht - Geen storm" />
      <Property name="English" value="Unending Sunlight - No Storms" />
      <Property name="French" value="Soleil permanent - Pas de tempête" />
      <Property name="German" value="Unaufhörliches Sonnenlicht - Kein Sturm" />
      <Property name="Italian" value="Irraggiamento infinito - Nessuna tempesta" />
      <Property name="Japanese" value="終わりの見えない日光 - ストームなし" />
      <Property name="Korean" value="끝 없는 태양광 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Luz solar infinita - Sin tormentas" />
      <Property name="Polish" value="Nieskończone światło słon. - Brak burzy" />
      <Property name="Portuguese" value="Luz do sol infindável - Sem tempestade" />
      <Property name="Russian" value="Незаходящее солнце - Без шторма" />
      <Property name="SimplifiedChinese" value="无尽的阳光-无风暴" />
      <Property name="Spanish" value="Luz solar infinita - Sin tormentas" />
      <Property name="TraditionalChinese" value="無止盡陽光-無風暴" />
      <Property name="USEnglish" value="Unending Sunlight - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT_CLEAR6" />
      <Property name="BrazilianPortuguese" value="Luz direta do sol - Sem tempestade" />
      <Property name="Dutch" value="Felle zon - Geen storm" />
      <Property name="English" value="Direct Sunlight - No Storms" />
      <Property name="French" value="Radiation solaire directe - Pas de tempête" />
      <Property name="German" value="Direktes Sonnenlicht - Kein Sturm" />
      <Property name="Italian" value="Luce diretta - Nessuna tempesta" />
      <Property name="Japanese" value="直射日光 - ストームなし" />
      <Property name="Korean" value="태양 직사광 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Exposición directa al sol - Sin tormentas" />
      <Property name="Polish" value="Bezpośrednie światło słon. - Brak burzy" />
      <Property name="Portuguese" value="Luz solar direta - Sem tempestade" />
      <Property name="Russian" value="Прямые солнечные лучи - Без шторма" />
      <Property name="SimplifiedChinese" value="阳光直射-无风暴" />
      <Property name="Spanish" value="Exposición directa al sol - Sin tormentas" />
      <Property name="TraditionalChinese" value="陽光直射-無風暴" />
      <Property name="USEnglish" value="Direct Sunlight - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT_CLEAR7" />
      <Property name="BrazilianPortuguese" value="Atmosfera aquecida - Sem tempestade" />
      <Property name="Dutch" value="Hete atmosfeer - Geen storm" />
      <Property name="English" value="Heated Atmosphere - No Storms" />
      <Property name="French" value="Atmosphère brûlante - Pas de tempête" />
      <Property name="German" value="Aufgeheizte Atmosphäre - Kein Sturm" />
      <Property name="Italian" value="Atmosfera surriscaldata - Nessuna tempesta" />
      <Property name="Japanese" value="熱せられた大気 - ストームなし" />
      <Property name="Korean" value="가열된 대기 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Atmósfera ardiente - Sin tormentas" />
      <Property name="Polish" value="Podgrzana atmosfera - Brak burzy" />
      <Property name="Portuguese" value="Atmosfera aquecida - Sem tempestade" />
      <Property name="Russian" value="Нагретая атмосфера - Без шторма" />
      <Property name="SimplifiedChinese" value="高热大气-无风暴" />
      <Property name="Spanish" value="Atmósfera ardiente - Sin tormentas" />
      <Property name="TraditionalChinese" value="高溫大氣-無風暴" />
      <Property name="USEnglish" value="Heated Atmosphere - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEAT_CLEAR8" />
      <Property name="BrazilianPortuguese" value="Abafado - Sem tempestade" />
      <Property name="Dutch" value="Drukkend - Geen storm" />
      <Property name="English" value="Sweltering - No Storms" />
      <Property name="French" value="Étouffant - Pas de tempête" />
      <Property name="German" value="Drückend heiß - Kein Sturm" />
      <Property name="Italian" value="Soffocante - Nessuna tempesta" />
      <Property name="Japanese" value="多湿 - ストームなし" />
      <Property name="Korean" value="무더위 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Caldeado - Sin tormentas" />
      <Property name="Polish" value="Upalny - Brak burzy" />
      <Property name="Portuguese" value="Abafado - Sem tempestade" />
      <Property name="Russian" value="Зной - Без шторма" />
      <Property name="SimplifiedChinese" value="闷热-无风暴" />
      <Property name="Spanish" value="Caldeado - Sin tormentas" />
      <Property name="TraditionalChinese" value="悶熱-無風暴" />
      <Property name="USEnglish" value="Sweltering - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEATEXTREME1" />
      <Property name="BrazilianPortuguese" value="Calor extremo - Tempestades frequentes" />
      <Property name="Dutch" value="Extreem heet - Regelmatige stormen" />
      <Property name="English" value="Extreme Heat - Frequent Storms" />
      <Property name="French" value="Chaleur extrême - Tempêtes fréquentes" />
      <Property name="German" value="Extreme Hitze - Häufige Stürme" />
      <Property name="Italian" value="Caldo estremo - Tempeste frequenti" />
      <Property name="Japanese" value="極度の暑さ - 頻繁なストーム" />
      <Property name="Korean" value="극열 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Calor extremo - Tormentas frecuentes" />
      <Property name="Polish" value="Ekstremalne ciepło - Częste burze" />
      <Property name="Portuguese" value="Calor extremo - Tempestades frequentes" />
      <Property name="Russian" value="Экстремальная жара - Частые штормы" />
      <Property name="SimplifiedChinese" value="极热-经常风暴" />
      <Property name="Spanish" value="Calor extremo - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="極度炎熱-經常風暴" />
      <Property name="USEnglish" value="Extreme Heat - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEATEXTREME2" />
      <Property name="BrazilianPortuguese" value="Nuvens de gás abrasadoras - Tempestades frequentes" />
      <Property name="Dutch" value="Brandende gaswolken - Regelmatige stormen" />
      <Property name="English" value="Burning Gas Clouds - Frequent Storms" />
      <Property name="French" value="Nuages de gaz brûlants - Tempêtes fréquentes" />
      <Property name="German" value="Brennende Gaswolken - Häufige Stürme" />
      <Property name="Italian" value="Nubi di gas ardente - Tempeste frequenti" />
      <Property name="Japanese" value="燃えるガスの雲 - 頻繁なストーム" />
      <Property name="Korean" value="불타는 가스 구름 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Nubes de gas ardiente - Tormentas frecuentes" />
      <Property name="Polish" value="Płonące chmury gazowe - Częste burze" />
      <Property name="Portuguese" value="Nuvens gasosas ardentes - Tempestades frequentes" />
      <Property name="Russian" value="Облака горящего газа - Частые штормы" />
      <Property name="SimplifiedChinese" value="火热的气体云-经常风暴" />
      <Property name="Spanish" value="Nubes de gas ardiente - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="燃燒氣體雲-經常風暴" />
      <Property name="USEnglish" value="Burning Gas Clouds - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEATEXTREME3" />
      <Property name="BrazilianPortuguese" value="Calor intenso - Tempestades frequentes" />
      <Property name="Dutch" value="Intense hitte - Regelmatige stormen" />
      <Property name="English" value="Intense Heat - Frequent Storms" />
      <Property name="French" value="Chaleur intense - Tempêtes fréquentes" />
      <Property name="German" value="Große Hitze - Häufige Stürme" />
      <Property name="Italian" value="Caldo intenso - Tempeste frequenti" />
      <Property name="Japanese" value="激しい暑さ - 頻繁なストーム" />
      <Property name="Korean" value="작열 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Calor intenso - Tormentas frecuentes" />
      <Property name="Polish" value="Intensywne ciepło - Częste burze" />
      <Property name="Portuguese" value="Calor intenso - Tempestades frequentes" />
      <Property name="Russian" value="Сильная жара - Частые штормы" />
      <Property name="SimplifiedChinese" value="剧热-经常风暴" />
      <Property name="Spanish" value="Calor intenso - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="劇熱-經常風暴" />
      <Property name="USEnglish" value="Intense Heat - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEATEXTREME4" />
      <Property name="BrazilianPortuguese" value="Ar superaquecido - Tempestades frequentes" />
      <Property name="Dutch" value="Superhete lucht - Regelmatige stormen" />
      <Property name="English" value="Superheated Air - Frequent Storms" />
      <Property name="French" value="Air surchauffé - Tempêtes fréquentes" />
      <Property name="German" value="Überhitzte Luft - Häufige Stürme" />
      <Property name="Italian" value="Aria super-calda - Tempeste frequenti" />
      <Property name="Japanese" value="過熱した大気 - 頻繁なストーム" />
      <Property name="Korean" value="과열된 공기 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Aire sobrecalentado - Tormentas frecuentes" />
      <Property name="Polish" value="Przegrzane powietrze - Częste burze" />
      <Property name="Portuguese" value="Ar superaquecido - Tempestades frequentes" />
      <Property name="Russian" value="Сверхраскаленный воздух - Частые штормы" />
      <Property name="SimplifiedChinese" value="空气过热-经常风暴" />
      <Property name="Spanish" value="Aire sobrecalentado - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="極熱空氣-經常風暴" />
      <Property name="USEnglish" value="Superheated Air - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEATEXTREME5" />
      <Property name="BrazilianPortuguese" value="Calor escaldante - Tempestades frequentes" />
      <Property name="Dutch" value="Verzengende hitte - Regelmatige stormen" />
      <Property name="English" value="Scalding Heat - Frequent Storms" />
      <Property name="French" value="Chaleur bouillante - Tempêtes fréquentes" />
      <Property name="German" value="Brennende Hitze - Häufige Stürme" />
      <Property name="Italian" value="Caldo torrido - Tempeste frequenti" />
      <Property name="Japanese" value="焼け付く暑さ - 頻繁なストーム" />
      <Property name="Korean" value="델 것 같은 열기 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Calor escaldado - Tormentas frecuentes" />
      <Property name="Polish" value="Ogromne ciepło - Częste burze" />
      <Property name="Portuguese" value="Escaldante - Tempestades frequentes" />
      <Property name="Russian" value="Жгучий зной - Частые штормы" />
      <Property name="SimplifiedChinese" value="酷热-经常风暴" />
      <Property name="Spanish" value="Calor escaldado - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="酷熱-經常風暴" />
      <Property name="USEnglish" value="Scalding Heat - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEATEXTREME6" />
      <Property name="BrazilianPortuguese" value="Ventos infernais - Tempestades frequentes" />
      <Property name="Dutch" value="Helse winden - Regelmatige stormen" />
      <Property name="English" value="Inferno Winds - Frequent Storms" />
      <Property name="French" value="Vents embrasés - Tempêtes fréquentes" />
      <Property name="German" value="Inferno-Winde - Häufige Stürme" />
      <Property name="Italian" value="Venti infernali - Tempeste frequenti" />
      <Property name="Japanese" value="猛火の風 - 頻繁なストーム" />
      <Property name="Korean" value="불타오르는 바람 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Vientos infernales - Tormentas frecuentes" />
      <Property name="Polish" value="Piekielne wiatry - Częste burze" />
      <Property name="Portuguese" value="Ventos infernais - Tempestades frequentes" />
      <Property name="Russian" value="Пламенные ветры - Частые штормы" />
      <Property name="SimplifiedChinese" value="地狱风-经常风暴" />
      <Property name="Spanish" value="Vientos infernales - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="煉獄之風-經常風暴" />
      <Property name="USEnglish" value="Inferno Winds - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEATEXTREME7" />
      <Property name="BrazilianPortuguese" value="Tempestades de fogo - Tempestades frequentes" />
      <Property name="Dutch" value="Vuurstormen - Regelmatige stormen" />
      <Property name="English" value="Firestorms - Frequent Storms" />
      <Property name="French" value="Tempêtes de feu - Tempêtes fréquentes" />
      <Property name="German" value="Feuerstürme - Häufige Stürme" />
      <Property name="Italian" value="Tempeste di fuoco - Tempeste frequenti" />
      <Property name="Japanese" value="炎の旋風 - 頻繁なストーム" />
      <Property name="Korean" value="화선풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Lluvias de fuego - Tormentas frecuentes" />
      <Property name="Polish" value="Burze ognia - Częste burze" />
      <Property name="Portuguese" value="Tempestades de fogo - Tempestades frequentes" />
      <Property name="Russian" value="Огненные бури - Частые штормы" />
      <Property name="SimplifiedChinese" value="火焰风暴-经常风暴" />
      <Property name="Spanish" value="Lluvias de fuego - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="火焰風暴-經常風暴" />
      <Property name="USEnglish" value="Firestorms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEATEXTREME8" />
      <Property name="BrazilianPortuguese" value="Poeira combustível - Tempestades frequentes" />
      <Property name="Dutch" value="Brandbaar stof - Regelmatige stormen" />
      <Property name="English" value="Combustible Dust - Frequent Storms" />
      <Property name="French" value="Poussière combustible - Tempêtes fréquentes" />
      <Property name="German" value="Brennbarer Staub - Häufige Stürme" />
      <Property name="Italian" value="Esplosioni di polveri - Tempeste frequenti" />
      <Property name="Japanese" value="可燃性の粉塵 - 頻繁なストーム" />
      <Property name="Korean" value="가연성 분진 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Polvo combustible - Tormentas frecuentes" />
      <Property name="Polish" value="Palny pył - Częste burze" />
      <Property name="Portuguese" value="Pó combustível - Tempestades frequentes" />
      <Property name="Russian" value="Огнеопасная пыль - Частые штормы" />
      <Property name="SimplifiedChinese" value="可燃尘埃-经常风暴" />
      <Property name="Spanish" value="Polvo combustible - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="易燃粉塵-經常風暴" />
      <Property name="USEnglish" value="Combustible Dust - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEATEXTREME9" />
      <Property name="BrazilianPortuguese" value="Poeira incendiária - Tempestades frequentes" />
      <Property name="Dutch" value="Brandgevaarlijk stof - Regelmatige stormen" />
      <Property name="English" value="Incendiary Dust - Frequent Storms" />
      <Property name="French" value="Poussière incendiaire - Tempêtes fréquentes" />
      <Property name="German" value="Entzündlicher Staub - Häufige Stürme" />
      <Property name="Italian" value="Polveri incendiarie - Tempeste frequenti" />
      <Property name="Japanese" value="発火性の粉塵 - 頻繁なストーム" />
      <Property name="Korean" value="불 붙기 쉬운 분진 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Polvo incendiario - Tormentas frecuentes" />
      <Property name="Polish" value="Zapalający pył - Częste burze" />
      <Property name="Portuguese" value="Pó incendiário - Tempestades frequentes" />
      <Property name="Russian" value="Горючая пыль - Частые штормы" />
      <Property name="SimplifiedChinese" value="焚烧尘埃-经常风暴" />
      <Property name="Spanish" value="Polvo incendiario - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="燃燒粉塵-經常風暴" />
      <Property name="USEnglish" value="Incendiary Dust - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_HEATEXTREME10" />
      <Property name="BrazilianPortuguese" value="Tempestades autocombustíveis - Tempestades frequentes" />
      <Property name="Dutch" value="Zelfontbrandende stormen - Regelmatige stormen" />
      <Property name="English" value="Self-Igniting Storms - Frequent Storms" />
      <Property name="French" value="Tempêtes à embrasement - Tempêtes fréquentes" />
      <Property name="German" value="Selbstentzündliche Stürme - Häufige Stürme" />
      <Property name="Italian" value="Tempeste ad autocombustione - Tempeste frequenti" />
      <Property name="Japanese" value="自然発火する嵐 - 頻繁なストーム" />
      <Property name="Korean" value="자체 점화 폭풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas autoinflamables - Tormentas frecuentes" />
      <Property name="Polish" value="Burze samozapalne - Częste burze" />
      <Property name="Portuguese" value="Tempestades autoinflamáveis - Tempestades frequentes" />
      <Property name="Russian" value="Воспламеняющиеся бури - Частые штормы" />
      <Property name="SimplifiedChinese" value="自燃风暴-经常风暴" />
      <Property name="Spanish" value="Tormentas autoinflamables - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="自燃風暴-經常風暴" />
      <Property name="USEnglish" value="Self-Igniting Storms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLDEXTREME1" />
      <Property name="BrazilianPortuguese" value="Nevascas sonoras - Tempestades frequentes" />
      <Property name="Dutch" value="Striemende sneeuwstormen - Regelmatige stormen" />
      <Property name="English" value="Howling Blizzards - Frequent Storms" />
      <Property name="French" value="Blizzards hurlants - Tempêtes fréquentes" />
      <Property name="German" value="Heulende Blizzards - Häufige Stürme" />
      <Property name="Italian" value="Bufere ululanti - Tempeste frequenti" />
      <Property name="Japanese" value="うなるブリザード - 頻繁なストーム" />
      <Property name="Korean" value="휘몰아치는 눈보라 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Ventiscas huracanadas - Tormentas frecuentes" />
      <Property name="Polish" value="Wyjące wichury - Częste burze" />
      <Property name="Portuguese" value="Ventanias uivantes - Tempestades frequentes" />
      <Property name="Russian" value="Воющие вьюги - Частые штормы" />
      <Property name="SimplifiedChinese" value="咆哮的暴风雪-经常风暴" />
      <Property name="Spanish" value="Ventiscas huracanadas - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="哭嚎暴風雪-經常風暴" />
      <Property name="USEnglish" value="Howling Blizzards - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLDEXTREME2" />
      <Property name="BrazilianPortuguese" value="Frio intenso - Tempestades frequentes" />
      <Property name="Dutch" value="Intense kou - Regelmatige stormen" />
      <Property name="English" value="Intense Cold - Frequent Storms" />
      <Property name="French" value="Froid intense - Tempêtes fréquentes" />
      <Property name="German" value="Große Kälte - Häufige Stürme" />
      <Property name="Italian" value="Freddo intenso - Tempeste frequenti" />
      <Property name="Japanese" value="激しい寒さ - 頻繁なストーム" />
      <Property name="Korean" value="혹한 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Frío intenso - Tormentas frecuentes" />
      <Property name="Polish" value="Intensywne zimno - Częste burze" />
      <Property name="Portuguese" value="Frio intenso - Tempestades frequentes" />
      <Property name="Russian" value="Сильный холод - Частые штормы" />
      <Property name="SimplifiedChinese" value="严寒-经常风暴" />
      <Property name="Spanish" value="Frío intenso - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="嚴寒-經常風暴" />
      <Property name="USEnglish" value="Intense Cold - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLDEXTREME3" />
      <Property name="BrazilianPortuguese" value="Temporais gélidos - Tempestades frequentes" />
      <Property name="Dutch" value="IJzige stormen - Regelmatige stormen" />
      <Property name="English" value="Icy Tempests - Frequent Storms" />
      <Property name="French" value="Ouragans glacés - Tempêtes fréquentes" />
      <Property name="German" value="Frostige Sturmwinde - Häufige Stürme" />
      <Property name="Italian" value="Tempeste di ghiaccio - Tempeste frequenti" />
      <Property name="Japanese" value="凍りつく大嵐 - 頻繁なストーム" />
      <Property name="Korean" value="얼음장 같은 폭풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tempestad gélida - Tormentas frecuentes" />
      <Property name="Polish" value="Burze lodowe - Częste burze" />
      <Property name="Portuguese" value="Tempestades gélidas - Tempestades frequentes" />
      <Property name="Russian" value="Ледяные метели - Частые штормы" />
      <Property name="SimplifiedChinese" value="冰冷的风暴-经常风暴" />
      <Property name="Spanish" value="Tempestad gélida - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="冰暴雨-經常風暴" />
      <Property name="USEnglish" value="Icy Tempests - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLDEXTREME4" />
      <Property name="BrazilianPortuguese" value="Tempestades superfrias - Tempestades frequentes" />
      <Property name="Dutch" value="Supergekoelde stormen - Regelmatige stormen" />
      <Property name="English" value="Supercooled Storms - Frequent Storms" />
      <Property name="French" value="Tempêtes réfrigérantes - Tempêtes fréquentes" />
      <Property name="German" value="Unterkühlte Stürme - Häufige Stürme" />
      <Property name="Italian" value="Tempeste super-fredde - Tempeste frequenti" />
      <Property name="Japanese" value="過冷の嵐 - 頻繁なストーム" />
      <Property name="Korean" value="과냉각된 폭풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas sobreenfriadas - Tormentas frecuentes" />
      <Property name="Polish" value="Superschłodzone burze - Częste burze" />
      <Property name="Portuguese" value="Tempestades de super gélidas - Tempestades frequentes" />
      <Property name="Russian" value="Холодные бури - Частые штормы" />
      <Property name="SimplifiedChinese" value="冷冽的风暴-经常风暴" />
      <Property name="Spanish" value="Tormentas sobreenfriadas - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="極凍風暴-經常風暴" />
      <Property name="USEnglish" value="Supercooled Storms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLDEXTREME5" />
      <Property name="BrazilianPortuguese" value="Tempestades de neve furiosas - Tempestades frequentes" />
      <Property name="Dutch" value="Razende sneeuwstormen - Regelmatige stormen" />
      <Property name="English" value="Raging Snowstorms - Frequent Storms" />
      <Property name="French" value="Tempêtes de neige violentes - Tempêtes fréquentes" />
      <Property name="German" value="Tobende Schneestürme - Häufige Stürme" />
      <Property name="Italian" value="Tempeste di neve furiose - Tempeste frequenti" />
      <Property name="Japanese" value="荒れ狂う吹雪 - 頻繁なストーム" />
      <Property name="Korean" value="극심한 눈 폭풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de nieve violentas - Tormentas frecuentes" />
      <Property name="Polish" value="Szalejące burze śnieżne - Częste burze" />
      <Property name="Portuguese" value="Tempestades ferozes de neve - Tempestades frequentes" />
      <Property name="Russian" value="Бушующие вьюги - Частые штормы" />
      <Property name="SimplifiedChinese" value="猛烈的雪暴-经常风暴" />
      <Property name="Spanish" value="Tormentas de nieve violentas - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="狂雪暴-經常風暴" />
      <Property name="USEnglish" value="Raging Snowstorms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLDEXTREME6" />
      <Property name="BrazilianPortuguese" value="Tempestades de gelo - Tempestades frequentes" />
      <Property name="Dutch" value="IJsstormen - Regelmatige stormen" />
      <Property name="English" value="Ice Storms - Frequent Storms" />
      <Property name="French" value="Tempêtes glaciales - Tempêtes fréquentes" />
      <Property name="German" value="Eisstürme - Häufige Stürme" />
      <Property name="Italian" value="Tempeste di ghiaccio - Tempeste frequenti" />
      <Property name="Japanese" value="氷の暴風 - 頻繁なストーム" />
      <Property name="Korean" value="빙설 폭풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de hielo - Tormentas frecuentes" />
      <Property name="Polish" value="Lodowe burze - Częste burze" />
      <Property name="Portuguese" value="Tempestades de gelo - Tempestades frequentes" />
      <Property name="Russian" value="Ледяные бури - Частые штормы" />
      <Property name="SimplifiedChinese" value="冰暴-经常风暴" />
      <Property name="Spanish" value="Tormentas de hielo - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="冰暴-經常風暴" />
      <Property name="USEnglish" value="Ice Storms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLDEXTREME7" />
      <Property name="BrazilianPortuguese" value="Congelamento - Tempestades frequentes" />
      <Property name="Dutch" value="Strenge vorst - Regelmatige stormen" />
      <Property name="English" value="Deep Freeze - Frequent Storms" />
      <Property name="French" value="Gel profond - Tempêtes fréquentes" />
      <Property name="German" value="Tiefer Frost - Häufige Stürme" />
      <Property name="Italian" value="Congelamento totale - Tempeste frequenti" />
      <Property name="Japanese" value="極度の低温 - 頻繁なストーム" />
      <Property name="Korean" value="급속 냉동 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Congelante - Tormentas frecuentes" />
      <Property name="Polish" value="Głębokie zmrożenie - Częste burze" />
      <Property name="Portuguese" value="Congelar - Tempestades frequentes" />
      <Property name="Russian" value="Глубокая заморозка - Частые штормы" />
      <Property name="SimplifiedChinese" value="深度冰冷-经常风暴" />
      <Property name="Spanish" value="Congelante - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="深度凍結-經常風暴" />
      <Property name="USEnglish" value="Deep Freeze - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLDEXTREME8" />
      <Property name="BrazilianPortuguese" value="Tempestades de gelo ruidosas - Tempestades frequentes" />
      <Property name="Dutch" value="Bulderende ijsstormen - Regelmatige stormen" />
      <Property name="English" value="Roaring Ice Storms - Frequent Storms" />
      <Property name="French" value="Tempêtes glaciales violentes - Tempêtes fréquentes" />
      <Property name="German" value="Tosende Eisstürme - Häufige Stürme" />
      <Property name="Italian" value="Tempeste di ghiaccio intense - Tempeste frequenti" />
      <Property name="Japanese" value="轟音を立てる氷の暴風 - 頻繁なストーム" />
      <Property name="Korean" value="으르렁대는 빙설 폭풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de hielo violentas - Tormentas frecuentes" />
      <Property name="Polish" value="Wichrowe burze lodowe - Częste burze" />
      <Property name="Portuguese" value="Tempestades ruidosas de gelo - Tempestades frequentes" />
      <Property name="Russian" value="Ревущие ледяные бури - Частые штормы" />
      <Property name="SimplifiedChinese" value="咆哮的冰暴-经常风暴" />
      <Property name="Spanish" value="Tormentas de hielo violentas - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="咆嘯冰暴-經常風暴" />
      <Property name="USEnglish" value="Roaring Ice Storms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLDEXTREME9" />
      <Property name="BrazilianPortuguese" value="Nevascas frequentes - Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige sneeuwstormen - Regelmatige stormen" />
      <Property name="English" value="Frequent Blizzards - Frequent Storms" />
      <Property name="French" value="Blizzards fréquents - Tempêtes fréquentes" />
      <Property name="German" value="Häufige Blizzards - Häufige Stürme" />
      <Property name="Italian" value="Bufere frequenti - Tempeste frequenti" />
      <Property name="Japanese" value="頻繁なブリザード - 頻繁なストーム" />
      <Property name="Korean" value="잦은 눈보라 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Ventiscas frecuentes - Tormentas frecuentes" />
      <Property name="Polish" value="Częste zamiecie - Częste burze" />
      <Property name="Portuguese" value="Ventanias frequentes - Tempestades frequentes" />
      <Property name="Russian" value="Частые вьюги - Частые штормы" />
      <Property name="SimplifiedChinese" value="繁多的暴风雪-经常风暴" />
      <Property name="Spanish" value="Ventiscas frecuentes - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="頻繁的暴風雪-經常風暴" />
      <Property name="USEnglish" value="Frequent Blizzards - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLDEXTREME10" />
      <Property name="BrazilianPortuguese" value="Invisibilidade perigosa - Tempestades frequentes" />
      <Property name="Dutch" value="Gevaarlijke white-outs - Regelmatige stormen" />
      <Property name="English" value="Hazardous Whiteouts - Frequent Storms" />
      <Property name="French" value="Voiles blancs dangereux - Tempêtes fréquentes" />
      <Property name="German" value="Gefährliche Whiteouts - Häufige Stürme" />
      <Property name="Italian" value="Tempeste di neve pericolose - Tempeste frequenti" />
      <Property name="Japanese" value="危険なホワイトアウト - 頻繁なストーム" />
      <Property name="Korean" value="유해한 화이트아웃 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Heladas peligrosas - Tormentas frecuentes" />
      <Property name="Polish" value="Niebezpieczne zamiecie - Częste burze" />
      <Property name="Portuguese" value="Névoa cerrada perigosa - Tempestades frequentes" />
      <Property name="Russian" value="Опасная снежная мгла - Частые штормы" />
      <Property name="SimplifiedChinese" value="危险的暴风雪-经常风暴" />
      <Property name="Spanish" value="Heladas peligrosas - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="危險雪盲-經常風暴" />
      <Property name="USEnglish" value="Hazardous Whiteouts - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD1" />
      <Property name="BrazilianPortuguese" value="Nuvens congeladas - Tempestades ocasionais" />
      <Property name="Dutch" value="Bevroren wolken - Incidentele stormen" />
      <Property name="English" value="Frozen Clouds - Occasional Storms" />
      <Property name="French" value="Nuages glacés - Tempêtes occasionnelles" />
      <Property name="German" value="Gefrorene Wolken - Gelegentliche Stürme" />
      <Property name="Italian" value="Nubi congelate - Tempeste occasionali" />
      <Property name="Japanese" value="凍て付く雲 - 時折のストーム" />
      <Property name="Korean" value="얼어붙은 구름 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Nubes congeladas - Tormentas ocasionales" />
      <Property name="Polish" value="Zmrożone chmury - Sporadyczne burze" />
      <Property name="Portuguese" value="Nuvens congeladas - Tempestades ocasionais" />
      <Property name="Russian" value="Застывшие облака - Редкие штормы" />
      <Property name="SimplifiedChinese" value="冻结的云-偶尔风暴" />
      <Property name="Spanish" value="Nubes congeladas - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="冰雲-偶爾風暴" />
      <Property name="USEnglish" value="Frozen Clouds - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD2" />
      <Property name="BrazilianPortuguese" value="Queda de neve ocasional - Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele sneeuwval - Incidentele stormen" />
      <Property name="English" value="Occasional Snowfall - Occasional Storms" />
      <Property name="French" value="Chutes de neige - Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentlicher Schneefall - Gelegentliche Stürme" />
      <Property name="Italian" value="Nevicata occasionale - Tempeste occasionali" />
      <Property name="Japanese" value="時折の降雪 - 時折のストーム" />
      <Property name="Korean" value="가끔씩 강설 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Nevadas ocasionales - Tormentas ocasionales" />
      <Property name="Polish" value="Okazjonalne opady śniegu - Sporadyczne burze" />
      <Property name="Portuguese" value="Queda ocasional de neve - Tempestades ocasionais" />
      <Property name="Russian" value="Нерегулярные снегопады - Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶见降雪-偶尔风暴" />
      <Property name="Spanish" value="Nevadas ocasionales - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶發的降雪-偶爾風暴" />
      <Property name="USEnglish" value="Occasional Snowfall - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD3" />
      <Property name="BrazilianPortuguese" value="Nevascas infrequentes - Tempestades ocasionais" />
      <Property name="Dutch" value="Onregelmatige sneeuwstormen - Incidentele stormen" />
      <Property name="English" value="Infrequent Blizzards - Occasional Storms" />
      <Property name="French" value="Blizzards peu fréquents - Tempêtes occasionnelles" />
      <Property name="German" value="Vereinzelte Blizzards - Gelegentliche Stürme" />
      <Property name="Italian" value="Bufere non frequenti - Tempeste occasionali" />
      <Property name="Japanese" value="不定期に起こるブリザード - 時折のストーム" />
      <Property name="Korean" value="드문 눈보라 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Ventiscas poco frecuentes - Tormentas ocasionales" />
      <Property name="Polish" value="Niewielkie śnieżyce - Sporadyczne burze" />
      <Property name="Portuguese" value="Ventanias pouco frequentes - Tempestades ocasionais" />
      <Property name="Russian" value="Редкие вьюги - Редкие штормы" />
      <Property name="SimplifiedChinese" value="罕见暴风雪-偶尔风暴" />
      <Property name="Spanish" value="Ventiscas poco frecuentes - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="稀有的暴風雪-偶爾風暴" />
      <Property name="USEnglish" value="Infrequent Blizzards - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD4" />
      <Property name="BrazilianPortuguese" value="Pancadas de chuva congelada - Tempestades ocasionais" />
      <Property name="Dutch" value="IJzelbuien - Incidentele stormen" />
      <Property name="English" value="Outbreaks of Frozen Rain - Occasional Storms" />
      <Property name="French" value="Averses de pluie verglaçante - Tempêtes occasionnelles" />
      <Property name="German" value="Ausbrüche gefrorenen Regens - Gelegentliche Stürme" />
      <Property name="Italian" value="Pioggia congelata improvvisa - Tempeste occasionali" />
      <Property name="Japanese" value="突発的な凍雨 - 時折のストーム" />
      <Property name="Korean" value="얼음비 발생 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Estallidos de lluvia gélida - Tormentas ocasionales" />
      <Property name="Polish" value="Wystąpienia mroźnego deszczu - Sporadyczne burze" />
      <Property name="Portuguese" value="Surtos de chuva congelada - Tempestades ocasionais" />
      <Property name="Russian" value="Местами ледяные дожди - Редкие штормы" />
      <Property name="SimplifiedChinese" value="突发性冰雨-偶尔风暴" />
      <Property name="Spanish" value="Estallidos de lluvia gélida - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="冰雨爆發-偶爾風暴" />
      <Property name="USEnglish" value="Outbreaks of Frozen Rain - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD5" />
      <Property name="BrazilianPortuguese" value="Ventos gélidos fortes - Tempestades ocasionais" />
      <Property name="Dutch" value="Harde ijzige winden - Incidentele stormen" />
      <Property name="English" value="Harsh, Icy Winds - Occasional Storms" />
      <Property name="French" value="Vents glacials redoutables - Tempêtes occasionnelles" />
      <Property name="German" value="Raue, frostige Winde - Gelegentliche Stürme" />
      <Property name="Italian" value="Violenti venti ghiacciati - Tempeste occasionali" />
      <Property name="Japanese" value="凍りつく強風 - 時折のストーム" />
      <Property name="Korean" value="가혹한 찬 바람 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Vientos gélidos fuertes - Tormentas ocasionales" />
      <Property name="Polish" value="Ostre, lodowe wiatry - Sporadyczne burze" />
      <Property name="Portuguese" value="Ventos fortes congelados - Tempestades ocasionais" />
      <Property name="Russian" value="Суровые ледяные ветры - Редкие штормы" />
      <Property name="SimplifiedChinese" value="冰冻烈风-偶尔风暴" />
      <Property name="Spanish" value="Vientos gélidos fuertes - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="冰凍惡風-偶爾風暴" />
      <Property name="USEnglish" value="Harsh, Icy Winds - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD6" />
      <Property name="BrazilianPortuguese" value="Tempestades de neve errantes - Tempestades ocasionais" />
      <Property name="Dutch" value="Overtrekkende sneeuwstormen - Incidentele stormen" />
      <Property name="English" value="Drifting Snowstorms - Occasional Storms" />
      <Property name="French" value="Tempêtes de neige dérivantes - Tempêtes occasionnelles" />
      <Property name="German" value="Treibende Schneestürme - Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste di neve con raffiche - Tempeste occasionali" />
      <Property name="Japanese" value="さまよう吹雪 - 時折のストーム" />
      <Property name="Korean" value="표류하는 눈 폭풍 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de nieve errantes - Tormentas ocasionales" />
      <Property name="Polish" value="Błądzące burze śnieżne - Sporadyczne burze" />
      <Property name="Portuguese" value="Nevões - Tempestades ocasionais" />
      <Property name="Russian" value="Нестабильные вьюги - Редкие штормы" />
      <Property name="SimplifiedChinese" value="游荡的雪暴-偶尔风暴" />
      <Property name="Spanish" value="Tormentas de nieve errantes - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="飄流的雪暴-偶爾風暴" />
      <Property name="USEnglish" value="Drifting Snowstorms - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD7" />
      <Property name="BrazilianPortuguese" value="Tempestades de gelo - Tempestades ocasionais" />
      <Property name="Dutch" value="IJsstormen - Incidentele stormen" />
      <Property name="English" value="Ice Storms - Occasional Storms" />
      <Property name="French" value="Tempêtes glaciales - Tempêtes occasionnelles" />
      <Property name="German" value="Eisstürme - Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste di ghiaccio - Tempeste occasionali" />
      <Property name="Japanese" value="氷の暴風 - 時折のストーム" />
      <Property name="Korean" value="빙설 폭풍 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de hielo - Tormentas ocasionales" />
      <Property name="Polish" value="Lodowe burze - Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades de gelo - Tempestades ocasionais" />
      <Property name="Russian" value="Ледяные бури - Редкие штормы" />
      <Property name="SimplifiedChinese" value="冰暴-偶尔风暴" />
      <Property name="Spanish" value="Tormentas de hielo - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="冰風暴-偶爾風暴" />
      <Property name="USEnglish" value="Ice Storms - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD8" />
      <Property name="BrazilianPortuguese" value="Nevascas migratórias - Tempestades ocasionais" />
      <Property name="Dutch" value="Migrerende sneeuwstormen - Incidentele stormen" />
      <Property name="English" value="Migratory Blizzards - Occasional Storms" />
      <Property name="French" value="Blizzards migrants - Tempêtes occasionnelles" />
      <Property name="German" value="Wandernde Blizzards - Gelegentliche Stürme" />
      <Property name="Italian" value="Bufere migratorie - Tempeste occasionali" />
      <Property name="Japanese" value="回遊性ブリザード - 時折のストーム" />
      <Property name="Korean" value="이주성 눈보라 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Ventiscas migratorias - Tormentas ocasionales" />
      <Property name="Polish" value="Migrujące zamiecie - Sporadyczne burze" />
      <Property name="Portuguese" value="Ventanias migratórias - Tempestades ocasionais" />
      <Property name="Russian" value="Блуждающие вьюги - Редкие штормы" />
      <Property name="SimplifiedChinese" value="不断迁移的暴风雪-偶尔风暴" />
      <Property name="Spanish" value="Ventiscas migratorias - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="遷移性暴風雪-偶爾風暴" />
      <Property name="USEnglish" value="Migratory Blizzards - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD9" />
      <Property name="BrazilianPortuguese" value="Ventanias gélidas - Tempestades ocasionais" />
      <Property name="Dutch" value="IJzige windvlagen - Incidentele stormen" />
      <Property name="English" value="Icy Blasts - Occasional Storms" />
      <Property name="French" value="Explosions glacées - Tempêtes occasionnelles" />
      <Property name="German" value="Frostige Böen - Gelegentliche Stürme" />
      <Property name="Italian" value="Esplosioni ghiacciate - Tempeste occasionali" />
      <Property name="Japanese" value="凍りつく突風 - 時折のストーム" />
      <Property name="Korean" value="칼바람 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Ráfagas de hielo - Tormentas ocasionales" />
      <Property name="Polish" value="Uderzenia lodu - Sporadyczne burze" />
      <Property name="Portuguese" value="Rajadas gélidas - Tempestades ocasionais" />
      <Property name="Russian" value="Ледяные порывы - Редкие штормы" />
      <Property name="SimplifiedChinese" value="冰冷的爆炸-偶尔风暴" />
      <Property name="Spanish" value="Ráfagas de hielo - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="冰暴-偶爾風暴" />
      <Property name="USEnglish" value="Icy Blasts - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD10" />
      <Property name="BrazilianPortuguese" value="Geadas móveis - Tempestades ocasionais" />
      <Property name="Dutch" value="Zwervende vorst - Incidentele stormen" />
      <Property name="English" value="Wandering Frosts - Occasional Storms" />
      <Property name="French" value="Gel mobile - Tempêtes occasionnelles" />
      <Property name="German" value="Wandernder Frost - Gelegentliche Stürme" />
      <Property name="Italian" value="Gelate itineranti - Tempeste occasionali" />
      <Property name="Japanese" value="遊走性の霜 - 時折のストーム" />
      <Property name="Korean" value="방랑하는 서리 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Escarchas errantes - Tormentas ocasionales" />
      <Property name="Polish" value="Wędrujące mrozy - Sporadyczne burze" />
      <Property name="Portuguese" value="Geada errante - Tempestades ocasionais" />
      <Property name="Russian" value="Блуждающие морозы - Редкие штормы" />
      <Property name="SimplifiedChinese" value="游离的冰霜-偶尔风暴" />
      <Property name="Spanish" value="Escarchas errantes - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="游移冰霜-偶爾風暴" />
      <Property name="USEnglish" value="Wandering Frosts - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD_CLEAR1" />
      <Property name="BrazilianPortuguese" value="Neve macia - Sem tempestade" />
      <Property name="Dutch" value="Poedersneeuw - Geen storm" />
      <Property name="English" value="Powder Snow - No Storms" />
      <Property name="French" value="Poudreuse - Pas de tempête" />
      <Property name="German" value="Pulverschnee - Kein Sturm" />
      <Property name="Italian" value="Neve fresca - Nessuna tempesta" />
      <Property name="Japanese" value="粉雪の - ストームなし" />
      <Property name="Korean" value="가루눈 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Nieve polvo - Sin tormentas" />
      <Property name="Polish" value="Puch śnieżny - Brak burzy" />
      <Property name="Portuguese" value="Pó de neve - Sem tempestade" />
      <Property name="Russian" value="Мелкий снег - Без шторма" />
      <Property name="SimplifiedChinese" value="雪糁-无风暴" />
      <Property name="Spanish" value="Nieve polvo - Sin tormentas" />
      <Property name="TraditionalChinese" value="粉狀雪-無風暴" />
      <Property name="USEnglish" value="Powder Snow - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD_CLEAR2" />
      <Property name="BrazilianPortuguese" value="Invernal - Sem tempestade" />
      <Property name="Dutch" value="Winters - Geen storm" />
      <Property name="English" value="Wintry - No Storms" />
      <Property name="French" value="Hivernal - Pas de tempête" />
      <Property name="German" value="Winterlich - Kein Sturm" />
      <Property name="Italian" value="Invernale - Nessuna tempesta" />
      <Property name="Japanese" value="冬 - ストームなし" />
      <Property name="Korean" value="쌀쌀함 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Invernal - Sin tormentas" />
      <Property name="Polish" value="Zimowy - Brak burzy" />
      <Property name="Portuguese" value="Invernoso - Sem tempestade" />
      <Property name="Russian" value="Зимний - Без шторма" />
      <Property name="SimplifiedChinese" value="寒冬-无风暴" />
      <Property name="Spanish" value="Invernal - Sin tormentas" />
      <Property name="TraditionalChinese" value="寒冬-無風暴" />
      <Property name="USEnglish" value="Wintry - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD_CLEAR3" />
      <Property name="BrazilianPortuguese" value="Nevoso - Sem tempestade" />
      <Property name="Dutch" value="Besneeuwd - Geen storm" />
      <Property name="English" value="Snowy - No Storms" />
      <Property name="French" value="Enneigé - Pas de tempête" />
      <Property name="German" value="Verschneit - Kein Sturm" />
      <Property name="Italian" value="Nevoso - Nessuna tempesta" />
      <Property name="Japanese" value="降雪 - ストームなし" />
      <Property name="Korean" value="강설 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Nevoso - Sin tormentas" />
      <Property name="Polish" value="Śnieżny - Brak burzy" />
      <Property name="Portuguese" value="Nevoso - Sem tempestade" />
      <Property name="Russian" value="Снежная - Без шторма" />
      <Property name="SimplifiedChinese" value="飘雪-无风暴" />
      <Property name="Spanish" value="Nevoso - Sin tormentas" />
      <Property name="TraditionalChinese" value="飄雪-無風暴" />
      <Property name="USEnglish" value="Snowy - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD_CLEAR4" />
      <Property name="BrazilianPortuguese" value="Gélido - Sem tempestade" />
      <Property name="Dutch" value="IJzig - Geen storm" />
      <Property name="English" value="Icy - No Storms" />
      <Property name="French" value="Verglacé - Pas de tempête" />
      <Property name="German" value="Frostig - Kein Sturm" />
      <Property name="Italian" value="Ghiacciato - Nessuna tempesta" />
      <Property name="Japanese" value="凍りつく - ストームなし" />
      <Property name="Korean" value="결빙 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Gélido - Sin tormentas" />
      <Property name="Polish" value="Lodowaty - Brak burzy" />
      <Property name="Portuguese" value="Gelo - Sem tempestade" />
      <Property name="Russian" value="Ледяная - Без шторма" />
      <Property name="SimplifiedChinese" value="冰冷-无风暴" />
      <Property name="Spanish" value="Gélido - Sin tormentas" />
      <Property name="TraditionalChinese" value="結冰-無風暴" />
      <Property name="USEnglish" value="Icy - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD_CLEAR5" />
      <Property name="BrazilianPortuguese" value="Frio e seco - Sem tempestade" />
      <Property name="Dutch" value="Fris - Geen storm" />
      <Property name="English" value="Crisp - No Storms" />
      <Property name="French" value="Frais - Pas de tempête" />
      <Property name="German" value="Frisch - Kein Sturm" />
      <Property name="Italian" value="Fresco - Nessuna tempesta" />
      <Property name="Japanese" value="凛とした - ストームなし" />
      <Property name="Korean" value="적설 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Vigorizante - Sin tormentas" />
      <Property name="Polish" value="Ostry - Brak burzy" />
      <Property name="Portuguese" value="Flocos - Sem tempestade" />
      <Property name="Russian" value="Бодрящая - Без шторма" />
      <Property name="SimplifiedChinese" value="冻硬-无风暴" />
      <Property name="Spanish" value="Vigorizante - Sin tormentas" />
      <Property name="TraditionalChinese" value="脆冰-無風暴" />
      <Property name="USEnglish" value="Crisp - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD_CLEAR6" />
      <Property name="BrazilianPortuguese" value="Geada - Sem tempestade" />
      <Property name="Dutch" value="Vorst - Geen storm" />
      <Property name="English" value="Frost - No Storms" />
      <Property name="French" value="Givré - Pas de tempête" />
      <Property name="German" value="Frost - Kein Sturm" />
      <Property name="Italian" value="Brina - Nessuna tempesta" />
      <Property name="Japanese" value="霜の - ストームなし" />
      <Property name="Korean" value="서리 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Escarcha - Sin tormentas" />
      <Property name="Polish" value="Mróz - Brak burzy" />
      <Property name="Portuguese" value="Geada - Sem tempestade" />
      <Property name="Russian" value="Мороз - Без шторма" />
      <Property name="SimplifiedChinese" value="冰霜-无风暴" />
      <Property name="Spanish" value="Escarcha - Sin tormentas" />
      <Property name="TraditionalChinese" value="結霜-無風暴" />
      <Property name="USEnglish" value="Frost - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD_CLEAR7" />
      <Property name="BrazilianPortuguese" value="Congelante - Sem tempestade" />
      <Property name="Dutch" value="Vrieskou - Geen storm" />
      <Property name="English" value="Freezing - No Storms" />
      <Property name="French" value="Congelé - Pas de tempête" />
      <Property name="German" value="Eiskalt - Kein Sturm" />
      <Property name="Italian" value="Gelate - Nessuna tempesta" />
      <Property name="Japanese" value="凍える - ストームなし" />
      <Property name="Korean" value="빙결 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Congelante - Sin tormentas" />
      <Property name="Polish" value="Mrożący - Brak burzy" />
      <Property name="Portuguese" value="Temperaturas negativas - Sem tempestade" />
      <Property name="Russian" value="Замерзание - Без шторма" />
      <Property name="SimplifiedChinese" value="极冷-无风暴" />
      <Property name="Spanish" value="Congelante - Sin tormentas" />
      <Property name="TraditionalChinese" value="冰點-無風暴" />
      <Property name="USEnglish" value="Freezing - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_COLD_CLEAR8" />
      <Property name="BrazilianPortuguese" value="Eternamente congelado - Sem tempestade" />
      <Property name="Dutch" value="Permafrost - Geen storm" />
      <Property name="English" value="Permafrost - No Storms" />
      <Property name="French" value="Pergélisol - Pas de tempête" />
      <Property name="German" value="Dauerfrost - Kein Sturm" />
      <Property name="Italian" value="Permafrost - Nessuna tempesta" />
      <Property name="Japanese" value="永久凍土 - ストームなし" />
      <Property name="Korean" value="영구 결빙 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Eternamente congelado - Sin tormentas" />
      <Property name="Polish" value="Wieczna zmarzlina - Brak burzy" />
      <Property name="Portuguese" value="Pergelissolo - Sem tempestade" />
      <Property name="Russian" value="Вечная мерзлота - Без шторма" />
      <Property name="SimplifiedChinese" value="永冻层-无风暴" />
      <Property name="Spanish" value="Eternamente congelado - Sin tormentas" />
      <Property name="TraditionalChinese" value="永凍-無風暴" />
      <Property name="USEnglish" value="Permafrost - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME1" />
      <Property name="BrazilianPortuguese" value="Enchentes tóxicas frequentes - Tempestades frequentes" />
      <Property name="Dutch" value="Veel toxische overstromingen - Regelmatige stormen" />
      <Property name="English" value="Frequent Toxic Floods - Frequent Storms" />
      <Property name="French" value="Inondations toxiques - Tempêtes fréquentes" />
      <Property name="German" value="Häufige giftige Überflutungen - Häufige Stürme" />
      <Property name="Italian" value="Inondazioni tossiche usuali - Tempeste frequenti" />
      <Property name="Japanese" value="頻繁な毒性の洪水 - 頻繁なストーム" />
      <Property name="Korean" value="잦은 유독성 홍수 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Riadas tóxicas frecuentes - Tormentas frecuentes" />
      <Property name="Polish" value="Częste zatrucia toksyczne - Częste burze" />
      <Property name="Portuguese" value="Inundações tóxicas frequentes - Tempestades frequentes" />
      <Property name="Russian" value="Частые токсичные затопления - Частые штормы" />
      <Property name="SimplifiedChinese" value="毒性洪水繁多-经常风暴" />
      <Property name="Spanish" value="Riadas tóxicas frecuentes - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="頻繁的劇毒洪水-經常風暴" />
      <Property name="USEnglish" value="Frequent Toxic Floods - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME2" />
      <Property name="BrazilianPortuguese" value="Supertempestades tóxicas - Tempestades frequentes" />
      <Property name="Dutch" value="Toxische superstormen - Regelmatige stormen" />
      <Property name="English" value="Toxic Superstorms - Frequent Storms" />
      <Property name="French" value="Supertempêtes toxiques - Tempêtes fréquentes" />
      <Property name="German" value="Giftige Superstürme - Häufige Stürme" />
      <Property name="Italian" value="Super-tempeste tossiche - Tempeste frequenti" />
      <Property name="Japanese" value="毒性の大嵐 - 頻繁なストーム" />
      <Property name="Korean" value="유독성 슈퍼 태풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Supertormentas tóxicas - Tormentas frecuentes" />
      <Property name="Polish" value="Toksyczne superburze - Częste burze" />
      <Property name="Portuguese" value="Supertempestades tóxicas - Tempestades frequentes" />
      <Property name="Russian" value="Токсичные супербури - Частые штормы" />
      <Property name="SimplifiedChinese" value="毒性超级旋风-经常风暴" />
      <Property name="Spanish" value="Supertormentas tóxicas - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="劇毒超級風暴-經常風暴" />
      <Property name="USEnglish" value="Toxic Superstorms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME3" />
      <Property name="BrazilianPortuguese" value="Dilúvio ácido - Tempestades frequentes" />
      <Property name="Dutch" value="Zure stortvloeden - Regelmatige stormen" />
      <Property name="English" value="Acidic Deluges - Frequent Storms" />
      <Property name="French" value="Déluges acides - Tempêtes fréquentes" />
      <Property name="German" value="Säureüberschwemmungen - Häufige Stürme" />
      <Property name="Italian" value="Diluvi a base acida - Tempeste frequenti" />
      <Property name="Japanese" value="酸性の大雨 - 頻繁なストーム" />
      <Property name="Korean" value="산성 폭우 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Diluvios ácidos - Tormentas frecuentes" />
      <Property name="Polish" value="Kwaśne ulewy - Częste burze" />
      <Property name="Portuguese" value="Dilúvios ácidos - Tempestades frequentes" />
      <Property name="Russian" value="Кислотные потопы - Частые штормы" />
      <Property name="SimplifiedChinese" value="酸性洪水-经常风暴" />
      <Property name="Spanish" value="Diluvios ácidos - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="酸性洪水-經常風暴" />
      <Property name="USEnglish" value="Acidic Deluges - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME4" />
      <Property name="BrazilianPortuguese" value="Ciclones corrosivos - Tempestades frequentes" />
      <Property name="Dutch" value="Bijtende cyclonen - Regelmatige stormen" />
      <Property name="English" value="Corrosive Cyclones - Frequent Storms" />
      <Property name="French" value="Cyclones corrosifs - Tempêtes fréquentes" />
      <Property name="German" value="Ätzende Zyklone - Häufige Stürme" />
      <Property name="Italian" value="Cicloni corrosivi - Tempeste frequenti" />
      <Property name="Japanese" value="腐食性のサイクロン - 頻繁なストーム" />
      <Property name="Korean" value="부식성 사이클론 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Ciclones corrosivos - Tormentas frecuentes" />
      <Property name="Polish" value="Żrące cyklony - Częste burze" />
      <Property name="Portuguese" value="Ciclones corrosivos - Tempestades frequentes" />
      <Property name="Russian" value="Коррозийные циклоны - Частые штормы" />
      <Property name="SimplifiedChinese" value="腐蚀性旋风-经常风暴" />
      <Property name="Spanish" value="Ciclones corrosivos - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="腐蝕性龍捲風-經常風暴" />
      <Property name="USEnglish" value="Corrosive Cyclones - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME5" />
      <Property name="BrazilianPortuguese" value="Enchentes cáusticas - Tempestades frequentes" />
      <Property name="Dutch" value="Caustische overstromingen - Regelmatige stormen" />
      <Property name="English" value="Caustic Floods - Frequent Storms" />
      <Property name="French" value="Inondations caustiques - Tempêtes fréquentes" />
      <Property name="German" value="Ätzende Überschwemmungen - Häufige Stürme" />
      <Property name="Italian" value="Inondazioni caustiche - Tempeste frequenti" />
      <Property name="Japanese" value="苛性の洪水 - 頻繁なストーム" />
      <Property name="Korean" value="가성 홍수 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Inundaciones cáusticas - Tormentas frecuentes" />
      <Property name="Polish" value="Powodzie kaustyczne - Częste burze" />
      <Property name="Portuguese" value="Inundações cáusticas - Tempestades frequentes" />
      <Property name="Russian" value="Щелочные потопы - Частые штормы" />
      <Property name="SimplifiedChinese" value="腐蚀性洪水-经常风暴" />
      <Property name="Spanish" value="Inundaciones cáusticas - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="腐蝕性洪水-經常風暴" />
      <Property name="USEnglish" value="Caustic Floods - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME6" />
      <Property name="BrazilianPortuguese" value="Tempestades corrosivas - Tempestades frequentes" />
      <Property name="Dutch" value="Bijtende stormen - Regelmatige stormen" />
      <Property name="English" value="Corrosive Storms - Frequent Storms" />
      <Property name="French" value="Tempêtes corrosives - Tempêtes fréquentes" />
      <Property name="German" value="Ätzende Stürme - Häufige Stürme" />
      <Property name="Italian" value="Tempeste corrosive - Tempeste frequenti" />
      <Property name="Japanese" value="腐食性の嵐 - 頻繁なストーム" />
      <Property name="Korean" value="부식성 폭풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas corrosivas - Tormentas frecuentes" />
      <Property name="Polish" value="Żrące burze - Częste burze" />
      <Property name="Portuguese" value="Tempestades corrosivas - Tempestades frequentes" />
      <Property name="Russian" value="Коррозийные бури - Частые штормы" />
      <Property name="SimplifiedChinese" value="腐蚀性风暴-经常风暴" />
      <Property name="Spanish" value="Tormentas corrosivas - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="腐蝕性風暴-經常風暴" />
      <Property name="USEnglish" value="Corrosive Storms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME7" />
      <Property name="BrazilianPortuguese" value="Ácido torrencial - Tempestades frequentes" />
      <Property name="Dutch" value="Zure stortregen - Regelmatige stormen" />
      <Property name="English" value="Torrential Acid - Frequent Storms" />
      <Property name="French" value="Acide torrentiel - Tempêtes fréquentes" />
      <Property name="German" value="Sintflutartige Säure - Häufige Stürme" />
      <Property name="Italian" value="Acido torrenziale - Tempeste frequenti" />
      <Property name="Japanese" value="土砂降りの酸 - 頻繁なストーム" />
      <Property name="Korean" value="빗발치는 산 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Ácido torrencial - Tormentas frecuentes" />
      <Property name="Polish" value="Nawały kwasu - Częste burze" />
      <Property name="Portuguese" value="Ácido torrencial - Tempestades frequentes" />
      <Property name="Russian" value="Кислотные ливни - Частые штормы" />
      <Property name="SimplifiedChinese" value="酸性奔流-经常风暴" />
      <Property name="Spanish" value="Ácido torrencial - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="酸性暴雨-經常風暴" />
      <Property name="USEnglish" value="Torrential Acid - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME8" />
      <Property name="BrazilianPortuguese" value="Tempestades de gás nocivas - Tempestades frequentes" />
      <Property name="Dutch" value="Schadelijke gasstormen - Regelmatige stormen" />
      <Property name="English" value="Noxious Gas Storms - Frequent Storms" />
      <Property name="French" value="Tempêtes de gaz nocif - Tempêtes fréquentes" />
      <Property name="German" value="Ungesunde Gasstürme - Häufige Stürme" />
      <Property name="Italian" value="Tempeste di gas nocive - Tempeste frequenti" />
      <Property name="Japanese" value="有害なガス嵐 - 頻繁なストーム" />
      <Property name="Korean" value="유독한 가스 폭풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de gas nocivo - Tormentas frecuentes" />
      <Property name="Polish" value="Niebezpieczne burze gazowe - Częste burze" />
      <Property name="Portuguese" value="Tempestades de gás nocivo - Tempestades frequentes" />
      <Property name="Russian" value="Бури вредных газов - Частые штормы" />
      <Property name="SimplifiedChinese" value="毒性气体风暴-经常风暴" />
      <Property name="Spanish" value="Tormentas de gas nocivo - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="毒氣風暴-經常風暴" />
      <Property name="USEnglish" value="Noxious Gas Storms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME9" />
      <Property name="BrazilianPortuguese" value="Monções tóxicas - Tempestades frequentes" />
      <Property name="Dutch" value="Toxische moessons - Regelmatige stormen" />
      <Property name="English" value="Toxic Monsoons - Frequent Storms" />
      <Property name="French" value="Moussons toxiques - Tempêtes fréquentes" />
      <Property name="German" value="Giftige Monsune - Häufige Stürme" />
      <Property name="Italian" value="Monsoni tossici - Tempeste frequenti" />
      <Property name="Japanese" value="毒性のモンスーン - 頻繁なストーム" />
      <Property name="Korean" value="유독성 몬순 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Monzones tóxicos - Tormentas frecuentes" />
      <Property name="Polish" value="Toksyczne monsuny - Częste burze" />
      <Property name="Portuguese" value="Monções tóxicas - Tempestades frequentes" />
      <Property name="Russian" value="Токсичные муссоны - Частые штормы" />
      <Property name="SimplifiedChinese" value="毒性季风-经常风暴" />
      <Property name="Spanish" value="Monzones tóxicos - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="有毒季風-經常風暴" />
      <Property name="USEnglish" value="Toxic Monsoons - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME10" />
      <Property name="BrazilianPortuguese" value="Tempestades de ácido erosivo - Tempestades frequentes" />
      <Property name="Dutch" value="Ontvellende zuurstormen - Regelmatige stormen" />
      <Property name="English" value="Bone-Stripping Acid Storms - Frequent Storms" />
      <Property name="French" value="Tempêtes d'acides rongeuses - Tempêtes fréquentes" />
      <Property name="German" value="Hautzersetzende Säurestürme - Häufige Stürme" />
      <Property name="Italian" value="Tempeste acide violente - Tempeste frequenti" />
      <Property name="Japanese" value="骨をはぐような酸嵐 - 頻繁なストーム" />
      <Property name="Korean" value="뼈까지 녹이는 산성 폭풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ácidas dolorosas - Tormentas frecuentes" />
      <Property name="Polish" value="Palące burze kwasowe - Częste burze" />
      <Property name="Portuguese" value="Tempestade ácida quebra-ossos - Tempestades frequentes" />
      <Property name="Russian" value="Разъедающие кислотные бури - Частые штормы" />
      <Property name="SimplifiedChinese" value="刺骨的酸性风暴-经常风暴" />
      <Property name="Spanish" value="Tormentas ácidas dolorosas - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="強酸風暴-經常風暴" />
      <Property name="USEnglish" value="Bone-Stripping Acid Storms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME11" />
      <Property name="BrazilianPortuguese" value="Chuvas grossas corrosivas - Tempestades frequentes" />
      <Property name="Dutch" value="Bijtende stortbuien - Regelmatige stormen" />
      <Property name="English" value="Corrosive Rainstorms - Frequent Storms" />
      <Property name="French" value="Fortes pluies corrosives - Tempêtes fréquentes" />
      <Property name="German" value="Ätzende Regenstürme - Häufige Stürme" />
      <Property name="Italian" value="Piovaschi corrosivi - Tempeste frequenti" />
      <Property name="Japanese" value="腐食性の暴風雨 - 頻繁なストーム" />
      <Property name="Korean" value="부식성 호우 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tempestades corrosivas - Tormentas frecuentes" />
      <Property name="Polish" value="Żrące ulewy - Częste burze" />
      <Property name="Portuguese" value="Tempestades corrosivas - Tempestades frequentes" />
      <Property name="Russian" value="Кислотные ливни с ураганом - Частые штормы" />
      <Property name="SimplifiedChinese" value="腐蚀性暴风雨-经常风暴" />
      <Property name="Spanish" value="Tempestades corrosivas - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="腐蝕性暴風雨-經常風暴" />
      <Property name="USEnglish" value="Corrosive Rainstorms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXICEXTREME12" />
      <Property name="BrazilianPortuguese" value="Chuva tóxica constante - Tempestades frequentes" />
      <Property name="Dutch" value="Stromende giftige regen - Regelmatige stormen" />
      <Property name="English" value="Pouring Toxic Rain - Frequent Storms" />
      <Property name="French" value="Pluies toxiques diluviennes - Tempêtes fréquentes" />
      <Property name="German" value="Strömender giftiger Regen - Häufige Stürme" />
      <Property name="Italian" value="Pioggia tossica a catinelle - Tempeste frequenti" />
      <Property name="Japanese" value="土砂降りの毒性雨 - 頻繁なストーム" />
      <Property name="Korean" value="퍼붓는 유독성 비 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Lluvia tóxica torrencial - Tormentas frecuentes" />
      <Property name="Polish" value="Ulewne deszcze toksyczne - Częste burze" />
      <Property name="Portuguese" value="Chuva tóxica intensa - Tempestades frequentes" />
      <Property name="Russian" value="Проливной токсичный дождь - Частые штормы" />
      <Property name="SimplifiedChinese" value="倾盆毒雨-经常风暴" />
      <Property name="Spanish" value="Lluvia tóxica torrencial - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="傾盆毒雨-經常風暴" />
      <Property name="USEnglish" value="Pouring Toxic Rain - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC1" />
      <Property name="BrazilianPortuguese" value="Tempestades de ácido súbitas - Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele zuurstormen - Incidentele stormen" />
      <Property name="English" value="Occasional Acid Storms - Occasional Storms" />
      <Property name="French" value="Tempêtes d'acides - Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Säurestürme - Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste acide occasionali - Tempeste occasionali" />
      <Property name="Japanese" value="時折の酸嵐 - 時折のストーム" />
      <Property name="Korean" value="가끔씩 산성 폭풍 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas ácidas ocasionales - Tormentas ocasionales" />
      <Property name="Polish" value="Okresowe burze kwasowe - Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades ácidas ocasionais - Tempestades ocasionais" />
      <Property name="Russian" value="Нерегулярные кислотные бури - Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶见酸性风暴-偶尔风暴" />
      <Property name="Spanish" value="Tormentas ácidas ocasionales - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶發的酸雨暴-偶爾風暴" />
      <Property name="USEnglish" value="Occasional Acid Storms - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC2" />
      <Property name="BrazilianPortuguese" value="Degradação atmosférica - Tempestades ocasionais" />
      <Property name="Dutch" value="Atmosferisch bederf - Incidentele stormen" />
      <Property name="English" value="Atmospheric Corruption - Occasional Storms" />
      <Property name="French" value="Corruption atmosphérique - Tempêtes occasionnelles" />
      <Property name="German" value="Atmosphärische Korruption - Gelegentliche Stürme" />
      <Property name="Italian" value="Corruzione atmosferica - Tempeste occasionali" />
      <Property name="Japanese" value="大気の荒廃 - 時折のストーム" />
      <Property name="Korean" value="대기 오염 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Corrupción atmosférica - Tormentas ocasionales" />
      <Property name="Polish" value="Skażenie atmosferyczne - Sporadyczne burze" />
      <Property name="Portuguese" value="Corrupção atmosférica - Tempestades ocasionais" />
      <Property name="Russian" value="Едкая атмосфера - Редкие штормы" />
      <Property name="SimplifiedChinese" value="大气腐败-偶尔风暴" />
      <Property name="Spanish" value="Corrupción atmosférica - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="大氣腐蝕-偶爾風暴" />
      <Property name="USEnglish" value="Atmospheric Corruption - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC3" />
      <Property name="BrazilianPortuguese" value="Chuvas venenosas breves - Tempestades ocasionais" />
      <Property name="Dutch" value="Giftige regenvlagen - Incidentele stormen" />
      <Property name="English" value="Poison Flurries - Occasional Storms" />
      <Property name="French" value="Averses empoisonnées - Tempêtes occasionnelles" />
      <Property name="German" value="Giftgestöber - Gelegentliche Stürme" />
      <Property name="Italian" value="Nevischio velenoso - Tempeste occasionali" />
      <Property name="Japanese" value="毒のにわか雨 - 時折のストーム" />
      <Property name="Korean" value="독 질풍 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Chaparrones venenosos - Tormentas ocasionales" />
      <Property name="Polish" value="Skażony śnieg - Sporadyczne burze" />
      <Property name="Portuguese" value="Aguaceiros venenosos - Tempestades ocasionais" />
      <Property name="Russian" value="Внезапные ядовитые ливни - Редкие штормы" />
      <Property name="SimplifiedChinese" value="有毒阵雨-偶尔风暴" />
      <Property name="Spanish" value="Chaparrones venenosos - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="毒性陣雨-偶爾風暴" />
      <Property name="USEnglish" value="Poison Flurries - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC4" />
      <Property name="BrazilianPortuguese" value="Pancadas tóxicas - Tempestades ocasionais" />
      <Property name="Dutch" value="Toxische uitbraken - Incidentele stormen" />
      <Property name="English" value="Toxic Outbreaks - Occasional Storms" />
      <Property name="French" value="Éruptions toxiques - Tempêtes occasionnelles" />
      <Property name="German" value="Giftige Ausbrüche - Gelegentliche Stürme" />
      <Property name="Italian" value="Fenomeni tossici - Tempeste occasionali" />
      <Property name="Japanese" value="毒の発生 - 時折のストーム" />
      <Property name="Korean" value="유독성 분출 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Estallidos tóxicos - Tormentas ocasionales" />
      <Property name="Polish" value="Ataki toksyczności - Sporadyczne burze" />
      <Property name="Portuguese" value="Surtos tóxicos - Tempestades ocasionais" />
      <Property name="Russian" value="Токсичные выбросы - Редкие штормы" />
      <Property name="SimplifiedChinese" value="毒性爆发-偶尔风暴" />
      <Property name="Spanish" value="Estallidos tóxicos - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="毒性爆發-偶爾風暴" />
      <Property name="USEnglish" value="Toxic Outbreaks - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC5" />
      <Property name="BrazilianPortuguese" value="Bolsões de poeira ácida - Tempestades ocasionais" />
      <Property name="Dutch" value="Zure stofvolumes - Incidentele stormen" />
      <Property name="English" value="Acidic Dust Pockets - Occasional Storms" />
      <Property name="French" value="Poches de poussière acide - Tempêtes occasionnelles" />
      <Property name="German" value="Zersetzende Staubeinschlüsse - Gelegentliche Stürme" />
      <Property name="Italian" value="Sacche di polveri acide - Tempeste occasionali" />
      <Property name="Japanese" value="酸性の粉塵ポケット - 時折のストーム" />
      <Property name="Korean" value="산성 분진 지대 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Bolsas de polvo ácido - Tormentas ocasionales" />
      <Property name="Polish" value="Kwasowe enklawy pyłu - Sporadyczne burze" />
      <Property name="Portuguese" value="Nuvens de pó ácido - Tempestades ocasionais" />
      <Property name="Russian" value="Облака кислотной пыли - Редкие штормы" />
      <Property name="SimplifiedChinese" value="酸性防尘室-偶尔风暴" />
      <Property name="Spanish" value="Bolsas de polvo ácido - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="酸性粉塵袋-偶爾風暴" />
      <Property name="USEnglish" value="Acidic Dust Pockets - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC6" />
      <Property name="BrazilianPortuguese" value="Frentes tóxicas passageiras - Tempestades ocasionais" />
      <Property name="Dutch" value="Passerende toxische fronten - Incidentele stormen" />
      <Property name="English" value="Passing Toxic Fronts - Occasional Storms" />
      <Property name="French" value="Fronts toxiques de passage - Tempêtes occasionnelles" />
      <Property name="German" value="Vorbeiziehende Giftschauer - Gelegentliche Stürme" />
      <Property name="Italian" value="Fronti tossici di passaggio - Tempeste occasionali" />
      <Property name="Japanese" value="毒性の通り雨 - 時折のストーム" />
      <Property name="Korean" value="통과하는 유독성 기상 전선 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Frentes tóxicos superficiales - Tormentas ocasionales" />
      <Property name="Polish" value="Przechodzące fronty toksyczne - Sporadyczne burze" />
      <Property name="Portuguese" value="Frentes tóxicas de passagem - Tempestades ocasionais" />
      <Property name="Russian" value="Подвижные кислотные фронты - Редкие штормы" />
      <Property name="SimplifiedChinese" value="短暂的毒性锋面-偶尔风暴" />
      <Property name="Spanish" value="Frentes tóxicos superficiales - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="短暫的有毒鋒面-偶爾風暴" />
      <Property name="USEnglish" value="Passing Toxic Fronts - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC7" />
      <Property name="BrazilianPortuguese" value="Ventos cáusticos - Tempestades ocasionais" />
      <Property name="Dutch" value="Caustische winden - Incidentele stormen" />
      <Property name="English" value="Caustic Winds - Occasional Storms" />
      <Property name="French" value="Vents caustiques - Tempêtes occasionnelles" />
      <Property name="German" value="Ätzende Winde - Gelegentliche Stürme" />
      <Property name="Italian" value="Venti caustici - Tempeste occasionali" />
      <Property name="Japanese" value="苛性の風 - 時折のストーム" />
      <Property name="Korean" value="가성 바람 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Vientos cáusticos - Tormentas ocasionales" />
      <Property name="Polish" value="Wiatry kaustyczne - Sporadyczne burze" />
      <Property name="Portuguese" value="Ventos cáusticos - Tempestades ocasionais" />
      <Property name="Russian" value="Щелочные ветры - Редкие штормы" />
      <Property name="SimplifiedChinese" value="腐蚀性风-偶尔风暴" />
      <Property name="Spanish" value="Vientos cáusticos - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="腐蝕風-偶爾風暴" />
      <Property name="USEnglish" value="Caustic Winds - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC8" />
      <Property name="BrazilianPortuguese" value="Aguaceiros alcalinos - Tempestades ocasionais" />
      <Property name="Dutch" value="Hevige alkalinebuien - Incidentele stormen" />
      <Property name="English" value="Alkaline Cloudbursts - Occasional Storms" />
      <Property name="French" value="Pluies alcalines - Tempêtes occasionnelles" />
      <Property name="German" value="Basische Wolkenbrüche - Gelegentliche Stürme" />
      <Property name="Italian" value="Fronti nuvolosi alcalini - Tempeste occasionali" />
      <Property name="Japanese" value="アルカリ性の豪雨 - 時折のストーム" />
      <Property name="Korean" value="알칼리성 집중 호우 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Chaparrones alcalinos - Tormentas ocasionales" />
      <Property name="Polish" value="Alkaliczne burze - Sporadyczne burze" />
      <Property name="Portuguese" value="Surtos de nuvens alcalinas - Tempestades ocasionais" />
      <Property name="Russian" value="Щелочные облака - Редкие штормы" />
      <Property name="SimplifiedChinese" value="碱性暴雨-偶尔风暴" />
      <Property name="Spanish" value="Chaparrones alcalinos - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="鹼性大暴雨-偶爾風暴" />
      <Property name="USEnglish" value="Alkaline Cloudbursts - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC9" />
      <Property name="BrazilianPortuguese" value="Chuva perigosamente tóxica - Tempestades ocasionais" />
      <Property name="Dutch" value="Gevaarlijk toxische regen - Incidentele stormen" />
      <Property name="English" value="Dangerously Toxic Rain - Occasional Storms" />
      <Property name="French" value="Pluies toxiques - Tempêtes occasionnelles" />
      <Property name="German" value="Gefährlich gifthaltiger Regen - Gelegentliche Stürme" />
      <Property name="Italian" value="Pioggia a elevata tossicità - Tempeste occasionali" />
      <Property name="Japanese" value="非常に毒性の高い雨 - 時折のストーム" />
      <Property name="Korean" value="위험할 정도로 유독성인 비 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Lluvia peligrosamente tóxica - Tormentas ocasionales" />
      <Property name="Polish" value="Niebezpieczne toks. deszcze - Sporadyczne burze" />
      <Property name="Portuguese" value="Chuva muito tóxica - Tempestades ocasionais" />
      <Property name="Russian" value="Опасный кислотный дождь - Редкие штормы" />
      <Property name="SimplifiedChinese" value="危险的毒性大雨-偶尔风暴" />
      <Property name="Spanish" value="Lluvia peligrosamente tóxica - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="危險的毒雨-偶爾風暴" />
      <Property name="USEnglish" value="Dangerously Toxic Rain - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC10" />
      <Property name="BrazilianPortuguese" value="Tempestade de granizo erosiva - Tempestades ocasionais" />
      <Property name="Dutch" value="Bijtende natte sneeuw - Incidentele stormen" />
      <Property name="English" value="Corrosive Sleet Storms - Occasional Storms" />
      <Property name="French" value="Tempêtes de neige corrosive - Tempêtes occasionnelles" />
      <Property name="German" value="Ätzende Graupelstürme - Gelegentliche Stürme" />
      <Property name="Italian" value="Nevischio corrosivo - Tempeste occasionali" />
      <Property name="Japanese" value="腐食性のみぞれ嵐 - 時折のストーム" />
      <Property name="Korean" value="부식성 진눈깨비 폭풍 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas corrosivas - Tormentas ocasionales" />
      <Property name="Polish" value="Żrące opady - Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades corrosivas - Tempestades ocasionais" />
      <Property name="Russian" value="Коррозийные бури с градом - Редкие штормы" />
      <Property name="SimplifiedChinese" value="腐蚀性冰雹风暴-偶尔风暴" />
      <Property name="Spanish" value="Tormentas corrosivas - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="腐蝕性霰風暴-偶爾風暴" />
      <Property name="USEnglish" value="Corrosive Sleet Storms - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC11" />
      <Property name="BrazilianPortuguese" value="Atmosfera letal - Tempestades ocasionais" />
      <Property name="Dutch" value="Dodelijke atmosfeer - Incidentele stormen" />
      <Property name="English" value="Lethal Atmosphere - Occasional Storms" />
      <Property name="French" value="Atmosphère mortelle - Tempêtes occasionnelles" />
      <Property name="German" value="Tödliche Atmosphäre - Gelegentliche Stürme" />
      <Property name="Italian" value="Atmosfera letale - Tempeste occasionali" />
      <Property name="Japanese" value="致死的大気 - 時折のストーム" />
      <Property name="Korean" value="치명적인 대기 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Atmósfera letal - Tormentas ocasionales" />
      <Property name="Polish" value="Zabójcza atmosfera - Sporadyczne burze" />
      <Property name="Portuguese" value="Atmosfera mortífera - Tempestades ocasionais" />
      <Property name="Russian" value="Смертельная атмосфера - Редкие штормы" />
      <Property name="SimplifiedChinese" value="剧毒大气-偶尔风暴" />
      <Property name="Spanish" value="Atmósfera letal - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="致命大氣-偶爾風暴" />
      <Property name="USEnglish" value="Lethal Atmosphere - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC12" />
      <Property name="BrazilianPortuguese" value="Chuvisco tóxico infrequente - Tempestades ocasionais" />
      <Property name="Dutch" value="Irreguliere toxische motregen - Incidentele stormen" />
      <Property name="English" value="Infrequent Toxic Drizzle - Occasional Storms" />
      <Property name="French" value="Bruine toxique peu fréquente - Tempêtes occasionnelles" />
      <Property name="German" value="Seltener giftiger Sprühregen - Gelegentliche Stürme" />
      <Property name="Italian" value="Pioggerella tossica inusuale - Tempeste occasionali" />
      <Property name="Japanese" value="不定期の毒性霧雨 - 時折のストーム" />
      <Property name="Korean" value="드문 유독성 보슬비 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Lloviznas tóxicas inusuales - Tormentas ocasionales" />
      <Property name="Polish" value="Niewielka mżawka toksyczna - Sporadyczne burze" />
      <Property name="Portuguese" value="Chuviscos tóxicos ocasionais - Tempestades ocasionais" />
      <Property name="Russian" value="Нечастая токсичная изморось - Редкие штормы" />
      <Property name="SimplifiedChinese" value="罕见毒性蒙蒙细雨-偶尔风暴" />
      <Property name="Spanish" value="Lloviznas tóxicas inusuales - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="稀有的劇毒細雨-偶爾風暴" />
      <Property name="USEnglish" value="Infrequent Toxic Drizzle - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR1" />
      <Property name="BrazilianPortuguese" value="Chuva ácida - Sem tempestade" />
      <Property name="Dutch" value="Zure regen - Geen storm" />
      <Property name="English" value="Acid Rain - No Storms" />
      <Property name="French" value="Pluie acide - Pas de tempête" />
      <Property name="German" value="Saurer Regen - Kein Sturm" />
      <Property name="Italian" value="Pioggia acida - Nessuna tempesta" />
      <Property name="Japanese" value="酸性雨 - ストームなし" />
      <Property name="Korean" value="산성비 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Lluvia ácida - Sin tormentas" />
      <Property name="Polish" value="Kwaśny deszcz - Brak burzy" />
      <Property name="Portuguese" value="Chuva ácida - Sem tempestade" />
      <Property name="Russian" value="Кислотный дождь - Без шторма" />
      <Property name="SimplifiedChinese" value="酸雨-无风暴" />
      <Property name="Spanish" value="Lluvia ácida - Sin tormentas" />
      <Property name="TraditionalChinese" value="酸雨-無風暴" />
      <Property name="USEnglish" value="Acid Rain - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR2" />
      <Property name="BrazilianPortuguese" value="Nuvens tóxicas - Sem tempestade" />
      <Property name="Dutch" value="Toxische wolken - Geen storm" />
      <Property name="English" value="Toxic Clouds - No Storms" />
      <Property name="French" value="Nuages toxiques - Pas de tempête" />
      <Property name="German" value="Giftige Wolken - Kein Sturm" />
      <Property name="Italian" value="Nubi tossiche - Nessuna tempesta" />
      <Property name="Japanese" value="毒性の雲 - ストームなし" />
      <Property name="Korean" value="유독성 구름 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Nubes tóxicas - Sin tormentas" />
      <Property name="Polish" value="Toksyczne chmury - Brak burzy" />
      <Property name="Portuguese" value="Nuvens tóxicas - Sem tempestade" />
      <Property name="Russian" value="Токсичные облака - Без шторма" />
      <Property name="SimplifiedChinese" value="毒云-无风暴" />
      <Property name="Spanish" value="Nubes tóxicas - Sin tormentas" />
      <Property name="TraditionalChinese" value="毒雲-無風暴" />
      <Property name="USEnglish" value="Toxic Clouds - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR3" />
      <Property name="BrazilianPortuguese" value="Chuva venenosa - Sem tempestade" />
      <Property name="Dutch" value="Giftige regen - Geen storm" />
      <Property name="English" value="Poison Rain - No Storms" />
      <Property name="French" value="Pluie empoisonnée - Pas de tempête" />
      <Property name="German" value="Giftregen - Kein Sturm" />
      <Property name="Italian" value="Pioggia velenosa - Nessuna tempesta" />
      <Property name="Japanese" value="毒雨 - ストームなし" />
      <Property name="Korean" value="독 비 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Lluvia venenosa - Sin tormentas" />
      <Property name="Polish" value="Zatruty deszcz - Brak burzy" />
      <Property name="Portuguese" value="Chuva venenosa - Sem tempestade" />
      <Property name="Russian" value="Ядовитый дождь - Без шторма" />
      <Property name="SimplifiedChinese" value="毒雨-无风暴" />
      <Property name="Spanish" value="Lluvia venenosa - Sin tormentas" />
      <Property name="TraditionalChinese" value="毒性降雨-無風暴" />
      <Property name="USEnglish" value="Poison Rain - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR4" />
      <Property name="BrazilianPortuguese" value="Nuvens sufocantes - Sem tempestade" />
      <Property name="Dutch" value="Verstikkende wolken - Geen storm" />
      <Property name="English" value="Choking Clouds - No Storms" />
      <Property name="French" value="Nuages suffocants - Pas de tempête" />
      <Property name="German" value="Erstickende Wolken - Kein Sturm" />
      <Property name="Italian" value="Nubi soffocanti - Nessuna tempesta" />
      <Property name="Japanese" value="窒息性の雲 - ストームなし" />
      <Property name="Korean" value="호흡 불가능한 구름 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Nubes asfixiantes - Sin tormentas" />
      <Property name="Polish" value="Duszące chmury - Brak burzy" />
      <Property name="Portuguese" value="Nuvens asfixiantes - Sem tempestade" />
      <Property name="Russian" value="Удушающие облака - Без шторма" />
      <Property name="SimplifiedChinese" value="令人窒息的云-无风暴" />
      <Property name="Spanish" value="Nubes asfixiantes - Sin tormentas" />
      <Property name="TraditionalChinese" value="嗆味雲-無風暴" />
      <Property name="USEnglish" value="Choking Clouds - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR5" />
      <Property name="BrazilianPortuguese" value="Umidade cáustica - Sem tempestade" />
      <Property name="Dutch" value="Caustisch vocht - Geen storm" />
      <Property name="English" value="Caustic Moisture - No Storms" />
      <Property name="French" value="Humidité caustique - Pas de tempête" />
      <Property name="German" value="Ätzende Feuchtigkeit - Kein Sturm" />
      <Property name="Italian" value="Umidità caustica - Nessuna tempesta" />
      <Property name="Japanese" value="苛性の水蒸気 - ストームなし" />
      <Property name="Korean" value="가성 수분 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Humedad cáustica - Sin tormentas" />
      <Property name="Polish" value="Kaustyczna wilgotność - Brak burzy" />
      <Property name="Portuguese" value="Humidade cáustica - Sem tempestade" />
      <Property name="Russian" value="Щелочные осадки - Без шторма" />
      <Property name="SimplifiedChinese" value="腐蚀性水分-无风暴" />
      <Property name="Spanish" value="Humedad cáustica - Sin tormentas" />
      <Property name="TraditionalChinese" value="腐蝕性水分-無風暴" />
      <Property name="USEnglish" value="Caustic Moisture - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR6" />
      <Property name="BrazilianPortuguese" value="Gás venenoso - Sem tempestade" />
      <Property name="Dutch" value="Giftig gas - Geen storm" />
      <Property name="English" value="Poisonous Gas - No Storms" />
      <Property name="French" value="Gaz empoisonné - Pas de tempête" />
      <Property name="German" value="Giftiges Gas - Kein Sturm" />
      <Property name="Italian" value="Gas velenosi - Nessuna tempesta" />
      <Property name="Japanese" value="有毒ガス - ストームなし" />
      <Property name="Korean" value="유독 가스 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Gas venenoso - Sin tormentas" />
      <Property name="Polish" value="Trujący gaz - Brak burzy" />
      <Property name="Portuguese" value="Gás venenoso - Sem tempestade" />
      <Property name="Russian" value="Ядовитый газ - Без шторма" />
      <Property name="SimplifiedChinese" value="毒气-无风暴" />
      <Property name="Spanish" value="Gas venenoso - Sin tormentas" />
      <Property name="TraditionalChinese" value="有毒氣體-無風暴" />
      <Property name="USEnglish" value="Poisonous Gas - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR7" />
      <Property name="BrazilianPortuguese" value="Atmosfera irritante - Sem tempestade" />
      <Property name="Dutch" value="Prikkende atmosfeer - Geen storm" />
      <Property name="English" value="Stinging Atmosphere - No Storms" />
      <Property name="French" value="Atmosphère irritante - Pas de tempête" />
      <Property name="German" value="Beißende Atmosphäre - Kein Sturm" />
      <Property name="Italian" value="Atmosfera sferzante - Nessuna tempesta" />
      <Property name="Japanese" value="刺すような大気 - ストームなし" />
      <Property name="Korean" value="따끔따끔한 대기 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Atmósfera urticante - Sin tormentas" />
      <Property name="Polish" value="Kłująca atmosfera - Brak burzy" />
      <Property name="Portuguese" value="Atmosfera urticante - Sem tempestade" />
      <Property name="Russian" value="Жгучая атмосфера - Без шторма" />
      <Property name="SimplifiedChinese" value="刺人的大气层-无风暴" />
      <Property name="Spanish" value="Atmósfera urticante - Sin tormentas" />
      <Property name="TraditionalChinese" value="螫人大氣-無風暴" />
      <Property name="USEnglish" value="Stinging Atmosphere - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR8" />
      <Property name="BrazilianPortuguese" value="Orvalho tóxico - Sem tempestade" />
      <Property name="Dutch" value="Toxische nevel - Geen storm" />
      <Property name="English" value="Toxic Damp - No Storms" />
      <Property name="French" value="Moiteur toxique - Pas de tempête" />
      <Property name="German" value="Giftiger Dunst - Kein Sturm" />
      <Property name="Italian" value="Bagnato tossico - Nessuna tempesta" />
      <Property name="Japanese" value="毒性の湿気 - ストームなし" />
      <Property name="Korean" value="유독성 물기 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Vaho tóxico - Sin tormentas" />
      <Property name="Polish" value="Toksyczna wilgoć - Brak burzy" />
      <Property name="Portuguese" value="Humidade tóxica - Sem tempestade" />
      <Property name="Russian" value="Токсичная сырость - Без шторма" />
      <Property name="SimplifiedChinese" value="毒性湿气-无风暴" />
      <Property name="Spanish" value="Vaho tóxico - Sin tormentas" />
      <Property name="TraditionalChinese" value="劇毒濕氣-無風暴" />
      <Property name="USEnglish" value="Toxic Damp - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR9" />
      <Property name="BrazilianPortuguese" value="Orvalho corrosivo - Sem tempestade" />
      <Property name="Dutch" value="Bijtende nevel - Geen storm" />
      <Property name="English" value="Corrosive Damp - No Storms" />
      <Property name="French" value="Moiteur corrosive - Pas de tempête" />
      <Property name="German" value="Ätzender Dunst - Kein Sturm" />
      <Property name="Italian" value="Bagnato corrosivo - Nessuna tempesta" />
      <Property name="Japanese" value="腐食性の水滴 - ストームなし" />
      <Property name="Korean" value="부식성 물기 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Vaho corrosivo - Sin tormentas" />
      <Property name="Polish" value="Żrąca wilgoć - Brak burzy" />
      <Property name="Portuguese" value="Humidade corrosiva - Sem tempestade" />
      <Property name="Russian" value="Коррозийная сырость - Без шторма" />
      <Property name="SimplifiedChinese" value="腐蚀性湿气-无风暴" />
      <Property name="Spanish" value="Vaho corrosivo - Sin tormentas" />
      <Property name="TraditionalChinese" value="腐蝕性濕氣-無風暴" />
      <Property name="USEnglish" value="Corrosive Damp - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_TOXIC_CLEAR10" />
      <Property name="BrazilianPortuguese" value="Poças irritantes - Sem tempestade" />
      <Property name="Dutch" value="Prikkende poelen - Geen storm" />
      <Property name="English" value="Stinging Puddles - No Storms" />
      <Property name="French" value="Flaques irritantes - Pas de tempête" />
      <Property name="German" value="Beißende Pfützen - Kein Sturm" />
      <Property name="Italian" value="Pozze urticanti - Nessuna tempesta" />
      <Property name="Japanese" value="刺すような水たまり - ストームなし" />
      <Property name="Korean" value="따끔따끔한 웅덩이 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Charcos urticantes - Sin tormentas" />
      <Property name="Polish" value="Kłujące kałuże - Brak burzy" />
      <Property name="Portuguese" value="Poças urticantes - Sem tempestade" />
      <Property name="Russian" value="Обжигающие лужи - Без шторма" />
      <Property name="SimplifiedChinese" value="刺人的水洼-无风暴" />
      <Property name="Spanish" value="Charcos urticantes - Sin tormentas" />
      <Property name="TraditionalChinese" value="螫人水坑-無風暴" />
      <Property name="USEnglish" value="Stinging Puddles - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIOEXTREME1" />
      <Property name="BrazilianPortuguese" value="Radioatividade extrema - Tempestades frequentes" />
      <Property name="Dutch" value="Extreme radioactiviteit - Regelmatige stormen" />
      <Property name="English" value="Extreme Radioactivity - Frequent Storms" />
      <Property name="French" value="Radioactivité extrême - Tempêtes fréquentes" />
      <Property name="German" value="Extreme Radioaktivität - Häufige Stürme" />
      <Property name="Italian" value="Radioattività estrema - Tempeste frequenti" />
      <Property name="Japanese" value="極度の放射線 - 頻繁なストーム" />
      <Property name="Korean" value="극도의 방사능 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Radiactividad extrema - Tormentas frecuentes" />
      <Property name="Polish" value="Ekstremalna radioaktywność - Częste burze" />
      <Property name="Portuguese" value="Radioatividade extrema - Tempestades frequentes" />
      <Property name="Russian" value="Экстремальная радиоактивность - Частые штормы" />
      <Property name="SimplifiedChinese" value="极端放射性-经常风暴" />
      <Property name="Spanish" value="Radiactividad extrema - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="極端輻射-經常風暴" />
      <Property name="USEnglish" value="Extreme Radioactivity - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIOEXTREME2" />
      <Property name="BrazilianPortuguese" value="Tempestades irradiadas - Tempestades frequentes" />
      <Property name="Dutch" value="Radioactieve onweersbuien - Regelmatige stormen" />
      <Property name="English" value="Irradiated Thunderstorms - Frequent Storms" />
      <Property name="French" value="Orages irradiés - Tempêtes fréquentes" />
      <Property name="German" value="Verstrahlte Gewitter - Häufige Stürme" />
      <Property name="Italian" value="Tempeste di fulmini irradiate - Tempeste frequenti" />
      <Property name="Japanese" value="放射能を帯びたの雷雨 - 頻繁なストーム" />
      <Property name="Korean" value="조사된 뇌우 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas irradiadas - Tormentas frecuentes" />
      <Property name="Polish" value="Napromieniowane burze - Częste burze" />
      <Property name="Portuguese" value="Trovoadas irradiadas - Tempestades frequentes" />
      <Property name="Russian" value="Облученные бури - Частые штормы" />
      <Property name="SimplifiedChinese" value="辐射雷暴-经常风暴" />
      <Property name="Spanish" value="Tormentas irradiadas - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="輻射雷暴-經常風暴" />
      <Property name="USEnglish" value="Irradiated Thunderstorms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIOEXTREME3" />
      <Property name="BrazilianPortuguese" value="Tempestades de radiação - Tempestades frequentes" />
      <Property name="Dutch" value="Planeetwijde stralingsstormen - Regelmatige stormen" />
      <Property name="English" value="Planet-Wide Radiation Storms - Frequent Storms" />
      <Property name="French" value="Tempêtes radioactives - Tempêtes fréquentes" />
      <Property name="German" value="Globale Strahlungsstürme - Häufige Stürme" />
      <Property name="Italian" value="Tempeste radioattive - Tempeste frequenti" />
      <Property name="Japanese" value="惑星を覆う放射線嵐 - 頻繁なストーム" />
      <Property name="Korean" value="행성 규모의 방사능 폭풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas radiactivas  - Tormentas frecuentes" />
      <Property name="Polish" value="Burze radiacji na planecie - Częste burze" />
      <Property name="Portuguese" value="Vendaval de radiação planetária - Tempestades frequentes" />
      <Property name="Russian" value="Планетарные радиоакт. бури - Частые штормы" />
      <Property name="SimplifiedChinese" value="全星球性辐射风暴-经常风暴" />
      <Property name="Spanish" value="Tormentas radiactivas  - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="全星球性輻射風暴-經常風暴" />
      <Property name="USEnglish" value="Planet-Wide Radiation Storms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIOEXTREME4" />
      <Property name="BrazilianPortuguese" value="Declínio atmosférico extremo - Tempestades frequentes" />
      <Property name="Dutch" value="Extreem atmosferisch verval - Regelmatige stormen" />
      <Property name="English" value="Extreme Atmospheric Decay - Frequent Storms" />
      <Property name="French" value="Désintégration atmosphérique - Tempêtes fréquentes" />
      <Property name="German" value="Arger atmosphärischer Zerfall - Häufige Stürme" />
      <Property name="Italian" value="Decadimento atmosferico forte - Tempeste frequenti" />
      <Property name="Japanese" value="極度の大気減衰 - 頻繁なストーム" />
      <Property name="Korean" value="극도의 대기 감쇠 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Atmósfera en desintegración - Tormentas frecuentes" />
      <Property name="Polish" value="Ekstremalny rozpad atmosfery - Częste burze" />
      <Property name="Portuguese" value="Declínio atmosférico extremo - Tempestades frequentes" />
      <Property name="Russian" value="Крайне едкая атмосфера - Частые штормы" />
      <Property name="SimplifiedChinese" value="极度大气衰变-经常风暴" />
      <Property name="Spanish" value="Atmósfera en desintegración - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="極度大氣衰變-經常風暴" />
      <Property name="USEnglish" value="Extreme Atmospheric Decay - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIOEXTREME5" />
      <Property name="BrazilianPortuguese" value="Vento nuclear estrondoso - Tempestades frequentes" />
      <Property name="Dutch" value="Bulderende nucleaire wind - Regelmatige stormen" />
      <Property name="English" value="Roaring Nuclear Wind - Frequent Storms" />
      <Property name="French" value="Vent nucléaire violent - Tempêtes fréquentes" />
      <Property name="German" value="Tosender nuklearer Wind - Häufige Stürme" />
      <Property name="Italian" value="Vento nucleare impetuoso - Tempeste frequenti" />
      <Property name="Japanese" value="轟音を立てる原子力の風 - 頻繁なストーム" />
      <Property name="Korean" value="으르렁대는 원자성 바람 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Viento nuclear violento - Tormentas frecuentes" />
      <Property name="Polish" value="Wściekły wiatr jądrowy - Częste burze" />
      <Property name="Portuguese" value="Vento nuclear estrondoso - Tempestades frequentes" />
      <Property name="Russian" value="Ревущий ядерный ветер - Частые штормы" />
      <Property name="SimplifiedChinese" value="狂暴核能风-经常风暴" />
      <Property name="Spanish" value="Viento nuclear violento - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="咆嘯核能風-經常風暴" />
      <Property name="USEnglish" value="Roaring Nuclear Wind - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIOEXTREME6" />
      <Property name="BrazilianPortuguese" value="Ciclones com radiação gama - Tempestades frequentes" />
      <Property name="Dutch" value="Gammacyclonen - Regelmatige stormen" />
      <Property name="English" value="Gamma Cyclones - Frequent Storms" />
      <Property name="French" value="Cyclones gamma - Tempêtes fréquentes" />
      <Property name="German" value="Gamma-Zyklone - Häufige Stürme" />
      <Property name="Italian" value="Cicloni gamma - Tempeste frequenti" />
      <Property name="Japanese" value="ガンマ線のサイクロン - 頻繁なストーム" />
      <Property name="Korean" value="감마 사이클론 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Ciclones gamma - Tormentas frecuentes" />
      <Property name="Polish" value="Cyklony gamma - Częste burze" />
      <Property name="Portuguese" value="Ciclones gama - Tempestades frequentes" />
      <Property name="Russian" value="Гамма-циклоны - Частые штормы" />
      <Property name="SimplifiedChinese" value="伽马旋风-经常风暴" />
      <Property name="Spanish" value="Ciclones gamma - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="伽瑪龍捲風-經常風暴" />
      <Property name="USEnglish" value="Gamma Cyclones - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIOEXTREME7" />
      <Property name="BrazilianPortuguese" value="Rajadas de vento contaminado - Tempestades frequentes" />
      <Property name="Dutch" value="Besmette rukwinden - Regelmatige stormen" />
      <Property name="English" value="Contaminated Squalls - Frequent Storms" />
      <Property name="French" value="Rafales contaminées - Tempêtes fréquentes" />
      <Property name="German" value="Kontaminierte Sturmböen - Häufige Stürme" />
      <Property name="Italian" value="Burrasche contaminate - Tempeste frequenti" />
      <Property name="Japanese" value="汚染されたスコール - 頻繁なストーム" />
      <Property name="Korean" value="오염된 돌풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Chubascos contaminados - Tormentas frecuentes" />
      <Property name="Polish" value="Huragany zanieczyszczeń - Częste burze" />
      <Property name="Portuguese" value="Ventania contaminada - Tempestades frequentes" />
      <Property name="Russian" value="Зараженные штормы - Частые штормы" />
      <Property name="SimplifiedChinese" value="受污染的风暴-经常风暴" />
      <Property name="Spanish" value="Chubascos contaminados - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="受汙染的狂風-經常風暴" />
      <Property name="USEnglish" value="Contaminated Squalls - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIOEXTREME8" />
      <Property name="BrazilianPortuguese" value="Névoa termonuclear extrema - Tempestades frequentes" />
      <Property name="Dutch" value="Extreme thermonucleaire mist - Regelmatige stormen" />
      <Property name="English" value="Extreme Thermonuclear Fog - Frequent Storms" />
      <Property name="French" value="Brume thermonucléaire extrême - Tempêtes fréquentes" />
      <Property name="German" value="Enormer thermonuklearer Nebel - Häufige Stürme" />
      <Property name="Italian" value="Foschia termonucleare estrema - Tempeste frequenti" />
      <Property name="Japanese" value="極度の熱核反応性霧 - 頻繁なストーム" />
      <Property name="Korean" value="극도의 열핵성 안개 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Niebla termonuclear extrema - Tormentas frecuentes" />
      <Property name="Polish" value="Ekstremalna mgła termojądrowa - Częste burze" />
      <Property name="Portuguese" value="Nevoeiro termonuclear extremo - Tempestades frequentes" />
      <Property name="Russian" value="Опасный термоядерный туман - Частые штормы" />
      <Property name="SimplifiedChinese" value="极端热核迷雾-经常风暴" />
      <Property name="Spanish" value="Niebla termonuclear extrema - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="極端熱核子霧-經常風暴" />
      <Property name="USEnglish" value="Extreme Thermonuclear Fog - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIOEXTREME9" />
      <Property name="BrazilianPortuguese" value="Erupções de partículas usuais - Tempestades frequentes" />
      <Property name="Dutch" value="Reguliere deeltjesuitbarstingen - Regelmatige stormen" />
      <Property name="English" value="Frequent Particle Eruptions - Frequent Storms" />
      <Property name="French" value="Éruptions de particules - Tempêtes fréquentes" />
      <Property name="German" value="Häufige Partikeleruptionen - Häufige Stürme" />
      <Property name="Italian" value="Eruzioni particellari usuali - Tempeste frequenti" />
      <Property name="Japanese" value="頻繁な粒子の噴出 - 頻繁なストーム" />
      <Property name="Korean" value="잦은 미립자 폭발 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Partículas en erupción - Tormentas frecuentes" />
      <Property name="Polish" value="Częste erupcje cząsteczek - Częste burze" />
      <Property name="Portuguese" value="Erupção assídua de partículas - Tempestades frequentes" />
      <Property name="Russian" value="Частый выброс частиц - Частые штормы" />
      <Property name="SimplifiedChinese" value="繁多颗粒喷发-经常风暴" />
      <Property name="Spanish" value="Partículas en erupción - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="頻繁粒子噴發-經常風暴" />
      <Property name="USEnglish" value="Frequent Particle Eruptions - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIOEXTREME10" />
      <Property name="BrazilianPortuguese" value="Tempestades nucleares enormes - Tempestades frequentes" />
      <Property name="Dutch" value="Enorme nucleaire stormen - Regelmatige stormen" />
      <Property name="English" value="Enormous Nuclear Storms - Frequent Storms" />
      <Property name="French" value="Tempêtes nucléaires - Tempêtes fréquentes" />
      <Property name="German" value="Enorme nukleare Stürme - Häufige Stürme" />
      <Property name="Italian" value="Tempeste nucleari enormi - Tempeste frequenti" />
      <Property name="Japanese" value="巨大な原子力嵐 - 頻繁なストーム" />
      <Property name="Korean" value="막대한 원자성 폭풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas nucleares enormes - Tormentas frecuentes" />
      <Property name="Polish" value="Ogromne burze jądrowe - Częste burze" />
      <Property name="Portuguese" value="Tempestade nuclear colossal - Tempestades frequentes" />
      <Property name="Russian" value="Гигантские ядерные бури - Частые штормы" />
      <Property name="SimplifiedChinese" value="巨大核能风暴-经常风暴" />
      <Property name="Spanish" value="Tormentas nucleares enormes - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="巨大核子風暴-經常風暴" />
      <Property name="USEnglish" value="Enormous Nuclear Storms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO1" />
      <Property name="BrazilianPortuguese" value="Ventos particulados - Tempestades ocasionais" />
      <Property name="Dutch" value="Deeltjeswinden - Incidentele stormen" />
      <Property name="English" value="Particulate Winds - Occasional Storms" />
      <Property name="French" value="Vents particulaires - Tempêtes occasionnelles" />
      <Property name="German" value="Partikelwinde - Gelegentliche Stürme" />
      <Property name="Italian" value="Venti di particolato - Tempeste occasionali" />
      <Property name="Japanese" value="微粒子状の風 - 時折のストーム" />
      <Property name="Korean" value="미립자 바람 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Vientos de partículas - Tormentas ocasionales" />
      <Property name="Polish" value="Wiatry drobnocząsteczkowe - Sporadyczne burze" />
      <Property name="Portuguese" value="Ventos de partículas - Tempestades ocasionais" />
      <Property name="Russian" value="Насыщенные ветры - Редкие штормы" />
      <Property name="SimplifiedChinese" value="微粒风-偶尔风暴" />
      <Property name="Spanish" value="Vientos de partículas - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="粒子風-偶爾風暴" />
      <Property name="USEnglish" value="Particulate Winds - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO2" />
      <Property name="BrazilianPortuguese" value="Tempestades energizadas - Tempestades ocasionais" />
      <Property name="Dutch" value="Energiestormen - Incidentele stormen" />
      <Property name="English" value="Energetic Storms - Occasional Storms" />
      <Property name="French" value="Tempêtes énergétiques - Tempêtes occasionnelles" />
      <Property name="German" value="Energetische Stürme - Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste energetiche - Tempeste occasionali" />
      <Property name="Japanese" value="エネルギー嵐 - 時折のストーム" />
      <Property name="Korean" value="활발한 폭풍 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas energéticas - Tormentas ocasionales" />
      <Property name="Polish" value="Burze energetyczne - Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades energéticas - Tempestades ocasionais" />
      <Property name="Russian" value="Энергетические бури - Редкие штормы" />
      <Property name="SimplifiedChinese" value="高能风暴-偶尔风暴" />
      <Property name="Spanish" value="Tormentas energéticas - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="強大風暴-偶爾風暴" />
      <Property name="USEnglish" value="Energetic Storms - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO3" />
      <Property name="BrazilianPortuguese" value="Aguaceiros irradiados - Tempestades ocasionais" />
      <Property name="Dutch" value="Radioactieve buien - Incidentele stormen" />
      <Property name="English" value="Irradiated Downpours - Occasional Storms" />
      <Property name="French" value="Déluges irradiés - Tempêtes occasionnelles" />
      <Property name="German" value="Verstrahlte Regengüsse - Gelegentliche Stürme" />
      <Property name="Italian" value="Monsoni irradiati - Tempeste occasionali" />
      <Property name="Japanese" value="放射能を帯びた豪雨 - 時折のストーム" />
      <Property name="Korean" value="조사된 폭우 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Diluvios irradiados - Tormentas ocasionales" />
      <Property name="Polish" value="Napromieniowane ulewy - Sporadyczne burze" />
      <Property name="Portuguese" value="Chuvas fortes irradiadas - Tempestades ocasionais" />
      <Property name="Russian" value="Радиационные ливни - Редкие штормы" />
      <Property name="SimplifiedChinese" value="辐射暴雨-偶尔风暴" />
      <Property name="Spanish" value="Diluvios irradiados - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="輻射暴雨-偶爾風暴" />
      <Property name="USEnglish" value="Irradiated Downpours - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO4" />
      <Property name="BrazilianPortuguese" value="Tempestades de pó radioativo - Tempestades ocasionais" />
      <Property name="Dutch" value="Radioactieve stofstormen - Incidentele stormen" />
      <Property name="English" value="Radioactive Dust Storms - Occasional Storms" />
      <Property name="French" value="Tempêtes de sable radioactive - Tempêtes occasionnelles" />
      <Property name="German" value="Radioaktive Staubstürme - Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste di grani radioattive - Tempeste occasionali" />
      <Property name="Japanese" value="放射性の粉塵嵐 - 時折のストーム" />
      <Property name="Korean" value="방사성 분진 폭풍 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de polvo radiactivo - Tormentas ocasionales" />
      <Property name="Polish" value="Radioaktywne burze pylne - Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades de pó radioativo - Tempestades ocasionais" />
      <Property name="Russian" value="Радиоактивные пыльные бури - Редкие штормы" />
      <Property name="SimplifiedChinese" value="放射性沙尘暴-偶尔风暴" />
      <Property name="Spanish" value="Tormentas de polvo radiactivo - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="輻射塵暴-偶爾風暴" />
      <Property name="USEnglish" value="Radioactive Dust Storms - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO5" />
      <Property name="BrazilianPortuguese" value="Tempestades de vento voláteis - Tempestades ocasionais" />
      <Property name="Dutch" value="Licht ontvlambare stormen - Incidentele stormen" />
      <Property name="English" value="Volatile Windstorms - Occasional Storms" />
      <Property name="French" value="Tempêtes de vent volatiles - Tempêtes occasionnelles" />
      <Property name="German" value="Unbeständige Orkane - Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste di vento esplosive - Tempeste occasionali" />
      <Property name="Japanese" value="揮発性の暴風 - 時折のストーム" />
      <Property name="Korean" value="휘발성 폭풍우 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Vendaval volátil - Tormentas ocasionales" />
      <Property name="Polish" value="Niestabilne wichury - Sporadyczne burze" />
      <Property name="Portuguese" value="Ventanias voláteis - Tempestades ocasionais" />
      <Property name="Russian" value="Неустойчивые бури - Редкие штормы" />
      <Property name="SimplifiedChinese" value="不稳定风暴-偶尔风暴" />
      <Property name="Spanish" value="Vendaval volátil - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="變幻風暴-偶爾風暴" />
      <Property name="USEnglish" value="Volatile Windstorms - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO6" />
      <Property name="BrazilianPortuguese" value="Surtos de radiação ocasionais - Tempestades ocasionais" />
      <Property name="Dutch" value="Stralingsuitbarstingen - Incidentele stormen" />
      <Property name="English" value="Occasional Radiation Outbursts - Occasional Storms" />
      <Property name="French" value="Éruptions de radiation - Tempêtes occasionnelles" />
      <Property name="German" value="Rare Strahlungsausbrüche - Gelegentliche Stürme" />
      <Property name="Italian" value="Esplosioni radioattive usuali - Tempeste occasionali" />
      <Property name="Japanese" value="時折の放射線爆発 - 時折のストーム" />
      <Property name="Korean" value="가끔씩 방사선 폭발 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Descargas radiactivas casuales - Tormentas ocasionales" />
      <Property name="Polish" value="Okresowe emisje promieniotw. - Sporadyczne burze" />
      <Property name="Portuguese" value="Surtos ocasionais de radiação - Tempestades ocasionais" />
      <Property name="Russian" value="Нерегулярные выбросы радиации - Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶见辐射喷发-偶尔风暴" />
      <Property name="Spanish" value="Descargas radiactivas casuales - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶發的輻射爆發-偶爾風暴" />
      <Property name="USEnglish" value="Occasional Radiation Outbursts - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO7" />
      <Property name="BrazilianPortuguese" value="Tempestades irradiadas - Tempestades ocasionais" />
      <Property name="Dutch" value="Radioactieve stormen - Incidentele stormen" />
      <Property name="English" value="Irradiated Storms - Occasional Storms" />
      <Property name="French" value="Tempêtes irradiées - Tempêtes occasionnelles" />
      <Property name="German" value="Strahlenstürme - Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste irradiate - Tempeste occasionali" />
      <Property name="Japanese" value="放射能を帯びた嵐 - 時折のストーム" />
      <Property name="Korean" value="조사된 폭풍 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas irradiadas - Tormentas ocasionales" />
      <Property name="Polish" value="Napromieniowane burze - Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades expositivas - Tempestades ocasionais" />
      <Property name="Russian" value="Радиационные бури - Редкие штормы" />
      <Property name="SimplifiedChinese" value="辐射风暴-偶尔风暴" />
      <Property name="Spanish" value="Tormentas irradiadas - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="輻射風暴-偶爾風暴" />
      <Property name="USEnglish" value="Irradiated Storms - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO8" />
      <Property name="BrazilianPortuguese" value="Névoa instável - Tempestades ocasionais" />
      <Property name="Dutch" value="Onstabiele mist - Incidentele stormen" />
      <Property name="English" value="Unstable Fog - Occasional Storms" />
      <Property name="French" value="Brume instable - Tempêtes occasionnelles" />
      <Property name="German" value="Instabiler Nebel - Gelegentliche Stürme" />
      <Property name="Italian" value="Nebbia instabile - Tempeste occasionali" />
      <Property name="Japanese" value="不安定な霧 - 時折のストーム" />
      <Property name="Korean" value="불안정한 안개 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Niebla inestable - Tormentas ocasionales" />
      <Property name="Polish" value="Niestabilna mgła - Sporadyczne burze" />
      <Property name="Portuguese" value="Nevoeiro instável - Tempestades ocasionais" />
      <Property name="Russian" value="Нестабильный туман - Редкие штормы" />
      <Property name="SimplifiedChinese" value="不稳定尘雾-偶尔风暴" />
      <Property name="Spanish" value="Niebla inestable - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="不穩定霧氣-偶爾風暴" />
      <Property name="USEnglish" value="Unstable Fog - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO9" />
      <Property name="BrazilianPortuguese" value="Chuva reagente - Tempestades ocasionais" />
      <Property name="Dutch" value="Reactieve regen - Incidentele stormen" />
      <Property name="English" value="Reactive Rain - Occasional Storms" />
      <Property name="French" value="Pluie réactive - Tempêtes occasionnelles" />
      <Property name="German" value="Reaktiver Regen - Gelegentliche Stürme" />
      <Property name="Italian" value="Pioggia reattiva - Tempeste occasionali" />
      <Property name="Japanese" value="反応性の雨 - 時折のストーム" />
      <Property name="Korean" value="반응성 비 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Lluvia reactiva - Tormentas ocasionales" />
      <Property name="Polish" value="Reaktywny deszcz - Sporadyczne burze" />
      <Property name="Portuguese" value="Chuva reativa - Tempestades ocasionais" />
      <Property name="Russian" value="Реактивный дождь - Редкие штормы" />
      <Property name="SimplifiedChinese" value="反应降雨-偶尔风暴" />
      <Property name="Spanish" value="Lluvia reactiva - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="活性雨-偶爾風暴" />
      <Property name="USEnglish" value="Reactive Rain - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO10" />
      <Property name="BrazilianPortuguese" value="Tempestades de pó radioativo - Tempestades ocasionais" />
      <Property name="Dutch" value="Radioactieve stofstormen - Incidentele stormen" />
      <Property name="English" value="Radioactive Dust Storms - Occasional Storms" />
      <Property name="French" value="Tempêtes de sable radioactive - Tempêtes occasionnelles" />
      <Property name="German" value="Radioaktive Staubstürme - Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste di polveri radioattive - Tempeste occasionali" />
      <Property name="Japanese" value="放射性の粉塵嵐 - 時折のストーム" />
      <Property name="Korean" value="방사성 분진 폭풍 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de polvo radiactivo - Tormentas ocasionales" />
      <Property name="Polish" value="Radioaktywne burze z pyłami - Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades de pó radioativo - Tempestades ocasionais" />
      <Property name="Russian" value="Радиоактивные пыльные бури - Редкие штормы" />
      <Property name="SimplifiedChinese" value="放射性沙尘暴-偶尔风暴" />
      <Property name="Spanish" value="Tormentas de polvo radiactivo - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="輻射塵暴-偶爾風暴" />
      <Property name="USEnglish" value="Radioactive Dust Storms - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO_CLEAR1" />
      <Property name="BrazilianPortuguese" value="Umidade radioativa - Sem tempestade" />
      <Property name="Dutch" value="Radioactieve vochtigheid - Geen storm" />
      <Property name="English" value="Radioactive Humidity - No Storms" />
      <Property name="French" value="Humidité radioactive - Pas de tempête" />
      <Property name="German" value="Radioaktive Luftfeuchtigkeit - Kein Sturm" />
      <Property name="Italian" value="Umidità radioattiva - Nessuna tempesta" />
      <Property name="Japanese" value="放射性の湿気 - ストームなし" />
      <Property name="Korean" value="방사성 습기 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Humedad radiactiva - Sin tormentas" />
      <Property name="Polish" value="Wilgotność promieniotwórcza - Brak burzy" />
      <Property name="Portuguese" value="Humidade radioativa - Sem tempestade" />
      <Property name="Russian" value="Радиоактивные осадки - Без шторма" />
      <Property name="SimplifiedChinese" value="放射性湿气-无风暴" />
      <Property name="Spanish" value="Humedad radiactiva - Sin tormentas" />
      <Property name="TraditionalChinese" value="輻射濕度-無風暴" />
      <Property name="USEnglish" value="Radioactive Humidity - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO_CLEAR2" />
      <Property name="BrazilianPortuguese" value="Umidade radioativa - Sem tempestade" />
      <Property name="Dutch" value="Radioactieve nevel - Geen storm" />
      <Property name="English" value="Radioactive Damp - No Storms" />
      <Property name="French" value="Moiteur radioactive - Pas de tempête" />
      <Property name="German" value="Radioaktiver Dunst - Kein Sturm" />
      <Property name="Italian" value="Bagnato radioattivo - Nessuna tempesta" />
      <Property name="Japanese" value="放射性の水滴 - ストームなし" />
      <Property name="Korean" value="방사성 물기 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Vaho radiactivo - Sin tormentas" />
      <Property name="Polish" value="Radioaktywna wilgoć - Brak burzy" />
      <Property name="Portuguese" value="Humidade Radioativa - Sem tempestade" />
      <Property name="Russian" value="Радиоактивная сырость - Без шторма" />
      <Property name="SimplifiedChinese" value="放射性潮气-无风暴" />
      <Property name="Spanish" value="Vaho radiactivo - Sin tormentas" />
      <Property name="TraditionalChinese" value="輻射濕氣-無風暴" />
      <Property name="USEnglish" value="Radioactive Damp - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO_CLEAR3" />
      <Property name="BrazilianPortuguese" value="Ventos irradiados - Sem tempestade" />
      <Property name="Dutch" value="Radioactieve wind - Geen storm" />
      <Property name="English" value="Irradiated Winds - No Storms" />
      <Property name="French" value="Vents irradiés - Pas de tempête" />
      <Property name="German" value="Verstrahlter Wind - Kein Sturm" />
      <Property name="Italian" value="Venti radioattivi - Nessuna tempesta" />
      <Property name="Japanese" value="放射能を帯びた風 - ストームなし" />
      <Property name="Korean" value="조사된 바람 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Vientos irradiados - Sin tormentas" />
      <Property name="Polish" value="Napromieniowane wiatry - Brak burzy" />
      <Property name="Portuguese" value="Ventos radioativos - Sem tempestade" />
      <Property name="Russian" value="Радиоактивный ветер - Без шторма" />
      <Property name="SimplifiedChinese" value="辐射风-无风暴" />
      <Property name="Spanish" value="Vientos irradiados - Sin tormentas" />
      <Property name="TraditionalChinese" value="輻射風-無風暴" />
      <Property name="USEnglish" value="Irradiated Winds - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO_CLEAR4" />
      <Property name="BrazilianPortuguese" value="Poças contaminadas - Sem tempestade" />
      <Property name="Dutch" value="Besmette poelen - Geen storm" />
      <Property name="English" value="Contaminated Puddles - No Storms" />
      <Property name="French" value="Flaques contaminées - Pas de tempête" />
      <Property name="German" value="Kontaminierte Pfützen - Kein Sturm" />
      <Property name="Italian" value="Pozze contaminate - Nessuna tempesta" />
      <Property name="Japanese" value="汚染された水たまり - ストームなし" />
      <Property name="Korean" value="오염된 웅덩이 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Charcos contaminados - Sin tormentas" />
      <Property name="Polish" value="Zanieczyszczone kałuże - Brak burzy" />
      <Property name="Portuguese" value="Poças contaminadas - Sem tempestade" />
      <Property name="Russian" value="Зараженные лужи - Без шторма" />
      <Property name="SimplifiedChinese" value="受污染的水洼-无风暴" />
      <Property name="Spanish" value="Charcos contaminados - Sin tormentas" />
      <Property name="TraditionalChinese" value="受汙染的水坑-無風暴" />
      <Property name="USEnglish" value="Contaminated Puddles - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO_CLEAR5" />
      <Property name="BrazilianPortuguese" value="Ventos voláteis - Sem tempestade" />
      <Property name="Dutch" value="Licht ontvlambare wind - Geen storm" />
      <Property name="English" value="Volatile Winds - No Storms" />
      <Property name="French" value="Vents volatiles - Pas de tempête" />
      <Property name="German" value="Unbeständige Winde - Kein Sturm" />
      <Property name="Italian" value="Venti volatili - Nessuna tempesta" />
      <Property name="Japanese" value="揮発性の風 - ストームなし" />
      <Property name="Korean" value="휘발성 바람 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Vientos volátiles - Sin tormentas" />
      <Property name="Polish" value="Niestabilne wiatry - Brak burzy" />
      <Property name="Portuguese" value="Ventos voláteis - Sem tempestade" />
      <Property name="Russian" value="Неустойчивые ветры - Без шторма" />
      <Property name="SimplifiedChinese" value="不稳定的风-无风暴" />
      <Property name="Spanish" value="Vientos volátiles - Sin tormentas" />
      <Property name="TraditionalChinese" value="變幻風-無風暴" />
      <Property name="USEnglish" value="Volatile Winds - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO_CLEAR6" />
      <Property name="BrazilianPortuguese" value="Atmosfera instável - Sem tempestade" />
      <Property name="Dutch" value="Onstabiele atmosfeer - Geen storm" />
      <Property name="English" value="Unstable Atmosphere - No Storms" />
      <Property name="French" value="Atmosphère instable - Pas de tempête" />
      <Property name="German" value="Instabile Atmosphäre - Kein Sturm" />
      <Property name="Italian" value="Atmosfera instabile - Nessuna tempesta" />
      <Property name="Japanese" value="不安定な大気 - ストームなし" />
      <Property name="Korean" value="불안정한 대기 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Atmósfera inestable - Sin tormentas" />
      <Property name="Polish" value="Niestabilna atmosfera - Brak burzy" />
      <Property name="Portuguese" value="Atmosfera instável - Sem tempestade" />
      <Property name="Russian" value="Нестабильная атмосфера - Без шторма" />
      <Property name="SimplifiedChinese" value="不稳定大气-无风暴" />
      <Property name="Spanish" value="Atmósfera inestable - Sin tormentas" />
      <Property name="TraditionalChinese" value="不穩定大氣-無風暴" />
      <Property name="USEnglish" value="Unstable Atmosphere - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO_CLEAR7" />
      <Property name="BrazilianPortuguese" value="Poeira com radiação gama - Sem tempestade" />
      <Property name="Dutch" value="Gammastof - Geen storm" />
      <Property name="English" value="Gamma Dust - No Storms" />
      <Property name="French" value="Poussière gamma - Pas de tempête" />
      <Property name="German" value="Gamma-Staub - Kein Sturm" />
      <Property name="Italian" value="Polveri gamma - Nessuna tempesta" />
      <Property name="Japanese" value="ガンマ線の粉塵 - ストームなし" />
      <Property name="Korean" value="감마 분진 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Polvo gamma - Sin tormentas" />
      <Property name="Polish" value="Pył gamma - Brak burzy" />
      <Property name="Portuguese" value="Pó gama - Sem tempestade" />
      <Property name="Russian" value="Гамма-пыль - Без шторма" />
      <Property name="SimplifiedChinese" value="伽马灰尘-无风暴" />
      <Property name="Spanish" value="Polvo gamma - Sin tormentas" />
      <Property name="TraditionalChinese" value="伽瑪塵-無風暴" />
      <Property name="USEnglish" value="Gamma Dust - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RADIO_CLEAR8" />
      <Property name="BrazilianPortuguese" value="Atmosfera de nuclídeos - Sem tempestade" />
      <Property name="Dutch" value="Nuclidische atmosfeer - Geen storm" />
      <Property name="English" value="Nuclidic Atmosphere - No Storms" />
      <Property name="French" value="Atmosphère nuclidique - Pas de tempête" />
      <Property name="German" value="Nuklide Atmosphäre - Kein Sturm" />
      <Property name="Italian" value="Atmosfera nuclidica - Nessuna tempesta" />
      <Property name="Japanese" value="核種の大気 - ストームなし" />
      <Property name="Korean" value="핵종 대기 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Atmósfera nucléidica - Sin tormentas" />
      <Property name="Polish" value="Atmosfera nuklidowa - Brak burzy" />
      <Property name="Portuguese" value="Atmosfera nuclídea - Sem tempestade" />
      <Property name="Russian" value="Радиоактивная атмосфера - Без шторма" />
      <Property name="SimplifiedChinese" value="核质量大气-无风暴" />
      <Property name="Spanish" value="Atmósfera nucléidica - Sin tormentas" />
      <Property name="TraditionalChinese" value="核子大氣-無風暴" />
      <Property name="USEnglish" value="Nuclidic Atmosphere - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSHEXTREME1" />
      <Property name="BrazilianPortuguese" value="Supertempestades ferventes - Tempestades frequentes" />
      <Property name="Dutch" value="Kokende superstormen - Regelmatige stormen" />
      <Property name="English" value="Boiling Superstorms - Frequent Storms" />
      <Property name="French" value="Supertempêtes bouillantes - Tempêtes fréquentes" />
      <Property name="German" value="Siedende Superstürme - Häufige Stürme" />
      <Property name="Italian" value="Super-tempeste ribollenti - Tempeste frequenti" />
      <Property name="Japanese" value="熱気に満ちた大嵐 - 頻繁なストーム" />
      <Property name="Korean" value="끓어오르는 슈퍼 태풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Supertormentas asfixiantes - Tormentas frecuentes" />
      <Property name="Polish" value="Wrzące superburze - Częste burze" />
      <Property name="Portuguese" value="Supertempestades fervilhantes - Tempestades frequentes" />
      <Property name="Russian" value="Кипящие супербури - Частые штормы" />
      <Property name="SimplifiedChinese" value="沸腾的超级旋风-经常风暴" />
      <Property name="Spanish" value="Supertormentas asfixiantes - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="沸騰超級風暴-經常風暴" />
      <Property name="USEnglish" value="Boiling Superstorms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSHEXTREME2" />
      <Property name="BrazilianPortuguese" value="Surtos de calor intenso - Tempestades frequentes" />
      <Property name="Dutch" value="Intense hitte-uitbarstingen - Regelmatige stormen" />
      <Property name="English" value="Intense Heatbursts - Frequent Storms" />
      <Property name="French" value="Coups de chaleur intenses - Tempêtes fréquentes" />
      <Property name="German" value="Große Hitzestöße - Häufige Stürme" />
      <Property name="Italian" value="Scoppi di calore intensi - Tempeste frequenti" />
      <Property name="Japanese" value="激しい熱爆発 - 頻繁なストーム" />
      <Property name="Korean" value="격렬한 열 분출 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Estallidos de calor intenso - Tormentas frecuentes" />
      <Property name="Polish" value="Intensywne upały - Częste burze" />
      <Property name="Portuguese" value="Surtos de calor intenso - Tempestades frequentes" />
      <Property name="Russian" value="Сильные тепловые вспышки - Частые штормы" />
      <Property name="SimplifiedChinese" value="强热爆裂-经常风暴" />
      <Property name="Spanish" value="Estallidos de calor intenso - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="劇熱爆發-經常風暴" />
      <Property name="USEnglish" value="Intense Heatbursts - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSHEXTREME3" />
      <Property name="BrazilianPortuguese" value="Chuva superaquecida - Tempestades frequentes" />
      <Property name="Dutch" value="Superhete regen - Regelmatige stormen" />
      <Property name="English" value="Superheated Rain - Frequent Storms" />
      <Property name="French" value="Pluies surchauffées - Tempêtes fréquentes" />
      <Property name="German" value="Überhitzter Regen - Häufige Stürme" />
      <Property name="Italian" value="Pioggia rovente - Tempeste frequenti" />
      <Property name="Japanese" value="過熱した雨 - 頻繁なストーム" />
      <Property name="Korean" value="과열된 비 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Lluvia sobrecalentada - Tormentas frecuentes" />
      <Property name="Polish" value="Przegrzany deszcz - Częste burze" />
      <Property name="Portuguese" value="Chuva superaquecida - Tempestades frequentes" />
      <Property name="Russian" value="Сверхраскаленный дождь - Частые штормы" />
      <Property name="SimplifiedChinese" value="雨水过热-经常风暴" />
      <Property name="Spanish" value="Lluvia sobrecalentada - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="極熱降雨-經常風暴" />
      <Property name="USEnglish" value="Superheated Rain - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSHEXTREME4" />
      <Property name="BrazilianPortuguese" value="Monções ferventes - Tempestades frequentes" />
      <Property name="Dutch" value="Kokende moessons - Regelmatige stormen" />
      <Property name="English" value="Boiling Monsoons - Frequent Storms" />
      <Property name="French" value="Moussons bouillantes - Tempêtes fréquentes" />
      <Property name="German" value="Siedende Monsune - Häufige Stürme" />
      <Property name="Italian" value="Monsoni ribollenti - Tempeste frequenti" />
      <Property name="Japanese" value="熱気に満ちたモンスーン - 頻繁なストーム" />
      <Property name="Korean" value="끓어오르는 몬순 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Monzones asfixiantes - Tormentas frecuentes" />
      <Property name="Polish" value="Wrzące monsuny - Częste burze" />
      <Property name="Portuguese" value="Monções fervilhantes - Tempestades frequentes" />
      <Property name="Russian" value="Раскаленные муссоны - Частые штормы" />
      <Property name="SimplifiedChinese" value="沸腾的季风-经常风暴" />
      <Property name="Spanish" value="Monzones asfixiantes - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="沸騰季風-經常風暴" />
      <Property name="USEnglish" value="Boiling Monsoons - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSHEXTREME5" />
      <Property name="BrazilianPortuguese" value="Umidade tórrida - Tempestades frequentes" />
      <Property name="Dutch" value="Broeierige vochtigheid - Regelmatige stormen" />
      <Property name="English" value="Broiling Humidity - Frequent Storms" />
      <Property name="French" value="Humidité torride - Tempêtes fréquentes" />
      <Property name="German" value="Brütend heiße Feuchtigkeit - Häufige Stürme" />
      <Property name="Italian" value="Umidità cocente - Tempeste frequenti" />
      <Property name="Japanese" value="焼けるような湿気 - 頻繁なストーム" />
      <Property name="Korean" value="타는 듯한 습기 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Humedad achicharrante - Tormentas frecuentes" />
      <Property name="Polish" value="Wrząca wilgotność - Częste burze" />
      <Property name="Portuguese" value="Humidade escaldante - Tempestades frequentes" />
      <Property name="Russian" value="Жар и влажность - Частые штормы" />
      <Property name="SimplifiedChinese" value="酷热的湿气-经常风暴" />
      <Property name="Spanish" value="Humedad achicharrante - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="沸騰濕度-經常風暴" />
      <Property name="USEnglish" value="Broiling Humidity - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSHEXTREME6" />
      <Property name="BrazilianPortuguese" value="Chuva dolorosamente quente - Tempestades frequentes" />
      <Property name="Dutch" value="Pijnlijk hete regen - Regelmatige stormen" />
      <Property name="English" value="Painfully Hot Rain - Frequent Storms" />
      <Property name="French" value="Pluies chaudes - Tempêtes fréquentes" />
      <Property name="German" value="Schmerzhaft heißer Regen - Häufige Stürme" />
      <Property name="Italian" value="Pioggia dolorosamente calda - Tempeste frequenti" />
      <Property name="Japanese" value="痛いほどの熱湯雨 - 頻繁なストーム" />
      <Property name="Korean" value="고통스러울 정도로 뜨거운 비 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Lluvia abrasadora - Tormentas frecuentes" />
      <Property name="Polish" value="Boleśnie gorący deszcz - Częste burze" />
      <Property name="Portuguese" value="Chuva dolorosamente quente - Tempestades frequentes" />
      <Property name="Russian" value="Обжигающий дождь - Частые штормы" />
      <Property name="SimplifiedChinese" value="强烈的热雨-经常风暴" />
      <Property name="Spanish" value="Lluvia abrasadora - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="滾燙降雨-經常風暴" />
      <Property name="USEnglish" value="Painfully Hot Rain - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSHEXTREME7" />
      <Property name="BrazilianPortuguese" value="Calor torrencial - Tempestades frequentes" />
      <Property name="Dutch" value="Hete stortregen - Regelmatige stormen" />
      <Property name="English" value="Torrential Heat - Frequent Storms" />
      <Property name="French" value="Chaleur torrentielle - Tempêtes fréquentes" />
      <Property name="German" value="Überwältigende Hitze - Häufige Stürme" />
      <Property name="Italian" value="Calore torrenziale - Tempeste frequenti" />
      <Property name="Japanese" value="土砂降りの熱 - 頻繁なストーム" />
      <Property name="Korean" value="빗발치는 열기 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Calor torrencial - Tormentas frecuentes" />
      <Property name="Polish" value="Ogromne upały - Częste burze" />
      <Property name="Portuguese" value="Calor torrencial - Tempestades frequentes" />
      <Property name="Russian" value="Горячий ливень - Частые штормы" />
      <Property name="SimplifiedChinese" value="酸性热量-经常风暴" />
      <Property name="Spanish" value="Calor torrencial - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="滂沱熱氣-經常風暴" />
      <Property name="USEnglish" value="Torrential Heat - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSHEXTREME8" />
      <Property name="BrazilianPortuguese" value="Enchentes intensas - Tempestades frequentes" />
      <Property name="Dutch" value="Verzengende overstromingen - Regelmatige stormen" />
      <Property name="English" value="Blistering Floods - Frequent Storms" />
      <Property name="French" value="Inondations ardentes - Tempêtes fréquentes" />
      <Property name="German" value="Blasen bildende Überflutungen - Häufige Stürme" />
      <Property name="Italian" value="Inondazioni infuocate - Tempeste frequenti" />
      <Property name="Japanese" value="火傷する洪水 - 頻繁なストーム" />
      <Property name="Korean" value="지독히 뜨거운 홍수 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Inundaciones abrasadoras - Tormentas frecuentes" />
      <Property name="Polish" value="Straszliwe powodzie - Częste burze" />
      <Property name="Portuguese" value="Inundações intensas - Tempestades frequentes" />
      <Property name="Russian" value="Кипящие потопы - Частые штормы" />
      <Property name="SimplifiedChinese" value="猛烈的洪水-经常风暴" />
      <Property name="Spanish" value="Inundaciones abrasadoras - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="灼熱洪水-經常風暴" />
      <Property name="USEnglish" value="Blistering Floods - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSHEXTREME9" />
      <Property name="BrazilianPortuguese" value="Chuvas grossas escaldantes - Tempestades frequentes" />
      <Property name="Dutch" value="Kokendhete regenstormen - Regelmatige stormen" />
      <Property name="English" value="Scalding Rainstorms - Frequent Storms" />
      <Property name="French" value="Fortes pluies cuisantes - Tempêtes fréquentes" />
      <Property name="German" value="Verbrühende Regenstürme - Häufige Stürme" />
      <Property name="Italian" value="Piovaschi bollenti - Tempeste frequenti" />
      <Property name="Japanese" value="焼け付く暴風雨 - 頻繁なストーム" />
      <Property name="Korean" value="작열하는 호우 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Temporales abrasadores - Tormentas frecuentes" />
      <Property name="Polish" value="Potworne ulewy - Częste burze" />
      <Property name="Portuguese" value="Tempestades escaldadas - Tempestades frequentes" />
      <Property name="Russian" value="Обжигающие ливни - Частые штормы" />
      <Property name="SimplifiedChinese" value="滚烫暴风雨-经常风暴" />
      <Property name="Spanish" value="Temporales abrasadores - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="灼燙暴風雨-經常風暴" />
      <Property name="USEnglish" value="Scalding Rainstorms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSHEXTREME10" />
      <Property name="BrazilianPortuguese" value="Dilúvios tórridos - Tempestades frequentes" />
      <Property name="Dutch" value="Blaartrekkende stortvloeden - Regelmatige stormen" />
      <Property name="English" value="Torrid Deluges - Frequent Storms" />
      <Property name="French" value="Déluges torrides - Tempêtes fréquentes" />
      <Property name="German" value="Sengende Überschwemmungen - Häufige Stürme" />
      <Property name="Italian" value="Diluvi torridi - Tempeste frequenti" />
      <Property name="Japanese" value="灼熱の大雨 - 頻繁なストーム" />
      <Property name="Korean" value="염열의 폭우 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Diluvios tórridos - Tormentas frecuentes" />
      <Property name="Polish" value="Straszliwe ulewy - Częste burze" />
      <Property name="Portuguese" value="Dilúvios tórridos - Tempestades frequentes" />
      <Property name="Russian" value="Жаркие потопы - Частые штормы" />
      <Property name="SimplifiedChinese" value="酷热的洪水-经常风暴" />
      <Property name="Spanish" value="Diluvios tórridos - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="酷熱洪水-經常風暴" />
      <Property name="USEnglish" value="Torrid Deluges - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH1" />
      <Property name="BrazilianPortuguese" value="Poças ferventes - Tempestades ocasionais" />
      <Property name="Dutch" value="Kokende poelen - Incidentele stormen" />
      <Property name="English" value="Boiling Puddles - Occasional Storms" />
      <Property name="French" value="Flaques bouillantes - Tempêtes occasionnelles" />
      <Property name="German" value="Siedende Pfützen - Gelegentliche Stürme" />
      <Property name="Italian" value="Pozze ribollenti - Tempeste occasionali" />
      <Property name="Japanese" value="ゆだる水たまり - 時折のストーム" />
      <Property name="Korean" value="끓어오르는 웅덩이 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Charcos asfixiantes - Tormentas ocasionales" />
      <Property name="Polish" value="Wrzące kałuże - Sporadyczne burze" />
      <Property name="Portuguese" value="Poças fervilhantes - Tempestades ocasionais" />
      <Property name="Russian" value="Кипящие лужи - Редкие штормы" />
      <Property name="SimplifiedChinese" value="沸腾的水洼-偶尔风暴" />
      <Property name="Spanish" value="Charcos asfixiantes - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="沸騰水坑-偶爾風暴" />
      <Property name="USEnglish" value="Boiling Puddles - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH2" />
      <Property name="BrazilianPortuguese" value="Umidade abafada - Tempestades ocasionais" />
      <Property name="Dutch" value="Drukkende nevel - Incidentele stormen" />
      <Property name="English" value="Sweltering Damp - Occasional Storms" />
      <Property name="French" value="Moiteur étouffante - Tempêtes occasionnelles" />
      <Property name="German" value="Drückender Dunst - Gelegentliche Stürme" />
      <Property name="Italian" value="Umido afoso - Tempeste occasionali" />
      <Property name="Japanese" value="蒸気を上げる水滴 - 時折のストーム" />
      <Property name="Korean" value="무더운 물기 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Vaho caldeado - Tormentas ocasionales" />
      <Property name="Polish" value="Ogromna wilgotność - Sporadyczne burze" />
      <Property name="Portuguese" value="Humidade abafada - Tempestades ocasionais" />
      <Property name="Russian" value="Сырой зной - Редкие штормы" />
      <Property name="SimplifiedChinese" value="酷热温湿-偶尔风暴" />
      <Property name="Spanish" value="Vaho caldeado - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="悶熱濕氣-偶爾風暴" />
      <Property name="USEnglish" value="Sweltering Damp - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH3" />
      <Property name="BrazilianPortuguese" value="Chuvisco superaquecido - Tempestades ocasionais" />
      <Property name="Dutch" value="Superhete motregen - Incidentele stormen" />
      <Property name="English" value="Superheated Drizzle - Occasional Storms" />
      <Property name="French" value="Bruine surchauffée - Tempêtes occasionnelles" />
      <Property name="German" value="Überhitzter Sprühregen - Gelegentliche Stürme" />
      <Property name="Italian" value="Pioggerella rovente - Tempeste occasionali" />
      <Property name="Japanese" value="過熱した霧雨 - 時折のストーム" />
      <Property name="Korean" value="과열된 보슬비 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Llovizna sobrecalentada - Tormentas ocasionales" />
      <Property name="Polish" value="Podgrzana mżawka - Sporadyczne burze" />
      <Property name="Portuguese" value="Chuviscos superaquecidos - Tempestades ocasionais" />
      <Property name="Russian" value="Сверхраскаленная изморось - Редкие штормы" />
      <Property name="SimplifiedChinese" value="过热的蒙蒙细雨-偶尔风暴" />
      <Property name="Spanish" value="Llovizna sobrecalentada - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="極熱細雨-偶爾風暴" />
      <Property name="USEnglish" value="Superheated Drizzle - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH4" />
      <Property name="BrazilianPortuguese" value="Névoa perigosamente quente - Tempestades ocasionais" />
      <Property name="Dutch" value="Gevaarlijk hete mist - Incidentele stormen" />
      <Property name="English" value="Dangerously Hot Fog - Occasional Storms" />
      <Property name="French" value="Brume dangereusement chaude - Tempêtes occasionnelles" />
      <Property name="German" value="Gefährlich heißer Nebel - Gelegentliche Stürme" />
      <Property name="Italian" value="Nebbia pericolosamente calda - Tempeste occasionali" />
      <Property name="Japanese" value="非常に暑い霧 - 時折のストーム" />
      <Property name="Korean" value="위협적인 뜨거운 안개 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Peligrosa niebla caliente - Tormentas ocasionales" />
      <Property name="Polish" value="Niebezpiecznie gorąca mgła - Sporadyczne burze" />
      <Property name="Portuguese" value="Nevoeiro perigosamente quente - Tempestades ocasionais" />
      <Property name="Russian" value="Опасный раскаленный туман - Редкие штормы" />
      <Property name="SimplifiedChinese" value="极度危险的热雾-偶尔风暴" />
      <Property name="Spanish" value="Peligrosa niebla caliente - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="危險熱霧-偶爾風暴" />
      <Property name="USEnglish" value="Dangerously Hot Fog - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH5" />
      <Property name="BrazilianPortuguese" value="Umidade sufocante - Tempestades ocasionais" />
      <Property name="Dutch" value="Verstikkende vochtigheid - Incidentele stormen" />
      <Property name="English" value="Choking Humidity - Occasional Storms" />
      <Property name="French" value="Humidité suffocante - Tempêtes occasionnelles" />
      <Property name="German" value="Erstickende Luftfeuchtigkeit - Gelegentliche Stürme" />
      <Property name="Italian" value="Umidità soffocante - Tempeste occasionali" />
      <Property name="Japanese" value="窒息性の湿気 - 時折のストーム" />
      <Property name="Korean" value="호흡 불가능한 습기 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Humedad asfixiante - Tormentas ocasionales" />
      <Property name="Polish" value="Dusząca wilgoć - Sporadyczne burze" />
      <Property name="Portuguese" value="Humidade asfixiante - Tempestades ocasionais" />
      <Property name="Russian" value="Невыносимая влажность - Редкие штормы" />
      <Property name="SimplifiedChinese" value="令人窒息的湿气-偶尔风暴" />
      <Property name="Spanish" value="Humedad asfixiante - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="嗆人濕度-偶爾風暴" />
      <Property name="USEnglish" value="Choking Humidity - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH6" />
      <Property name="BrazilianPortuguese" value="Geralmente calmo - Tempestades ocasionais" />
      <Property name="Dutch" value="Overwegend rustig - Incidentele stormen" />
      <Property name="English" value="Mostly Calm - Occasional Storms" />
      <Property name="French" value="Globalement calme - Tempêtes occasionnelles" />
      <Property name="German" value="Größtenteils ruhig - Gelegentliche Stürme" />
      <Property name="Italian" value="Perlopiù calmo - Tempeste occasionali" />
      <Property name="Japanese" value="ほぼ静か - 時折のストーム" />
      <Property name="Korean" value="대부분 잔잔함 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="En su mayoría calmado - Tormentas ocasionales" />
      <Property name="Polish" value="W większości spokojnie - Sporadyczne burze" />
      <Property name="Portuguese" value="Geralmente calmo - Tempestades ocasionais" />
      <Property name="Russian" value="Преимущественно спокойная - Редкие штормы" />
      <Property name="SimplifiedChinese" value="通常比较平静-偶尔风暴" />
      <Property name="Spanish" value="En su mayoría calmado - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="大略平靜-偶爾風暴" />
      <Property name="USEnglish" value="Mostly Calm - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH7" />
      <Property name="BrazilianPortuguese" value="Aguaceiros escaldantes súbitos - Tempestades ocasionais" />
      <Property name="Dutch" value="Brandende wolkbreuken - Incidentele stormen" />
      <Property name="English" value="Occasional Scalding Cloudbursts - Occasional Storms" />
      <Property name="French" value="Pluies cuisantes - Tempêtes occasionnelles" />
      <Property name="German" value="Rare verbrühende Wolkenbrüche - Gelegentliche Stürme" />
      <Property name="Italian" value="Scrosci bollenti usuali - Tempeste occasionali" />
      <Property name="Japanese" value="時折の焼け付く豪雨 - 時折のストーム" />
      <Property name="Korean" value="가끔씩 델 것 같은 집중 호우 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Lluvia abrasadora ocasional - Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne fale upałów - Sporadyczne burze" />
      <Property name="Portuguese" value="Nuvens escaldantes ocasionais - Tempestades ocasionais" />
      <Property name="Russian" value="Нерегулярные горячие облака - Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶见滚烫的暴雨-偶尔风暴" />
      <Property name="Spanish" value="Lluvia abrasadora ocasional - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶發的灼熱暴雨-偶爾風暴" />
      <Property name="USEnglish" value="Occasional Scalding Cloudbursts - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH8" />
      <Property name="BrazilianPortuguese" value="Normalmente ameno - Tempestades ocasionais" />
      <Property name="Dutch" value="Meestal mild - Incidentele stormen" />
      <Property name="English" value="Usually Mild - Occasional Storms" />
      <Property name="French" value="Généralement modéré - Tempêtes occasionnelles" />
      <Property name="German" value="Für gewöhnlich mild - Gelegentliche Stürme" />
      <Property name="Italian" value="Generalmente mite - Tempeste occasionali" />
      <Property name="Japanese" value="大抵穏やか - 時折のストーム" />
      <Property name="Korean" value="적당히 포근함 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Normalmente apacible - Tormentas ocasionales" />
      <Property name="Polish" value="Zwykle spokojnie - Sporadyczne burze" />
      <Property name="Portuguese" value="Geralmente ameno - Tempestades ocasionais" />
      <Property name="Russian" value="Обычно умеренная - Редкие штормы" />
      <Property name="SimplifiedChinese" value="通常比较温和-偶尔风暴" />
      <Property name="Spanish" value="Normalmente apacible - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="通常無害-偶爾風暴" />
      <Property name="USEnglish" value="Usually Mild - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH9" />
      <Property name="BrazilianPortuguese" value="Orvalho intenso - Tempestades ocasionais" />
      <Property name="Dutch" value="Verschroeiende nevel - Incidentele stormen" />
      <Property name="English" value="Blistering Damp - Occasional Storms" />
      <Property name="French" value="Moiteur ardente - Tempêtes occasionnelles" />
      <Property name="German" value="Blasen bildender Dunst - Gelegentliche Stürme" />
      <Property name="Italian" value="Bagnato infuocato - Tempeste occasionali" />
      <Property name="Japanese" value="火傷する水滴 - 時折のストーム" />
      <Property name="Korean" value="지독히 뜨거운 물기 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Vaho abrasador - Tormentas ocasionales" />
      <Property name="Polish" value="Paląca wilgoć - Sporadyczne burze" />
      <Property name="Portuguese" value="Humidade intensa - Tempestades ocasionais" />
      <Property name="Russian" value="Кипящая сырость - Редкие штормы" />
      <Property name="SimplifiedChinese" value="猛烈的温湿-偶尔风暴" />
      <Property name="Spanish" value="Vaho abrasador - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="灼熱濕氣-偶爾風暴" />
      <Property name="USEnglish" value="Blistering Damp - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH10" />
      <Property name="BrazilianPortuguese" value="Surtos de umidade letais - Tempestades ocasionais" />
      <Property name="Dutch" value="Dodelijke vochtuitbarstingen - Incidentele stormen" />
      <Property name="English" value="Lethal Humidity Outbreaks - Occasional Storms" />
      <Property name="French" value="Vagues d'humidité létales - Tempêtes occasionnelles" />
      <Property name="German" value="Tödliche Luftfeuchtigkeits-Ausbrüche - Gelegentliche Stürme" />
      <Property name="Italian" value="Fenomeni di umidità letale - Tempeste occasionali" />
      <Property name="Japanese" value="致死的な湿度の発生 - 時折のストーム" />
      <Property name="Korean" value="치명적인 습기 분출 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Estallidos de humedad letal - Tormentas ocasionales" />
      <Property name="Polish" value="Zabójcze fale wilgoci - Sporadyczne burze" />
      <Property name="Portuguese" value="Surtos de humidade letal - Tempestades ocasionais" />
      <Property name="Russian" value="Смертельные вспышки влажности - Редкие штормы" />
      <Property name="SimplifiedChinese" value="致命湿气爆发-偶尔风暴" />
      <Property name="Spanish" value="Estallidos de humedad letal - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="致命濕度爆發-偶爾風暴" />
      <Property name="USEnglish" value="Lethal Humidity Outbreaks - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH_CLEAR1" />
      <Property name="BrazilianPortuguese" value="Temperado - Sem tempestade" />
      <Property name="Dutch" value="Gematigd - Geen storm" />
      <Property name="English" value="Temperate - No Storms" />
      <Property name="French" value="Tempéré - Pas de tempête" />
      <Property name="German" value="Gemäßigt - Kein Sturm" />
      <Property name="Italian" value="Temperato - Nessuna tempesta" />
      <Property name="Japanese" value="温暖 - ストームなし" />
      <Property name="Korean" value="온화함 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Moderado - Sin tormentas" />
      <Property name="Polish" value="Umiarkowany - Brak burzy" />
      <Property name="Portuguese" value="Temperado - Sem tempestade" />
      <Property name="Russian" value="Умеренная - Без шторма" />
      <Property name="SimplifiedChinese" value="温和-无风暴" />
      <Property name="Spanish" value="Moderado - Sin tormentas" />
      <Property name="TraditionalChinese" value="適中-無風暴" />
      <Property name="USEnglish" value="Temperate - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH_CLEAR2" />
      <Property name="BrazilianPortuguese" value="Garoas - Sem tempestade" />
      <Property name="Dutch" value="Lichte regen - Geen storm" />
      <Property name="English" value="Light Showers - No Storms" />
      <Property name="French" value="Averses légères - Pas de tempête" />
      <Property name="German" value="Leichte Schauer - Kein Sturm" />
      <Property name="Italian" value="Piogge leggere - Nessuna tempesta" />
      <Property name="Japanese" value="少雨 - ストームなし" />
      <Property name="Korean" value="약한 소나기 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Lluvias leves - Sin tormentas" />
      <Property name="Polish" value="Lekkie opady deszczu - Brak burzy" />
      <Property name="Portuguese" value="Aguaceiros - Sem tempestade" />
      <Property name="Russian" value="Слабый дождь - Без шторма" />
      <Property name="SimplifiedChinese" value="细雨-无风暴" />
      <Property name="Spanish" value="Lluvias leves - Sin tormentas" />
      <Property name="TraditionalChinese" value="細雨-無風暴" />
      <Property name="USEnglish" value="Light Showers - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH_CLEAR3" />
      <Property name="BrazilianPortuguese" value="Chuva leve - Sem tempestade" />
      <Property name="Dutch" value="Milde regen - Geen storm" />
      <Property name="English" value="Mild Rain - No Storms" />
      <Property name="French" value="Pluie modérée - Pas de tempête" />
      <Property name="German" value="Leichter Regen - Kein Sturm" />
      <Property name="Italian" value="Piogge scarse - Nessuna tempesta" />
      <Property name="Japanese" value="穏やかな雨 - ストームなし" />
      <Property name="Korean" value="가벼운 비 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Llovizna - Sin tormentas" />
      <Property name="Polish" value="Lekki deszcz - Brak burzy" />
      <Property name="Portuguese" value="Chuviscos - Sem tempestade" />
      <Property name="Russian" value="Легкий дождь - Без шторма" />
      <Property name="SimplifiedChinese" value="小雨-无风暴" />
      <Property name="Spanish" value="Llovizna - Sin tormentas" />
      <Property name="TraditionalChinese" value="小雨-無風暴" />
      <Property name="USEnglish" value="Mild Rain - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH_CLEAR4" />
      <Property name="BrazilianPortuguese" value="Brisa refrescante - Sem tempestade" />
      <Property name="Dutch" value="Verkoelend briesje - Geen storm" />
      <Property name="English" value="Refreshing Breeze - No Storms" />
      <Property name="French" value="Brise rafraîchissante - Pas de tempête" />
      <Property name="German" value="Frische Brise - Kein Sturm" />
      <Property name="Italian" value="Brezza corroborante - Nessuna tempesta" />
      <Property name="Japanese" value="爽やかな風 - ストームなし" />
      <Property name="Korean" value="상쾌한 미풍 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Brisa refrescante - Sin tormentas" />
      <Property name="Polish" value="Odświeżająca bryza - Brak burzy" />
      <Property name="Portuguese" value="Brisa refrescante - Sem tempestade" />
      <Property name="Russian" value="Освежающий бриз - Без шторма" />
      <Property name="SimplifiedChinese" value="清爽的微风-无风暴" />
      <Property name="Spanish" value="Brisa refrescante - Sin tormentas" />
      <Property name="TraditionalChinese" value="清爽微風-無風暴" />
      <Property name="USEnglish" value="Refreshing Breeze - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH_CLEAR5" />
      <Property name="BrazilianPortuguese" value="Úmido - Sem tempestade" />
      <Property name="Dutch" value="Klam - Geen storm" />
      <Property name="English" value="Humid - No Storms" />
      <Property name="French" value="Humide - Pas de tempête" />
      <Property name="German" value="Feucht - Kein Sturm" />
      <Property name="Italian" value="Umido - Nessuna tempesta" />
      <Property name="Japanese" value="湿度の高い - ストームなし" />
      <Property name="Korean" value="습함 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Húmedo - Sin tormentas" />
      <Property name="Polish" value="Wilgotny - Brak burzy" />
      <Property name="Portuguese" value="Húmido - Sem tempestade" />
      <Property name="Russian" value="Влажная - Без шторма" />
      <Property name="SimplifiedChinese" value="湿热-无风暴" />
      <Property name="Spanish" value="Húmedo - Sin tormentas" />
      <Property name="TraditionalChinese" value="潮濕-無風暴" />
      <Property name="USEnglish" value="Humid - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH_CLEAR6" />
      <Property name="BrazilianPortuguese" value="Agradável - Sem tempestade" />
      <Property name="Dutch" value="Aangenaam - Geen storm" />
      <Property name="English" value="Pleasant - No Storms" />
      <Property name="French" value="Plaisant - Pas de tempête" />
      <Property name="German" value="Angenehm - Kein Sturm" />
      <Property name="Italian" value="Piacevole - Nessuna tempesta" />
      <Property name="Japanese" value="心地よい - ストームなし" />
      <Property name="Korean" value="쾌적함 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Agradable - Sin tormentas" />
      <Property name="Polish" value="Przyjemny - Brak burzy" />
      <Property name="Portuguese" value="Agradável - Sem tempestade" />
      <Property name="Russian" value="Приятная - Без шторма" />
      <Property name="SimplifiedChinese" value="宜人-无风暴" />
      <Property name="Spanish" value="Agradable - Sin tormentas" />
      <Property name="TraditionalChinese" value="宜人-無風暴" />
      <Property name="USEnglish" value="Pleasant - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH_CLEAR7" />
      <Property name="BrazilianPortuguese" value="Fresco - Sem tempestade" />
      <Property name="Dutch" value="Mild - Geen storm" />
      <Property name="English" value="Balmy - No Storms" />
      <Property name="French" value="Agréable - Pas de tempête" />
      <Property name="German" value="Lau - Kein Sturm" />
      <Property name="Italian" value="Tiepido - Nessuna tempesta" />
      <Property name="Japanese" value="良い香り - ストームなし" />
      <Property name="Korean" value="훈훈함 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sereno - Sin tormentas" />
      <Property name="Polish" value="Kojący - Brak burzy" />
      <Property name="Portuguese" value="Refrescante - Sem tempestade" />
      <Property name="Russian" value="Теплая - Без шторма" />
      <Property name="SimplifiedChinese" value="温暖惬意-无风暴" />
      <Property name="Spanish" value="Sereno - Sin tormentas" />
      <Property name="TraditionalChinese" value="芬芳-無風暴" />
      <Property name="USEnglish" value="Balmy - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH_CLEAR8" />
      <Property name="BrazilianPortuguese" value="Favorável - Sem tempestade" />
      <Property name="Dutch" value="Zacht - Geen storm" />
      <Property name="English" value="Mellow - No Storms" />
      <Property name="French" value="Doux - Pas de tempête" />
      <Property name="German" value="Aufgelockert - Kein Sturm" />
      <Property name="Italian" value="Tranquillo - Nessuna tempesta" />
      <Property name="Japanese" value="まろやかな - ストームなし" />
      <Property name="Korean" value="기름짐 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Apacible - Sin tormentas" />
      <Property name="Polish" value="Łagodny - Brak burzy" />
      <Property name="Portuguese" value="Suave - Sem tempestade" />
      <Property name="Russian" value="Мягкая - Без шторма" />
      <Property name="SimplifiedChinese" value="柔和-无风暴" />
      <Property name="Spanish" value="Apacible - Sin tormentas" />
      <Property name="TraditionalChinese" value="醇美-無風暴" />
      <Property name="USEnglish" value="Mellow - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH_CLEAR9" />
      <Property name="BrazilianPortuguese" value="Bonito - Sem tempestade" />
      <Property name="Dutch" value="Mooi - Geen storm" />
      <Property name="English" value="Beautiful - No Storms" />
      <Property name="French" value="Beau - Pas de tempête" />
      <Property name="German" value="Schön - Kein Sturm" />
      <Property name="Italian" value="Magnifico - Nessuna tempesta" />
      <Property name="Japanese" value="美しい - ストームなし" />
      <Property name="Korean" value="아름다움 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Precioso - Sin tormentas" />
      <Property name="Polish" value="Pięknie - Brak burzy" />
      <Property name="Portuguese" value="Belo - Sem tempestade" />
      <Property name="Russian" value="Прекрасная - Без шторма" />
      <Property name="SimplifiedChinese" value="美丽的-无风暴" />
      <Property name="Spanish" value="Precioso - Sin tormentas" />
      <Property name="TraditionalChinese" value="美麗-無風暴" />
      <Property name="USEnglish" value="Beautiful - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LUSH_CLEAR10" />
      <Property name="BrazilianPortuguese" value="Prazeroso - Sem tempestade" />
      <Property name="Dutch" value="Heerlijk - Geen storm" />
      <Property name="English" value="Blissful - No Storms" />
      <Property name="French" value="Apaisant - Pas de tempête" />
      <Property name="German" value="Wohlig - Kein Sturm" />
      <Property name="Italian" value="Piacevole - Nessuna tempesta" />
      <Property name="Japanese" value="無欠 - ストームなし" />
      <Property name="Korean" value="청명함 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Maravilloso - Sin tormentas" />
      <Property name="Polish" value="Idealny - Brak burzy" />
      <Property name="Portuguese" value="Feliz - Sem tempestade" />
      <Property name="Russian" value="Райская - Без шторма" />
      <Property name="SimplifiedChinese" value="极乐-无风暴" />
      <Property name="Spanish" value="Maravilloso - Sin tormentas" />
      <Property name="TraditionalChinese" value="極樂-無風暴" />
      <Property name="USEnglish" value="Blissful - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARRENEXTREME1" />
      <Property name="BrazilianPortuguese" value="Tempestades de pó viajante - Tempestades frequentes" />
      <Property name="Dutch" value="Kolkende stofstormen - Regelmatige stormen" />
      <Property name="English" value="Billowing Dust Storms - Frequent Storms" />
      <Property name="French" value="Tempêtes tourbillonnantes - Tempêtes fréquentes" />
      <Property name="German" value="Wogende Staubstürme - Häufige Stürme" />
      <Property name="Italian" value="Tempeste di polveri fluide - Tempeste frequenti" />
      <Property name="Japanese" value="波打つ粉塵嵐 - 頻繁なストーム" />
      <Property name="Korean" value="피어나는 분진 폭풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de polvo ondulante - Tormentas frecuentes" />
      <Property name="Polish" value="Porywające burze pylne - Częste burze" />
      <Property name="Portuguese" value="Tempestades ondulantes de pó - Tempestades frequentes" />
      <Property name="Russian" value="Колеблющиеся пыльные бури - Частые штормы" />
      <Property name="SimplifiedChinese" value="汹涌的沙尘暴-经常风暴" />
      <Property name="Spanish" value="Tormentas de polvo ondulante - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="洶湧塵暴-經常風暴" />
      <Property name="USEnglish" value="Billowing Dust Storms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARRENEXTREME2" />
      <Property name="BrazilianPortuguese" value="Tempestades de areia - Tempestades frequentes" />
      <Property name="Dutch" value="Verstikkende zandstormen - Regelmatige stormen" />
      <Property name="English" value="Choking Sandstorms - Frequent Storms" />
      <Property name="French" value="Tempêtes de sable suffocantes - Tempêtes fréquentes" />
      <Property name="German" value="Erstickende Sandstürme - Häufige Stürme" />
      <Property name="Italian" value="Tempeste di sabbia soffocanti - Tempeste frequenti" />
      <Property name="Japanese" value="窒息性の砂嵐 - 頻繁なストーム" />
      <Property name="Korean" value="호흡 불가능한 모래 폭풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de arena opresivas - Tormentas frecuentes" />
      <Property name="Polish" value="Duszące burze - Częste burze" />
      <Property name="Portuguese" value="Tempestade de areia sufocante - Tempestades frequentes" />
      <Property name="Russian" value="Удушающие песчаные бури - Частые штормы" />
      <Property name="SimplifiedChinese" value="令人窒息的沙尘暴-经常风暴" />
      <Property name="Spanish" value="Tormentas de arena opresivas - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="嗆人沙塵暴-經常風暴" />
      <Property name="USEnglish" value="Choking Sandstorms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARRENEXTREME3" />
      <Property name="BrazilianPortuguese" value="Extremos de temperatura graves - Tempestades frequentes" />
      <Property name="Dutch" value="Gevaarlijke temperaturen - Regelmatige stormen" />
      <Property name="English" value="Hazardous Temperature Extremes - Frequent Storms" />
      <Property name="French" value="Forts écarts de température - Tempêtes fréquentes" />
      <Property name="German" value="Gefährliche Extremtemperaturen - Häufige Stürme" />
      <Property name="Italian" value="Temperature estreme nocive - Tempeste frequenti" />
      <Property name="Japanese" value="危険な極度の気温 - 頻繁なストーム" />
      <Property name="Korean" value="유해할 정도로 극한의 온도 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Temp. extremas peligrosas - Tormentas frecuentes" />
      <Property name="Polish" value="Niebezpieczne temp. ekstrem. - Częste burze" />
      <Property name="Portuguese" value="Temperaturas extremas fatais - Tempestades frequentes" />
      <Property name="Russian" value="Опасные скачки температур - Частые штормы" />
      <Property name="SimplifiedChinese" value="危险的极限温度-经常风暴" />
      <Property name="Spanish" value="Temp. extremas peligrosas - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="危險極端氣溫-經常風暴" />
      <Property name="USEnglish" value="Hazardous Temperature Extremes - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARRENEXTREME4" />
      <Property name="BrazilianPortuguese" value="Vento noturno ardente - Tempestades frequentes" />
      <Property name="Dutch" value="Longverschroeiende nachtwind - Regelmatige stormen" />
      <Property name="English" value="Lung-Burning Night Wind - Frequent Storms" />
      <Property name="French" value="Vent nocturne brûlant - Tempêtes fréquentes" />
      <Property name="German" value="Lungenschädliche nächtliche Winde - Häufige Stürme" />
      <Property name="Italian" value="Vento notturno collassante - Tempeste frequenti" />
      <Property name="Japanese" value="肺を焼く夜風 - 頻繁なストーム" />
      <Property name="Korean" value="폐를 태우는 야간풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Viento nocturno abrasador - Tormentas frecuentes" />
      <Property name="Polish" value="Palący nocny wiatr - Częste burze" />
      <Property name="Portuguese" value="Vento noturno queima-pulmões - Tempestades frequentes" />
      <Property name="Russian" value="Обжиг. легкие ночной ветер - Частые штормы" />
      <Property name="SimplifiedChinese" value="呛人肺腑的晚风-经常风暴" />
      <Property name="Spanish" value="Viento nocturno abrasador - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="灼傷肺部的夜風-經常風暴" />
      <Property name="USEnglish" value="Lung-Burning Night Wind - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARRENEXTREME5" />
      <Property name="BrazilianPortuguese" value="Ventania extrema - Tempestades frequentes" />
      <Property name="Dutch" value="Extreme windstoten - Regelmatige stormen" />
      <Property name="English" value="Extreme Wind Blasting - Frequent Storms" />
      <Property name="French" value="Fortes bourrasques extrêmes - Tempêtes fréquentes" />
      <Property name="German" value="Extreme Windstöße - Häufige Stürme" />
      <Property name="Italian" value="Folate di vento estreme - Tempeste frequenti" />
      <Property name="Japanese" value="極度の爆風 - 頻繁なストーム" />
      <Property name="Korean" value="극도의 돌풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Ráfagas de viento extremo - Tormentas frecuentes" />
      <Property name="Polish" value="Ekstremalne podmuchy wiatru - Częste burze" />
      <Property name="Portuguese" value="Ventos explosivos extremos - Tempestades frequentes" />
      <Property name="Russian" value="Сильнейшие порывы ветра - Частые штормы" />
      <Property name="SimplifiedChinese" value="极度强风爆炸-经常风暴" />
      <Property name="Spanish" value="Ráfagas de viento extremo - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="極度強風轟炸-經常風暴" />
      <Property name="USEnglish" value="Extreme Wind Blasting - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARRENEXTREME6" />
      <Property name="BrazilianPortuguese" value="Dessecamento planetário - Tempestades frequentes" />
      <Property name="Dutch" value="Volledig uitgedroogde planeet - Regelmatige stormen" />
      <Property name="English" value="Planetwide Desiccation - Frequent Storms" />
      <Property name="French" value="Dessiccation planétaire - Tempêtes fréquentes" />
      <Property name="German" value="Globale Austrocknung - Häufige Stürme" />
      <Property name="Italian" value="Essiccazione planetaria - Tempeste frequenti" />
      <Property name="Japanese" value="惑星を覆う乾燥 - 頻繁なストーム" />
      <Property name="Korean" value="행성 규모의 건조 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Desecación planetaria - Tormentas frecuentes" />
      <Property name="Polish" value="Susze na całym obszarze - Częste burze" />
      <Property name="Portuguese" value="Dessecação planetária - Tempestades frequentes" />
      <Property name="Russian" value="Планетарное высушивание - Частые штормы" />
      <Property name="SimplifiedChinese" value="星球性干旱-经常风暴" />
      <Property name="Spanish" value="Desecación planetaria - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="全星球性乾旱-經常風暴" />
      <Property name="USEnglish" value="Planetwide Desiccation - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARRENEXTREME7" />
      <Property name="BrazilianPortuguese" value="Nevascas de areia - Tempestades frequentes" />
      <Property name="Dutch" value="Zandstormen - Regelmatige stormen" />
      <Property name="English" value="Sand Blizzards - Frequent Storms" />
      <Property name="French" value="Blizzards de sable - Tempêtes fréquentes" />
      <Property name="German" value="Sand-Blizzards - Häufige Stürme" />
      <Property name="Italian" value="Bufere di sabbia - Tempeste frequenti" />
      <Property name="Japanese" value="砂のブリザード - 頻繁なストーム" />
      <Property name="Korean" value="모래 보라 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Ventiscas de arena - Tormentas frecuentes" />
      <Property name="Polish" value="Zamiecie piaskowe - Częste burze" />
      <Property name="Portuguese" value="Ventanias de areia - Tempestades frequentes" />
      <Property name="Russian" value="Песчаные вьюги - Частые штормы" />
      <Property name="SimplifiedChinese" value="沙暴雪-经常风暴" />
      <Property name="Spanish" value="Ventiscas de arena - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="沙塵暴風雪-經常風暴" />
      <Property name="USEnglish" value="Sand Blizzards - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARRENEXTREME8" />
      <Property name="BrazilianPortuguese" value="Ventanias sonoras - Tempestades frequentes" />
      <Property name="Dutch" value="Striemende wind - Regelmatige stormen" />
      <Property name="English" value="Howling Gales - Frequent Storms" />
      <Property name="French" value="Vent houleux - Tempêtes fréquentes" />
      <Property name="German" value="Heulende Stürme - Häufige Stürme" />
      <Property name="Italian" value="Venti ululanti - Tempeste frequenti" />
      <Property name="Japanese" value="うなる強風 - 頻繁なストーム" />
      <Property name="Korean" value="휘몰아치는 강풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Vendaval huracanado - Tormentas frecuentes" />
      <Property name="Polish" value="Wyjące wichry - Częste burze" />
      <Property name="Portuguese" value="Ventania - Tempestades frequentes" />
      <Property name="Russian" value="Завывающие ветры - Частые штормы" />
      <Property name="SimplifiedChinese" value="嚎风-经常风暴" />
      <Property name="Spanish" value="Vendaval huracanado - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="哭嚎狂風-經常風暴" />
      <Property name="USEnglish" value="Howling Gales - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARRENEXTREME9" />
      <Property name="BrazilianPortuguese" value="Terras mortas - Tempestades frequentes" />
      <Property name="Dutch" value="Woestenij - Regelmatige stormen" />
      <Property name="English" value="Dead Wastes - Frequent Storms" />
      <Property name="French" value="Étendues sans vie - Tempêtes fréquentes" />
      <Property name="German" value="Tote Einöden - Häufige Stürme" />
      <Property name="Italian" value="Lande della morte - Tempeste frequenti" />
      <Property name="Japanese" value="死の荒廃 - 頻繁なストーム" />
      <Property name="Korean" value="죽은 황무지 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Páramos muertos - Tormentas frecuentes" />
      <Property name="Polish" value="Martwe nieużytki - Częste burze" />
      <Property name="Portuguese" value="Desperdícios mortais - Tempestades frequentes" />
      <Property name="Russian" value="Мертвые пустоши - Частые штормы" />
      <Property name="SimplifiedChinese" value="无生命的荒野-经常风暴" />
      <Property name="Spanish" value="Páramos muertos - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="死寂荒地-經常風暴" />
      <Property name="USEnglish" value="Dead Wastes - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARRENEXTREME10" />
      <Property name="BrazilianPortuguese" value="Atmosfera arruinada - Tempestades frequentes" />
      <Property name="Dutch" value="Verzengende atmosfeer - Regelmatige stormen" />
      <Property name="English" value="Blasted Atmosphere - Frequent Storms" />
      <Property name="French" value="Atmosphère polluée - Tempêtes fréquentes" />
      <Property name="German" value="Unbewohnbare Atmosphäre - Häufige Stürme" />
      <Property name="Italian" value="Atmosfera devastata - Tempeste frequenti" />
      <Property name="Japanese" value="乾燥した大気 - 頻繁なストーム" />
      <Property name="Korean" value="황폐한 대기 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Atmósfera arruinada - Tormentas frecuentes" />
      <Property name="Polish" value="Zniszczona atmosfera - Częste burze" />
      <Property name="Portuguese" value="Atmosfera destruída - Tempestades frequentes" />
      <Property name="Russian" value="Разрушенная атмосфера - Частые штормы" />
      <Property name="SimplifiedChinese" value="恶劣大气-经常风暴" />
      <Property name="Spanish" value="Atmósfera arruinada - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="惡劣大氣-經常風暴" />
      <Property name="USEnglish" value="Blasted Atmosphere - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN1" />
      <Property name="BrazilianPortuguese" value="Tempestades de areia raras - Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele zandstormen - Incidentele stormen" />
      <Property name="English" value="Occasional Sandstorms - Occasional Storms" />
      <Property name="French" value="Tempêtes de sable - Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Sandstürme - Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste di sabbia occasionali - Tempeste occasionali" />
      <Property name="Japanese" value="時折の砂嵐 - 時折のストーム" />
      <Property name="Korean" value="가끔씩 모래 폭풍 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de arena casuales - Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze piaskowe - Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestade de areia ocasional - Tempestades ocasionais" />
      <Property name="Russian" value="Нерегулярные песчаные бури - Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶见沙尘暴-偶尔风暴" />
      <Property name="Spanish" value="Tormentas de arena casuales - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶發的沙塵暴-偶爾風暴" />
      <Property name="USEnglish" value="Occasional Sandstorms - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN2" />
      <Property name="BrazilianPortuguese" value="Tempestades de pó raras - Tempestades ocasionais" />
      <Property name="Dutch" value="Onregelmatige stofstormen - Incidentele stormen" />
      <Property name="English" value="Infrequent Dust Storms - Occasional Storms" />
      <Property name="French" value="Tempêtes de poussière - Tempêtes occasionnelles" />
      <Property name="German" value="Vereinzelte Staubstürme - Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste di polveri non frequenti - Tempeste occasionali" />
      <Property name="Japanese" value="不定期の粉塵嵐 - 時折のストーム" />
      <Property name="Korean" value="드문 분진 폭풍 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de polvo inusuales - Tormentas ocasionales" />
      <Property name="Polish" value="Niewielkie burze pylne - Sporadyczne burze" />
      <Property name="Portuguese" value="Escassas tempestades de pó - Tempestades ocasionais" />
      <Property name="Russian" value="Нерегулярные песчаные бури - Редкие штормы" />
      <Property name="SimplifiedChinese" value="罕见沙尘暴-偶尔风暴" />
      <Property name="Spanish" value="Tormentas de polvo inusuales - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="稀有的塵暴-偶爾風暴" />
      <Property name="USEnglish" value="Infrequent Dust Storms - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN3" />
      <Property name="BrazilianPortuguese" value="Ventania extrema intermitente - Tempestades ocasionais" />
      <Property name="Dutch" value="Wederkerende windstoten - Incidentele stormen" />
      <Property name="English" value="Intermittent Wind Blasting - Occasional Storms" />
      <Property name="French" value="Fortes bourrasques - Tempêtes occasionnelles" />
      <Property name="German" value="Unregelmäßige Windstöße - Gelegentliche Stürme" />
      <Property name="Italian" value="Folate di vento intermittenti - Tempeste occasionali" />
      <Property name="Japanese" value="断続的な突風 - 時折のストーム" />
      <Property name="Korean" value="간헐적인 돌풍 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Ráfagas de viento casuales - Tormentas ocasionales" />
      <Property name="Polish" value="Przerywane wiatry - Sporadyczne burze" />
      <Property name="Portuguese" value="Ventos explosivos alternados - Tempestades ocasionais" />
      <Property name="Russian" value="Скачкообразные порывы ветра - Редкие штормы" />
      <Property name="SimplifiedChinese" value="间歇强风爆炸-偶尔风暴" />
      <Property name="Spanish" value="Ráfagas de viento casuales - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="間歇性強風轟炸-偶爾風暴" />
      <Property name="USEnglish" value="Intermittent Wind Blasting - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN4" />
      <Property name="BrazilianPortuguese" value="Areias tórridas - Tempestades ocasionais" />
      <Property name="Dutch" value="Droog zand - Incidentele stormen" />
      <Property name="English" value="Parched Sands - Occasional Storms" />
      <Property name="French" value="Sable sec - Tempêtes occasionnelles" />
      <Property name="German" value="Ausgetrocknete Sandfläche - Gelegentliche Stürme" />
      <Property name="Italian" value="Sabbie riarse - Tempeste occasionali" />
      <Property name="Japanese" value="干からびた砂 - 時折のストーム" />
      <Property name="Korean" value="건조한 모래 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Arenas resecas - Tormentas ocasionales" />
      <Property name="Polish" value="Spieczone piaski - Sporadyczne burze" />
      <Property name="Portuguese" value="Areias secas - Tempestades ocasionais" />
      <Property name="Russian" value="Сухие пески - Редкие штормы" />
      <Property name="SimplifiedChinese" value="焦干沙尘-偶尔风暴" />
      <Property name="Spanish" value="Arenas resecas - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="乾裂沙地-偶爾風暴" />
      <Property name="USEnglish" value="Parched Sands - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN5" />
      <Property name="BrazilianPortuguese" value="Raras tempestades de partículas - Tempestades ocasionais" />
      <Property name="Dutch" value="Sporadische gruisstormen - Incidentele stormen" />
      <Property name="English" value="Sporadic Grit Storms - Occasional Storms" />
      <Property name="French" value="Tempêtes de gravillons - Tempêtes occasionnelles" />
      <Property name="German" value="Sporadische Kiesstürme - Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste di graniglia rare - Tempeste occasionali" />
      <Property name="Japanese" value="散発的な砂岩嵐 - 時折のストーム" />
      <Property name="Korean" value="산발적인 모래 폭풍우 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de arena fortuitas - Tormentas ocasionales" />
      <Property name="Polish" value="Sporadyczne burze mrozu - Sporadyczne burze" />
      <Property name="Portuguese" value="Escasso vendaval de gravilha - Tempestades ocasionais" />
      <Property name="Russian" value="Внезапные сильные бури - Редкие штормы" />
      <Property name="SimplifiedChinese" value="零星砂砾风暴-偶尔风暴" />
      <Property name="Spanish" value="Tormentas de arena fortuitas - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="零星砂礫風暴-偶爾風暴" />
      <Property name="USEnglish" value="Sporadic Grit Storms - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN6" />
      <Property name="BrazilianPortuguese" value="Ventos com poeira - Tempestades ocasionais" />
      <Property name="Dutch" value="Verstikkende stofwinden - Incidentele stormen" />
      <Property name="English" value="Dust-Choked Winds - Occasional Storms" />
      <Property name="French" value="Vents saturés en poussière - Tempêtes occasionnelles" />
      <Property name="German" value="Staubige Winde - Gelegentliche Stürme" />
      <Property name="Italian" value="Venti concentrati di polveri - Tempeste occasionali" />
      <Property name="Japanese" value="窒息性の粉塵嵐 - 時折のストーム" />
      <Property name="Korean" value="먼지가 섞인 바람 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Vientos de polvo asfixiantes - Tormentas ocasionales" />
      <Property name="Polish" value="Wiatry z kurzem - Sporadyczne burze" />
      <Property name="Portuguese" value="Ventos sufocados pelo pó - Tempestades ocasionais" />
      <Property name="Russian" value="Насыщенные пылью ветры - Редкие штормы" />
      <Property name="SimplifiedChinese" value="令人窒息的尘暴-偶尔风暴" />
      <Property name="Spanish" value="Vientos de polvo asfixiantes - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="沙塵壟罩的風-偶爾風暴" />
      <Property name="USEnglish" value="Dust-Choked Winds - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN7" />
      <Property name="BrazilianPortuguese" value="Alta variação de temperatura - Tempestades ocasionais" />
      <Property name="Dutch" value="Zeer variërende temperaturen - Incidentele stormen" />
      <Property name="English" value="Highly Variable Temperatures - Occasional Storms" />
      <Property name="French" value="Températures très variables - Tempêtes occasionnelles" />
      <Property name="German" value="Stark schwankende Temperaturen - Gelegentliche Stürme" />
      <Property name="Italian" value="Temperature molto variabili - Tempeste occasionali" />
      <Property name="Japanese" value="非常に不安定な気温 - 時折のストーム" />
      <Property name="Korean" value="매우 가변적인 기온 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Temperaturas muy variables - Tormentas ocasionales" />
      <Property name="Polish" value="Bardzo zmienna temperatura - Sporadyczne burze" />
      <Property name="Portuguese" value="Temperatura altamente variável - Tempestades ocasionais" />
      <Property name="Russian" value="Переменчивая температура - Редкие штормы" />
      <Property name="SimplifiedChinese" value="高变化性气温-偶尔风暴" />
      <Property name="Spanish" value="Temperaturas muy variables - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="高度變幻溫度-偶爾風暴" />
      <Property name="USEnglish" value="Highly Variable Temperatures - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN8" />
      <Property name="BrazilianPortuguese" value="Atmosfera arruinada - Tempestades ocasionais" />
      <Property name="Dutch" value="Verzengende atmosfeer - Incidentele stormen" />
      <Property name="English" value="Blasted Atmosphere - Occasional Storms" />
      <Property name="French" value="Atmosphère polluée - Tempêtes occasionnelles" />
      <Property name="German" value="Unbewohnbare Atmosphäre - Gelegentliche Stürme" />
      <Property name="Italian" value="Atmosfera devastata - Tempeste occasionali" />
      <Property name="Japanese" value="乾燥した大気 - 時折のストーム" />
      <Property name="Korean" value="황폐한 대기 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Atmósfera arruinada - Tormentas ocasionales" />
      <Property name="Polish" value="Zniszczona atmosfera - Sporadyczne burze" />
      <Property name="Portuguese" value="Atmosfera destruída - Tempestades ocasionais" />
      <Property name="Russian" value="Разрушенная атмосфера - Редкие штормы" />
      <Property name="SimplifiedChinese" value="恶劣大气-偶尔风暴" />
      <Property name="Spanish" value="Atmósfera arruinada - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="惡劣大氣-偶爾風暴" />
      <Property name="USEnglish" value="Blasted Atmosphere - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN9" />
      <Property name="BrazilianPortuguese" value="Ventos noturnos enregelantes - Tempestades ocasionais" />
      <Property name="Dutch" value="IJskoude nachtwind - Incidentele stormen" />
      <Property name="English" value="Freezing Night Winds - Occasional Storms" />
      <Property name="French" value="Vents nocturnes glacés - Tempêtes occasionnelles" />
      <Property name="German" value="Eiskalte nächtliche Winde - Gelegentliche Stürme" />
      <Property name="Italian" value="Venti notturni congelanti - Tempeste occasionali" />
      <Property name="Japanese" value="凍える夜風 - 時折のストーム" />
      <Property name="Korean" value="빙결 야간풍 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Vientos nocturnos gélidos - Tormentas ocasionales" />
      <Property name="Polish" value="Zmrożone nocne wiatry - Sporadyczne burze" />
      <Property name="Portuguese" value="Ventos noturnos congelantes - Tempestades ocasionais" />
      <Property name="Russian" value="Ледяной ночной ветер - Редкие штормы" />
      <Property name="SimplifiedChinese" value="极冷的晚风-偶尔风暴" />
      <Property name="Spanish" value="Vientos nocturnos gélidos - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="冰凍夜風-偶爾風暴" />
      <Property name="USEnglish" value="Freezing Night Winds - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN10" />
      <Property name="BrazilianPortuguese" value="Seca ininterrupta - Tempestades ocasionais" />
      <Property name="Dutch" value="Onophoudelijke droogte - Incidentele stormen" />
      <Property name="English" value="Ceaseless Drought - Occasional Storms" />
      <Property name="French" value="Sécheresse permanente - Tempêtes occasionnelles" />
      <Property name="German" value="Unaufhörliche Dürre - Gelegentliche Stürme" />
      <Property name="Italian" value="Siccità interminabile - Tempeste occasionali" />
      <Property name="Japanese" value="絶え間ない干ばつ - 時折のストーム" />
      <Property name="Korean" value="끊임 없는 가뭄 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Sequía incesante - Tormentas ocasionales" />
      <Property name="Polish" value="Ciągła susza - Sporadyczne burze" />
      <Property name="Portuguese" value="Seca incessante - Tempestades ocasionais" />
      <Property name="Russian" value="Непрерывная засуха - Редкие штормы" />
      <Property name="SimplifiedChinese" value="不停的干旱-偶尔风暴" />
      <Property name="Spanish" value="Sequía incesante - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="無盡乾旱-偶爾風暴" />
      <Property name="USEnglish" value="Ceaseless Drought - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN_CLEAR1" />
      <Property name="BrazilianPortuguese" value="Sem umidade - Sem tempestade" />
      <Property name="Dutch" value="Kurkdroog - Geen storm" />
      <Property name="English" value="Moistureless - No Storms" />
      <Property name="French" value="Sans humidité - Pas de tempête" />
      <Property name="German" value="Vertrocknet - Kein Sturm" />
      <Property name="Italian" value="Essiccato - Nessuna tempesta" />
      <Property name="Japanese" value="無湿度 - ストームなし" />
      <Property name="Korean" value="습기 없음 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Desaguado - Sin tormentas" />
      <Property name="Polish" value="Brak wilgoci - Brak burzy" />
      <Property name="Portuguese" value="Sem humidade - Sem tempestade" />
      <Property name="Russian" value="Без влаги - Без шторма" />
      <Property name="SimplifiedChinese" value="无水分-无风暴" />
      <Property name="Spanish" value="Desaguado - Sin tormentas" />
      <Property name="TraditionalChinese" value="無水-無風暴" />
      <Property name="USEnglish" value="Moistureless - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN_CLEAR2" />
      <Property name="BrazilianPortuguese" value="Assado - Sem tempestade" />
      <Property name="Dutch" value="Verschrompeld - Geen storm" />
      <Property name="English" value="Baked - No Storms" />
      <Property name="French" value="Cuit - Pas de tempête" />
      <Property name="German" value="Knochentrocken - Kein Sturm" />
      <Property name="Italian" value="Brullo - Nessuna tempesta" />
      <Property name="Japanese" value="焼けた - ストームなし" />
      <Property name="Korean" value="햇볕에 탐 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Reseco - Sin tormentas" />
      <Property name="Polish" value="Spieczony - Brak burzy" />
      <Property name="Portuguese" value="Cozinhada - Sem tempestade" />
      <Property name="Russian" value="Запекшаяся - Без шторма" />
      <Property name="SimplifiedChinese" value="炎热-无风暴" />
      <Property name="Spanish" value="Reseco - Sin tormentas" />
      <Property name="TraditionalChinese" value="乾烤-無風暴" />
      <Property name="USEnglish" value="Baked - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN_CLEAR3" />
      <Property name="BrazilianPortuguese" value="Estéril - Sem tempestade" />
      <Property name="Dutch" value="Steriel - Geen storm" />
      <Property name="English" value="Sterile - No Storms" />
      <Property name="French" value="Stérile - Pas de tempête" />
      <Property name="German" value="Steril - Kein Sturm" />
      <Property name="Italian" value="Sterile - Nessuna tempesta" />
      <Property name="Japanese" value="不毛 - ストームなし" />
      <Property name="Korean" value="무균 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Estéril - Sin tormentas" />
      <Property name="Polish" value="Jałowy - Brak burzy" />
      <Property name="Portuguese" value="Estéril - Sem tempestade" />
      <Property name="Russian" value="Стерильная - Без шторма" />
      <Property name="SimplifiedChinese" value="无菌-无风暴" />
      <Property name="Spanish" value="Estéril - Sin tormentas" />
      <Property name="TraditionalChinese" value="貧瘠-無風暴" />
      <Property name="USEnglish" value="Sterile - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN_CLEAR4" />
      <Property name="BrazilianPortuguese" value="Limpo - Sem tempestade" />
      <Property name="Dutch" value="Helder - Geen storm" />
      <Property name="English" value="Clear - No Storms" />
      <Property name="French" value="Clair - Pas de tempête" />
      <Property name="German" value="Klar - Kein Sturm" />
      <Property name="Italian" value="Limpido - Nessuna tempesta" />
      <Property name="Japanese" value="澄んだ - ストームなし" />
      <Property name="Korean" value="화창 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Despejado - Sin tormentas" />
      <Property name="Polish" value="Przejrzysty - Brak burzy" />
      <Property name="Portuguese" value="Céu limpo - Sem tempestade" />
      <Property name="Russian" value="Ясная - Без шторма" />
      <Property name="SimplifiedChinese" value="晴空-无风暴" />
      <Property name="Spanish" value="Despejado - Sin tormentas" />
      <Property name="TraditionalChinese" value="淨空-無風暴" />
      <Property name="USEnglish" value="Clear - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN_CLEAR5" />
      <Property name="BrazilianPortuguese" value="Céu sem nuvens - Sem tempestade" />
      <Property name="Dutch" value="Onbewolkt - Geen storm" />
      <Property name="English" value="Unclouded Skies - No Storms" />
      <Property name="French" value="Ciel dégagé - Pas de tempête" />
      <Property name="German" value="Wolkenloser Himmel - Kein Sturm" />
      <Property name="Italian" value="Senza nuvole - Nessuna tempesta" />
      <Property name="Japanese" value="快晴 - ストームなし" />
      <Property name="Korean" value="구름 없는 하늘 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Cielos despejados - Sin tormentas" />
      <Property name="Polish" value="Niezachmurzone niebo - Brak burzy" />
      <Property name="Portuguese" value="Pouco nublado - Sem tempestade" />
      <Property name="Russian" value="Безоблачное небо - Без шторма" />
      <Property name="SimplifiedChinese" value="无云-无风暴" />
      <Property name="Spanish" value="Cielos despejados - Sin tormentas" />
      <Property name="TraditionalChinese" value="無雲晴空-無風暴" />
      <Property name="USEnglish" value="Unclouded Skies - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN_CLEAR6" />
      <Property name="BrazilianPortuguese" value="Rajadas secas - Sem tempestade" />
      <Property name="Dutch" value="Droge wind - Geen storm" />
      <Property name="English" value="Dry Gusts - No Storms" />
      <Property name="French" value="Rafales sèches - Pas de tempête" />
      <Property name="German" value="Trockene Winde - Kein Sturm" />
      <Property name="Italian" value="Venti secchi - Nessuna tempesta" />
      <Property name="Japanese" value="乾性の突風 - ストームなし" />
      <Property name="Korean" value="메마른 돌풍 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Ráfagas secas - Sin tormentas" />
      <Property name="Polish" value="Suche porywy - Brak burzy" />
      <Property name="Portuguese" value="Ventos secos - Sem tempestade" />
      <Property name="Russian" value="Сухие порывы - Без шторма" />
      <Property name="SimplifiedChinese" value="干燥强风-无风暴" />
      <Property name="Spanish" value="Ráfagas secas - Sin tormentas" />
      <Property name="TraditionalChinese" value="焚風-無風暴" />
      <Property name="USEnglish" value="Dry Gusts - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN_CLEAR7" />
      <Property name="BrazilianPortuguese" value="Murcho - Sem tempestade" />
      <Property name="Dutch" value="Verlept - Geen storm" />
      <Property name="English" value="Withered - No Storms" />
      <Property name="French" value="Sécheresse - Pas de tempête" />
      <Property name="German" value="Staubtrocken - Kein Sturm" />
      <Property name="Italian" value="Appassito - Nessuna tempesta" />
      <Property name="Japanese" value="干からびた - ストームなし" />
      <Property name="Korean" value="메마름 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Mustio - Sin tormentas" />
      <Property name="Polish" value="Zwiędły - Brak burzy" />
      <Property name="Portuguese" value="Murcho - Sem tempestade" />
      <Property name="Russian" value="Иссохшая - Без шторма" />
      <Property name="SimplifiedChinese" value="干枯-无风暴" />
      <Property name="Spanish" value="Mustio - Sin tormentas" />
      <Property name="TraditionalChinese" value="乾枯-無風暴" />
      <Property name="USEnglish" value="Withered - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BARREN_CLEAR8" />
      <Property name="BrazilianPortuguese" value="Noites gélidas - Sem tempestade" />
      <Property name="Dutch" value="IJzige nachten - Geen storm" />
      <Property name="English" value="Icy Nights - No Storms" />
      <Property name="French" value="Nuits glaciales - Pas de tempête" />
      <Property name="German" value="Frostige Nächte - Kein Sturm" />
      <Property name="Italian" value="Notti ghiacciate - Nessuna tempesta" />
      <Property name="Japanese" value="凍りつく夜 - ストームなし" />
      <Property name="Korean" value="얼음장 같은 밤 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Noches heladas - Sin tormentas" />
      <Property name="Polish" value="Lodowe noce - Brak burzy" />
      <Property name="Portuguese" value="Noites gélidas - Sem tempestade" />
      <Property name="Russian" value="Ледяные ночи - Без шторма" />
      <Property name="SimplifiedChinese" value="冰冷的夜晚-无风暴" />
      <Property name="Spanish" value="Noches heladas - Sin tormentas" />
      <Property name="TraditionalChinese" value="冰冷夜晚-無風暴" />
      <Property name="USEnglish" value="Icy Nights - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_DEAD1" />
      <Property name="BrazilianPortuguese" value="Perfeitamente limpo - Sem tempestade" />
      <Property name="Dutch" value="Volledig helder - Geen storm" />
      <Property name="English" value="Perfectly Clear - No Storms" />
      <Property name="French" value="Parfaitement clair - Pas de tempête" />
      <Property name="German" value="Vollkommen klar - Kein Sturm" />
      <Property name="Italian" value="Perfettamente sereno - Nessuna tempesta" />
      <Property name="Japanese" value="完全に澄んだ - ストームなし" />
      <Property name="Korean" value="완벽하게 화창 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Totalmente despejado - Sin tormentas" />
      <Property name="Polish" value="Idealnie czysty - Brak burzy" />
      <Property name="Portuguese" value="Muito claro - Sem tempestade" />
      <Property name="Russian" value="Абсолютная ясность - Без шторма" />
      <Property name="SimplifiedChinese" value="晴空万里-无风暴" />
      <Property name="Spanish" value="Totalmente despejado - Sin tormentas" />
      <Property name="TraditionalChinese" value="萬里無雲-無風暴" />
      <Property name="USEnglish" value="Perfectly Clear - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_DEAD2" />
      <Property name="BrazilianPortuguese" value="Ausente - Sem tempestade" />
      <Property name="Dutch" value="Absent - Geen storm" />
      <Property name="English" value="Absent - No Storms" />
      <Property name="French" value="Absent - Pas de tempête" />
      <Property name="German" value="Fehlend - Kein Sturm" />
      <Property name="Italian" value="Assente - Nessuna tempesta" />
      <Property name="Japanese" value="何もない - ストームなし" />
      <Property name="Korean" value="결핍 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Ausente - Sin tormentas" />
      <Property name="Polish" value="Nieobecność - Brak burzy" />
      <Property name="Portuguese" value="Ausente - Sem tempestade" />
      <Property name="Russian" value="Отсутствующ. - Без шторма" />
      <Property name="SimplifiedChinese" value="稀缺-无风暴" />
      <Property name="Spanish" value="Ausente - Sin tormentas" />
      <Property name="TraditionalChinese" value="空缺-無風暴" />
      <Property name="USEnglish" value="Absent - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_DEAD3" />
      <Property name="BrazilianPortuguese" value="Sem atmosfera - Sem tempestade" />
      <Property name="Dutch" value="Geen atmosfeer - Geen storm" />
      <Property name="English" value="No Atmosphere - No Storms" />
      <Property name="French" value="Pas d'atmosphère - Pas de tempête" />
      <Property name="German" value="Keine Atmosphäre - Kein Sturm" />
      <Property name="Italian" value="Nessuna atmosfera - Nessuna tempesta" />
      <Property name="Japanese" value="大気がない - ストームなし" />
      <Property name="Korean" value="대기 없음 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin atmósfera - Sin tormentas" />
      <Property name="Polish" value="Brak atmosfery - Brak burzy" />
      <Property name="Portuguese" value="Sem Atmosfera - Sem tempestade" />
      <Property name="Russian" value="Нет атмосферы - Без шторма" />
      <Property name="SimplifiedChinese" value="无大气层-无风暴" />
      <Property name="Spanish" value="Sin atmósfera - Sin tormentas" />
      <Property name="TraditionalChinese" value="無大氣-無風暴" />
      <Property name="USEnglish" value="No Atmosphere - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_DEAD4" />
      <Property name="BrazilianPortuguese" value="Totalmente imóvel - Sem tempestade" />
      <Property name="Dutch" value="Volledig stil - Geen storm" />
      <Property name="English" value="Utterly Still - No Storms" />
      <Property name="French" value="Totalement immobile - Pas de tempête" />
      <Property name="German" value="Absolut unbewegt - Kein Sturm" />
      <Property name="Italian" value="Calma assoluta - Nessuna tempesta" />
      <Property name="Japanese" value="完全に平静 - ストームなし" />
      <Property name="Korean" value="완전히 고요함 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Totalmente calmado - Sin tormentas" />
      <Property name="Polish" value="Wieczny spokój - Brak burzy" />
      <Property name="Portuguese" value="Completamente imóvel - Sem tempestade" />
      <Property name="Russian" value="Полная стабильность - Без шторма" />
      <Property name="SimplifiedChinese" value="完全寂静-无风暴" />
      <Property name="Spanish" value="Totalmente calmado - Sin tormentas" />
      <Property name="TraditionalChinese" value="全面靜止-無風暴" />
      <Property name="USEnglish" value="Utterly Still - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_DEAD5" />
      <Property name="BrazilianPortuguese" value="Pacífico - Sem tempestade" />
      <Property name="Dutch" value="Kalm - Geen storm" />
      <Property name="English" value="Peaceful - No Storms" />
      <Property name="French" value="Paisible - Pas de tempête" />
      <Property name="German" value="Friedlich - Kein Sturm" />
      <Property name="Italian" value="Pacifico - Nessuna tempesta" />
      <Property name="Japanese" value="平穏 - ストームなし" />
      <Property name="Korean" value="평화로움 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Pacífico - Sin tormentas" />
      <Property name="Polish" value="Spokojny - Brak burzy" />
      <Property name="Portuguese" value="Pacífico - Sem tempestade" />
      <Property name="Russian" value="Мирная - Без шторма" />
      <Property name="SimplifiedChinese" value="和平-无风暴" />
      <Property name="Spanish" value="Pacífico - Sin tormentas" />
      <Property name="TraditionalChinese" value="和平-無風暴" />
      <Property name="USEnglish" value="Peaceful - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_DEAD6" />
      <Property name="BrazilianPortuguese" value="Estranhamente calmo - Sem tempestade" />
      <Property name="Dutch" value="Akelig rustig - Geen storm" />
      <Property name="English" value="Eerily Calm - No Storms" />
      <Property name="French" value="Étrangement calme - Pas de tempête" />
      <Property name="German" value="Unheimlich ruhig - Kein Sturm" />
      <Property name="Italian" value="Stranamente calmo - Nessuna tempesta" />
      <Property name="Japanese" value="不気味なほど静か - ストームなし" />
      <Property name="Korean" value="무서울 정도로 잔잔함 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Misteriosamente calmado - Sin tormentas" />
      <Property name="Polish" value="Dziwnie spokojny - Brak burzy" />
      <Property name="Portuguese" value="Calma sinistra - Sem tempestade" />
      <Property name="Russian" value="Жуткое спокойствие - Без шторма" />
      <Property name="SimplifiedChinese" value="可怕的平静-无风暴" />
      <Property name="Spanish" value="Misteriosamente calmado - Sin tormentas" />
      <Property name="TraditionalChinese" value="迥異的平靜-無風暴" />
      <Property name="USEnglish" value="Eerily Calm - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_DEAD7" />
      <Property name="BrazilianPortuguese" value="Sem ar - Sem tempestade" />
      <Property name="Dutch" value="Zonder lucht - Geen storm" />
      <Property name="English" value="Airless - No Storms" />
      <Property name="French" value="Sans air - Pas de tempête" />
      <Property name="German" value="Stickig - Kein Sturm" />
      <Property name="Italian" value="Senza aria - Nessuna tempesta" />
      <Property name="Japanese" value="無大気 - ストームなし" />
      <Property name="Korean" value="바람 없음 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Sin viento - Sin tormentas" />
      <Property name="Polish" value="Brak powietrza - Brak burzy" />
      <Property name="Portuguese" value="Sem ar - Sem tempestade" />
      <Property name="Russian" value="Безвоздушная - Без шторма" />
      <Property name="SimplifiedChinese" value="缺乏空气-无风暴" />
      <Property name="Spanish" value="Sin viento - Sin tormentas" />
      <Property name="TraditionalChinese" value="無空氣-無風暴" />
      <Property name="USEnglish" value="Airless - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_DEAD8" />
      <Property name="BrazilianPortuguese" value="Silencioso - Sem tempestade" />
      <Property name="Dutch" value="Stil - Geen storm" />
      <Property name="English" value="Silent - No Storms" />
      <Property name="French" value="Silencieux - Pas de tempête" />
      <Property name="German" value="Still - Kein Sturm" />
      <Property name="Italian" value="Silenzioso - Nessuna tempesta" />
      <Property name="Japanese" value="静寂 - ストームなし" />
      <Property name="Korean" value="조용함 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Silencioso - Sin tormentas" />
      <Property name="Polish" value="Cichy - Brak burzy" />
      <Property name="Portuguese" value="Silencioso - Sem tempestade" />
      <Property name="Russian" value="Тишины - Без шторма" />
      <Property name="SimplifiedChinese" value="沉默-无风暴" />
      <Property name="Spanish" value="Silencioso - Sin tormentas" />
      <Property name="TraditionalChinese" value="寂靜-無風暴" />
      <Property name="USEnglish" value="Silent - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_DEAD9" />
      <Property name="BrazilianPortuguese" value="Inerte - Sem tempestade" />
      <Property name="Dutch" value="Inert - Geen storm" />
      <Property name="English" value="Inert - No Storms" />
      <Property name="French" value="Inerte - Pas de tempête" />
      <Property name="German" value="Inert - Kein Sturm" />
      <Property name="Italian" value="Inerte - Nessuna tempesta" />
      <Property name="Japanese" value="生気がない - ストームなし" />
      <Property name="Korean" value="비활성 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Inerte - Sin tormentas" />
      <Property name="Polish" value="Obojętny - Brak burzy" />
      <Property name="Portuguese" value="Inerte - Sem tempestade" />
      <Property name="Russian" value="Инертен - Без шторма" />
      <Property name="SimplifiedChinese" value="不活跃-无风暴" />
      <Property name="Spanish" value="Inerte - Sin tormentas" />
      <Property name="TraditionalChinese" value="無生命-無風暴" />
      <Property name="USEnglish" value="Inert - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_DEAD10" />
      <Property name="BrazilianPortuguese" value="Limpo - Sem tempestade" />
      <Property name="Dutch" value="Helder - Geen storm" />
      <Property name="English" value="Clear - No Storms" />
      <Property name="French" value="Clair - Pas de tempête" />
      <Property name="German" value="Klar - Kein Sturm" />
      <Property name="Italian" value="Limpido - Nessuna tempesta" />
      <Property name="Japanese" value="澄んだ - ストームなし" />
      <Property name="Korean" value="화창 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Despejado - Sin tormentas" />
      <Property name="Polish" value="Przejrzysty - Brak burzy" />
      <Property name="Portuguese" value="Céu limpo - Sem tempestade" />
      <Property name="Russian" value="Ясная - Без шторма" />
      <Property name="SimplifiedChinese" value="晴空-无风暴" />
      <Property name="Spanish" value="Despejado - Sin tormentas" />
      <Property name="TraditionalChinese" value="淨空-無風暴" />
      <Property name="USEnglish" value="Clear - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_CLEAR1" />
      <Property name="BrazilianPortuguese" value="Limpo - Sem tempestade" />
      <Property name="Dutch" value="Helder - Geen storm" />
      <Property name="English" value="Clear - No Storms" />
      <Property name="French" value="Clair - Pas de tempête" />
      <Property name="German" value="Klar - Kein Sturm" />
      <Property name="Italian" value="Limpido - Nessuna tempesta" />
      <Property name="Japanese" value="澄んだ - ストームなし" />
      <Property name="Korean" value="화창 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Despejado - Sin tormentas" />
      <Property name="Polish" value="Przejrzysty - Brak burzy" />
      <Property name="Portuguese" value="Céu limpo - Sem tempestade" />
      <Property name="Russian" value="Ясная - Без шторма" />
      <Property name="SimplifiedChinese" value="晴空-无风暴" />
      <Property name="Spanish" value="Despejado - Sin tormentas" />
      <Property name="TraditionalChinese" value="淨空-無風暴" />
      <Property name="USEnglish" value="Clear - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_CLEAR2" />
      <Property name="BrazilianPortuguese" value="Céu sem nuvens - Sem tempestade" />
      <Property name="Dutch" value="Onbewolkt - Geen storm" />
      <Property name="English" value="Unclouded Skies - No Storms" />
      <Property name="French" value="Ciel dégagé - Pas de tempête" />
      <Property name="German" value="Wolkenloser Himmel - Kein Sturm" />
      <Property name="Italian" value="Senza nuvole - Nessuna tempesta" />
      <Property name="Japanese" value="快晴 - ストームなし" />
      <Property name="Korean" value="구름 없는 하늘 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Cielos despejados - Sin tormentas" />
      <Property name="Polish" value="Niezachmurzone niebo - Brak burzy" />
      <Property name="Portuguese" value="Pouco nublado - Sem tempestade" />
      <Property name="Russian" value="Безоблачное небо - Без шторма" />
      <Property name="SimplifiedChinese" value="无云-无风暴" />
      <Property name="Spanish" value="Cielos despejados - Sin tormentas" />
      <Property name="TraditionalChinese" value="無雲晴空-無風暴" />
      <Property name="USEnglish" value="Unclouded Skies - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_CLEAR3" />
      <Property name="BrazilianPortuguese" value="Bonito - Sem tempestade" />
      <Property name="Dutch" value="Aangenaam - Geen storm" />
      <Property name="English" value="Fair - No Storms" />
      <Property name="French" value="Raisonnable - Pas de tempête" />
      <Property name="German" value="Heiter - Kein Sturm" />
      <Property name="Italian" value="Sereno - Nessuna tempesta" />
      <Property name="Japanese" value="晴れた - ストームなし" />
      <Property name="Korean" value="적정 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Favorable - Sin tormentas" />
      <Property name="Polish" value="Dobre warunki - Brak burzy" />
      <Property name="Portuguese" value="Razoável - Sem tempestade" />
      <Property name="Russian" value="Достаточная - Без шторма" />
      <Property name="SimplifiedChinese" value="适当-无风暴" />
      <Property name="Spanish" value="Favorable - Sin tormentas" />
      <Property name="TraditionalChinese" value="晴朗-無風暴" />
      <Property name="USEnglish" value="Fair - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_CLEAR4" />
      <Property name="BrazilianPortuguese" value="Bom - Sem tempestade" />
      <Property name="Dutch" value="Goed - Geen storm" />
      <Property name="English" value="Fine - No Storms" />
      <Property name="French" value="Bon - Pas de tempête" />
      <Property name="German" value="Schön - Kein Sturm" />
      <Property name="Italian" value="Bello - Nessuna tempesta" />
      <Property name="Japanese" value="良い - ストームなし" />
      <Property name="Korean" value="쾌청 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Suave - Sin tormentas" />
      <Property name="Polish" value="Przyjazne warunki - Brak burzy" />
      <Property name="Portuguese" value="Bom - Sem tempestade" />
      <Property name="Russian" value="Прекрасная - Без шторма" />
      <Property name="SimplifiedChinese" value="良好-无风暴" />
      <Property name="Spanish" value="Suave - Sin tormentas" />
      <Property name="TraditionalChinese" value="舒適-無風暴" />
      <Property name="USEnglish" value="Fine - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_CLEAR5" />
      <Property name="BrazilianPortuguese" value="Moderado - Sem tempestade" />
      <Property name="Dutch" value="Gemiddeld - Geen storm" />
      <Property name="English" value="Moderate - No Storms" />
      <Property name="French" value="Modéré - Pas de tempête" />
      <Property name="German" value="Moderat - Kein Sturm" />
      <Property name="Italian" value="Moderato - Nessuna tempesta" />
      <Property name="Japanese" value="穏やか - ストームなし" />
      <Property name="Korean" value="보통 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Moderado - Sin tormentas" />
      <Property name="Polish" value="Umiarkowanie - Brak burzy" />
      <Property name="Portuguese" value="Moderada - Sem tempestade" />
      <Property name="Russian" value="Умеренность - Без шторма" />
      <Property name="SimplifiedChinese" value="适中-无风暴" />
      <Property name="Spanish" value="Moderado - Sin tormentas" />
      <Property name="TraditionalChinese" value="適中-無風暴" />
      <Property name="USEnglish" value="Moderate - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_CLEAR6" />
      <Property name="BrazilianPortuguese" value="Clima pacífico - Sem tempestade" />
      <Property name="Dutch" value="Rustig klimaat - Geen storm" />
      <Property name="English" value="Peaceful Climate - No Storms" />
      <Property name="French" value="Climat apaisé - Pas de tempête" />
      <Property name="German" value="Mildes Klima - Kein Sturm" />
      <Property name="Italian" value="Clima mite - Nessuna tempesta" />
      <Property name="Japanese" value="平穏な天候 - ストームなし" />
      <Property name="Korean" value="평화로운 기후 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Buen clima - Sin tormentas" />
      <Property name="Polish" value="Spokojny klimat - Brak burzy" />
      <Property name="Portuguese" value="Clima Pacífico - Sem tempestade" />
      <Property name="Russian" value="Приятный климат - Без шторма" />
      <Property name="SimplifiedChinese" value="气候宜人-无风暴" />
      <Property name="Spanish" value="Buen clima - Sin tormentas" />
      <Property name="TraditionalChinese" value="氣候平和-無風暴" />
      <Property name="USEnglish" value="Peaceful Climate - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_CLEAR7" />
      <Property name="BrazilianPortuguese" value="Temperado - Sem tempestade" />
      <Property name="Dutch" value="Gematigd - Geen storm" />
      <Property name="English" value="Tempered - No Storms" />
      <Property name="French" value="Tempéré - Pas de tempête" />
      <Property name="German" value="Gemäßigt - Kein Sturm" />
      <Property name="Italian" value="Temperato - Nessuna tempesta" />
      <Property name="Japanese" value="柔らか - ストームなし" />
      <Property name="Korean" value="온화 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Templado - Sin tormentas" />
      <Property name="Polish" value="Umiarkowany klimat - Brak burzy" />
      <Property name="Portuguese" value="Temperado - Sem tempestade" />
      <Property name="Russian" value="Умеренная - Без шторма" />
      <Property name="SimplifiedChinese" value="和緩-无风暴" />
      <Property name="Spanish" value="Templado - Sin tormentas" />
      <Property name="TraditionalChinese" value="適度-無風暴" />
      <Property name="USEnglish" value="Tempered - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_CLEAR8" />
      <Property name="BrazilianPortuguese" value="Suave - Sem tempestade" />
      <Property name="Dutch" value="Prettig - Geen storm" />
      <Property name="English" value="Emollient - No Storms" />
      <Property name="French" value="Émollient - Pas de tempête" />
      <Property name="German" value="Wohltuend - Kein Sturm" />
      <Property name="Italian" value="Emolliente - Nessuna tempesta" />
      <Property name="Japanese" value="軟らか - ストームなし" />
      <Property name="Korean" value="부드러움 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Tranquilo - Sin tormentas" />
      <Property name="Polish" value="Delikatny - Brak burzy" />
      <Property name="Portuguese" value="Emoliente - Sem tempestade" />
      <Property name="Russian" value="Смягчающая - Без шторма" />
      <Property name="SimplifiedChinese" value="平静-无风暴" />
      <Property name="Spanish" value="Tranquilo - Sin tormentas" />
      <Property name="TraditionalChinese" value="和緩-無風暴" />
      <Property name="USEnglish" value="Emollient - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_CLEAR9" />
      <Property name="BrazilianPortuguese" value="Bom - Sem tempestade" />
      <Property name="Dutch" value="Goed - Geen storm" />
      <Property name="English" value="Fine - No Storms" />
      <Property name="French" value="Bon - Pas de tempête" />
      <Property name="German" value="Schön - Kein Sturm" />
      <Property name="Italian" value="Bello - Nessuna tempesta" />
      <Property name="Japanese" value="良い - ストームなし" />
      <Property name="Korean" value="쾌청 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Suave - Sin tormentas" />
      <Property name="Polish" value="Dobry - Brak burzy" />
      <Property name="Portuguese" value="Bom - Sem tempestade" />
      <Property name="Russian" value="Прекрасная - Без шторма" />
      <Property name="SimplifiedChinese" value="良好-无风暴" />
      <Property name="Spanish" value="Suave - Sin tormentas" />
      <Property name="TraditionalChinese" value="舒適-無風暴" />
      <Property name="USEnglish" value="Fine - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_CLEAR10" />
      <Property name="BrazilianPortuguese" value="Moderado - Sem tempestade" />
      <Property name="Dutch" value="Gemiddeld - Geen storm" />
      <Property name="English" value="Moderate - No Storms" />
      <Property name="French" value="Modéré - Pas de tempête" />
      <Property name="German" value="Moderat - Kein Sturm" />
      <Property name="Italian" value="Moderato - Nessuna tempesta" />
      <Property name="Japanese" value="穏やか - ストームなし" />
      <Property name="Korean" value="보통 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Moderado - Sin tormentas" />
      <Property name="Polish" value="Umiarkowany - Brak burzy" />
      <Property name="Portuguese" value="Moderada - Sem tempestade" />
      <Property name="Russian" value="Умеренность - Без шторма" />
      <Property name="SimplifiedChinese" value="适中-无风暴" />
      <Property name="Spanish" value="Moderado - Sin tormentas" />
      <Property name="TraditionalChinese" value="適中-無風暴" />
      <Property name="USEnglish" value="Moderate - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP1" />
      <Property name="BrazilianPortuguese" value="Tempestades tropicais - Tempestades ocasionais" />
      <Property name="Dutch" value="Tropische storm - Incidentele stormen" />
      <Property name="English" value="Tropical Storms - Occasional Storms" />
      <Property name="French" value="Tempêtes tropicales - Tempêtes occasionnelles" />
      <Property name="German" value="Tropische Stürme - Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste tropicali - Tempeste occasionali" />
      <Property name="Japanese" value="熱帯性の嵐 - 時折のストーム" />
      <Property name="Korean" value="열대 폭풍우 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas tropicales - Tormentas ocasionales" />
      <Property name="Polish" value="Burze tropikalne - Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades tropicais - Tempestades ocasionais" />
      <Property name="Russian" value="Тропические бури - Редкие штормы" />
      <Property name="SimplifiedChinese" value="热带风暴-偶尔风暴" />
      <Property name="Spanish" value="Tormentas tropicales - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="熱帶風暴-偶爾風暴" />
      <Property name="USEnglish" value="Tropical Storms - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP2" />
      <Property name="BrazilianPortuguese" value="Névoa fervente ocasional - Tempestades ocasionais" />
      <Property name="Dutch" value="Incidenteel kokende mist - Incidentele stormen" />
      <Property name="English" value="Occasional Boiling Fog - Occasional Storms" />
      <Property name="French" value="Brouillard bouillant occasionnel - Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche siedende Nebel - Gelegentliche Stürme" />
      <Property name="Italian" value="Nebbia occasionale ribollente - Tempeste occasionali" />
      <Property name="Japanese" value="時折熱気に満ちた霧 - 時折のストーム" />
      <Property name="Korean" value="간헐적인 끓어오르는 안개 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Bruma hirviente ocasional - Tormentas ocasionales" />
      <Property name="Polish" value="Okazjonalna wrząca mgła - Sporadyczne burze" />
      <Property name="Portuguese" value="Nevoeiro fervente ocasional - Tempestades ocasionais" />
      <Property name="Russian" value="Временами клубится туман - Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶见滚烫的雾-偶尔风暴" />
      <Property name="Spanish" value="Bruma hirviente ocasional - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶發沸騰霧-偶爾風暴" />
      <Property name="USEnglish" value="Occasional Boiling Fog - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP3" />
      <Property name="BrazilianPortuguese" value="Névoas superquentes - Tempestades ocasionais" />
      <Property name="Dutch" value="Superhete mist - Incidentele stormen" />
      <Property name="English" value="Superheated Mists - Occasional Storms" />
      <Property name="French" value="Brumes surchauffées - Tempêtes occasionnelles" />
      <Property name="German" value="Überhitzter Dunst - Gelegentliche Stürme" />
      <Property name="Italian" value="Foschie incandescenti - Tempeste occasionali" />
      <Property name="Japanese" value="過熱した霧 - 時折のストーム" />
      <Property name="Korean" value="과열된 박무 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Neblina sobrecalentada - Tormentas ocasionales" />
      <Property name="Polish" value="Superpodgrzane mgiełki - Sporadyczne burze" />
      <Property name="Portuguese" value="Brumas sobreaquecidas - Tempestades ocasionais" />
      <Property name="Russian" value="Раскаленная дымка - Редкие штормы" />
      <Property name="SimplifiedChinese" value="过热的薄雾-偶尔风暴" />
      <Property name="Spanish" value="Neblina sobrecalentada - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="極熱霧氣-偶爾風暴" />
      <Property name="USEnglish" value="Superheated Mists - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP4" />
      <Property name="BrazilianPortuguese" value="Névoa dolorosa - Tempestades ocasionais" />
      <Property name="Dutch" value="Pijnlijke mist - Incidentele stormen" />
      <Property name="English" value="Painful Mist - Occasional Storms" />
      <Property name="French" value="Brume douloureuse - Tempêtes occasionnelles" />
      <Property name="German" value="Schmerzhafter Dunst - Gelegentliche Stürme" />
      <Property name="Italian" value="Nebbia dolorosa - Tempeste occasionali" />
      <Property name="Japanese" value="苦痛な霧 - 時折のストーム" />
      <Property name="Korean" value="고통스러운 박무 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Bruma dolorosa - Tormentas ocasionales" />
      <Property name="Polish" value="Bolesna mgła - Sporadyczne burze" />
      <Property name="Portuguese" value="Bruma dolorosa - Tempestades ocasionais" />
      <Property name="Russian" value="Болезненная дымка - Редкие штормы" />
      <Property name="SimplifiedChinese" value="痛苦的薄雾-偶尔风暴" />
      <Property name="Spanish" value="Bruma dolorosa - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="苦霧-偶爾風暴" />
      <Property name="USEnglish" value="Painful Mist - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP5" />
      <Property name="BrazilianPortuguese" value="Torrentes infrequentes - Tempestades ocasionais" />
      <Property name="Dutch" value="Onregelmatige stortbui - Incidentele stormen" />
      <Property name="English" value="Infrequent Torrents - Occasional Storms" />
      <Property name="French" value="Torrents peu fréquents - Tempêtes occasionnelles" />
      <Property name="German" value="Sporadische Fluten - Gelegentliche Stürme" />
      <Property name="Italian" value="Torrenti rari - Tempeste occasionali" />
      <Property name="Japanese" value="稀に土砂降り - 時折のストーム" />
      <Property name="Korean" value="드문 급류 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Torrentes poco frecuentes - Tormentas ocasionales" />
      <Property name="Polish" value="Rzadkie ulewy - Sporadyczne burze" />
      <Property name="Portuguese" value="Torrentes pouco frequentes - Tempestades ocasionais" />
      <Property name="Russian" value="Нечастые ливни - Редкие штормы" />
      <Property name="SimplifiedChinese" value="罕见的激流-偶尔风暴" />
      <Property name="Spanish" value="Torrentes poco frecuentes - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶發暴雨-偶爾風暴" />
      <Property name="USEnglish" value="Infrequent Torrents - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP6" />
      <Property name="BrazilianPortuguese" value="Opressivo - Tempestades ocasionais" />
      <Property name="Dutch" value="Drukkend - Incidentele stormen" />
      <Property name="English" value="Oppressive - Occasional Storms" />
      <Property name="French" value="Oppressant - Tempêtes occasionnelles" />
      <Property name="German" value="Drückend schwül - Gelegentliche Stürme" />
      <Property name="Italian" value="Opprimente - Tempeste occasionali" />
      <Property name="Japanese" value="過酷 - 時折のストーム" />
      <Property name="Korean" value="후텁지근함 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Opresivo - Tormentas ocasionales" />
      <Property name="Polish" value="Przytłaczająca - Sporadyczne burze" />
      <Property name="Portuguese" value="Opressivo - Tempestades ocasionais" />
      <Property name="Russian" value="Давящая - Редкие штормы" />
      <Property name="SimplifiedChinese" value="高压闷热-偶尔风暴" />
      <Property name="Spanish" value="Opresivo - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="煩悶-偶爾風暴" />
      <Property name="USEnglish" value="Oppressive - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP7" />
      <Property name="BrazilianPortuguese" value="Perigo encharcado - Tempestades ocasionais" />
      <Property name="Dutch" value="Doorweekt gevaar - Incidentele stormen" />
      <Property name="English" value="Soggy Danger - Occasional Storms" />
      <Property name="French" value="Danger trempé - Tempêtes occasionnelles" />
      <Property name="German" value="Durchnässende Gefahr - Gelegentliche Stürme" />
      <Property name="Italian" value="Pericolo fradicio - Tempeste occasionali" />
      <Property name="Japanese" value="危険な蒸し暑さ - 時折のストーム" />
      <Property name="Korean" value="질척이는 위험 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Peligro empapado - Tormentas ocasionales" />
      <Property name="Polish" value="Mokre zagrożenie - Sporadyczne burze" />
      <Property name="Portuguese" value="Perigo empapado - Tempestades ocasionais" />
      <Property name="Russian" value="Опасные хляби - Редкие штормы" />
      <Property name="SimplifiedChinese" value="湿软的危险-偶尔风暴" />
      <Property name="Spanish" value="Peligro empapado - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="危險濕氣-偶爾風暴" />
      <Property name="USEnglish" value="Soggy Danger - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP8" />
      <Property name="BrazilianPortuguese" value="Calor grudento - Tempestades ocasionais" />
      <Property name="Dutch" value="Plakkerige hitte - Incidentele stormen" />
      <Property name="English" value="Sticky Heat - Occasional Storms" />
      <Property name="French" value="Chaleur collante - Tempêtes occasionnelles" />
      <Property name="German" value="Schwüle Hitze - Gelegentliche Stürme" />
      <Property name="Italian" value="Carne appiccicosa - Tempeste occasionali" />
      <Property name="Japanese" value="べとべとした暑さ - 時折のストーム" />
      <Property name="Korean" value="달라붙는 듯한 열기 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Calor pegajoso - Tormentas ocasionales" />
      <Property name="Polish" value="Lepki żar - Sporadyczne burze" />
      <Property name="Portuguese" value="Calor pegajoso - Tempestades ocasionais" />
      <Property name="Russian" value="Засасывающая жара - Редкие штормы" />
      <Property name="SimplifiedChinese" value="粘性的高温-偶尔风暴" />
      <Property name="Spanish" value="Calor pegajoso - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="濕熱-偶爾風暴" />
      <Property name="USEnglish" value="Sticky Heat - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP9" />
      <Property name="BrazilianPortuguese" value="Ameaça pegajosa - Tempestades ocasionais" />
      <Property name="Dutch" value="Klamme dreiging - Incidentele stormen" />
      <Property name="English" value="Clammy Menace - Occasional Storms" />
      <Property name="French" value="Menace moite - Tempêtes occasionnelles" />
      <Property name="German" value="Feuchtkalt und bedrohlich - Gelegentliche Stürme" />
      <Property name="Italian" value="Minaccia umida - Tempeste occasionali" />
      <Property name="Japanese" value="じとじとした脅威 - 時折のストーム" />
      <Property name="Korean" value="축축한 위협 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Amenaza sudada - Tormentas ocasionales" />
      <Property name="Polish" value="Parne zagrożenie - Sporadyczne burze" />
      <Property name="Portuguese" value="Ameaça húmida - Tempestades ocasionais" />
      <Property name="Russian" value="Тягучая угроза - Редкие штормы" />
      <Property name="SimplifiedChinese" value="湿粘的威胁-偶尔风暴" />
      <Property name="Spanish" value="Amenaza sudada - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="濕冷威脅-偶爾風暴" />
      <Property name="USEnglish" value="Clammy Menace - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP10" />
      <Property name="BrazilianPortuguese" value="Umidade perigosa - Tempestades ocasionais" />
      <Property name="Dutch" value="Gevaarlijke vochtigheid - Incidentele stormen" />
      <Property name="English" value="Hazardous Moisture - Occasional Storms" />
      <Property name="French" value="Humidité dangereuse - Tempêtes occasionnelles" />
      <Property name="German" value="Gefährliche Feuchtigkeit - Gelegentliche Stürme" />
      <Property name="Italian" value="Condensa nociva - Tempeste occasionali" />
      <Property name="Japanese" value="危険な水蒸気 - 時折のストーム" />
      <Property name="Korean" value="유해한 수분 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Peligro humectado - Tormentas ocasionales" />
      <Property name="Polish" value="Niebezpieczna wilgotność - Sporadyczne burze" />
      <Property name="Portuguese" value="Humidade perigosa - Tempestades ocasionais" />
      <Property name="Russian" value="Опасная влага - Редкие штормы" />
      <Property name="SimplifiedChinese" value="危险的湿气-偶尔风暴" />
      <Property name="Spanish" value="Peligro humectado - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="危險潮氣-偶爾風暴" />
      <Property name="USEnglish" value="Hazardous Moisture - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR1" />
      <Property name="BrazilianPortuguese" value="Névoa suave - Sem tempestade" />
      <Property name="Dutch" value="Subtiele mist - Geen storm" />
      <Property name="English" value="Gentle Mist - No Storms" />
      <Property name="French" value="Douce brume - Pas de tempête" />
      <Property name="German" value="Sanfter Dunst - Kein Sturm" />
      <Property name="Italian" value="Foschia gentile - Nessuna tempesta" />
      <Property name="Japanese" value="穏やかな霧 - ストームなし" />
      <Property name="Korean" value="심하지 않은 박무 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Bruma suave - Sin tormentas" />
      <Property name="Polish" value="Delikatna mgiełka - Brak burzy" />
      <Property name="Portuguese" value="Bruma gentil - Sem tempestade" />
      <Property name="Russian" value="Мягкая дымка - Без шторма" />
      <Property name="SimplifiedChinese" value="温和的薄雾-无风暴" />
      <Property name="Spanish" value="Bruma suave - Sin tormentas" />
      <Property name="TraditionalChinese" value="薄霧-無風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR2" />
      <Property name="BrazilianPortuguese" value="Úmido - Sem tempestade" />
      <Property name="Dutch" value="Vochtig - Geen storm" />
      <Property name="English" value="Humid - No Storms" />
      <Property name="French" value="Humide - Pas de tempête" />
      <Property name="German" value="Feucht - Kein Sturm" />
      <Property name="Italian" value="Umido - Nessuna tempesta" />
      <Property name="Japanese" value="湿度が高い - ストームなし" />
      <Property name="Korean" value="습함 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Húmedo - Sin tormentas" />
      <Property name="Polish" value="Wilgotna - Brak burzy" />
      <Property name="Portuguese" value="Húmido - Sem tempestade" />
      <Property name="Russian" value="Влажная - Без шторма" />
      <Property name="SimplifiedChinese" value="湿热-无风暴" />
      <Property name="Spanish" value="Húmedo - Sin tormentas" />
      <Property name="TraditionalChinese" value="潮濕-無風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR3" />
      <Property name="BrazilianPortuguese" value="Ventos tropicais - Sem tempestade" />
      <Property name="Dutch" value="Tropische wind - Geen storm" />
      <Property name="English" value="Tropical Winds - No Storms" />
      <Property name="French" value="Vents tropicaux - Pas de tempête" />
      <Property name="German" value="Tropische Winde - Kein Sturm" />
      <Property name="Italian" value="Venti tropicali - Nessuna tempesta" />
      <Property name="Japanese" value="熱帯性の風 - ストームなし" />
      <Property name="Korean" value="열대 바람 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Vientos tropicales - Sin tormentas" />
      <Property name="Polish" value="Wiatry tropikalne - Brak burzy" />
      <Property name="Portuguese" value="Ventos tropicais - Sem tempestade" />
      <Property name="Russian" value="Тропические ветра - Без шторма" />
      <Property name="SimplifiedChinese" value="热带大风-无风暴" />
      <Property name="Spanish" value="Vientos tropicales - Sin tormentas" />
      <Property name="TraditionalChinese" value="熱帶風-無風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR4" />
      <Property name="BrazilianPortuguese" value="Névoa quente - Sem tempestade" />
      <Property name="Dutch" value="Warme mist - Geen storm" />
      <Property name="English" value="Warm Fog - No Storms" />
      <Property name="French" value="Brouillard chaud - Pas de tempête" />
      <Property name="German" value="Warmer Nebel - Kein Sturm" />
      <Property name="Italian" value="Nebbia calda - Nessuna tempesta" />
      <Property name="Japanese" value="温かな霧 - ストームなし" />
      <Property name="Korean" value="따뜻한 안개 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Niebla cálida - Sin tormentas" />
      <Property name="Polish" value="Ciepła mgła - Brak burzy" />
      <Property name="Portuguese" value="Nevoeiro quente - Sem tempestade" />
      <Property name="Russian" value="Теплый туман - Без шторма" />
      <Property name="SimplifiedChinese" value="温暖的雾-无风暴" />
      <Property name="Spanish" value="Niebla cálida - Sin tormentas" />
      <Property name="TraditionalChinese" value="暖霧-無風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR5" />
      <Property name="BrazilianPortuguese" value="Escuridão temperada - Sem tempestade" />
      <Property name="Dutch" value="Gematigde duisternis - Geen storm" />
      <Property name="English" value="Temperate Murk - No Storms" />
      <Property name="French" value="Obscurité tempérée - Pas de tempête" />
      <Property name="German" value="Gemäßigt und trüb - Kein Sturm" />
      <Property name="Italian" value="Buio temperato - Nessuna tempesta" />
      <Property name="Japanese" value="温帯性濃霧 - ストームなし" />
      <Property name="Korean" value="온화하고 흐림 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Neblina moderada - Sin tormentas" />
      <Property name="Polish" value="Umiarkowany mrok - Brak burzy" />
      <Property name="Portuguese" value="Nebulosa temperada - Sem tempestade" />
      <Property name="Russian" value="Умеренность и сумрак - Без шторма" />
      <Property name="SimplifiedChinese" value="温和的昏暗-无风暴" />
      <Property name="Spanish" value="Neblina moderada - Sin tormentas" />
      <Property name="TraditionalChinese" value="溫帶濃雲-無風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR6" />
      <Property name="BrazilianPortuguese" value="Umidade leve - Sem tempestade" />
      <Property name="Dutch" value="Milde vochtigheid - Geen storm" />
      <Property name="English" value="Mild Damp - No Storms" />
      <Property name="French" value="Vague puanteur - Pas de tempête" />
      <Property name="German" value="Milde Feuchtigkeit - Kein Sturm" />
      <Property name="Italian" value="Lieve umidità - Nessuna tempesta" />
      <Property name="Japanese" value="穏やかな湿気 - ストームなし" />
      <Property name="Korean" value="약간의 물기 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Llovizna suave - Sin tormentas" />
      <Property name="Polish" value="Delikatna wilgotność - Brak burzy" />
      <Property name="Portuguese" value="Humidade amena - Sem tempestade" />
      <Property name="Russian" value="Легкая сырость - Без шторма" />
      <Property name="SimplifiedChinese" value="温和的温湿-无风暴" />
      <Property name="Spanish" value="Llovizna suave - Sin tormentas" />
      <Property name="TraditionalChinese" value="溫和濕氣-無風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR7" />
      <Property name="BrazilianPortuguese" value="Gotas de orvalho quentes - Sem tempestade" />
      <Property name="Dutch" value="Warme dauwdruppels - Geen storm" />
      <Property name="English" value="Warm Dewdrops - No Storms" />
      <Property name="French" value="Gouttes de rosée chaudes - Pas de tempête" />
      <Property name="German" value="Warme Tautropfen - Kein Sturm" />
      <Property name="Italian" value="Rugiada calda - Nessuna tempesta" />
      <Property name="Japanese" value="温かな露 - ストームなし" />
      <Property name="Korean" value="따뜻한 이슬방울 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Gotas de rocío calientes - Sin tormentas" />
      <Property name="Polish" value="Ciepła rosa - Brak burzy" />
      <Property name="Portuguese" value="Gotas de orvalho mornas - Sem tempestade" />
      <Property name="Russian" value="Теплая роса - Без шторма" />
      <Property name="SimplifiedChinese" value="温暖的露珠-无风暴" />
      <Property name="Spanish" value="Gotas de rocío calientes - Sin tormentas" />
      <Property name="TraditionalChinese" value="溫暖露珠-無風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR8" />
      <Property name="BrazilianPortuguese" value="Umidade tépida - Sem tempestade" />
      <Property name="Dutch" value="Lauwe vochtigheid - Geen storm" />
      <Property name="English" value="Tepid Damp - No Storms" />
      <Property name="French" value="Puanteur tiède - Pas de tempête" />
      <Property name="German" value="Lauwarm-feucht - Kein Sturm" />
      <Property name="Italian" value="Umidità tiepida - Nessuna tempesta" />
      <Property name="Japanese" value="生ぬるい湿気 - ストームなし" />
      <Property name="Korean" value="미지근한 물기 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Vaho tibio - Sin tormentas" />
      <Property name="Polish" value="Ciepława wilgotność - Brak burzy" />
      <Property name="Portuguese" value="Humidade tépida - Sem tempestade" />
      <Property name="Russian" value="Тепловатая сырость - Без шторма" />
      <Property name="SimplifiedChinese" value="微热的温湿-无风暴" />
      <Property name="Spanish" value="Vaho tibio - Sin tormentas" />
      <Property name="TraditionalChinese" value="微溫濕氣-無風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR9" />
      <Property name="BrazilianPortuguese" value="Chuvisco lento - Sem tempestade" />
      <Property name="Dutch" value="Zweterige motregen - Geen storm" />
      <Property name="English" value="Sweaty Drizzle - No Storms" />
      <Property name="French" value="Bruine moite - Pas de tempête" />
      <Property name="German" value="Stickiger Sprühregen - Kein Sturm" />
      <Property name="Italian" value="Pioggerella umida - Nessuna tempesta" />
      <Property name="Japanese" value="汗臭い霧雨 - ストームなし" />
      <Property name="Korean" value="땀나게 만드는 보슬비 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Llovizna sudorosa - Sin tormentas" />
      <Property name="Polish" value="Parna mżawka - Brak burzy" />
      <Property name="Portuguese" value="Chuviscos suados - Sem tempestade" />
      <Property name="Russian" value="Мелкий парящий дождь - Без шторма" />
      <Property name="SimplifiedChinese" value="湿透的蒙蒙细雨-无风暴" />
      <Property name="Spanish" value="Llovizna sudorosa - Sin tormentas" />
      <Property name="TraditionalChinese" value="悶熱細雨-無風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_CLEAR10" />
      <Property name="BrazilianPortuguese" value="Neblina incômoda - Sem tempestade" />
      <Property name="Dutch" value="Benauwde nevel - Geen storm" />
      <Property name="English" value="Muggy Haze - No Storms" />
      <Property name="French" value="Brume humide - Pas de tempête" />
      <Property name="German" value="Feuchtheißer Schleier - Kein Sturm" />
      <Property name="Italian" value="Foschia afosa - Nessuna tempesta" />
      <Property name="Japanese" value="蒸し暑いもや - ストームなし" />
      <Property name="Korean" value="후텁지근한 연무 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Neblina húmeda - Sin tormentas" />
      <Property name="Polish" value="Duszna mgiełka - Brak burzy" />
      <Property name="Portuguese" value="Frenesim abafado - Sem tempestade" />
      <Property name="Russian" value="Душная дымка - Без шторма" />
      <Property name="SimplifiedChinese" value="闷热的霭-无风暴" />
      <Property name="Spanish" value="Neblina húmeda - Sin tormentas" />
      <Property name="TraditionalChinese" value="悶熱霧霾-無風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME1" />
      <Property name="BrazilianPortuguese" value="Névoa da morte - Tempestades frequentes" />
      <Property name="Dutch" value="Dodelijke mist - Regelmatige stormen" />
      <Property name="English" value="Death Fog - Frequent Storms" />
      <Property name="French" value="Brouillard de la mort - Tempêtes fréquentes" />
      <Property name="German" value="Todesnebel - Häufige Stürme" />
      <Property name="Italian" value="Nebbia letale - Tempeste frequenti" />
      <Property name="Japanese" value="死の霧 - 頻繁なストーム" />
      <Property name="Korean" value="죽음의 안개 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Niebla mortal - Tormentas frecuentes" />
      <Property name="Polish" value="Mgła śmierci - Częste burze" />
      <Property name="Portuguese" value="Nevoeiro mortal - Tempestades frequentes" />
      <Property name="Russian" value="Смертоносный туман - Частые штормы" />
      <Property name="SimplifiedChinese" value="致死的雾-经常风暴" />
      <Property name="Spanish" value="Niebla mortal - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="死霧-經常風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME2" />
      <Property name="BrazilianPortuguese" value="Desastre sufocante - Tempestades frequentes" />
      <Property name="Dutch" value="Zwoele ramp - Regelmatige stormen" />
      <Property name="English" value="Sultry Disaster - Frequent Storms" />
      <Property name="French" value="Désastre étouffant - Tempêtes fréquentes" />
      <Property name="German" value="Schwüle Katastrophe - Häufige Stürme" />
      <Property name="Italian" value="Disastro ardente - Tempeste frequenti" />
      <Property name="Japanese" value="災害級の灼熱 - 頻繁なストーム" />
      <Property name="Korean" value="타는 듯한 재앙 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Desastre sofocante - Tormentas frecuentes" />
      <Property name="Polish" value="Duszna katastrofa - Częste burze" />
      <Property name="Portuguese" value="Desastre sedutor - Tempestades frequentes" />
      <Property name="Russian" value="Душная катастрофа - Частые штормы" />
      <Property name="SimplifiedChinese" value="酷热的灾难-经常风暴" />
      <Property name="Spanish" value="Desastre sofocante - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="酷熱災害-經常風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME3" />
      <Property name="BrazilianPortuguese" value="Monções cataclísmicas - Tempestades frequentes" />
      <Property name="Dutch" value="Cataclysmische moesson - Regelmatige stormen" />
      <Property name="English" value="Cataclysmic Monsoons - Frequent Storms" />
      <Property name="French" value="Moussons cataclysmiques - Tempêtes fréquentes" />
      <Property name="German" value="Kataklysmische Monsune - Häufige Stürme" />
      <Property name="Italian" value="Monsoni cataclismici - Tempeste frequenti" />
      <Property name="Japanese" value="破壊的モンスーン - 頻繁なストーム" />
      <Property name="Korean" value="천지가 개벽하는 몬순 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Monzones catastróficos - Tormentas frecuentes" />
      <Property name="Polish" value="Katastrofalne monsuny - Częste burze" />
      <Property name="Portuguese" value="Monções cataclísmicas - Tempestades frequentes" />
      <Property name="Russian" value="Катастрофические муссоны - Частые штормы" />
      <Property name="SimplifiedChinese" value="灾难的季风-经常风暴" />
      <Property name="Spanish" value="Monzones catastróficos - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="洪害季風-經常風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME4" />
      <Property name="BrazilianPortuguese" value="Névoas da aniquilação - Tempestades frequentes" />
      <Property name="Dutch" value="Mist der verwoesting - Regelmatige stormen" />
      <Property name="English" value="Mists of Annihilation - Frequent Storms" />
      <Property name="French" value="Brumes d'annihilation - Tempêtes fréquentes" />
      <Property name="German" value="Nebel der Vernichtung - Häufige Stürme" />
      <Property name="Italian" value="Nebbie dell'annientamento - Tempeste frequenti" />
      <Property name="Japanese" value="絶滅の霧 - 頻繁なストーム" />
      <Property name="Korean" value="멸각의 박무 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Neblina de aniquilación - Tormentas frecuentes" />
      <Property name="Polish" value="Mgły zagłady - Częste burze" />
      <Property name="Portuguese" value="Brumas de aniquilação - Tempestades frequentes" />
      <Property name="Russian" value="Дымка уничтожения - Частые штормы" />
      <Property name="SimplifiedChinese" value="湮灭的薄雾-经常风暴" />
      <Property name="Spanish" value="Neblina de aniquilación - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="毀滅霧氣-經常風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME5" />
      <Property name="BrazilianPortuguese" value="Névoa generalizada - Tempestades frequentes" />
      <Property name="Dutch" value="Allesvernietigende mist - Regelmatige stormen" />
      <Property name="English" value="All-Consuming Fog - Frequent Storms" />
      <Property name="French" value="Brouillard vorace - Tempêtes fréquentes" />
      <Property name="German" value="Verschlingender Nebel - Häufige Stürme" />
      <Property name="Italian" value="Nebbia divorante - Tempeste frequenti" />
      <Property name="Japanese" value="すべてを飲み込む霧 - 頻繁なストーム" />
      <Property name="Korean" value="모든 것을 집어삼키는 안개 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Niebla absorbente - Tormentas frecuentes" />
      <Property name="Polish" value="Pochłaniająca mgła - Częste burze" />
      <Property name="Portuguese" value="Nevoeiro que tudo consome - Tempestades frequentes" />
      <Property name="Russian" value="Всепоглощающий туман - Частые штормы" />
      <Property name="SimplifiedChinese" value="吞噬万物的雾-经常风暴" />
      <Property name="Spanish" value="Niebla absorbente - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="全滅霧氣-經常風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME6" />
      <Property name="BrazilianPortuguese" value="Inferno líquido - Tempestades frequentes" />
      <Property name="Dutch" value="Vloeibare hel - Regelmatige stormen" />
      <Property name="English" value="Liquid Hell - Frequent Storms" />
      <Property name="French" value="Enfer liquide - Tempêtes fréquentes" />
      <Property name="German" value="Flüssige Hölle - Häufige Stürme" />
      <Property name="Italian" value="Inferno liquido - Tempeste frequenti" />
      <Property name="Japanese" value="液体の地獄 - 頻繁なストーム" />
      <Property name="Korean" value="액체 형태의 지옥 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Infierno líquido - Tormentas frecuentes" />
      <Property name="Polish" value="Płynne piekło - Częste burze" />
      <Property name="Portuguese" value="Inferno líquido - Tempestades frequentes" />
      <Property name="Russian" value="Жидкий ад - Частые штормы" />
      <Property name="SimplifiedChinese" value="液体地狱-经常风暴" />
      <Property name="Spanish" value="Infierno líquido - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="液態地獄-經常風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME7" />
      <Property name="BrazilianPortuguese" value="Tempestades da desolação - Tempestades frequentes" />
      <Property name="Dutch" value="Stormen van verwoesting - Regelmatige stormen" />
      <Property name="English" value="Storms of Desolation - Frequent Storms" />
      <Property name="French" value="Tempêtes de désolation - Tempêtes fréquentes" />
      <Property name="German" value="Verwüstende Stürme - Häufige Stürme" />
      <Property name="Italian" value="Tempeste desolanti - Tempeste frequenti" />
      <Property name="Japanese" value="荒廃の嵐 - 頻繁なストーム" />
      <Property name="Korean" value="황량한 폭풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas desoladoras - Tormentas frecuentes" />
      <Property name="Polish" value="Burze spustoszenia - Częste burze" />
      <Property name="Portuguese" value="Tempestades de desolação - Tempestades frequentes" />
      <Property name="Russian" value="Опустошающие бури - Частые штормы" />
      <Property name="SimplifiedChinese" value="荒芜风暴-经常风暴" />
      <Property name="Spanish" value="Tormentas desoladoras - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="荒蕪風暴-經常風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME8" />
      <Property name="BrazilianPortuguese" value="Dilúvios ultraquentes - Tempestades frequentes" />
      <Property name="Dutch" value="Smeltende stortvloeden - Regelmatige stormen" />
      <Property name="English" value="Melting Deluges - Frequent Storms" />
      <Property name="French" value="Déluge de fonte - Tempêtes fréquentes" />
      <Property name="German" value="Schmelzende Überschwemmungen - Häufige Stürme" />
      <Property name="Italian" value="Diluvi discioglienti - Tempeste frequenti" />
      <Property name="Japanese" value="融解する大雨 - 頻繁なストーム" />
      <Property name="Korean" value="녹아내리는 폭우 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Diluvios de fundición - Tormentas frecuentes" />
      <Property name="Polish" value="Roztapiające powodzie - Częste burze" />
      <Property name="Portuguese" value="Dilúvios fundentes - Tempestades frequentes" />
      <Property name="Russian" value="Расплавляющие потопы - Частые штормы" />
      <Property name="SimplifiedChinese" value="熔化的洪水-经常风暴" />
      <Property name="Spanish" value="Diluvios de fundición - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="溶蝕洪水-經常風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME9" />
      <Property name="BrazilianPortuguese" value="Catástrofe fervente - Tempestades frequentes" />
      <Property name="Dutch" value="Kokende catastrofe - Regelmatige stormen" />
      <Property name="English" value="Boiling Catastrophe - Frequent Storms" />
      <Property name="French" value="Catastrophe bouillante - Tempêtes fréquentes" />
      <Property name="German" value="Siedende Katastrophe - Häufige Stürme" />
      <Property name="Italian" value="Catastrofe ribollente - Tempeste frequenti" />
      <Property name="Japanese" value="大災害級の熱気 - 頻繁なストーム" />
      <Property name="Korean" value="끓어오르는 참사 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Catástrofe hirviente - Tormentas frecuentes" />
      <Property name="Polish" value="Wrząca katastrofa - Częste burze" />
      <Property name="Portuguese" value="Catástrofe fervilhante - Tempestades frequentes" />
      <Property name="Russian" value="Кипящая катастрофа - Частые штормы" />
      <Property name="SimplifiedChinese" value="沸腾的灾难-经常风暴" />
      <Property name="Spanish" value="Catástrofe hirviente - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="滾燙災難-經常風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_SWAMP_EXTREME10" />
      <Property name="BrazilianPortuguese" value="Infortúnio úmido - Tempestades frequentes" />
      <Property name="Dutch" value="Vochtige ellende - Regelmatige stormen" />
      <Property name="English" value="Damp Misery - Frequent Storms" />
      <Property name="French" value="Misère humide - Tempêtes fréquentes" />
      <Property name="German" value="Feuchtkaltes Elend - Häufige Stürme" />
      <Property name="Italian" value="Squallore bagnato - Tempeste frequenti" />
      <Property name="Japanese" value="悲惨な湿気 - 頻繁なストーム" />
      <Property name="Korean" value="축축한 비참함 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Miseria pegajosa - Tormentas frecuentes" />
      <Property name="Polish" value="Wilgotna udręka - Częste burze" />
      <Property name="Portuguese" value="Miséria humedecida - Tempestades frequentes" />
      <Property name="Russian" value="Сырое отчаяние - Частые штормы" />
      <Property name="SimplifiedChinese" value="温湿的痛楚-经常风暴" />
      <Property name="Spanish" value="Miseria pegajosa - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="悲慘濕氣-經常風暴" />
      <Property name="USEnglish" value="" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA1" />
      <Property name="BrazilianPortuguese" value="Bolsões de gás aquecido - Tempestades ocasionais" />
      <Property name="Dutch" value="Hete gasbellen - Incidentele stormen" />
      <Property name="English" value="Heated Gas Pockets - Occasional Storms" />
      <Property name="French" value="Poches de gaz chauffé - Tempêtes occasionnelles" />
      <Property name="German" value="Erhitzte Gaseinschlüsse - Gelegentliche Stürme" />
      <Property name="Italian" value="Sacche di gas riscaldato - Tempeste occasionali" />
      <Property name="Japanese" value="熱くなったガス嚢 - 時折のストーム" />
      <Property name="Korean" value="가열된 기공 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Bolsas de gas calientes - Tormentas ocasionales" />
      <Property name="Polish" value="Skupiska podgrzanego gazu - Sporadyczne burze" />
      <Property name="Portuguese" value="Nuvens de gás aquecido - Tempestades ocasionais" />
      <Property name="Russian" value="Зоны нагретого газа - Редкие штормы" />
      <Property name="SimplifiedChinese" value="高热气窝-偶尔风暴" />
      <Property name="Spanish" value="Bolsas de gas calientes - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="炎熱氣袋-偶爾風暴" />
      <Property name="USEnglish" value="Heated Gas Pockets - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA2" />
      <Property name="BrazilianPortuguese" value="Tempestades de fogo ocasionais - Tempestades ocasionais" />
      <Property name="Dutch" value="Incidentele vuurstormen - Incidentele stormen" />
      <Property name="English" value="Occasional Firestorms - Occasional Storms" />
      <Property name="French" value="Incendies occasionnels - Tempêtes occasionnelles" />
      <Property name="German" value="Gelegentliche Feuerstürme - Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste di fuoco occasionali - Tempeste occasionali" />
      <Property name="Japanese" value="時折の嵐 - 時折のストーム" />
      <Property name="Korean" value="가끔씩 화선풍 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de fuego ocasionales - Tormentas ocasionales" />
      <Property name="Polish" value="Okazjonalne burze ogniowe - Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades de fogo ocasionais - Tempestades ocasionais" />
      <Property name="Russian" value="Нерегулярные огненные бури - Редкие штормы" />
      <Property name="SimplifiedChinese" value="偶见火焰风暴-偶尔风暴" />
      <Property name="Spanish" value="Tormentas de fuego ocasionales - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="偶發火焰風暴-偶爾風暴" />
      <Property name="USEnglish" value="Occasional Firestorms - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA3" />
      <Property name="BrazilianPortuguese" value="Ventos incendiários - Tempestades ocasionais" />
      <Property name="Dutch" value="Brandgevaarlijke winden - Incidentele stormen" />
      <Property name="English" value="Incendiary Winds - Occasional Storms" />
      <Property name="French" value="Vents incendiaires - Tempêtes occasionnelles" />
      <Property name="German" value="Entzündliche Winde - Gelegentliche Stürme" />
      <Property name="Italian" value="Venti incendiari - Tempeste occasionali" />
      <Property name="Japanese" value="発火性の風 - 時折のストーム" />
      <Property name="Korean" value="불 붙기 쉬운 바람 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Vientos incendiarios - Tormentas ocasionales" />
      <Property name="Polish" value="Zapalające wiatry - Sporadyczne burze" />
      <Property name="Portuguese" value="Ventos incendiários - Tempestades ocasionais" />
      <Property name="Russian" value="Горючие ветра - Редкие штормы" />
      <Property name="SimplifiedChinese" value="焚风-偶尔风暴" />
      <Property name="Spanish" value="Vientos incendiarios - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="火燒風-偶爾風暴" />
      <Property name="USEnglish" value="Incendiary Winds - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA4" />
      <Property name="BrazilianPortuguese" value="Incêndios imprevisíveis - Tempestades ocasionais" />
      <Property name="Dutch" value="Onvoorspelbare branden - Incidentele stormen" />
      <Property name="English" value="Unpredictable Conflagrations - Occasional Storms" />
      <Property name="French" value="Incendies imprévisibles - Tempêtes occasionnelles" />
      <Property name="German" value="Unberechenbare Flächenbrände - Gelegentliche Stürme" />
      <Property name="Italian" value="Conflagrazioni imprevedibili - Tempeste occasionali" />
      <Property name="Japanese" value="予測できない大火 - 時折のストーム" />
      <Property name="Korean" value="예측 불가능한 대화재 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Conflagraciones impredecibles - Tormentas ocasionales" />
      <Property name="Polish" value="Nieprzewidywalne pożary - Sporadyczne burze" />
      <Property name="Portuguese" value="Conflagrações imprevisíveis - Tempestades ocasionais" />
      <Property name="Russian" value="Непредсказуемые воспламенения - Редкие штормы" />
      <Property name="SimplifiedChinese" value="难以预料的火灾-偶尔风暴" />
      <Property name="Spanish" value="Conflagraciones impredecibles - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="不測火災-偶爾風暴" />
      <Property name="USEnglish" value="Unpredictable Conflagrations - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA5" />
      <Property name="BrazilianPortuguese" value="Tempestades de fogo móveis - Tempestades ocasionais" />
      <Property name="Dutch" value="Zwevende vuurstormen - Incidentele stormen" />
      <Property name="English" value="Drifting Firestorms - Occasional Storms" />
      <Property name="French" value="Incendies à la dérive - Tempêtes occasionnelles" />
      <Property name="German" value="Treibende Feuerstürme - Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste di neve erranti - Tempeste occasionali" />
      <Property name="Japanese" value="さまよう火災旋風 - 時折のストーム" />
      <Property name="Korean" value="표류하는 화선풍 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de fuego a la deriva - Tormentas ocasionales" />
      <Property name="Polish" value="Dryfujące burze ogniowe - Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades de fogo à deriva - Tempestades ocasionais" />
      <Property name="Russian" value="Смещающиеся огненные бури - Редкие штормы" />
      <Property name="SimplifiedChinese" value="游荡的火焰风暴-偶尔风暴" />
      <Property name="Spanish" value="Tormentas de fuego a la deriva - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="飄移火風暴-偶爾風暴" />
      <Property name="USEnglish" value="Drifting Firestorms - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA6" />
      <Property name="BrazilianPortuguese" value="Pilares de chamas - Tempestades ocasionais" />
      <Property name="Dutch" value="Zuilen van vuur - Incidentele stormen" />
      <Property name="English" value="Pillars of Flame - Occasional Storms" />
      <Property name="French" value="Colonnes de flammes - Tempêtes occasionnelles" />
      <Property name="German" value="Flammensäulen - Gelegentliche Stürme" />
      <Property name="Italian" value="Colonne di fiamme - Tempeste occasionali" />
      <Property name="Japanese" value="炎の柱 - 時折のストーム" />
      <Property name="Korean" value="불꽃 기둥 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Pilares de llamas - Tormentas ocasionales" />
      <Property name="Polish" value="Słupy ognia - Sporadyczne burze" />
      <Property name="Portuguese" value="Pilares de chamas - Tempestades ocasionais" />
      <Property name="Russian" value="Столпы пламени - Редкие штормы" />
      <Property name="SimplifiedChinese" value="火柱-偶尔风暴" />
      <Property name="Spanish" value="Pilares de llamas - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="火焰之柱-偶爾風暴" />
      <Property name="USEnglish" value="Pillars of Flame - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA7" />
      <Property name="BrazilianPortuguese" value="Gêiseres de magma - Tempestades ocasionais" />
      <Property name="Dutch" value="Magmageisers - Incidentele stormen" />
      <Property name="English" value="Magma Geysers - Occasional Storms" />
      <Property name="French" value="Geysers de magma - Tempêtes occasionnelles" />
      <Property name="German" value="Magma-Geysire - Gelegentliche Stürme" />
      <Property name="Italian" value="Geyser di magma - Tempeste occasionali" />
      <Property name="Japanese" value="マグマの間欠泉 - 時折のストーム" />
      <Property name="Korean" value="마그마 간헐천 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Géiseres de magma - Tormentas ocasionales" />
      <Property name="Polish" value="Gejzery magmy - Sporadyczne burze" />
      <Property name="Portuguese" value="Gêiseres de magma - Tempestades ocasionais" />
      <Property name="Russian" value="Гейзеры магмы - Редкие штормы" />
      <Property name="SimplifiedChinese" value="岩浆喷泉-偶尔风暴" />
      <Property name="Spanish" value="Géiseres de magma - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="岩漿噴泉-偶爾風暴" />
      <Property name="USEnglish" value="Magma Geysers - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA8" />
      <Property name="BrazilianPortuguese" value="Colunas de fogo - Tempestades ocasionais" />
      <Property name="Dutch" value="Pluimen van vuur - Incidentele stormen" />
      <Property name="English" value="Plumes of Fire - Occasional Storms" />
      <Property name="French" value="Panaches de feu - Tempêtes occasionnelles" />
      <Property name="German" value="Feuerschwaden - Gelegentliche Stürme" />
      <Property name="Italian" value="Pennacchi di fuoco - Tempeste occasionali" />
      <Property name="Japanese" value="炎の煙 - 時折のストーム" />
      <Property name="Korean" value="화염 기둥 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Columnas de fuego - Tormentas ocasionales" />
      <Property name="Polish" value="Pióropusze płomieni - Sporadyczne burze" />
      <Property name="Portuguese" value="Penachos de fogo - Tempestades ocasionais" />
      <Property name="Russian" value="Клубы огня - Редкие штормы" />
      <Property name="SimplifiedChinese" value="火羽流-偶尔风暴" />
      <Property name="Spanish" value="Columnas de fuego - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="火煙-偶爾風暴" />
      <Property name="USEnglish" value="Plumes of Fire - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA9" />
      <Property name="BrazilianPortuguese" value="Chuva de lava - Tempestades ocasionais" />
      <Property name="Dutch" value="Gesmolten regen - Incidentele stormen" />
      <Property name="English" value="Molten Rain - Occasional Storms" />
      <Property name="French" value="Pluie en fusion - Tempêtes occasionnelles" />
      <Property name="German" value="Geschmolzener Regen - Gelegentliche Stürme" />
      <Property name="Italian" value="Pioggia lavica - Tempeste occasionali" />
      <Property name="Japanese" value="溶けた雨 - 時折のストーム" />
      <Property name="Korean" value="용융 호우 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Lluvia de lava - Tormentas ocasionales" />
      <Property name="Polish" value="Roztopiony deszcz - Sporadyczne burze" />
      <Property name="Portuguese" value="Chuva fundida - Tempestades ocasionais" />
      <Property name="Russian" value="Расплавленный дождь - Редкие штормы" />
      <Property name="SimplifiedChinese" value="炽热的雨-偶尔风暴" />
      <Property name="Spanish" value="Lluvia de lava - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="火熔雨-偶爾風暴" />
      <Property name="USEnglish" value="Molten Rain - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA10" />
      <Property name="BrazilianPortuguese" value="Tempestades tectônicas - Tempestades ocasionais" />
      <Property name="Dutch" value="Tektonische stormen - Incidentele stormen" />
      <Property name="English" value="Tectonic Storms - Occasional Storms" />
      <Property name="French" value="Tempêtes tectoniques - Tempêtes occasionnelles" />
      <Property name="German" value="Tektonische Stürme - Gelegentliche Stürme" />
      <Property name="Italian" value="Tempeste tettoniche - Tempeste occasionali" />
      <Property name="Japanese" value="地殻変動の嵐 - 時折のストーム" />
      <Property name="Korean" value="지질 구조 폭풍 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas tectónicas - Tormentas ocasionales" />
      <Property name="Polish" value="Burze tektoniczne - Sporadyczne burze" />
      <Property name="Portuguese" value="Tempestades tectónicas - Tempestades ocasionais" />
      <Property name="Russian" value="Тектонические бури - Редкие штормы" />
      <Property name="SimplifiedChinese" value="地壳构造风暴-偶尔风暴" />
      <Property name="Spanish" value="Tormentas tectónicas - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="地殼風暴-偶爾風暴" />
      <Property name="USEnglish" value="Tectonic Storms - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA11" />
      <Property name="BrazilianPortuguese" value="Cinzas asfixiantes - Tempestades ocasionais" />
      <Property name="Dutch" value="Versmorende as - Incidentele stormen" />
      <Property name="English" value="Smothering Ash - Occasional Storms" />
      <Property name="French" value="Cendre étouffante - Tempêtes occasionnelles" />
      <Property name="German" value="Dichte Asche - Gelegentliche Stürme" />
      <Property name="Italian" value="Cenere soffocante - Tempeste occasionali" />
      <Property name="Japanese" value="息の詰まる灰 - 時折のストーム" />
      <Property name="Korean" value="공기산화 재 - 가끔 폭풍" />
      <Property name="LatinAmericanSpanish" value="Ceniza irrespirable - Tormentas ocasionales" />
      <Property name="Polish" value="Duszący popiół - Sporadyczne burze" />
      <Property name="Portuguese" value="Cinza sufocante - Tempestades ocasionais" />
      <Property name="Russian" value="Подавляющий пепел - Редкие штормы" />
      <Property name="SimplifiedChinese" value="压抑灰-偶尔风暴" />
      <Property name="Spanish" value="Ceniza irrespirable - Tormentas ocasionales" />
      <Property name="TraditionalChinese" value="悶燒灰燼-偶爾風暴" />
      <Property name="USEnglish" value="Smothering Ash - Occasional Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_CLEAR1" />
      <Property name="BrazilianPortuguese" value="Neblina sulfúrica - Sem tempestade" />
      <Property name="Dutch" value="Zwavelhoudende nevel - Geen storm" />
      <Property name="English" value="Sulphurous Haze - No Storms" />
      <Property name="French" value="Brume sulfureuse - Pas de tempête" />
      <Property name="German" value="Schwefelhaltiger Schleier - Kein Sturm" />
      <Property name="Italian" value="Foschia sulfurea - Nessuna tempesta" />
      <Property name="Japanese" value="硫黄の煙霧 - ストームなし" />
      <Property name="Korean" value="지옥불 같은 연무 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Neblina sulfurosa - Sin tormentas" />
      <Property name="Polish" value="Siarkawa mgiełka - Brak burzy" />
      <Property name="Portuguese" value="Névoa sulfurosa - Sem tempestade" />
      <Property name="Russian" value="Сернистая дымка - Без шторма" />
      <Property name="SimplifiedChinese" value="硫磺霭-无风暴" />
      <Property name="Spanish" value="Neblina sulfurosa - Sin tormentas" />
      <Property name="TraditionalChinese" value="硫磺霧霾-無風暴" />
      <Property name="USEnglish" value="Sulphurous Haze - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_CLEAR2" />
      <Property name="BrazilianPortuguese" value="Funis de cinzas - Sem tempestade" />
      <Property name="Dutch" value="Asslierten - Geen storm" />
      <Property name="English" value="Ash Wisps - No Storms" />
      <Property name="French" value="Mèches de cendre - Pas de tempête" />
      <Property name="German" value="Aschehauch - Kein Sturm" />
      <Property name="Italian" value="Soffi cinerei - Nessuna tempesta" />
      <Property name="Japanese" value="ひと筋の灰 - ストームなし" />
      <Property name="Korean" value="재 조각 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Volutas de ceniza - Sin tormentas" />
      <Property name="Polish" value="Popielne smugi - Brak burzy" />
      <Property name="Portuguese" value="Mechas de cinzas - Sem tempestade" />
      <Property name="Russian" value="Клочья пепла - Без шторма" />
      <Property name="SimplifiedChinese" value="灰烟-无风暴" />
      <Property name="Spanish" value="Volutas de ceniza - Sin tormentas" />
      <Property name="TraditionalChinese" value="灰燼細霧-無風暴" />
      <Property name="USEnglish" value="Ash Wisps - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_CLEAR3" />
      <Property name="BrazilianPortuguese" value="Fumaça móvel - Sem tempestade" />
      <Property name="Dutch" value="Zwevende smog - Geen storm" />
      <Property name="English" value="Drifting Smog - No Storms" />
      <Property name="French" value="Smog à la dérive - Pas de tempête" />
      <Property name="German" value="Treibender Smog - Kein Sturm" />
      <Property name="Italian" value="Smog vagante - Nessuna tempesta" />
      <Property name="Japanese" value="さまようスモッグ - ストームなし" />
      <Property name="Korean" value="표류하는 스모그 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Niebla tóxica a la deriva - Sin tormentas" />
      <Property name="Polish" value="Snujący się smog - Brak burzy" />
      <Property name="Portuguese" value="Poluição à deriva - Sem tempestade" />
      <Property name="Russian" value="Дрейфующий смог - Без шторма" />
      <Property name="SimplifiedChinese" value="游荡的霾-无风暴" />
      <Property name="Spanish" value="Niebla tóxica a la deriva - Sin tormentas" />
      <Property name="TraditionalChinese" value="飄移煙霧-無風暴" />
      <Property name="USEnglish" value="Drifting Smog - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_CLEAR4" />
      <Property name="BrazilianPortuguese" value="Chuva de brasas - Sem tempestade" />
      <Property name="Dutch" value="Vuurvallen - Geen storm" />
      <Property name="English" value="Cinderfalls - No Storms" />
      <Property name="French" value="Pluies de cendres - Pas de tempête" />
      <Property name="German" value="Schlackefälle - Kein Sturm" />
      <Property name="Italian" value="Cascate di cenere - Nessuna tempesta" />
      <Property name="Japanese" value="灰の滝 - ストームなし" />
      <Property name="Korean" value="잉걸불 낙하 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Carbonilla - Sin tormentas" />
      <Property name="Polish" value="Żarowe deszcze - Brak burzy" />
      <Property name="Portuguese" value="Cinzas quentes - Sem tempestade" />
      <Property name="Russian" value="Углепады - Без шторма" />
      <Property name="SimplifiedChinese" value="烬雨-无风暴" />
      <Property name="Spanish" value="Carbonilla - Sin tormentas" />
      <Property name="TraditionalChinese" value="餘燼塵-無風暴" />
      <Property name="USEnglish" value="Cinderfalls - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_CLEAR5" />
      <Property name="BrazilianPortuguese" value="Colunas de cinzas - Sem tempestade" />
      <Property name="Dutch" value="Aspluimen - Geen storm" />
      <Property name="English" value="Ash Plumes - No Storms" />
      <Property name="French" value="Panaches de cendre - Pas de tempête" />
      <Property name="German" value="Ascheschwaden - Kein Sturm" />
      <Property name="Italian" value="Pennacchi di cenere - Nessuna tempesta" />
      <Property name="Japanese" value="灰の噴煙 - ストームなし" />
      <Property name="Korean" value="재 기둥 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Columnas de ceniza - Sin tormentas" />
      <Property name="Polish" value="Pióropusze popiołów - Brak burzy" />
      <Property name="Portuguese" value="Penachos de cinzas - Sem tempestade" />
      <Property name="Russian" value="Облака пепла - Без шторма" />
      <Property name="SimplifiedChinese" value="灰羽流-无风暴" />
      <Property name="Spanish" value="Columnas de ceniza - Sin tormentas" />
      <Property name="TraditionalChinese" value="灰燼雲-無風暴" />
      <Property name="USEnglish" value="Ash Plumes - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_CLEAR6" />
      <Property name="BrazilianPortuguese" value="Cinzas sufocantes - Sem tempestade" />
      <Property name="Dutch" value="Verstikkende as - Geen storm" />
      <Property name="English" value="Choking Ash - No Storms" />
      <Property name="French" value="Cendre étouffante - Pas de tempête" />
      <Property name="German" value="Erstickende Asche - Kein Sturm" />
      <Property name="Italian" value="Cenere soffocante - Nessuna tempesta" />
      <Property name="Japanese" value="窒息性の灰 - ストームなし" />
      <Property name="Korean" value="호흡 불가능한 재 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Ceniza asfixiante - Sin tormentas" />
      <Property name="Polish" value="Duszący popiół - Brak burzy" />
      <Property name="Portuguese" value="Cinza asfixiante - Sem tempestade" />
      <Property name="Russian" value="Удушающий пепел - Без шторма" />
      <Property name="SimplifiedChinese" value="窒息灰-无风暴" />
      <Property name="Spanish" value="Ceniza asfixiante - Sin tormentas" />
      <Property name="TraditionalChinese" value="嗆人灰燼-無風暴" />
      <Property name="USEnglish" value="Choking Ash - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_CLEAR7" />
      <Property name="BrazilianPortuguese" value="Névoas incandescentes - Sem tempestade" />
      <Property name="Dutch" value="Brandende mist - Geen storm" />
      <Property name="English" value="Burning Mists - No Storms" />
      <Property name="French" value="Brumes brûlantes - Pas de tempête" />
      <Property name="German" value="Brennender Dunst - Kein Sturm" />
      <Property name="Italian" value="Nebbie ardenti - Nessuna tempesta" />
      <Property name="Japanese" value="灼熱の霧 - ストームなし" />
      <Property name="Korean" value="불타는 박무 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Neblinas abrasadoras - Sin tormentas" />
      <Property name="Polish" value="Palące mgiełki - Brak burzy" />
      <Property name="Portuguese" value="Brumas ardentes - Sem tempestade" />
      <Property name="Russian" value="Горящая дымка - Без шторма" />
      <Property name="SimplifiedChinese" value="灼烧的薄雾-无风暴" />
      <Property name="Spanish" value="Neblinas abrasadoras - Sin tormentas" />
      <Property name="TraditionalChinese" value="燃燒薄霧-無風暴" />
      <Property name="USEnglish" value="Burning Mists - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_CLEAR8" />
      <Property name="BrazilianPortuguese" value="Vapores sulfúricos - Sem tempestade" />
      <Property name="Dutch" value="Zwaveldampen - Geen storm" />
      <Property name="English" value="Sulfur Fumes - No Storms" />
      <Property name="French" value="Fumées de souffre - Pas de tempête" />
      <Property name="German" value="Schwefeldämpfe - Kein Sturm" />
      <Property name="Italian" value="Fumi sulfurei - Nessuna tempesta" />
      <Property name="Japanese" value="硫黄の蒸気 - ストームなし" />
      <Property name="Korean" value="유황 연기 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Gases sulfurosos - Sin tormentas" />
      <Property name="Polish" value="Siarkawe wyziewy - Brak burzy" />
      <Property name="Portuguese" value="Penachos de enxofre - Sem tempestade" />
      <Property name="Russian" value="Серные пары - Без шторма" />
      <Property name="SimplifiedChinese" value="硫磺烟-无风暴" />
      <Property name="Spanish" value="Gases sulfurosos - Sin tormentas" />
      <Property name="TraditionalChinese" value="硫汽-無風暴" />
      <Property name="USEnglish" value="Sulfur Fumes - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_CLEAR9" />
      <Property name="BrazilianPortuguese" value="Cinzas opressoras - Sem tempestade" />
      <Property name="Dutch" value="Omhullende as - Geen storm" />
      <Property name="English" value="Enveloping Ash - No Storms" />
      <Property name="French" value="Cendre enveloppante - Pas de tempête" />
      <Property name="German" value="Umhüllende Asche - Kein Sturm" />
      <Property name="Italian" value="Cenere avvolgente - Nessuna tempesta" />
      <Property name="Japanese" value="包み込む灰 - ストームなし" />
      <Property name="Korean" value="표면을 뒤덮은 재 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Ceniza envolvente - Sin tormentas" />
      <Property name="Polish" value="Spowijający popiół - Brak burzy" />
      <Property name="Portuguese" value="Cinza envolvente - Sem tempestade" />
      <Property name="Russian" value="Облепляющий пепел - Без шторма" />
      <Property name="SimplifiedChinese" value="包覆灰烬-无风暴" />
      <Property name="Spanish" value="Ceniza envolvente - Sin tormentas" />
      <Property name="TraditionalChinese" value="襲人灰燼-無風暴" />
      <Property name="USEnglish" value="Enveloping Ash - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_CLEAR10" />
      <Property name="BrazilianPortuguese" value="Ventos com cinzas - Sem tempestade" />
      <Property name="Dutch" value="Aswind - Geen storm" />
      <Property name="English" value="Ashen Winds - No Storms" />
      <Property name="French" value="Vents cendrés - Pas de tempête" />
      <Property name="German" value="Aschewinde - Kein Sturm" />
      <Property name="Italian" value="Venti cinerei - Nessuna tempesta" />
      <Property name="Japanese" value="灰の風 - ストームなし" />
      <Property name="Korean" value="잿빛 바람 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Vientos cenizos - Sin tormentas" />
      <Property name="Polish" value="Popielne wiatry - Brak burzy" />
      <Property name="Portuguese" value="Ventos de cinzas - Sem tempestade" />
      <Property name="Russian" value="Пепельные ветра - Без шторма" />
      <Property name="SimplifiedChinese" value="灰烬大风-无风暴" />
      <Property name="Spanish" value="Vientos cenizos - Sin tormentas" />
      <Property name="TraditionalChinese" value="灰燼風-無風暴" />
      <Property name="USEnglish" value="Ashen Winds - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME1" />
      <Property name="BrazilianPortuguese" value="Tempestades de fogo frequentes - Tempestades frequentes" />
      <Property name="Dutch" value="Regelmatige vuurstormen - Regelmatige stormen" />
      <Property name="English" value="Frequent Firestorms - Frequent Storms" />
      <Property name="French" value="Incendies fréquents - Tempêtes fréquentes" />
      <Property name="German" value="Häufige Feuerstürme - Häufige Stürme" />
      <Property name="Italian" value="Tempeste di fuoco frequenti - Tempeste frequenti" />
      <Property name="Japanese" value="頻繁な嵐 - 頻繁なストーム" />
      <Property name="Korean" value="잦은 화선풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de fuego frecuentes - Tormentas frecuentes" />
      <Property name="Polish" value="Częste burze ogniowe - Częste burze" />
      <Property name="Portuguese" value="Tempestades de fogo frequentes - Tempestades frequentes" />
      <Property name="Russian" value="Частые огненные бури - Частые штормы" />
      <Property name="SimplifiedChinese" value="繁多的火焰风暴-经常风暴" />
      <Property name="Spanish" value="Tormentas de fuego frecuentes - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="頻繁的火焰風暴-經常風暴" />
      <Property name="USEnglish" value="Frequent Firestorms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME2" />
      <Property name="BrazilianPortuguese" value="Paredes de fogo - Tempestades frequentes" />
      <Property name="Dutch" value="Muren van vlammen - Regelmatige stormen" />
      <Property name="English" value="Walls of Flame - Frequent Storms" />
      <Property name="French" value="Murs de flammes - Tempêtes fréquentes" />
      <Property name="German" value="Flammenwände - Häufige Stürme" />
      <Property name="Italian" value="Mura di fiamme - Tempeste frequenti" />
      <Property name="Japanese" value="炎の壁 - 頻繁なストーム" />
      <Property name="Korean" value="화염의 벽 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Paredes de llamas - Tormentas frecuentes" />
      <Property name="Polish" value="Ściany ognia - Częste burze" />
      <Property name="Portuguese" value="Paredes de chamas - Tempestades frequentes" />
      <Property name="Russian" value="Стены пламени - Частые штормы" />
      <Property name="SimplifiedChinese" value="火墙-经常风暴" />
      <Property name="Spanish" value="Paredes de llamas - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="火牆-經常風暴" />
      <Property name="USEnglish" value="Walls of Flame - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME3" />
      <Property name="BrazilianPortuguese" value="Nuvens de fogo - Tempestades frequentes" />
      <Property name="Dutch" value="Wolken van vuur - Regelmatige stormen" />
      <Property name="English" value="Clouds of Fire - Frequent Storms" />
      <Property name="French" value="Nuages de feu - Tempêtes fréquentes" />
      <Property name="German" value="Feuerwolken - Häufige Stürme" />
      <Property name="Italian" value="Nuvole di fuoco - Tempeste frequenti" />
      <Property name="Japanese" value="炎の雲 - 頻繁なストーム" />
      <Property name="Korean" value="화염 구름 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Nubes de fuego - Tormentas frecuentes" />
      <Property name="Polish" value="Chmury ognia - Częste burze" />
      <Property name="Portuguese" value="Nuvens de fogo - Tempestades frequentes" />
      <Property name="Russian" value="Облака огня - Частые штормы" />
      <Property name="SimplifiedChinese" value="火云-经常风暴" />
      <Property name="Spanish" value="Nubes de fuego - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="火雲-經常風暴" />
      <Property name="USEnglish" value="Clouds of Fire - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME4" />
      <Property name="BrazilianPortuguese" value="Destruição por cinzas - Tempestades frequentes" />
      <Property name="Dutch" value="Asgrauwe vernietiging - Regelmatige stormen" />
      <Property name="English" value="Ashen Destruction - Frequent Storms" />
      <Property name="French" value="Destruction cendrée - Tempêtes fréquentes" />
      <Property name="German" value="Aschene Zerstörung - Häufige Stürme" />
      <Property name="Italian" value="Distruzione cinerea - Tempeste frequenti" />
      <Property name="Japanese" value="灰色の破壊 - 頻繁なストーム" />
      <Property name="Korean" value="잿빛 파괴 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Destrucción cenizosa - Tormentas frecuentes" />
      <Property name="Polish" value="Popielna destrukcja - Częste burze" />
      <Property name="Portuguese" value="Destruição de cinzas - Tempestades frequentes" />
      <Property name="Russian" value="Пепельное разрушение - Частые штормы" />
      <Property name="SimplifiedChinese" value="灰烬毁灭-经常风暴" />
      <Property name="Spanish" value="Destrucción cenizosa - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="毀滅灰燼-經常風暴" />
      <Property name="USEnglish" value="Ashen Destruction - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME5" />
      <Property name="BrazilianPortuguese" value="Chuva de magma - Tempestades frequentes" />
      <Property name="Dutch" value="Magmaregen - Regelmatige stormen" />
      <Property name="English" value="Magma Rain - Frequent Storms" />
      <Property name="French" value="Pluie de magma - Tempêtes fréquentes" />
      <Property name="German" value="Magmaregen - Häufige Stürme" />
      <Property name="Italian" value="Pioggia magmatica - Tempeste frequenti" />
      <Property name="Japanese" value="マグマの雨 - 頻繁なストーム" />
      <Property name="Korean" value="마그마 비 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Lluvia de magma - Tormentas frecuentes" />
      <Property name="Polish" value="Deszcz magmy - Częste burze" />
      <Property name="Portuguese" value="Chuva de magma - Tempestades frequentes" />
      <Property name="Russian" value="Дождь из магмы - Частые штормы" />
      <Property name="SimplifiedChinese" value="岩浆雨-经常风暴" />
      <Property name="Spanish" value="Lluvia de magma - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="岩漿雨-經常風暴" />
      <Property name="USEnglish" value="Magma Rain - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME6" />
      <Property name="BrazilianPortuguese" value="Granizo de basalto - Tempestades frequentes" />
      <Property name="Dutch" value="Basalten hagel - Regelmatige stormen" />
      <Property name="English" value="Basalt Hail - Frequent Storms" />
      <Property name="French" value="Grêle basaltique - Tempêtes fréquentes" />
      <Property name="German" value="Basalthagel - Häufige Stürme" />
      <Property name="Italian" value="Grandine basaltica - Tempeste frequenti" />
      <Property name="Japanese" value="玄武岩の雨 - 頻繁なストーム" />
      <Property name="Korean" value="현무암 우박 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Granizo basáltico - Tormentas frecuentes" />
      <Property name="Polish" value="Bazaltowy grad - Częste burze" />
      <Property name="Portuguese" value="Parede de basalto - Tempestades frequentes" />
      <Property name="Russian" value="Базальтовый град - Частые штормы" />
      <Property name="SimplifiedChinese" value="玄武岩雨-经常风暴" />
      <Property name="Spanish" value="Granizo basáltico - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="玄武岩冰雹-經常風暴" />
      <Property name="USEnglish" value="Basalt Hail - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME7" />
      <Property name="BrazilianPortuguese" value="Erupções de gás explosivo - Tempestades frequentes" />
      <Property name="Dutch" value="Explosieve gasuitbarstingen - Regelmatige stormen" />
      <Property name="English" value="Explosive Gas Eruptions - Frequent Storms" />
      <Property name="French" value="Éruptions de gaz explosif - Tempêtes fréquentes" />
      <Property name="German" value="Explosive Gaseruptionen - Häufige Stürme" />
      <Property name="Italian" value="Eruzioni di gas esplosivo - Tempeste frequenti" />
      <Property name="Japanese" value="爆発性ガスの噴出 - 頻繁なストーム" />
      <Property name="Korean" value="폭발적인 가스 폭발 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Erupciones explosivas de gas - Tormentas frecuentes" />
      <Property name="Polish" value="Erupcje wybuchowego gazu - Częste burze" />
      <Property name="Portuguese" value="Erupções de gás explosivas - Tempestades frequentes" />
      <Property name="Russian" value="Выбросы взрывающегося газа - Частые штормы" />
      <Property name="SimplifiedChinese" value="爆炸性气体喷发-经常风暴" />
      <Property name="Spanish" value="Erupciones explosivas de gas - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="爆炸氣體噴發-經常風暴" />
      <Property name="USEnglish" value="Explosive Gas Eruptions - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME8" />
      <Property name="BrazilianPortuguese" value="Tempestades de cinzas letais - Tempestades frequentes" />
      <Property name="Dutch" value="Dodelijke asstormen - Regelmatige stormen" />
      <Property name="English" value="Lethal Ash Storms - Frequent Storms" />
      <Property name="French" value="Tempêtes de cendres létales - Tempêtes fréquentes" />
      <Property name="German" value="Tödliche Aschestürme - Häufige Stürme" />
      <Property name="Italian" value="Tempeste di cenere letali - Tempeste frequenti" />
      <Property name="Japanese" value="致死的な灰の嵐 - 頻繁なストーム" />
      <Property name="Korean" value="치명적인 재 폭풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de ceniza letales - Tormentas frecuentes" />
      <Property name="Polish" value="Zabójcze burze popielne - Częste burze" />
      <Property name="Portuguese" value="Tempestades de cinza letais - Tempestades frequentes" />
      <Property name="Russian" value="Смертоносные пепельные бури - Частые штормы" />
      <Property name="SimplifiedChinese" value="致命灰烬风暴-经常风暴" />
      <Property name="Spanish" value="Tormentas de ceniza letales - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="致命灰塵暴-經常風暴" />
      <Property name="USEnglish" value="Lethal Ash Storms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME9" />
      <Property name="BrazilianPortuguese" value="Inferno sulfúrico - Tempestades frequentes" />
      <Property name="Dutch" value="Zwavelhoudend inferno - Regelmatige stormen" />
      <Property name="English" value="Sulphurous Inferno - Frequent Storms" />
      <Property name="French" value="Enfer sulfureux - Tempêtes fréquentes" />
      <Property name="German" value="Schwefel-Inferno - Häufige Stürme" />
      <Property name="Italian" value="Inferno sulfureo - Tempeste frequenti" />
      <Property name="Japanese" value="硫黄の猛火 - 頻繁なストーム" />
      <Property name="Korean" value="지옥불 같은 화재 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Infierno sulfuroso - Tormentas frecuentes" />
      <Property name="Polish" value="Siarkawe piekło - Częste burze" />
      <Property name="Portuguese" value="Inferno sulfuroso - Tempestades frequentes" />
      <Property name="Russian" value="Серный ад - Частые штормы" />
      <Property name="SimplifiedChinese" value="硫磺地狱-经常风暴" />
      <Property name="Spanish" value="Infierno sulfuroso - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="硫磺煉獄-經常風暴" />
      <Property name="USEnglish" value="Sulphurous Inferno - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME10" />
      <Property name="BrazilianPortuguese" value="Tempestades de fogo colossais - Tempestades frequentes" />
      <Property name="Dutch" value="Kolossale vuurstormen - Regelmatige stormen" />
      <Property name="English" value="Colossal Firestorms - Frequent Storms" />
      <Property name="French" value="Incendies colossaux - Tempêtes fréquentes" />
      <Property name="German" value="Kolossale Feuerstürme - Häufige Stürme" />
      <Property name="Italian" value="Tempeste di fuoco colossali - Tempeste frequenti" />
      <Property name="Japanese" value="激しい火災旋風 - 頻繁なストーム" />
      <Property name="Korean" value="거대한 화선풍 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de fuego colosales - Tormentas frecuentes" />
      <Property name="Polish" value="Rozległe burze ogniowe - Częste burze" />
      <Property name="Portuguese" value="Tempestades de fogo colossais - Tempestades frequentes" />
      <Property name="Russian" value="Колоссальные огненные бури - Частые штормы" />
      <Property name="SimplifiedChinese" value="巨型火焰风暴-经常风暴" />
      <Property name="Spanish" value="Tormentas de fuego colosales - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="巨型火焰風暴-經常風暴" />
      <Property name="USEnglish" value="Colossal Firestorms - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_LAVA_EXTREME11" />
      <Property name="BrazilianPortuguese" value="Perdição de obsidiana - Tempestades frequentes" />
      <Property name="Dutch" value="Obsidiaanse verdoemenis - Regelmatige stormen" />
      <Property name="English" value="Obsidian Doom - Frequent Storms" />
      <Property name="French" value="Ruine d'obsidienne - Tempêtes fréquentes" />
      <Property name="German" value="Obsidian-Verderben - Häufige Stürme" />
      <Property name="Italian" value="Distruzione d'ossidiana - Tempeste frequenti" />
      <Property name="Japanese" value="黒曜の破滅 - 頻繁なストーム" />
      <Property name="Korean" value="흑요석으로 이뤄진 파멸 - 빈번한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Catástrofe de obsidiana - Tormentas frecuentes" />
      <Property name="Polish" value="Obsydianowa zagłada - Częste burze" />
      <Property name="Portuguese" value="Condenação obsidiana - Tempestades frequentes" />
      <Property name="Russian" value="Обсидиановый кошмар - Частые штормы" />
      <Property name="SimplifiedChinese" value="黑曜石末日-经常风暴" />
      <Property name="Spanish" value="Catástrofe de obsidiana - Tormentas frecuentes" />
      <Property name="TraditionalChinese" value="黑曜末日-經常風暴" />
      <Property name="USEnglish" value="Obsidian Doom - Frequent Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH1" />
      <Property name="BrazilianPortuguese" value="Névoa invisível - Sem tempestade" />
      <Property name="Dutch" value="Onzichtbare mist - Geen storm" />
      <Property name="English" value="Invisible Mist - No Storms" />
      <Property name="French" value="Brume invisible - Pas de tempête" />
      <Property name="German" value="Unsichtbarer Nebel - Kein Sturm" />
      <Property name="Italian" value="Nebbia invisibile - Nessuna tempesta" />
      <Property name="Japanese" value="透明な霧 - ストームなし" />
      <Property name="Korean" value="보이지 않는 박무 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Niebla invisible - Sin tormentas" />
      <Property name="Polish" value="Niewidzialna mgła - Brak burzy" />
      <Property name="Portuguese" value="Bruma Invisível - Sem tempestade" />
      <Property name="Russian" value="Невидимый туман - Без шторма" />
      <Property name="SimplifiedChinese" value="不可见的薄雾-无风暴" />
      <Property name="Spanish" value="Niebla invisible - Sin tormentas" />
      <Property name="TraditionalChinese" value="隱形霧-無風暴" />
      <Property name="USEnglish" value="Invisible Mist - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH2" />
      <Property name="BrazilianPortuguese" value="Chuva interna - Sem tempestade" />
      <Property name="Dutch" value="Interne regen - Geen storm" />
      <Property name="English" value="Internal Rain - No Storms" />
      <Property name="French" value="Pluie interne - Pas de tempête" />
      <Property name="German" value="Innerer Regen - Kein Sturm" />
      <Property name="Italian" value="Pioggia interna - Nessuna tempesta" />
      <Property name="Japanese" value="内に降る雨 - ストームなし" />
      <Property name="Korean" value="내부 강우 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Lluvia interna - Sin tormentas" />
      <Property name="Polish" value="Wewnętrzny deszcz - Brak burzy" />
      <Property name="Portuguese" value="Chuva Interna - Sem tempestade" />
      <Property name="Russian" value="Внутренний дождь - Без шторма" />
      <Property name="SimplifiedChinese" value="内部雨水-无风暴" />
      <Property name="Spanish" value="Lluvia interna - Sin tormentas" />
      <Property name="TraditionalChinese" value="內部雨-無風暴" />
      <Property name="USEnglish" value="Internal Rain - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH3" />
      <Property name="BrazilianPortuguese" value="Nuvens perdidas - Sem tempestade" />
      <Property name="Dutch" value="Verloren wolken - Geen storm" />
      <Property name="English" value="Lost Clouds - No Storms" />
      <Property name="French" value="Nuages perdus - Pas de tempête" />
      <Property name="German" value="Verlorene Wolken - Kein Sturm" />
      <Property name="Italian" value="Nuvole perdute - Nessuna tempesta" />
      <Property name="Japanese" value="失われた雲 - ストームなし" />
      <Property name="Korean" value="사라진 구름 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Nubes perdidas - Sin tormentas" />
      <Property name="Polish" value="Utracone chmury - Brak burzy" />
      <Property name="Portuguese" value="Nuvens Perdidas - Sem tempestade" />
      <Property name="Russian" value="Потерянные облака - Без шторма" />
      <Property name="SimplifiedChinese" value="迷失的云-无风暴" />
      <Property name="Spanish" value="Nubes perdidas - Sin tormentas" />
      <Property name="TraditionalChinese" value="遺雲-無風暴" />
      <Property name="USEnglish" value="Lost Clouds - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH4" />
      <Property name="BrazilianPortuguese" value="Calor vermelho - Sem tempestade" />
      <Property name="Dutch" value="Rode hitte - Geen storm" />
      <Property name="English" value="Crimson Heat - No Storms" />
      <Property name="French" value="Chaleur pourpre - Pas de tempête" />
      <Property name="German" value="Blutrote Hitze - Kein Sturm" />
      <Property name="Italian" value="Caldo scarlatto - Nessuna tempesta" />
      <Property name="Japanese" value="紅い熱波 - ストームなし" />
      <Property name="Korean" value="진홍빛 열기 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Calor carmesí - Sin tormentas" />
      <Property name="Polish" value="Szkarłatny żar - Brak burzy" />
      <Property name="Portuguese" value="Calor Púrpura - Sem tempestade" />
      <Property name="Russian" value="Алый жар - Без шторма" />
      <Property name="SimplifiedChinese" value="绯红热量-无风暴" />
      <Property name="Spanish" value="Calor carmesí - Sin tormentas" />
      <Property name="TraditionalChinese" value="緋紅熱-無風暴" />
      <Property name="USEnglish" value="Crimson Heat - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH5" />
      <Property name="BrazilianPortuguese" value="Ventos de vidro - Sem tempestade" />
      <Property name="Dutch" value="Glazen winden - Geen storm" />
      <Property name="English" value="Winds of Glass - No Storms" />
      <Property name="French" value="Vent de verre - Pas de tempête" />
      <Property name="German" value="Gläserne Winde - Kein Sturm" />
      <Property name="Italian" value="Venti di vetro - Nessuna tempesta" />
      <Property name="Japanese" value="ガラスの風 - ストームなし" />
      <Property name="Korean" value="유리 바람 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Vientos vidriosos - Sin tormentas" />
      <Property name="Polish" value="Szklane wiatry - Brak burzy" />
      <Property name="Portuguese" value="Ventos de Vidro - Sem tempestade" />
      <Property name="Russian" value="Стеклянный ветер - Без шторма" />
      <Property name="SimplifiedChinese" value="玻璃风-无风暴" />
      <Property name="Spanish" value="Vientos vidriosos - Sin tormentas" />
      <Property name="TraditionalChinese" value="玻璃風-無風暴" />
      <Property name="USEnglish" value="Winds of Glass - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH6" />
      <Property name="BrazilianPortuguese" value="Nuvens sedentas - Sem tempestade" />
      <Property name="Dutch" value="Dorstige wolken - Geen storm" />
      <Property name="English" value="Thirsty Clouds - No Storms" />
      <Property name="French" value="Nuages assoiffés - Pas de tempête" />
      <Property name="German" value="Dürstende Wolken - Kein Sturm" />
      <Property name="Italian" value="Nuvole assetate - Nessuna tempesta" />
      <Property name="Japanese" value="渇いた雲 - ストームなし" />
      <Property name="Korean" value="목 마른 구름 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Nubes sedientas - Sin tormentas" />
      <Property name="Polish" value="Spragnione chmury - Brak burzy" />
      <Property name="Portuguese" value="Nuvens Sedentas - Sem tempestade" />
      <Property name="Russian" value="Измученные жаждой облака - Без шторма" />
      <Property name="SimplifiedChinese" value="饥渴的云-无风暴" />
      <Property name="Spanish" value="Nubes sedientas - Sin tormentas" />
      <Property name="TraditionalChinese" value="乾旱雲-無風暴" />
      <Property name="USEnglish" value="Thirsty Clouds - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH7" />
      <Property name="BrazilianPortuguese" value="Calor de obsidiana - Sem tempestade" />
      <Property name="Dutch" value="Obsidiaanse hitte - Geen storm" />
      <Property name="English" value="Obsidian Heat - No Storms" />
      <Property name="French" value="Chaleur d'obsidienne - Pas de tempête" />
      <Property name="German" value="Obsidian-Hitze - Kein Sturm" />
      <Property name="Italian" value="Caldo d'ossidiana - Nessuna tempesta" />
      <Property name="Japanese" value="黒曜の熱波 - ストームなし" />
      <Property name="Korean" value="흑요석 열기 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Calor de obsidiana - Sin tormentas" />
      <Property name="Polish" value="Obsydianowy żar - Brak burzy" />
      <Property name="Portuguese" value="Calor Obsidiano - Sem tempestade" />
      <Property name="Russian" value="Обсидиановый жар - Без шторма" />
      <Property name="SimplifiedChinese" value="黑曜石热量-无风暴" />
      <Property name="Spanish" value="Calor de obsidiana - Sin tormentas" />
      <Property name="TraditionalChinese" value="黑曜熱氣-無風暴" />
      <Property name="USEnglish" value="Obsidian Heat - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH8" />
      <Property name="BrazilianPortuguese" value="Lembranças da geada - Sem tempestade" />
      <Property name="Dutch" value="Herinneringen aan de vorst - Geen storm" />
      <Property name="English" value="Memories of Frost - No Storms" />
      <Property name="French" value="Mémoires de givre - Pas de tempête" />
      <Property name="German" value="Erinnerungen aus Frost - Kein Sturm" />
      <Property name="Italian" value="Ricordi di gelo - Nessuna tempesta" />
      <Property name="Japanese" value="霜の記憶 - ストームなし" />
      <Property name="Korean" value="서리의 기억 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Recuerdos de escarcha - Sin tormentas" />
      <Property name="Polish" value="Wspomnienia o mrozie - Brak burzy" />
      <Property name="Portuguese" value="Recordações da Geada - Sem tempestade" />
      <Property name="Russian" value="Морозные воспоминания - Без шторма" />
      <Property name="SimplifiedChinese" value="冰霜的回忆-无风暴" />
      <Property name="Spanish" value="Recuerdos de escarcha - Sin tormentas" />
      <Property name="TraditionalChinese" value="冰霜追憶-無風暴" />
      <Property name="USEnglish" value="Memories of Frost - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH9" />
      <Property name="BrazilianPortuguese" value="Geada assombrada - Sem tempestade" />
      <Property name="Dutch" value="Spookachtige vorst - Geen storm" />
      <Property name="English" value="Haunted Frost - No Storms" />
      <Property name="French" value="Givre hanté - Pas de tempête" />
      <Property name="German" value="Heimgesuchter Frost - Kein Sturm" />
      <Property name="Italian" value="Freddo infestato - Nessuna tempesta" />
      <Property name="Japanese" value="呪われた霜 - ストームなし" />
      <Property name="Korean" value="귀신 들린 서리 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Escarcha angustiosa - Sin tormentas" />
      <Property name="Polish" value="Nawiedzony mróz - Brak burzy" />
      <Property name="Portuguese" value="Geada Assombrada - Sem tempestade" />
      <Property name="Russian" value="Зловещий мороз - Без шторма" />
      <Property name="SimplifiedChinese" value="闹鬼的冰霜-无风暴" />
      <Property name="Spanish" value="Escarcha angustiosa - Sin tormentas" />
      <Property name="TraditionalChinese" value="糾纏冰霜-無風暴" />
      <Property name="USEnglish" value="Haunted Frost - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH10" />
      <Property name="BrazilianPortuguese" value="Queimação indetectável - Sem tempestade" />
      <Property name="Dutch" value="Niet waarneembare brand - Geen storm" />
      <Property name="English" value="Indetectable Burning - No Storms" />
      <Property name="French" value="Combustion indétectable - Pas de tempête" />
      <Property name="German" value="Nicht nachweisbares Brennen - Kein Sturm" />
      <Property name="Italian" value="Bruciature inesistenti - Nessuna tempesta" />
      <Property name="Japanese" value="感知できない焦熱 - ストームなし" />
      <Property name="Korean" value="탐지 불가 연소 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Fuego indetectable - Sin tormentas" />
      <Property name="Polish" value="Niewykrywalne pieczenie - Brak burzy" />
      <Property name="Portuguese" value="Combustão Indetetável - Sem tempestade" />
      <Property name="Russian" value="Пламя, которое нельзя обнаружить - Без шторма" />
      <Property name="SimplifiedChinese" value="不易察觉的火热-无风暴" />
      <Property name="Spanish" value="Fuego indetectable - Sin tormentas" />
      <Property name="TraditionalChinese" value="無法偵測的燃燒-無風暴" />
      <Property name="USEnglish" value="Indetectable Burning - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH11" />
      <Property name="BrazilianPortuguese" value="[EDITADO] - Sem tempestade" />
      <Property name="Dutch" value="[GECENSUREERD] - Geen storm" />
      <Property name="English" value="[REDACTED] - No Storms" />
      <Property name="French" value="[CENSURÉ] - Pas de tempête" />
      <Property name="German" value="[ZENSIERT] - Kein Sturm" />
      <Property name="Italian" value="[OSCURATO] - Nessuna tempesta" />
      <Property name="Japanese" value="[編集済] - ストームなし" />
      <Property name="Korean" value="[검열됨] - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="[EDITADO] - Sin tormentas" />
      <Property name="Polish" value="[USUNIĘTO] - Brak burzy" />
      <Property name="Portuguese" value="[REDIGIDO] - Sem tempestade" />
      <Property name="Russian" value="[ВЫРЕЗАНО] - Без шторма" />
      <Property name="SimplifiedChinese" value="[REDACTED]-无风暴" />
      <Property name="Spanish" value="[EDITADO] - Sin tormentas" />
      <Property name="TraditionalChinese" value="[已刪除]-無風暴" />
      <Property name="USEnglish" value="[REDACTED] - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GLITCH12" />
      <Property name="BrazilianPortuguese" value="Anômalo - Sem tempestade" />
      <Property name="Dutch" value="Abnormaal - Geen storm" />
      <Property name="English" value="Anomalous - No Storms" />
      <Property name="French" value="Anormal - Pas de tempête" />
      <Property name="German" value="Anormal - Kein Sturm" />
      <Property name="Italian" value="Anomalo - Nessuna tempesta" />
      <Property name="Japanese" value="異常気象 - ストームなし" />
      <Property name="Korean" value="변칙적 - 폭풍 없음" />
      <Property name="LatinAmericanSpanish" value="Anómalo - Sin tormentas" />
      <Property name="Polish" value="Anomalia - Brak burzy" />
      <Property name="Portuguese" value="Anómalo - Sem tempestade" />
      <Property name="Russian" value="Аномальн. - Без шторма" />
      <Property name="SimplifiedChinese" value="异常的-无风暴" />
      <Property name="Spanish" value="Anómalo - Sin tormentas" />
      <Property name="TraditionalChinese" value="異常的-無風暴" />
      <Property name="USEnglish" value="Anomalous - No Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RED1" />
      <Property name="BrazilianPortuguese" value="Carmesim incandescente - Desconhecido" />
      <Property name="Dutch" value="Vuurrood - Onbekend" />
      <Property name="English" value="Burning Crimson - Unknown" />
      <Property name="French" value="Pourpre ardent - Inconnu" />
      <Property name="German" value="Glühender Purpur - Unbekannt" />
      <Property name="Italian" value="Scarlatto ardente - Sconosciuto" />
      <Property name="Japanese" value="燃えるように赤い - 不明" />
      <Property name="Korean" value="불타는 선홍색 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Carmesí abrasador - Desconocido" />
      <Property name="Polish" value="Płonący szkarłat - Nieznane" />
      <Property name="Portuguese" value="Carmesim ardente - Desconhecido" />
      <Property name="Russian" value="Пылающий багрянец - Неизвестно" />
      <Property name="SimplifiedChinese" value="燃烧绯红-未知" />
      <Property name="Spanish" value="Carmesí abrasador - Desconocido" />
      <Property name="TraditionalChinese" value="炙熱緋紅-未知" />
      <Property name="USEnglish" value="Burning Crimson - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RED2" />
      <Property name="BrazilianPortuguese" value="Chuva escarlate - Desconhecido" />
      <Property name="Dutch" value="Scharlaken regen - Onbekend" />
      <Property name="English" value="Scarlet Rain - Unknown" />
      <Property name="French" value="Pluie écarlate - Inconnu" />
      <Property name="German" value="Scharlachroter Regen - Unbekannt" />
      <Property name="Italian" value="Pioggia scarlatta - Sconosciuto" />
      <Property name="Japanese" value="赤い雨 - 不明" />
      <Property name="Korean" value="주홍색 비 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Lluvia escarlata - Desconocido" />
      <Property name="Polish" value="Karmazynowy deszcz - Nieznane" />
      <Property name="Portuguese" value="Chuva escarlate - Desconhecido" />
      <Property name="Russian" value="Алый дождь - Неизвестно" />
      <Property name="SimplifiedChinese" value="猩红之雨-未知" />
      <Property name="Spanish" value="Lluvia escarlata - Desconocido" />
      <Property name="TraditionalChinese" value="鮮紅雨-未知" />
      <Property name="USEnglish" value="Scarlet Rain - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RED3" />
      <Property name="BrazilianPortuguese" value="Nuvens agitadas - Desconhecido" />
      <Property name="Dutch" value="Gloeiende wolken - Onbekend" />
      <Property name="English" value="Fevered Clouds - Unknown" />
      <Property name="French" value="Nuages enfiévrés - Inconnu" />
      <Property name="German" value="Fiebrige Wolken - Unbekannt" />
      <Property name="Italian" value="Nuvole febbrili - Sconosciuto" />
      <Property name="Japanese" value="熱を帯びた雲 - 不明" />
      <Property name="Korean" value="열병 같은 구름 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Nubes agitadas - Desconocido" />
      <Property name="Polish" value="Wzburzone chmury - Nieznane" />
      <Property name="Portuguese" value="Nuvens febris - Desconhecido" />
      <Property name="Russian" value="Беспокойные облака - Неизвестно" />
      <Property name="SimplifiedChinese" value="炽热之云-未知" />
      <Property name="Spanish" value="Nubes agitadas - Desconocido" />
      <Property name="TraditionalChinese" value="高溫雲-未知" />
      <Property name="USEnglish" value="Fevered Clouds - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RED4" />
      <Property name="BrazilianPortuguese" value="Ventos carmins - Desconhecido" />
      <Property name="Dutch" value="Karmijnrode winden - Onbekend" />
      <Property name="English" value="Carmine Winds - Unknown" />
      <Property name="French" value="Vents carmin - Inconnu" />
      <Property name="German" value="Karminwinde - Unbekannt" />
      <Property name="Italian" value="Venti carmini - Sconosciuto" />
      <Property name="Japanese" value="洋紅色の風 - 不明" />
      <Property name="Korean" value="진홍색 바람 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Vientos de carmín - Desconocido" />
      <Property name="Polish" value="Karminowe wiatry - Nieznane" />
      <Property name="Portuguese" value="Ventos carmesim - Desconhecido" />
      <Property name="Russian" value="Карминные ветра - Неизвестно" />
      <Property name="SimplifiedChinese" value="胭脂之风-未知" />
      <Property name="Spanish" value="Vientos de carmín - Desconocido" />
      <Property name="TraditionalChinese" value="洋紅風-未知" />
      <Property name="USEnglish" value="Carmine Winds - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RED5" />
      <Property name="BrazilianPortuguese" value="Névoa vermelha - Desconhecido" />
      <Property name="Dutch" value="Rode mist - Onbekend" />
      <Property name="English" value="Red Mist - Unknown" />
      <Property name="French" value="Brume rouge - Inconnu" />
      <Property name="German" value="Roter Dunst - Unbekannt" />
      <Property name="Italian" value="Foschia rossa - Sconosciuto" />
      <Property name="Japanese" value="赤い霧 - 不明" />
      <Property name="Korean" value="붉은 안개 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Neblina roja - Desconocido" />
      <Property name="Polish" value="Czerwona mgła - Nieznane" />
      <Property name="Portuguese" value="Bruma vermelha - Desconhecido" />
      <Property name="Russian" value="Красная дымка - Неизвестно" />
      <Property name="SimplifiedChinese" value="红雾-未知" />
      <Property name="Spanish" value="Neblina roja - Desconocido" />
      <Property name="TraditionalChinese" value="紅色薄霧-未知" />
      <Property name="USEnglish" value="Red Mist - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RED6" />
      <Property name="BrazilianPortuguese" value="Granizo flamejante - Desconhecido" />
      <Property name="Dutch" value="Vlammende hagel - Onbekend" />
      <Property name="English" value="Flaming Hail - Unknown" />
      <Property name="French" value="Grêle flamboyante - Inconnu" />
      <Property name="German" value="Flammender Hagel - Unbekannt" />
      <Property name="Italian" value="Grandine fiammeggiante - Sconosciuto" />
      <Property name="Japanese" value="燃える雨 - 不明" />
      <Property name="Korean" value="이글거리는 우박 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Granizo llameante - Desconocido" />
      <Property name="Polish" value="Płomienna wichura - Nieznane" />
      <Property name="Portuguese" value="Granizo flamejante - Desconhecido" />
      <Property name="Russian" value="Пылающий град - Неизвестно" />
      <Property name="SimplifiedChinese" value="燃烧冰雹-未知" />
      <Property name="Spanish" value="Granizo llameante - Desconocido" />
      <Property name="TraditionalChinese" value="火紅冰雹-未知" />
      <Property name="USEnglish" value="Flaming Hail - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RED7" />
      <Property name="BrazilianPortuguese" value="Tempestades cinabrinas - Desconhecido" />
      <Property name="Dutch" value="Oranjerode stormen - Onbekend" />
      <Property name="English" value="Vermillion Storms - Unknown" />
      <Property name="French" value="Tempêtes vermillon - Inconnu" />
      <Property name="German" value="Zinnoberstürme - Unbekannt" />
      <Property name="Italian" value="Tempeste vermiglie - Sconosciuto" />
      <Property name="Japanese" value="深紅の嵐 - 不明" />
      <Property name="Korean" value="검붉은 폭풍 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Tormentas bermellonas - Desconocido" />
      <Property name="Polish" value="Cynobrowe burze - Nieznane" />
      <Property name="Portuguese" value="Tempestades de vermelhão - Desconhecido" />
      <Property name="Russian" value="Пунцовые бури - Неизвестно" />
      <Property name="SimplifiedChinese" value="朱红风暴-未知" />
      <Property name="Spanish" value="Tormentas bermellonas - Desconocido" />
      <Property name="TraditionalChinese" value="朱紅風暴-未知" />
      <Property name="USEnglish" value="Vermillion Storms - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RED8" />
      <Property name="BrazilianPortuguese" value="Chuva do Atlas - Desconhecido" />
      <Property name="Dutch" value="Regen van Atlas - Onbekend" />
      <Property name="English" value="Rain of Atlas - Unknown" />
      <Property name="French" value="Pluie d'Atlas - Inconnu" />
      <Property name="German" value="Atlasregen - Unbekannt" />
      <Property name="Italian" value="Pioggia dell'Atlante - Sconosciuto" />
      <Property name="Japanese" value="アトラスの雨 - 不明" />
      <Property name="Korean" value="아틀라스의 비 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Lluvia del Atlas - Desconocido" />
      <Property name="Polish" value="Deszcz Atlasa - Nieznane" />
      <Property name="Portuguese" value="Chuva do Atlas - Desconhecido" />
      <Property name="Russian" value="Дождь Атласа - Неизвестно" />
      <Property name="SimplifiedChinese" value="阿特拉斯之雨-未知" />
      <Property name="Spanish" value="Lluvia del Atlas - Desconocido" />
      <Property name="TraditionalChinese" value="寰宇之雨-未知" />
      <Property name="USEnglish" value="Rain of Atlas - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RED9" />
      <Property name="BrazilianPortuguese" value="Nuvens furiosas - Desconhecido" />
      <Property name="Dutch" value="Woedende wolken - Onbekend" />
      <Property name="English" value="Angered Clouds - Unknown" />
      <Property name="French" value="Nuages courroucés - Inconnu" />
      <Property name="German" value="Zornwolken - Unbekannt" />
      <Property name="Italian" value="Nuvole rabbiose - Sconosciuto" />
      <Property name="Japanese" value="怒りの雲 - 不明" />
      <Property name="Korean" value="성난 구름 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Nubes enfurecidas - Desconocido" />
      <Property name="Polish" value="Gniewne chmury - Nieznane" />
      <Property name="Portuguese" value="Nuvens enfurecidas - Desconhecido" />
      <Property name="Russian" value="Беснующиеся облака - Неизвестно" />
      <Property name="SimplifiedChinese" value="愤怒之云-未知" />
      <Property name="Spanish" value="Nubes enfurecidas - Desconocido" />
      <Property name="TraditionalChinese" value="憤怒之雲-未知" />
      <Property name="USEnglish" value="Angered Clouds - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_RED10" />
      <Property name="BrazilianPortuguese" value="Chuva de sangue - Desconhecido" />
      <Property name="Dutch" value="Bloedkleurige regen - Onbekend" />
      <Property name="English" value="Blood Rain - Unknown" />
      <Property name="French" value="Pluie de sang - Inconnu" />
      <Property name="German" value="Blutregen - Unbekannt" />
      <Property name="Italian" value="Pioggia di sangue - Sconosciuto" />
      <Property name="Japanese" value="血の雨 - 不明" />
      <Property name="Korean" value="피의 비 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Lluvia de sangre - Desconocido" />
      <Property name="Polish" value="Krwawy deszcz - Nieznane" />
      <Property name="Portuguese" value="Chuva de sangue - Desconhecido" />
      <Property name="Russian" value="Кровавый дождь - Неизвестно" />
      <Property name="SimplifiedChinese" value="血雨-未知" />
      <Property name="Spanish" value="Lluvia de sangre - Desconocido" />
      <Property name="TraditionalChinese" value="血雨-未知" />
      <Property name="USEnglish" value="Blood Rain - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GREEN1" />
      <Property name="BrazilianPortuguese" value="Tempestades desagradáveis - Desconhecido" />
      <Property name="Dutch" value="Galachtige stormen - Onbekend" />
      <Property name="English" value="Bilious Storms - Unknown" />
      <Property name="French" value="Tempêtes bilieuses - Inconnu" />
      <Property name="German" value="Gallenstürme - Unbekannt" />
      <Property name="Italian" value="Tempeste colleriche - Sconosciuto" />
      <Property name="Japanese" value="不機嫌な嵐 - 不明" />
      <Property name="Korean" value="담즙 폭풍 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Tormentas biliosas - Desconocido" />
      <Property name="Polish" value="Koszmarne burze - Nieznane" />
      <Property name="Portuguese" value="Tempestades biliares - Desconhecido" />
      <Property name="Russian" value="Скверные бури - Неизвестно" />
      <Property name="SimplifiedChinese" value="致病风暴-未知" />
      <Property name="Spanish" value="Tormentas biliosas - Desconocido" />
      <Property name="TraditionalChinese" value="反感風暴-未知" />
      <Property name="USEnglish" value="Bilious Storms - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GREEN2" />
      <Property name="BrazilianPortuguese" value="Variações letais de pressão - Desconhecido" />
      <Property name="Dutch" value="Dodelijke drukvariaties - Onbekend" />
      <Property name="English" value="Deadly Pressure Variations - Unknown" />
      <Property name="French" value="Variations de pression mortelles - Inconnu" />
      <Property name="German" value="Tödliche Druckschwankungen - Unbekannt" />
      <Property name="Italian" value="Sbalzi di pressione letali - Sconosciuto" />
      <Property name="Japanese" value="強烈な気圧変動 - 不明" />
      <Property name="Korean" value="치명적인 압력 변화 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Variaciones de presión mortales - Desconocido" />
      <Property name="Polish" value="Śmiercionośne wahania ciśnienia - Nieznane" />
      <Property name="Portuguese" value="Variações de pressão mortais - Desconhecido" />
      <Property name="Russian" value="Смертельные колебания давления - Неизвестно" />
      <Property name="SimplifiedChinese" value="致命压力变化-未知" />
      <Property name="Spanish" value="Variaciones de presión mortales - Desconocido" />
      <Property name="TraditionalChinese" value="致命壓力變化-未知" />
      <Property name="USEnglish" value="Deadly Pressure Variations - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GREEN3" />
      <Property name="BrazilianPortuguese" value="Vento tóxico severo - Desconhecido" />
      <Property name="Dutch" value="Harde giftige wind - Onbekend" />
      <Property name="English" value="Harsh Toxic Wind - Unknown" />
      <Property name="French" value="Vent violent toxique - Inconnu" />
      <Property name="German" value="Raue, giftige Winde - Unbekannt" />
      <Property name="Italian" value="Rigido vento tossico - Sconosciuto" />
      <Property name="Japanese" value="強力な毒性の風 - 不明" />
      <Property name="Korean" value="혹독한 독성 바람 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Viento tóxico fuerte - Desconocido" />
      <Property name="Polish" value="Srogie toksyczne wiatry - Nieznane" />
      <Property name="Portuguese" value="Vento tóxico severo - Desconhecido" />
      <Property name="Russian" value="Суровый токсичный ветер - Неизвестно" />
      <Property name="SimplifiedChinese" value="猛毒之风-未知" />
      <Property name="Spanish" value="Viento tóxico fuerte - Desconocido" />
      <Property name="TraditionalChinese" value="毒性惡風-未知" />
      <Property name="USEnglish" value="Harsh Toxic Wind - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GREEN4" />
      <Property name="BrazilianPortuguese" value="Sangue corrompido - Desconhecido" />
      <Property name="Dutch" value="Aangetast bloed - Onbekend" />
      <Property name="English" value="Corrupted Blood - Unknown" />
      <Property name="French" value="Sang souillé - Inconnu" />
      <Property name="German" value="Korrumpiertes Blut - Unbekannt" />
      <Property name="Italian" value="Sangue corrotto - Sconosciuto" />
      <Property name="Japanese" value="腐敗した血液 - 不明" />
      <Property name="Korean" value="오염된 피 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Sangre corrompida - Desconocido" />
      <Property name="Polish" value="Spaczona krew - Nieznane" />
      <Property name="Portuguese" value="Sangue corrompido - Desconhecido" />
      <Property name="Russian" value="Испорченная кровь - Неизвестно" />
      <Property name="SimplifiedChinese" value="腐化之血-未知" />
      <Property name="Spanish" value="Sangre corrompida - Desconocido" />
      <Property name="TraditionalChinese" value="腐敗血液-未知" />
      <Property name="USEnglish" value="Corrupted Blood - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GREEN5" />
      <Property name="BrazilianPortuguese" value="Névoa tóxica infinita - Desconhecido" />
      <Property name="Dutch" value="Oneindige giftige mist - Onbekend" />
      <Property name="English" value="Infinite Toxic Mist - Unknown" />
      <Property name="French" value="Brume toxique interminable - Inconnu" />
      <Property name="German" value="Unendlicher, giftiger Dunst - Unbekannt" />
      <Property name="Italian" value="Foschia tossica infinita - Sconosciuto" />
      <Property name="Japanese" value="耐えることのない毒性霧 - 不明" />
      <Property name="Korean" value="무한한 독성 안개 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Neblina tóxica infinita - Desconocido" />
      <Property name="Polish" value="Niekończąca się toksyczna mgła - Nieznane" />
      <Property name="Portuguese" value="Bruma tóxica infinita - Desconhecido" />
      <Property name="Russian" value="Бесконечная токсичная дымка - Неизвестно" />
      <Property name="SimplifiedChinese" value="无尽毒雾-未知" />
      <Property name="Spanish" value="Neblina tóxica infinita - Desconocido" />
      <Property name="TraditionalChinese" value="無限毒性薄霧-未知" />
      <Property name="USEnglish" value="Infinite Toxic Mist - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GREEN6" />
      <Property name="BrazilianPortuguese" value="Ecos de ácido - Desconhecido" />
      <Property name="Dutch" value="Echo's van zuur - Onbekend" />
      <Property name="English" value="Echoes of Acid - Unknown" />
      <Property name="French" value="Échos d'acide - Inconnu" />
      <Property name="German" value="Säure-Echos - Unbekannt" />
      <Property name="Italian" value="Echi acidi - Sconosciuto" />
      <Property name="Japanese" value="酸性の残響 - 不明" />
      <Property name="Korean" value="산성 메아리 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Ecos de ácido - Desconocido" />
      <Property name="Polish" value="Echa kwasu - Nieznane" />
      <Property name="Portuguese" value="Ecos de ácido - Desconhecido" />
      <Property name="Russian" value="Кислотные следы - Неизвестно" />
      <Property name="SimplifiedChinese" value="酸性回响-未知" />
      <Property name="Spanish" value="Ecos de ácido - Desconocido" />
      <Property name="TraditionalChinese" value="酸劑回音-未知" />
      <Property name="USEnglish" value="Echoes of Acid - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GREEN7" />
      <Property name="BrazilianPortuguese" value="Ciclones venenosos - Desconhecido" />
      <Property name="Dutch" value="Gifcyclonen - Onbekend" />
      <Property name="English" value="Poison Cyclones - Unknown" />
      <Property name="French" value="Cyclones empoisonnés - Inconnu" />
      <Property name="German" value="Gift-Zyklone - Unbekannt" />
      <Property name="Italian" value="Cicloni velenosi - Sconosciuto" />
      <Property name="Japanese" value="毒性サイクロン - 不明" />
      <Property name="Korean" value="독성 사이클론 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Ciclones venenosos - Desconocido" />
      <Property name="Polish" value="Trujące cyklony - Nieznane" />
      <Property name="Portuguese" value="Ciclones venenosos - Desconhecido" />
      <Property name="Russian" value="Ядовитые циклоны - Неизвестно" />
      <Property name="SimplifiedChinese" value="毒飓风-未知" />
      <Property name="Spanish" value="Ciclones venenosos - Desconocido" />
      <Property name="TraditionalChinese" value="毒性龍捲風-未知" />
      <Property name="USEnglish" value="Poison Cyclones - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GREEN8" />
      <Property name="BrazilianPortuguese" value="Toxinas inevitáveis - Desconhecido" />
      <Property name="Dutch" value="Onvermijdelijke gifstoffen - Onbekend" />
      <Property name="English" value="Inescapable Toxins - Unknown" />
      <Property name="French" value="Toxines inévitables - Inconnu" />
      <Property name="German" value="Allgegenwärtige Toxine - Unbekannt" />
      <Property name="Italian" value="Tossine inesorabili - Sconosciuto" />
      <Property name="Japanese" value="不可避性毒物 - 不明" />
      <Property name="Korean" value="빠져나올 수 없는 독성 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Toxinas inevitables - Desconocido" />
      <Property name="Polish" value="Nieuchronne toksyny - Nieznane" />
      <Property name="Portuguese" value="Toxinas inescapáveis - Desconhecido" />
      <Property name="Russian" value="Неизбежные токсины - Неизвестно" />
      <Property name="SimplifiedChinese" value="不可避免之毒-未知" />
      <Property name="Spanish" value="Toxinas inevitables - Desconocido" />
      <Property name="TraditionalChinese" value="逃不了的毒素-未知" />
      <Property name="USEnglish" value="Inescapable Toxins - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GREEN9" />
      <Property name="BrazilianPortuguese" value="Nuvens verdes sinistras - Desconhecido" />
      <Property name="Dutch" value="Spookachtig groene wolken - Onbekend" />
      <Property name="English" value="Clouds of Haunted Green - Unknown" />
      <Property name="French" value="Nuages de vert hanté - Inconnu" />
      <Property name="German" value="Wolken heimgesuchten Grüns - Unbekannt" />
      <Property name="Italian" value="Nuvole verdi spettrali - Sconosciuto" />
      <Property name="Japanese" value="呪われた緑の雲 - 不明" />
      <Property name="Korean" value="귀신 들린 녹색 구름 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Nubes de verde encantado - Desconocido" />
      <Property name="Polish" value="Trupiozielone chmury - Nieznane" />
      <Property name="Portuguese" value="Nuvens de verde assombrado - Desconhecido" />
      <Property name="Russian" value="Облака призрачной зелени - Неизвестно" />
      <Property name="SimplifiedChinese" value="幽魂绿云-未知" />
      <Property name="Spanish" value="Nubes de verde encantado - Desconocido" />
      <Property name="TraditionalChinese" value="鬼影綠雲-未知" />
      <Property name="USEnglish" value="Clouds of Haunted Green - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GREEN10" />
      <Property name="BrazilianPortuguese" value="Ventos de jade invisíveis - Desconhecido" />
      <Property name="Dutch" value="Onzichtbare jadekleurige winden - Onbekend" />
      <Property name="English" value="Invisible Jade Winds - Unknown" />
      <Property name="French" value="Vents de jade invisibles - Inconnu" />
      <Property name="German" value="Unsichtbare Jadewinde - Unbekannt" />
      <Property name="Italian" value="Venti giada invisibili - Sconosciuto" />
      <Property name="Japanese" value="透明翡翠の風 - 不明" />
      <Property name="Korean" value="보이지 않는 옥빛 바람 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Vientos de jade invisibles - Desconocido" />
      <Property name="Polish" value="Niewidzialne nefrytowe wiatry - Nieznane" />
      <Property name="Portuguese" value="Ventos jade invisíveis - Desconhecido" />
      <Property name="Russian" value="Невидимые нефритовые ветра - Неизвестно" />
      <Property name="SimplifiedChinese" value="无形翠玉之风-未知" />
      <Property name="Spanish" value="Vientos de jade invisibles - Desconocido" />
      <Property name="TraditionalChinese" value="隱形玉風-未知" />
      <Property name="USEnglish" value="Invisible Jade Winds - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BLUE1" />
      <Property name="BrazilianPortuguese" value="Névoas congeladas - Desconhecido" />
      <Property name="Dutch" value="Bevroren mist - Onbekend" />
      <Property name="English" value="Frozen Mists - Unknown" />
      <Property name="French" value="Brumes gelées - Inconnu" />
      <Property name="German" value="Gefrorener Dunst - Unbekannt" />
      <Property name="Italian" value="Foschie congelate - Sconosciuto" />
      <Property name="Japanese" value="凍結した霧 - 不明" />
      <Property name="Korean" value="얼어붙은 안개 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Neblinas congeladas - Desconocido" />
      <Property name="Polish" value="Zamarznięte mgły - Nieznane" />
      <Property name="Portuguese" value="Brumas congeladas - Desconhecido" />
      <Property name="Russian" value="Замороженные туманы - Неизвестно" />
      <Property name="SimplifiedChinese" value="冰雾-未知" />
      <Property name="Spanish" value="Neblinas congeladas - Desconocido" />
      <Property name="TraditionalChinese" value="冰凍薄霧-未知" />
      <Property name="USEnglish" value="Frozen Mists - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BLUE2" />
      <Property name="BrazilianPortuguese" value="Chuva elétrica - Desconhecido" />
      <Property name="Dutch" value="Elektrische regen - Onbekend" />
      <Property name="English" value="Electric Rain - Unknown" />
      <Property name="French" value="Pluie électrique - Inconnu" />
      <Property name="German" value="Elektrischer Regen - Unbekannt" />
      <Property name="Italian" value="Pioggia elettrica - Sconosciuto" />
      <Property name="Japanese" value="電流の雨 - 不明" />
      <Property name="Korean" value="전기 비 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Lluvia eléctrica - Desconocido" />
      <Property name="Polish" value="Deszcz elektryczny - Nieznane" />
      <Property name="Portuguese" value="Chuva elétrica - Desconhecido" />
      <Property name="Russian" value="Электрический дождь - Неизвестно" />
      <Property name="SimplifiedChinese" value="电雨-未知" />
      <Property name="Spanish" value="Lluvia eléctrica - Desconocido" />
      <Property name="TraditionalChinese" value="電雨-未知" />
      <Property name="USEnglish" value="Electric Rain - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BLUE3" />
      <Property name="BrazilianPortuguese" value="Tempestades azuis-celestes - Desconhecido" />
      <Property name="Dutch" value="Azuurkleurige stormen - Onbekend" />
      <Property name="English" value="Azure Storms - Unknown" />
      <Property name="French" value="Tempêtes d'azur - Inconnu" />
      <Property name="German" value="Azur-Stürme - Unbekannt" />
      <Property name="Italian" value="Tempeste azzurre - Sconosciuto" />
      <Property name="Japanese" value="空色の嵐 - 不明" />
      <Property name="Korean" value="쪽빛 폭풍 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Tormentas de azul celeste - Desconocido" />
      <Property name="Polish" value="Lazurowe burze - Nieznane" />
      <Property name="Portuguese" value="Tempestades azul-celeste - Desconhecido" />
      <Property name="Russian" value="Лазурные бури - Неизвестно" />
      <Property name="SimplifiedChinese" value="湛蓝风暴-未知" />
      <Property name="Spanish" value="Tormentas de azul celeste - Desconocido" />
      <Property name="TraditionalChinese" value="天藍風暴-未知" />
      <Property name="USEnglish" value="Azure Storms - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BLUE4" />
      <Property name="BrazilianPortuguese" value="Pressão extremamente baixa - Desconhecido" />
      <Property name="Dutch" value="Extreem lage druk - Onbekend" />
      <Property name="English" value="Extreme Low Pressure - Unknown" />
      <Property name="French" value="Pression extrêmement faible - Inconnu" />
      <Property name="German" value="Extrem niedriger Druck - Unbekannt" />
      <Property name="Italian" value="Pressione estremamente bassa - Sconosciuto" />
      <Property name="Japanese" value="極限の低気圧 - 不明" />
      <Property name="Korean" value="극한의 저기압 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Presión extremadamente baja - Desconocido" />
      <Property name="Polish" value="Ekstremalnie niskie ciśnienie - Nieznane" />
      <Property name="Portuguese" value="Pressão extremamente baixa - Desconhecido" />
      <Property name="Russian" value="Крайне низкое давление - Неизвестно" />
      <Property name="SimplifiedChinese" value="极限低压-未知" />
      <Property name="Spanish" value="Presión extremadamente baja - Desconocido" />
      <Property name="TraditionalChinese" value="極低壓力-未知" />
      <Property name="USEnglish" value="Extreme Low Pressure - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BLUE5" />
      <Property name="BrazilianPortuguese" value="Frio generalizado - Desconhecido" />
      <Property name="Dutch" value="Allesvernietigende kou - Onbekend" />
      <Property name="English" value="All-Consuming Cold - Unknown" />
      <Property name="French" value="Froid mordant - Inconnu" />
      <Property name="German" value="Überwältigende Kälte - Unbekannt" />
      <Property name="Italian" value="Gelo divorante - Sconosciuto" />
      <Property name="Japanese" value="全てを飲み込む寒さ - 不明" />
      <Property name="Korean" value="모든 것을 집어 삼키는 추위 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Frío absorbente - Desconocido" />
      <Property name="Polish" value="Wszechogarniające zimno - Nieznane" />
      <Property name="Portuguese" value="Frio que tudo consome - Desconhecido" />
      <Property name="Russian" value="Всепроникающий холод - Неизвестно" />
      <Property name="SimplifiedChinese" value="吞噬万物严寒-未知" />
      <Property name="Spanish" value="Frío absorbente - Desconocido" />
      <Property name="TraditionalChinese" value="吞噬一切的寒冷-未知" />
      <Property name="USEnglish" value="All-Consuming Cold - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BLUE6" />
      <Property name="BrazilianPortuguese" value="Ventos do além - Desconhecido" />
      <Property name="Dutch" value="Winden uit het hiernamaals - Onbekend" />
      <Property name="English" value="Winds from Beyond - Unknown" />
      <Property name="French" value="Vents de l'au-delà - Inconnu" />
      <Property name="German" value="Winde aus dem Jenseits - Unbekannt" />
      <Property name="Italian" value="Venti dall'Oltre - Sconosciuto" />
      <Property name="Japanese" value="あの世からの風 - 不明" />
      <Property name="Korean" value="저 너머에서 불어온 바람 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Vientos del más allá - Desconocido" />
      <Property name="Polish" value="Wiatry z oddali - Nieznane" />
      <Property name="Portuguese" value="Ventos do Além - Desconhecido" />
      <Property name="Russian" value="Ветра из преисподней - Неизвестно" />
      <Property name="SimplifiedChinese" value="往昔之风-未知" />
      <Property name="Spanish" value="Vientos del más allá - Desconocido" />
      <Property name="TraditionalChinese" value="來自無垠的風-未知" />
      <Property name="USEnglish" value="Winds from Beyond - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BLUE7" />
      <Property name="BrazilianPortuguese" value="Tempestades incomensuráveis - Desconhecido" />
      <Property name="Dutch" value="Onpeilbare stormen - Onbekend" />
      <Property name="English" value="Unfathomable Storms - Unknown" />
      <Property name="French" value="Tempêtes insondables - Inconnu" />
      <Property name="German" value="Unergründliche Stürme - Unbekannt" />
      <Property name="Italian" value="Tempeste inconoscibili - Sconosciuto" />
      <Property name="Japanese" value="不可思議な嵐 - 不明" />
      <Property name="Korean" value="가늠할 수 없는 폭풍 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Tormentas insondables - Desconocido" />
      <Property name="Polish" value="Niezgłębione burze - Nieznane" />
      <Property name="Portuguese" value="Tempestades insondáveis - Desconhecido" />
      <Property name="Russian" value="Необъяснимые бури - Неизвестно" />
      <Property name="SimplifiedChinese" value="深不可测风暴-未知" />
      <Property name="Spanish" value="Tormentas insondables - Desconocido" />
      <Property name="TraditionalChinese" value="深奧風暴-未知" />
      <Property name="USEnglish" value="Unfathomable Storms - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BLUE8" />
      <Property name="BrazilianPortuguese" value="Azul inimaginável - Desconhecido" />
      <Property name="Dutch" value="Onvoorstelbaar blauw - Onbekend" />
      <Property name="English" value="Unimaginable Blue - Unknown" />
      <Property name="French" value="Bleu inimaginable - Inconnu" />
      <Property name="German" value="Unvorstellbares Blau - Unbekannt" />
      <Property name="Italian" value="Blu inimmaginabile - Sconosciuto" />
      <Property name="Japanese" value="想像を絶する青 - 不明" />
      <Property name="Korean" value="상상도 못할 파란색 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Azul inimaginable - Desconocido" />
      <Property name="Polish" value="Niewyobrażalny błękit - Nieznane" />
      <Property name="Portuguese" value="Azul inimaginável - Desconhecido" />
      <Property name="Russian" value="Невообразимая синева - Неизвестно" />
      <Property name="SimplifiedChinese" value="不可思议之蓝-未知" />
      <Property name="Spanish" value="Azul inimaginable - Desconocido" />
      <Property name="TraditionalChinese" value="難以想像的藍-未知" />
      <Property name="USEnglish" value="Unimaginable Blue - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BLUE9" />
      <Property name="BrazilianPortuguese" value="Vento azul ultramarino - Desconhecido" />
      <Property name="Dutch" value="Ultramarijne wind - Onbekend" />
      <Property name="English" value="Ultramarine Wind - Unknown" />
      <Property name="French" value="Vent bleu d'outremer - Inconnu" />
      <Property name="German" value="Ultramarin-Wind - Unbekannt" />
      <Property name="Italian" value="Vento ultramarino - Sconosciuto" />
      <Property name="Japanese" value="ウルトラマリンの風 - 不明" />
      <Property name="Korean" value="군청색 바람 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Viento azul ultramarino - Desconocido" />
      <Property name="Polish" value="Ultramarynowy wiatr - Nieznane" />
      <Property name="Portuguese" value="Vento ultramarino - Desconhecido" />
      <Property name="Russian" value="Ультрамариновый ветер - Неизвестно" />
      <Property name="SimplifiedChinese" value="深蓝之风-未知" />
      <Property name="Spanish" value="Viento azul ultramarino - Desconocido" />
      <Property name="TraditionalChinese" value="群青風-未知" />
      <Property name="USEnglish" value="Ultramarine Wind - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_BLUE10" />
      <Property name="BrazilianPortuguese" value="Supertempestades invertidas - Desconhecido" />
      <Property name="Dutch" value="Omgekeerde superstormen - Onbekend" />
      <Property name="English" value="Inverted Superstorms - Unknown" />
      <Property name="French" value="Supertempêtes inversées - Inconnu" />
      <Property name="German" value="Umgekehrte Superstürme - Unbekannt" />
      <Property name="Italian" value="Super-tempeste invertite - Sconosciuto" />
      <Property name="Japanese" value="倒錯した巨大暴風雨 - 不明" />
      <Property name="Korean" value="반전된 슈퍼 폭풍 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Supertormentas invertidas - Desconocido" />
      <Property name="Polish" value="Odwrócone superburze - Nieznane" />
      <Property name="Portuguese" value="Supertempestades invertidas - Desconhecido" />
      <Property name="Russian" value="Инвертированные суперштормы - Неизвестно" />
      <Property name="SimplifiedChinese" value="反转超级风暴-未知" />
      <Property name="Spanish" value="Supertormentas invertidas - Desconocido" />
      <Property name="TraditionalChinese" value="反轉超級風暴-未知" />
      <Property name="USEnglish" value="Inverted Superstorms - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_WATERWORLD1" />
      <Property name="BrazilianPortuguese" value="Tempestades costeiras - Desconhecido" />
      <Property name="Dutch" value="Kuststormen - Onbekend" />
      <Property name="English" value="Coastal Storms - Unknown" />
      <Property name="French" value="Tempêtes côtières - Inconnu" />
      <Property name="German" value="Küstenstürme - Unbekannt" />
      <Property name="Italian" value="Tempeste costiere - Sconosciuto" />
      <Property name="Japanese" value="沿岸の嵐 - 不明" />
      <Property name="Korean" value="해안 폭풍 - 알 수 없음" />
      <Property name="LatinAmericanSpanish" value="Tormentas costeras - Desconocido" />
      <Property name="Polish" value="Nadmorskie burze - Nieznane" />
      <Property name="Portuguese" value="Tempestades costeiras - Desconhecido" />
      <Property name="Russian" value="Прибрежные шторма - Неизвестно" />
      <Property name="SimplifiedChinese" value="沿海风暴-未知" />
      <Property name="Spanish" value="Tormentas costeras - Desconocido" />
      <Property name="TraditionalChinese" value="海岸風暴-未知" />
      <Property name="USEnglish" value="Coastal Storms - Unknown" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GASGIANT1" />
      <Property name="BrazilianPortuguese" value="Tempestades de gás - Tempestades extremas" />
      <Property name="Dutch" value="Gasstormen - Extreme stormen" />
      <Property name="English" value="Gas Storms - Extreme Storms" />
      <Property name="French" value="Tempêtes de gaz - Tempêtes extrêmes" />
      <Property name="German" value="Gasstürme - Extreme Stürme" />
      <Property name="Italian" value="Tempeste gassose - Tempeste estreme" />
      <Property name="Japanese" value="ガス嵐 - 極端なストーム" />
      <Property name="Korean" value="가스 폭풍 - 극심한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de gas - Tormentas extremas" />
      <Property name="Polish" value="Burze gazowe - Ekstremalne burze" />
      <Property name="Portuguese" value="Tempestades de Gás - Tempestades extremas" />
      <Property name="Russian" value="Газовые бури - Экстремальные штормы" />
      <Property name="SimplifiedChinese" value="气体风暴-极端风暴" />
      <Property name="Spanish" value="Tormentas de gas - Tormentas extremas" />
      <Property name="TraditionalChinese" value="氣體風暴-極端風暴" />
      <Property name="USEnglish" value="Gas Storms - Extreme Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GASGIANT2" />
      <Property name="BrazilianPortuguese" value="Ciclones eternos - Tempestades extremas" />
      <Property name="Dutch" value="Eeuwige cyclonen - Extreme stormen" />
      <Property name="English" value="Eternal Cyclones - Extreme Storms" />
      <Property name="French" value="Cyclones éternels - Tempêtes extrêmes" />
      <Property name="German" value="Ewige Zyklone - Extreme Stürme" />
      <Property name="Italian" value="Cicloni eterni - Tempeste estreme" />
      <Property name="Japanese" value="永久サイクロン - 極端なストーム" />
      <Property name="Korean" value="영원한 사이클론 - 극심한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Ciclones eternos - Tormentas extremas" />
      <Property name="Polish" value="Wieczne cyklony - Ekstremalne burze" />
      <Property name="Portuguese" value="Ciclones Eternos - Tempestades extremas" />
      <Property name="Russian" value="Вечные циклоны - Экстремальные штормы" />
      <Property name="SimplifiedChinese" value="永恒飓风-极端风暴" />
      <Property name="Spanish" value="Ciclones eternos - Tormentas extremas" />
      <Property name="TraditionalChinese" value="永恆氣旋-極端風暴" />
      <Property name="USEnglish" value="Eternal Cyclones - Extreme Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GASGIANT3" />
      <Property name="BrazilianPortuguese" value="Turbilhão de água global - Tempestades extremas" />
      <Property name="Dutch" value="Planeetbrede maalstroom - Extreme stormen" />
      <Property name="English" value="Planet-Wide Maelstrom - Extreme Storms" />
      <Property name="French" value="Maelström planétaire - Tempêtes extrêmes" />
      <Property name="German" value="Planetenweiter Sog - Extreme Stürme" />
      <Property name="Italian" value="Gorgo della grandezza di un pianeta - Tempeste estreme" />
      <Property name="Japanese" value="惑星を覆う大渦巻き - 極端なストーム" />
      <Property name="Korean" value="행성 규모의 소용돌이 - 극심한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Vorágine planetaria - Tormentas extremas" />
      <Property name="Polish" value="Wir planetarny - Ekstremalne burze" />
      <Property name="Portuguese" value="Redemoinhos Planetários - Tempestades extremas" />
      <Property name="Russian" value="Планетарный смерч - Экстремальные штормы" />
      <Property name="SimplifiedChinese" value="行星风暴-极端风暴" />
      <Property name="Spanish" value="Vorágine planetaria - Tormentas extremas" />
      <Property name="TraditionalChinese" value="全星球性大漩渦-極端風暴" />
      <Property name="USEnglish" value="Planet-Wide Maelstrom - Extreme Storms" />
    </Property>
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="WEATHER_GASGIANT4" />
      <Property name="BrazilianPortuguese" value="Tempestades de pressão constantes - Tempestades extremas" />
      <Property name="Dutch" value="Stormen met constante druk - Extreme stormen" />
      <Property name="English" value="Constant Pressure Storms - Extreme Storms" />
      <Property name="French" value="Tempêtes de pression constantes - Tempêtes extrêmes" />
      <Property name="German" value="Stürme mit konstantem Druck - Extreme Stürme" />
      <Property name="Italian" value="Tempeste a pressione costante - Tempeste estreme" />
      <Property name="Japanese" value="等圧嵐 - 極端なストーム" />
      <Property name="Korean" value="지속적인 압력의 폭풍 - 극심한 폭풍" />
      <Property name="LatinAmericanSpanish" value="Tormentas de presión constante - Tormentas extremas" />
      <Property name="Polish" value="Ciągłe burze ciśnieniowe - Ekstremalne burze" />
      <Property name="Portuguese" value="Tempestades de Pressão Constante - Tempestades extremas" />
      <Property name="Russian" value="Постоянные вызванные давлением бури - Экстремальные штормы" />
      <Property name="SimplifiedChinese" value="持续高压风暴-极端风暴" />
      <Property name="Spanish" value="Tormentas de presión constante - Tormentas extremas" />
      <Property name="TraditionalChinese" value="恆壓風暴-極端風暴" />
      <Property name="USEnglish" value="Constant Pressure Storms - Extreme Storms" />
    </Property>
  </Property>
</Data>
]]
    },
  }
}