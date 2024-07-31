Languages =
{
    ["English"]			= "English",
    ["French"]			= "French",
    ["Italian"]			= "Italian",
    ["Spanish"]			= "Spanish",
    ["German"]			= "German",
    ["Russian"]			= "Russian"
}

AddNewConsumableProducts =
{
	{	--										Blunits 1K					1					--
		["PTEID"]							= "BLUNITS",
		["PTEPrice"]						= "1000",
		["PTEIcon"]							= "TEXTURES\CURRENCIES.BLUNITS.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Uncommon",
		["PTEIsConsumable"]					= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]						= "None",
		["PTEIsCraftable"]					= "False",
		["PTERequirements"] 				= "",
		["RewardData"] =
        {
            "R_BLUNITS",
			"GiveAll",
			{
				{"100", "1000", "1000", "Units"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "1,000U Credit", "Galactic Standard Currency", "An Encrypted Micropchip encased in a Copper Shell Drive. Capable of storing up to 1,000 units, and depositing them to the consumer's digital wallet", "Acquire Units", "Exosuit Processing unit will analyze the data on the card, then deposit 1,000 Units to your account."},
            {Languages["French"], "Crédit de 1 000U", "Monnaie standard galactique", "Une micropuce cryptée enfermée dans un boîtier en cuivre. Capable de stocker jusqu'à 1 000 unités, et de les déposer dans le portefeuille numérique du consommateur.", "Acquérir des unités", "L'unité de traitement de l'exocombinaison analysera les données de la carte, puis déposera 1 000 unités sur votre compte."},
            {Languages["Italian"], "Credito 1.000U", "Valuta standard galattica", "Un microchip criptato racchiuso in un drive a guscio di rame. In grado di archiviare fino a 1.000 unità e depositarle nel portafoglio digitale del consumatore.", "Acquisire unità", "L'unità di elaborazione dell'exosuit analizzerà i dati sulla scheda, quindi depositare 1.000 unità sul tuo account."},
            {Languages["Spanish"], "Crédito de 1,000U", "Moneda Estándar Galáctica", "Una micropchip cifrada en un drive de cobre. Capaz de almacenar hasta 1,000 unidades y depositarlas en la billetera digital del consumidor", "Adquirir Unidades", "La unidad de procesamiento del exotraje analizará los datos de la tarjeta, luego depositará 1,000 unidades en su cuenta."},
            {Languages["German"], "1.000U-Guthaben", "Galaktische Standardwährung", "Ein verschlüsselter Mikrochip, der in einem Kupfergehäuse-Laufwerk eingefasst ist. Kann bis zu 1.000 Einheiten speichern und diese in das digitale Portemonnaie des Verbrauchers einzahlen.", "Einheiten erwerben", "Die Exosuit-Verarbeitungseinheit analysiert die Daten auf der Karte und zahlt dann 1.000 Einheiten auf Ihr Konto ein."},
            {Languages["Russian"], "Кредит 1 000U", "Галактическая стандартная валюта", "Зашифрованный микрочип, заключенный в медную оболочку. Способен хранить до 1 000 единиц и переводить их на цифровой кошелек потребителя.", "Получение единиц", "Устройство обработки экзоскелета анализирует данные на карте, затем переводит 1 000 единиц на ваш счет."}
        }
	},
	{	--										Blunits 10K				2					--
		["PTEID"]							= "BLUNITS1",
		["PTEPrice"]						= "10000",
		["PTEIcon"]							= "TEXTURES\CURRENCIES.BLUNITS.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Uncommon",
		["PTEIsConsumable"]					= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]						= "None",
		["PTEIsCraftable"]					= "False",
		["PTERequirements"] 				= "",
		["RewardData"] =
        {

            "R_BLUNITS1",
			"GiveAll",
			{
				{"100", "10000", "10000", "Units"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "10,000U Credit", "Galactic Standard Currency", "An Encrypted Micropchip encased in a Cadmium Shell Drive. Upgrades to the Shell Storage device allow for storing and transferring of higher quantities of units. Capable of storing up to 1,000 units, and depositing them to the consumer's digital wallet", "Acquire Units", "Exosuit Processing unit will analyze the data on the card, then deposit 10,000 Units to your account."},
            {Languages["French"], "Crédit 10 000U", "Devise standard galactique", "Un micropuce chiffré enveloppé dans un boîtier en coquillage de cadmium. Les mises à niveau du dispositif de stockage de coquilles permettent de stocker et de transférer des quantités plus élevées d'unités. Capable de stocker jusqu'à 1 000 unités et de les déposer dans le portefeuille numérique du consommateur", "Acquérir des unités", "L'unité de traitement exosuit analysera les données de la carte, puis déposera 10 000 unités sur votre compte."},
            {Languages["Italian"], "10.000 CreditiU", "Valuta Standard Galattica", "Una microchip criptata racchiusa in un'unità di archiviazione con guscio di cadmio. Aggiornamenti al dispositivo di archiviazione del guscio consentono di archiviare e trasferire quantità maggiori di unità. Capace di archiviare fino a 1.000 unità e di depositarle nel portafoglio digitale del consumatore", "Acquisisci unità", "L'unità di elaborazione exosuit analizzerà i dati sulla carta e quindi depositerà 10.000 unità sul tuo account."},
            {Languages["Spanish"], "Crédito de 10,000U", "Moneda Estándar Galáctica", "Un micropchip encriptado encapsulado en una unidad de almacenamiento con carcasa de cadmio. Las actualizaciones del dispositivo de almacenamiento de carcasa permiten almacenar y transferir mayores cantidades de unidades. Capaz de almacenar hasta 1,000 unidades y depositarlas en la billetera digital del consumidor", "Adquirir unidades", "La unidad de procesamiento exosuit analizará los datos de la tarjeta y luego depositará 10,000 unidades en tu cuenta."},
            {Languages["German"], "10.000U-Kredit", "Galaktische Standardwährung", "Ein verschlüsselter Mikrochip, der von einem Cadmium-Shell-Laufwerk umhüllt ist. Upgrades des Shell-Speichergeräts ermöglichen die Speicherung und Übertragung von höheren Mengen an Einheiten. Fähig, bis zu 1.000 Einheiten zu speichern und sie auf das digitale Wallet des Verbrauchers zu überweisen", "Einheiten erwerben", "Die Exosuit-Verarbeitungseinheit analysiert die Daten auf der Karte und überweist dann 10.000 Einheiten auf Ihr Konto."},
			{Languages["Russian"], "10,000U кредит", "Галактическая стандартная валюта", "Зашифрованный микрочип, заключенный в кадмиевый накопитель. Обновления устройства хранения оболочки позволяют хранить и передавать более высокие количества единиц. Способен хранить до 1 000 единиц и вносить их на цифровой кошелек потребителя.", "Получение единиц", "Устройство обработки экзоскафандра проанализирует данные на карте, а затем внесет 10 000 единиц на ваш счет."}
		}
	},
	{	--										Blunits 100K				3					--
		["PTEID"]							= "BLUNITS2",
		["PTEPrice"]						= "100000",
		["PTEIcon"]							= "TEXTURES\CURRENCIES.BLUNITS.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Uncommon",
		["PTEIsConsumable"]					= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]						= "None",
		["PTEIsCraftable"]					= "False",
		["PTERequirements"]					= {},
		["RewardData"] =
        {

            "R_BLUNITS2",
			"GiveAll",
			{
				{"100", "100000", "100000", "Units"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "1,000U Credit", "Galactic Standard Currency", "An Encrypted Micropchip encased in an Emeril Shell Drive. Upgrades to the Shell Storage device allow for storing and transferring of higher quantities of units. Capable of storing up to 100,000 units, and depositing them to the consumer's digital wallet", "Acquire Units", "Exosuit Processing unit will analyze the data on the card, then deposit 100,000 Units to your account."},
			{Languages["French"], "Crédit de 1 000 U", "Monnaie standard galactique", "Une micropuce cryptée enfermée dans un disque de stockage Emeril. Les améliorations apportées au dispositif de stockage de la coque permettent de stocker et de transférer des quantités plus élevées d'unités. Capable de stocker jusqu'à 100 000 unités et de les déposer dans le portefeuille numérique du consommateur.", "Acquérir des unités", "L'unité de traitement de l'exosuit analysera les données de la carte, puis déposera 100 000 unités sur votre compte."},
			{Languages["Italian"], "Credito di 1.000U", "Valuta standard galattica", "Un microchip crittografato racchiuso in un drive con involucro di Emeril. Le migliorie al dispositivo di archiviazione della shell consentono di archiviare e trasferire quantità di unità più elevate. In grado di archiviare fino a 100.000 unità e depositarle nel portafoglio digitale del consumatore.", "Acquisire unità", "L'unità di elaborazione dell'exosuit analizzerà i dati sulla carta, quindi depositerà 100.000 unità sul tuo account."},
			{Languages["Spanish"], "Crédito de 1.000U", "Moneda estándar galáctica", "Un micropchip encriptado encerrado en una unidad de almacenamiento de carcasa de Emeril. Las mejoras al dispositivo de almacenamiento de carcasa permiten almacenar y transferir mayores cantidades de unidades. Capaz de almacenar hasta 100.000 unidades y depositarlas en la billetera digital del consumidor.", "Adquirir unidades", "La unidad de procesamiento del exotraje analizará los datos de la tarjeta y luego depositará 100.000 unidades en tu cuenta."},
			{Languages["German"], "1.000U-Kredit", "Galaktische Standardwährung", "Ein verschlüsselter Mikrochip in einem Emeril-Shell-Laufwerk. Upgrades für das Shell-Storage-Gerät ermöglichen das Speichern und Übertragen von höheren Mengen an Einheiten. Fähig, bis zu 100.000 Einheiten zu speichern und sie auf das digitale Wallet des Verbrauchers zu übertragen.", "Einheiten erwerben", "Die Exosuit-Verarbeitungseinheit wird die Daten auf der Karte analysieren und dann 100.000 Einheiten auf Ihr Konto einzahlen."},
			{Languages["Russian"], "1,000U Кредит", "Галактическая стандартная валюта", "Зашифрованный микрочип, заключенный в оболочку из шелла Emeril. Обновления устройства хранения оболочки позволяют хранить и передавать большие объемы единиц. Способен хранить до 100 000 единиц и вносить их на цифровой кошелек потребителя", "Получение единиц", "Модуль обработки экзоскелета проанализирует данные на карте, а затем внесет 100 000 единиц на ваш счет."}
		}
	},
	{	--										Blunits 1M				4					--
		["PTEID"]							= "BLUNITS3",
		["PTEPrice"]						= "1000000",
		["PTEIcon"]							= "TEXTURES\CURRENCIES.BLUNITS.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Uncommon",
		["PTEIsConsumable"]					= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]						= "None",
		["PTEIsCraftable"]					= "False",
		["PTERequirements"] 				= "",
		["RewardData"] =
        {

            "R_BLUNITS3",
			"GiveAll",
			{
				{"100", "1000000", "1000000", "Units"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "1,000,000U Credit", "Galactic Standard Currency", "An Encrypted Micropchip encased in an Indium Shell Drive. Upgrades to the Shell Storage device allow for storing and transferring of higher quantities of units. Capable of storing up to 1,000,000 units, and depositing them to the consumer's digital wallet", "Acquire Units", "Exosuit Processing unit will analyze the data on the card, then deposit 1,000,000 Units to your account."},
			{Languages["French"], "Crédit de 1 000 000U", "Monnaie standard galactique", "Une micropuce cryptée enfermée dans un disque de stockage en coque d'indium. Les améliorations apportées au dispositif de stockage de la coque permettent de stocker et de transférer des quantités plus élevées d'unités. Capable de stocker jusqu'à 1 000 000 unités et de les déposer dans le portefeuille numérique du consommateur.", "Acquérir des unités", "L'unité de traitement de l'exosuit analysera les données de la carte, puis déposera 1 000 000 unités sur votre compte."},
			{Languages["Italian"], "Credito di 1.000.000U", "Valuta standard galattica", "Un microchip crittografato racchiuso in un drive con involucro di indio. Le migliorie al dispositivo di archiviazione della shell consentono di archiviare e trasferire quantità di unità più elevate. In grado di archiviare fino a 1.000.000 unità e depositarle nel portafoglio digitale del consumatore.", "Acquisire unità", "L'unità di elaborazione dell'exosuit analizzerà i dati sulla carta, quindi depositerà 1.000.000 unità sul tuo account."},
			{Languages["Spanish"], "Crédito de 1.000.000U", "Moneda estándar galáctica", "Un microchip cifrado encerrado en una unidad de almacenamiento de carcasa de indio. Las mejoras en el dispositivo de almacenamiento de la carcasa permiten almacenar y transferir cantidades más elevadas de unidades. Capaz de almacenar hasta 1.000.000 unidades y depositarlas en la billetera digital del consumidor.", "Adquirir unidades", "La unidad de procesamiento del exotraje analizará los datos de la tarjeta y depositará 1.000.000 unidades en su cuenta."},
			{Languages["German"], "1.000.000U-Guthaben", "Galaktische Standardwährung", "Ein verschlüsselter Mikrochip, der in ein Indium-Gehäuse-Laufwerk eingebettet ist. Verbesserungen am Gehäuse-Speichergerät ermöglichen das Speichern und Übertragen von höheren Mengen an Einheiten. In der Lage, bis zu 1.000.000 Einheiten zu speichern und sie in die digitale Brieftasche des Verbrauchers zu hinterlegen.", "Einheiten erwerben", "Die Verarbeitungseinheit des Exosuits analysiert die Daten auf der Karte und hinterlegt dann 1.000.000 Einheiten auf Ihrem Konto."},
			{Languages["Russian"], "Кредит 1 000 000U", "Галактическая стандартная валюта", "Зашифрованный микрочип, заключенный в индиевый шелл-накопитель. Улучшения устройства хранения оболочки позволяют хранить и передавать большие объемы единиц. Способен хранить до 1 000 000 единиц и переводить их в цифровой кошелек потребителя.", "Получить единицы", "Устройство обработки экзоскелета проанализирует данные на карте, затем внесет 1 000 000 единиц на ваш счет."},
        }
	},
	{	--										Nanits 1K					5					--
		["PTEID"]							= "NANITS",
		["PTEPrice"]						= "1000", 
		["PTEIcon"]							= "TEXTURES\CURRENCIES.NANITEZ.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Uncommon",
		["PTEIsConsumable"]					= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]						= "None",
		["PTEIsCraftable"]					= "False",
		["PTERequirements"] 				= "",
		["RewardData"]          =
        {

            "R_NANITS",
			"GiveAll",
			{
				{"100", "1000", "1000", "Nanites"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "1,000N Credit", "Galactic Standard Currency", "Special compression techniques along with utilization of Activated Stellar Metals allows for Encrypted MicroChips to store and process Nanite Clusters. This Credit can store up to 1,000 Nanite Clusters.", "Acquire Nanites", "Exosuit Central Processing Unit will analyze the data on the card and Credit you 1,000 Nanites."},
			{Languages["French"], "Crédit de 1 000N", "Monnaie standard galactique", "Des techniques de compression spéciales ainsi que l'utilisation de métaux stellaires activés permettent aux micro-puces cryptées de stocker et de traiter des grappes de nanites. Ce crédit peut stocker jusqu'à 1 000 grappes de nanites.", "Acquérir des nanites", "L'unité centrale de traitement de l'exosuit analysera les données de la carte et vous créditera de 1 000 nanites."},
			{Languages["Italian"], "Credito di 1.000N", "Valuta standard galattica", "Tecniche di compressione speciali insieme all'utilizzo di metalli stellari attivati consentono a microchip crittografati di archiviare e elaborare cluster di naniti. Questo credito può memorizzare fino a 1.000 cluster di naniti.", "Acquisire naniti", "L'unità di elaborazione centrale dell'exosuit analizzerà i dati sulla carta e ti accrediterà 1.000 naniti."},
			{Languages["Spanish"], "Crédito de 1,000N", "Moneda estándar galáctica", "Técnicas especiales de compresión junto con la utilización de metales estelares activados permiten que los microchips cifrados almacenen y procesen racimos de nanites. Este crédito puede almacenar hasta 1,000 racimos de nanites.", "Adquirir nanites", "La unidad central de procesamiento del exotraje analizará los datos de la tarjeta y te acreditará 1,000 nanites."},
			{Languages["German"], "1.000N Guthaben", "Galaktische Standardwährung", "Durch spezielle Kompressionstechniken und die Nutzung von aktivierten Sternmetallen können verschlüsselte Mikrochips Naniten-Cluster speichern und verarbeiten. Dieses Guthaben kann bis zu 1.000 Naniten-Cluster speichern.", "Naniten erwerben", "Die zentrale Verarbeitungseinheit des Exosuits analysiert die Daten auf der Karte und schreibt Ihnen 1.000 Naniten gut."},
			{Languages["Russian"], "Кредит 1 000N", "Галактическая стандартная валюта", "Специальные методы сжатия в сочетании с использованием активированных звездных металлов позволяют зашифрованным микросхемам хранить и обрабатывать кластеры нанитов. Этот кредит может хранить до 1 000 кластеров нанитов.", "Получить наниты", "Центральный блок обработки экзокостюма проанализирует данные на карте и начислит вам 1 000 нанитов."}
		}
	},
	{	--										Nanits 10K				6					--
		["PTEID"]							= "NANITS1",
		["PTEPrice"]						= "10000", 
		["PTEIcon"]							= "TEXTURES\CURRENCIES.NANITEZ.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Uncommon",
		["PTEIsConsumable"]					= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]						= "None",
		["PTEIsCraftable"]					= "False",
		["PTERequirements"] 				= "",
		["RewardData"]          =
        {

            "R_NANITS1",
			"GiveAll",
			{
				{"100", "10000", "10000", "Nanites"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "10,000N Credit", "Galactic Standard Currency", "Special compression techniques along with utilization of Activated Stellar Metals allows for Encrypted MicroChips to store and process Nanite Clusters. This Credit can store up to 10,000 Nanite Clusters.", "Acquire Nanites", "Exosuit Central Processing Unit will analyze the data on the card and Credit you 10,000 Nanites."},
			{Languages["French"], "Crédit de 10 000N", "Monnaie standard galactique", "Des techniques de compression spéciales associées à l'utilisation de métaux stellaires activés permettent aux micro-puces cryptées de stocker et de traiter des amas de nanites. Ce crédit peut stocker jusqu'à 10 000 amas de nanites.", "Acquérir des nanites", "L'unité centrale de traitement de l'exosuit analysera les données de la carte et vous créditera de 10 000 nanites."},
			{Languages["Italian"], "Credito di 10.000N", "Valuta standard galattica", "Tecniche di compressione speciali insieme all'utilizzo di metalli stellari attivati permettono a microchip crittografati di archiviare e elaborare cluster di naniti. Questo credito può archiviare fino a 10.000 cluster di naniti.", "Acquisire naniti", "L'unità di elaborazione centrale dell'exosuit analizzerà i dati sulla carta e ti accrediterà 10.000 naniti."},
			{Languages["Spanish"], "Crédito de 10.000N", "Moneda estándar galáctica", "Técnicas especiales de compresión junto con la utilización de metales estelares activados permiten que los microchips encriptados almacenen y procesen conglomerados de nanites. Este crédito puede almacenar hasta 10.000 conglomerados de nanites.", "Adquirir nanites", "La unidad central de procesamiento del exotraje analizará los datos de la tarjeta y te acreditará 10.000 nanites."},
			{Languages["German"], "10.000N Kredit", "Galaktische Standardwährung", "Durch spezielle Kompressionstechniken und die Verwendung von aktivierten Sternmetallen können verschlüsselte Mikrochips Naniten-Cluster speichern und verarbeiten. Dieser Kredit kann bis zu 10.000 Naniten-Cluster speichern.", "Naniten erwerben", "Die zentrale Verarbeitungseinheit des Exosuits analysiert die Daten auf der Karte und schreibt Ihnen 10.000 Naniten gut."},
			{Languages["Russian"], "10 000N кредит", "Галактическая стандартная валюта", "Специальные технологии сжатия в сочетании с использованием активированных звездных металлов позволяют зашифрованным микрочипам хранить и обрабатывать скопления нанитов. Этот кредит может хранить до 10 000 скоплений нанитов.", "Получить наниты", "Центральный блок обработки экзо-костюма проанализирует данные на карте и зачислит на ваш счет 10 000 нанитов."}
        }
	},
	{	--										Nanits 100K				7					--
		["PTEID"]							= "NANITS2",
		["PTEPrice"]						= "100000", 
		["PTEIcon"]							= "TEXTURES\CURRENCIES.NANITEZ.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Uncommon",
		["PTEIsConsumable"]					= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]						= "None",
		["PTEIsCraftable"]					= "False",
		["PTERequirements"]					= {},
		["RewardData"]          =
        {

            "R_NANITS2",
			"GiveAll",
			{
				{"100", "100000", "100000", "Nanites"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "100,000N Credit", "Galactic Standard Currency", "Special compression techniques along with utilization of Activated Stellar Metals allows for Encrypted MicroChips to store and process Nanite Clusters. This Credit can store up to 100,000 Nanite Clusters.", "Acquire Nanites", "Exosuit Central Processing Unit will analyze the data on the card and Credit you 100,000 Nanites."},
			{Languages["French"], "Crédit de 100 000N", "Devise standard galactique", "Des techniques de compression spéciales combinées à l'utilisation de métaux stellaires activés permettent aux micro-puces cryptées de stocker et de traiter des grappes de nanites. Ce crédit peut stocker jusqu'à 100 000 grappes de nanites.", "Acquérir des nanites", "L'unité centrale de traitement de l'exosquelette analysera les données sur la carte et vous créditera de 100 000 nanites."},
			{Languages["Italian"], "Credito di 100.000N", "Valuta standard galattica", "Tecniche speciali di compressione insieme all'utilizzo di metalli stellari attivati consentono a microchip crittografati di archiviare e elaborare cluster di naniti. Questo credito può archiviare fino a 100.000 cluster di naniti.", "Acquisire naniti", "L'unità di elaborazione centrale dell'Exosuit analizzerà i dati sulla carta e vi accrediterà 100.000 naniti."},
			{Languages["Spanish"], "Crédito de 100,000N", "Moneda estándar galáctica", "Técnicas de compresión especiales junto con la utilización de metales estelares activados permiten que los Microchips Encriptados almacenen y procesen racimos de nanitos. Este crédito puede almacenar hasta 100,000 racimos de nanitos.", "Adquirir Nanitos", "La Unidad de Procesamiento Central del Exotraje analizará los datos en la tarjeta y te acreditará 100,000 Nanitos."},
			{Languages["German"], "100.000N Kredit", "Galaktische Standardwährung", "Spezielle Kompressionstechniken in Verbindung mit der Verwendung von aktivierten Sternmetallen ermöglichen es verschlüsselten Mikrochips, Nanit-Cluster zu speichern und zu verarbeiten. Dieser Kredit kann bis zu 100.000 Nanit-Cluster speichern.", "Naniten erwerben", "Die zentrale Prozessoreinheit des Exosuits analysiert die Daten auf der Karte und schreibt Ihnen 100.000 Naniten gut."},
			{Languages["Russian"], "Кредит на 100 000N", "Галактическая стандартная валюта", "Специальные методы сжатия в сочетании с использованием активированных звездных металлов позволяют зашифрованным микрочипам хранить и обрабатывать кластеры нанитов. Этот кредит может хранить до 100 000 кластеров нанитов.", "Получить наниты", "Центральный блок управления экзокостюма проанализирует данные на карте и начислит вам 100 000 нанитов."},
        }
	},
	{	--										Nanits 1M					8					--
		["PTEID"]							= "NANITS3",
		["PTEPrice"]						= "1000000", 
		["PTEIcon"]							= "TEXTURES\CURRENCIES.NANITEZ.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Uncommon",
		["PTEIsConsumable"]					= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]						= "None",
		["PTEIsCraftable"]					= "False",
		["PTERequirements"] 				= "",
		["RewardData"]          =
        {

            "R_NANITS3",
			"GiveAll",
			{
				{"100", "1000000", "1000000", "Nanites"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "1,000,000N Credit", "Galactic Standard Currency", "Special compression techniques along with utilization of Activated Stellar Metals allows for Encrypted MicroChips to store and process Nanite Clusters. This Credit can store up to 1,000,000 Nanite Clusters.", "Acquire Nanites", "Exosuit Central Processing Unit will analyze the data on the card and Credit you 1,000,000 Nanites."},
			{Languages["French"], "Crédit de 1 000 000N", "Devise standard galactique", "Des techniques de compression spéciales associées à l'utilisation de métaux stellaires activés permettent aux micro-puces cryptées de stocker et de traiter des grappes de nanites. Ce crédit peut stocker jusqu'à 1 000 000 de grappes de nanites.", "Acquérir des nanites", "L'unité centrale de traitement de l'exosuit analysera les données sur la carte et vous créditera de 1 000 000 de nanites."},
			{Languages["Italian"], "Credito di 1.000.000N", "Valuta standard galattica", "Tecniche di compressione speciali insieme all'utilizzo di metalli stellari attivati consentono a microchip crittografati di archiviare e elaborare cluster di naniti. Questo credito può archiviare fino a 1.000.000 di cluster di naniti.", "Acquisire naniti", "L'unità di elaborazione centrale dell'exosuit analizzerà i dati sulla scheda e ti accrediterà 1.000.000 di naniti."},
			{Languages["German"], "1.000.000N-Gutschrift", "Galaktische Standardwährung", "Durch spezielle Kompressionstechniken in Verbindung mit der Nutzung von aktivierten stellaren Metallen können verschlüsselte Mikrochips Naniten-Cluster speichern und verarbeiten. Mit dieser Gutschrift können bis zu 1.000.000 Naniten-Cluster gespeichert werden.", "Naniten erwerben", "Die Exosuit-Zentraleinheit wird die Daten auf der Karte analysieren und dir eine Gutschrift von 1.000.000 Naniten geben."},
			{Languages["Russian"], "1 000 000N кредит", "Галактическая стандартная валюта", "Специальные технологии сжатия в сочетании с использованием активированных звездных металлов позволяют зашифрованным микрочипам хранить и обрабатывать кластеры нанитов. Этот кредит может хранить до 1 000 000 кластеров нанитов.", "Приобрести наниты", "Центральный процессор экзо-костюма проанализирует данные на карте и начислит вам 1 000 000 нанитов."}
        }
	},
	{	--										Qunits 1K					9					--
		["PTEID"]							= "QUNITS",
		["PTEPrice"]						= "1000", 
		["PTEIcon"]							= "TEXTURES\CURRENCIES.QUICKSILVER.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Rare",
		["PTEIsConsumable"]					= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]						= "None",
		["PTEIsCraftable"]					= "False",
		["PTERequirements"] 				= "",
		["RewardData"]          =
        {

            "R_QUNITS",
			"GiveAll",
			{
				{"100", "1000", "1000", "Specials"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "1,000Q Credit", "Galactic Standard Currency", "Credits created by Polo's Quicksilver Synthesis Companion. Each one is capable of storing and depositing 1,000 Quicksilver", "Acquire Quicksilver", "Exosuit Central Processing Unit will analyze the data on the Microchip and deposit 1,000 Quicksilver to your account."},
			{Languages["French"], "Crédit de 1 000Q", "Monnaie standard galactique", "Crédits créés par le compagnon de synthèse de mercure rapide de Polo. Chacun est capable de stocker et de déposer 1 000 mercures rapides.", "Acquérir du mercure rapide", "L'unité de traitement central de l'exosuit analysera les données sur la micropuce et déposera 1 000 mercures rapides sur votre compte."},
			{Languages["Italian"], "Credito di 1.000Q", "Valuta standard galattica", "Crediti creati dal Compagno di Sintesi dell'Argento Vivo di Polo. Ognuno è in grado di archiviare e depositare 1.000 argenti vivi.", "Acquisire argento vivo", "L'Unità di elaborazione centrale dell'exosuit analizzerà i dati sulla microchip e depositarà 1.000 argenti vivi sul tuo account."},
			{Languages["Spanish"], "Crédito de 1.000Q", "Moneda estándar galáctica", "Créditos creados por el Compañero de Síntesis de Plata Rápida de Polo. Cada uno es capaz de almacenar y depositar 1.000 Plata Rápida.", "Adquirir Plata Rápida", "La Unidad de Procesamiento Central del Exotraje analizará los datos en el microchip y depositará 1.000 Plata Rápida en su cuenta."},
			{Languages["German"], "1.000Q Kredit", "Galaktische Standardwährung", "Kredite, die von Polos Quicksilver Synthesis Companion erstellt wurden. Jeder ist in der Lage, 1.000 Quicksilver zu speichern und zu hinterlegen.", "Erwerb von Quicksilver", "Die Zentrale Verarbeitungseinheit des Exosuits analysiert die Daten auf dem Mikrochip und hinterlegt 1.000 Quicksilver auf Ihrem Konto."},
			{Languages["Russian"], "Кредит 1 000Q", "Галактическая стандартная валюта", "Кредиты, созданные Спутником синтеза быстрого серебра Polo. Каждый способен хранить и вносить 1 000 быстрых серебра.", "Получение быстрого серебра", "Центральный процессор Экзо-костюма проанализирует данные на микрочипе и зачислит 1 000 быстрых серебра на ваш счет."}
        }
	},
	{	--										Qunits 10K				10				--
		["PTEID"]							= "QUNITS1",
		["PTEPrice"]						= "10000", 
		["PTEIcon"]							= "TEXTURES\CURRENCIES.QUICKSILVER.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Rare",
		["PTEIsConsumable"]					= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]						= "None",
		["PTEIsCraftable"]					= "False",
		["PTERequirements"] 				= "",
		["RewardData"]          =
        {

            "R_QUNITS1",
			"GiveAll",
			{
				{"100", "10000", "10000", "Specials"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "10,000Q Credit", "Galactic Standard Currency", "Credits created by Polo's Quicksilver Synthesis Companion. Each one is capable of storing and depositing 10,000 Quicksilver", "Acquire Quicksilver", "Exosuit Central Processing Unit will analyze the data on the Microchip and deposit 10,000 Quicksilver to your account."},
			{Languages["French"], "Crédit de 10 000Q", "Monnaie standard galactique", "Crédits créés par le compagnon de synthèse de mercure rapide de Polo. Chacun est capable de stocker et de déposer 10 000 mercures rapides.", "Acquérir du mercure rapide", "L'unité de traitement central de l'exosuit analysera les données sur la micropuce et déposera 10 000 mercures rapides sur votre compte."},
			{Languages["Italian"], "Credito di 10.000Q", "Valuta standard galattica", "Crediti creati dal Compagno di Sintesi dell'Argento Vivo di Polo. Ognuno è in grado di archiviare e depositare 10.000 argenti vivi.", "Acquisire argento vivo", "L'Unità di elaborazione centrale dell'exosuit analizzerà i dati sulla microchip e depositarà 10.000 argenti vivi sul tuo account."},
			{Languages["Spanish"], "Crédito de 10.000Q", "Moneda estándar galáctica", "Créditos creados por el Compañero de Síntesis de Plata Rápida de Polo. Cada uno es capaz de almacenar y depositar 10.000 Plata Rápida.", "Adquirir Plata Rápida", "La Unidad de Procesamiento Central del Exotraje analizará los datos en el microchip y depositará 10.000 Plata Rápida en su cuenta."},
			{Languages["German"], "10.000Q Kredit", "Galaktische Standardwährung", "Kredite, die von Polos Quicksilver Synthesis Companion erstellt wurden. Jeder ist in der Lage, 10.000 Quicksilver zu speichern und zu hinterlegen.", "Erwerb von Quicksilver", "Die Zentrale Verarbeitungseinheit des Exosuits analysiert die Daten auf dem Mikrochip und hinterlegt 10.000 Quicksilver auf Ihrem Konto."},
			{Languages["Russian"], "Кредит 10 000Q", "Галактическая стандартная валюта", "Кредиты, созданные Компаньоном по синтезу квиксильвера Поло. Каждый из них способен хранить и вносить вклад в размере 10 000 квиксильверов.", "Приобрести квиксильвер", "Центральный процессорный блок экзокостюма проанализирует данные на микрочипе и внесет 10 000 квиксильверов на ваш счет."}
        }
	},
	{	--										Qunits 100K				11				--
		["PTEID"]							= "QUNITS2",
		["PTEPrice"]						= "100000", 
		["PTEIcon"]							= "TEXTURES\CURRENCIES.QUICKSILVER.DDS",
		["PTESubCat"]						= "Exotic",
		["PTEProdCat"]						= "Consumable",
		["PTERarity"]						= "Rare",
		["PTEIsConsumable"]					= "True",
		["PTEStackSize"]					= "10",
		["PTETradeCat"]						= "None",
		["PTEIsCraftable"]					= "False",
		["PTERequirements"] 				= "",
		["RewardData"]          =
        {

            "R_QUNITS2",
			"GiveAll",
			{
				{"100", "100000", "100000", "Specials"},
			}
		},
		["Languages"] =
        {
            {Languages["English"], "100,000Q Credit", "Galactic Standard Currency", "Credits created by Polo's Quicksilver Synthesis Companion. Each one is capable of storing and depositing 100,000 Quicksilver", "Acquire Quicksilver", "Exosuit Central Processing Unit will analyze the data on the Microchip and deposit 100,000 Quicksilver to your account."},
			{Languages["French"], "Crédit de 100 000Q", "Monnaie standard galactique", "Crédits créés par le compagnon de synthèse de mercure rapide de Polo. Chacun est capable de stocker et de déposer 100 000 mercures rapides.", "Acquérir du mercure rapide", "L'unité de traitement central de l'exosuit analysera les données sur la micropuce et déposera 100 000 mercures rapides sur votre compte."},
			{Languages["Italian"], "Credito di 100.000Q", "Valuta standard galattica", "Crediti creati dal Compagno di Sintesi dell'Argento Vivo di Polo. Ognuno è in grado di archiviare e depositare 100.000 argenti vivi.", "Acquisire argento vivo", "L'Unità di elaborazione centrale dell'exosuit analizzerà i dati sulla microchip e depositarà 100.000 argenti vivi sul tuo account."},
			{Languages["Spanish"], "Crédito de 100.000Q", "Moneda estándar galáctica", "Créditos creados por el Compañero de Síntesis de Plata Rápida de Polo. Cada uno es capaz de almacenar y depositar 100.000 Plata Rápida.", "Adquirir Plata Rápida", "La Unidad de Procesamiento Central del Exotraje analizará los datos en el microchip y depositará 100.000 Plata Rápida en su cuenta."},
			{Languages["German"], "100.000Q Kredit", "Galaktische Standardwährung", "Kredite, die von Polos Quicksilver Synthesis Companion erstellt wurden. Jeder ist in der Lage, 100.000 Quicksilver zu speichern und zu hinterlegen.", "Erwerb von Quicksilver", "Die Zentrale Verarbeitungseinheit des Exosuits analysiert die Daten auf dem Mikrochip und hinterlegt 100.000 Quicksilver auf Ihrem Konto."},
			{Languages["Russian"], "Кредит на 100 000Q", "Галактическая стандартная валюта", "Кредиты, созданные Компаньоном по синтезу быстрого серебра Поло. Каждый из них способен хранить и вносить 100 000 быстрых серебряных.", "Получение быстрого серебра", "Центральный процессорный блок экзо-костюма проанализирует данные на микрочипе и внесет 100 000 быстрых серебряных на ваш счет."}
        }
	}
}

----------------------------------------------------------------------------------------------
-------------------------------     CODE LOGIC START      ------------------------------------
----------------------------------------------------------------------------------------------
ModName                 			= "Galactic Standard Currency "
GameVersion							= "v5.03.0"
Build					 			= ".1"
Author                  			= "EchoTree"
LuaAuthor							= "EchoTree and Jackty89"
ModDescription          			= "Adds Craftable, Tradable Consumable Currencies to NMS"
CustomLanguageTag       			= "NMSGSC"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]       		= Author.."'s "..ModName..GameVersion..Build..".pak",
    ["MOD_DESCRIPTION"]		= "Lua Written by"..LuaAuthor..ModDescription.."Compatible with NMS "..GameVersion,
    ["MOD_AUTHOR"]          		= Author,
    ["ADD_FILES"]           			=
    {
    },
    ["MODIFICATIONS"] 			=
    {
        {
            ["MBIN_CHANGE_TABLE"] 	=
            {
                {	--																														PRODUCT TABLE																														1																							--
                    ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                    }
                },
                {	--																												CONSUMABLEITEMTABLE																												2																							--
                    ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                    }
                },
                {	--																														REWARDTABLE																															3																							--
                    ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                    }
                },
                {	--																												PURCHASEABLESPECIALS																												4																							--
                    ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/PURCHASEABLESPECIALS.MBIN",
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                    }
                },
                {	--																													DEFAULTSAVEDATA																													5																							--
                    ["MBIN_FILE_SOURCE"] 	= "METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN",
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                    }
                },
                {	--																														DEFAULTREALITY																														6																							--
                    ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"TradeSettings", "GcTradeSettings.xml", "SuitTechSpecialist", "GcTradeData.xml", },
							["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Poor",		"10"},
								{"Average",		"25"},
								{"Wealthy",		"50"},
								{"Pirate",		"5"},								
							},
						},
					}
                },
                {	--																													  GCDEBUGOPTIONS																													7																							--
                    ["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LocTableList"},
                            ["ADD"] 	=
                            [[
                                <Property value="NMSString0x20.xml">
                                    <Property name="Value" value="NMS_]]..CustomLanguageTag..[[" />
                                </Property>
                            ]]
                        }
                    }
                },
            }
        }
    }
}
-- 																																																								
function CreateProductTableEntry(NewPTEID, NewPTEName, NewPTENameLc, NewPTESub, NewPTEDesc, NewPTEPrice, NewPTEIcon, NewPTESubCat, NewPTEProdCat, NewPTERarity, NewPTEIsConsumable, NewPTEStackSize, NewPTETradeCat, NewPTEIsCraftable, NewPTERequirements)
	local RequirementsString = ""
    if NewPTERequirements ~= "" then
        RequirementsString = [[<Property name="Requirements">]]..NewPTERequirements..[[</Property>]]
   else
        RequirementsString = [[<Property name="Requirements" />]]
    end

    local result =
    [[
    <Property value="GcProductData.xml">
      <Property name="ID" value="]]..NewPTEID..[[" />
      <Property name="Name" value="]]..NewPTEName..[[" />
      <Property name="NameLower" value="]]..NewPTENameLc..[[" />
      <Property name="Subtitle" value="]]..NewPTESub..[[" />
      <Property name="Description" value="]]..NewPTEDesc..[[" />
      <Property name="Hint" value="" />
      <Property name="GroupID" value="" />
      <Property name="DebrisFile" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="BaseValue" value="]]..NewPTEPrice..[[" />
      <Property name="Level" value="0" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="]]..NewPTEIcon..[[" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="HeroIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="]]..NewPTEIcon..[[" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0.1" />
        <Property name="G" value="0.1" />
        <Property name="B" value="0.2" />
        <Property name="A" value="1" />
      </Property>
      <Property name="Category" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="]]..NewPTESubCat..[[" />
      </Property>
      <Property name="Type" value="GcProductCategory.xml">
        <Property name="ProductCategory" value="]]..NewPTEProdCat..[[" />
      </Property>
      <Property name="Rarity" value="GcRarity.xml">
        <Property name="Rarity" value="]]..NewPTERarity..[[" />
      </Property>
      <Property name="Legality" value="GcLegality.xml">
        <Property name="Legality" value="Legal" />
      </Property>
      <Property name="Consumable" value="]]..NewPTEIsConsumable..[[" />
      <Property name="ChargeValue" value="0" />
      <Property name="StackMultiplier" value="]]..NewPTEStackSize..[[" />
      <Property name="DefaultCraftAmount" value="1" />
      <Property name="CraftAmountStepSize" value="1" />
      <Property name="CraftAmountMultiplier" value="1" />
      ]]..RequirementsString..[[
      <Property name="AltRequirements" />
      <Property name="Cost" value="GcItemPriceModifiers.xml">
        <Property name="SpaceStationMarkup" value="0" />
        <Property name="LowPriceMod" value="0" />
        <Property name="HighPriceMod" value="0" />
        <Property name="BuyBaseMarkup" value="0" />
        <Property name="BuyMarkupMod" value="0" />
      </Property>
      <Property name="RecipeCost" value="1" />
      <Property name="SpecificChargeOnly" value="True" />
      <Property name="NormalisedValueOnWorld" value="5.121795E-05" />
      <Property name="NormalisedValueOffWorld" value="5.121795E-05" />
      <Property name="TradeCategory" value="GcTradeCategory.xml">
        <Property name="TradeCategory" value="]]..NewPTETradeCat..[[" />
      </Property>
      <Property name="WikiCategory" value="Crafting" />
      <Property name="IsCraftable" value="]]..NewPTEIsCraftable..[[" />
      <Property name="DeploysInto" value="" />
      <Property name="EconomyInfluenceMultiplier" value="1" />
      <Property name="PinObjective" value="UI_CRAFT_OBJ" />
      <Property name="PinObjectiveTip" value="UI_PIN_]]..NewPTEID..[[_OBJ_TIP" />
      <Property name="CookingIngredient" value="False" />
      <Property name="CookingValue" value="0" />
      <Property name="GoodForSelling" value="False" />
      <Property name="GiveRewardOnSpecialPurchase" value="" />
      <Property name="EggModifierIngredient" value="False" />
      <Property name="IsTechbox" value="False" />
    </Property>
	]]
	
	return result
end

--This function is deprecated as I removed the need to craft the units.
function CreatePTERequirement(IngredientID, IngredientType, IngredientAmount)
    return
    [[
	<Property value="GcTechnologyRequirement.xml">
	  <Property name="ID" value="]]..IngredientID..[[" />
	  <Property name="Type" value="GcInventoryType.xml">
		<Property name="InventoryType" value="]]..IngredientType..[[" />
	  </Property>
	  <Property name="Amount" value="]]..IngredientAmount..[[" />
	</Property>
    ]]
end

function CreateConsumableTableEntry(NewCTEID, NewCTERewardID)
    return
    [[
        <Property value="GcConsumableItem.xml">
            <Property name="ID" value="]]..NewCTEID..[[" />
            <Property name="RewardID" value="]]..NewCTERewardID..[[" />
            <Property name="TutorialRewardID" value="" />
            <Property name="ButtonLocID" value="UI_CONSUME_]]..NewCTEID..[[" />
            <Property name="ButtonSubLocID" value="UI_CONSUME_]]..NewCTEID..[[_SUB" />
            <Property name="CloseInventoryWhenUsed" value="False" />
            <Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
                <Property name="AkEvent" value="INVALID_EVENT" />
            </Property>
            <Property name="RewardFailedLocID" value="INTRCT_NOROOM_L" />
            <Property name="DestroyItemWhenConsumed" value="True" />
            <Property name="AddCommunityTierClassIcon" value="False" />
            <Property name="SuppressResourceMessage" value="False" />
            <Property name="CustomOSD" value="" />
        </Property>
    ]]
end

function CreateRewardTableEntry(NewRTEID, NewRTERewardChoice, NewRTERewards)
    return [[
        <Property value="GcGenericRewardTableEntry.xml">
            <Property name="Id" value="]]..NewRTEID..[[" />
            <Property name="List" value="GcRewardTableItemList.xml">
                <Property name="RewardChoice" value="]]..NewRTERewardChoice..[[" />
                <Property name="OverrideZeroSeed" value="False" />
                <Property name="List">
                    ]]..NewRTERewards..[[
                </Property>
            </Property>
        </Property>
    ]]
end

function CreateRTERewardsList(PercentageChance, AmountMin, AmountMax, CurrencyType)
    return [[
        <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..PercentageChance..[[" />
            <Property name="Reward" value="GcRewardMoney.xml">
            <Property name="AmountMin" value="]]..AmountMin..[[" />
            <Property name="AmountMax" value="]]..AmountMax..[[" />
            <Property name="RoundNumber" value="False" />
            <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="]]..CurrencyType..[[" />
            </Property>
            </Property>
            <Property name="LabelID" value="" />
        </Property>
    ]]
end

function CreateKnownProduct(ProductID)
    return [[
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="]]..ProductID..[[" />
        </Property>
    ]]
end

function CreateShopEntry(NewId)
    return [[
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="]]..NewId..[[" />
        </Property>
    ]]
end

function CreateSpecialsShopEntry(NewSSID)
	return
	[[
		<Property value="GcPurchaseableSpecial.xml">
		  <Property name="ID" value="]]..NewSSID..[[" />
		  <Property name="ShopNumber" value="1" />
		  <Property name="MissionTier" value="-1" />
		  <Property name="IsConsumable" value="True" />
		</Property>
	]]
end

----------------------------------------------------------------------------------------------
-------------------------------     Product creation     -------------------------------------
----------------------------------------------------------------------------------------------

-------------------------------     Consumable Product   -------------------------------------
local AddToProductTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local AddToSpecialShop	= NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["EXML_CHANGE_TABLE"]
local AddToDefaultReality = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][6]["EXML_CHANGE_TABLE"]
local PTETable = {}

for i = 1, #AddNewConsumableProducts do
	local Requirements 							= {}
	local PTEID									= string.upper(AddNewConsumableProducts[i]["PTEID"])
	local PTEName								= string.upper(PTEID).."_NAME"
	local PTENameLc								= string.upper(PTEID).."_NAME_L"
	local PTEDesc								= string.upper(PTEID).."_DESC"
	local PTESub								= string.upper(PTEID).."_SUB"
	local PTEPrice								= AddNewConsumableProducts[i]["PTEPrice"]
	local PTEIcon								= AddNewConsumableProducts[i]["PTEIcon"]
	local PTESubCat								= AddNewConsumableProducts[i]["PTESubCat"]
	local PTEProdCat							= AddNewConsumableProducts[i]["PTEProdCat"]
	local PTERarity								= AddNewConsumableProducts[i]["PTERarity"]
	local PTEIsConsumable						= AddNewConsumableProducts[i]["PTEIsConsumable"]
	local PTEStackSize							= AddNewConsumableProducts[i]["PTEStackSize"]
	local PTETradeCat							= AddNewConsumableProducts[i]["PTETradeCat"]
	local PTEIsCraftable						= AddNewConsumableProducts[i]["PTEIsCraftable"]
---[[ Requirements are deprecated but I'm leaving it in here as an example for future usage
	local RequirementsList 						= AddNewConsumableProducts[i]["PTERequirements"]
	if RequirementsList ~= "" then
		for k = 1, #RequirementsList  do
        local RequirementID     				= ""
        local RequirementType					= ""
        local RequirementAmount					= ""

        RequirementID							= RequirementsList[k][1]
        RequirementType							= RequirementsList[k][3]
        RequirementAmount						= RequirementsList[k][2]
        table.insert(Requirements, CreatePTERequirement(RequirementID, RequirementType, RequirementAmount))
    	end	
	else
		table.insert(Requirements, '""')
	end
--]]
	table.insert(PTETable, CreateProductTableEntry(PTEID, PTEName, PTENameLc, PTESub, PTEDesc, PTEPrice, PTEIcon, PTESubCat, PTEProdCat, PTERarity, PTEIsConsumable, PTEStackSize, PTETradeCat, PTEIsCraftable, table.concat(Requirements)))
	
end

-- lets iterate through only the desired sections of the AddNewConsumableProducts table
for i = 1, 4 do
	local Requirements 							= {}
	local PTEID									= string.upper(AddNewConsumableProducts[i]["PTEID"])
	local PTEName								= string.upper(PTEID).."_NAME"
	local PTENameLc								= string.upper(PTEID).."_NAME_L"
	local PTEDesc								= string.upper(PTEID).."_DESC"
	local PTESub								= string.upper(PTEID).."_SUB"
	local PTEPrice								= AddNewConsumableProducts[i]["PTEPrice"]
	local PTEIcon								= AddNewConsumableProducts[i]["PTEIcon"]
	local PTESubCat								= AddNewConsumableProducts[i]["PTESubCat"]
	local PTEProdCat							= AddNewConsumableProducts[i]["PTEProdCat"]
	local PTERarity								= AddNewConsumableProducts[i]["PTERarity"]
	local PTEIsConsumable						= AddNewConsumableProducts[i]["PTEIsConsumable"]
	local PTEStackSize							= AddNewConsumableProducts[i]["PTEStackSize"]
	local PTETradeCat							= AddNewConsumableProducts[i]["PTETradeCat"]
	local PTEIsCraftable						= AddNewConsumableProducts[i]["PTEIsCraftable"]

	table.insert(PTETable, CreateProductTableEntry(PTEID, PTEName, PTENameLc, PTESub, PTEDesc, PTEPrice, PTEIcon, PTESubCat, PTEProdCat, PTERarity, PTEIsConsumable, PTEStackSize, PTETradeCat, PTEIsCraftable, table.concat(Requirements)))

    -------- Adds products to store  this can be added to a seperate loop if not all products should be added------------
    local ShopEntry = CreateShopEntry(PTEID)
    AddToDefaultReality[#AddToDefaultReality + 1]  =
    {
        ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "SpaceStation", "AlwaysPresentProducts"},
        ["ADD"] = ShopEntry
    }
    AddToDefaultReality[#AddToDefaultReality + 1]  =
    {
		["PRECEDING_KEY_WORDS"] = {"TradeSettings", "Shop", "AlwaysPresentProducts"},
        ["ADD"] = ShopEntry
    }
end

for j = 5, 8 do
	local Requirements 							= {}
	local PTEID									= string.upper(AddNewConsumableProducts[j]["PTEID"])
	local PTEName								= string.upper(PTEID).."_NAME"
	local PTENameLc								= string.upper(PTEID).."_NAME_L"
	local PTEDesc								= string.upper(PTEID).."_DESC"
	local PTESub								= string.upper(PTEID).."_SUB"
	local PTEPrice								= AddNewConsumableProducts[j]["PTEPrice"]
	local PTEIcon								= AddNewConsumableProducts[j]["PTEIcon"]
	local PTESubCat								= AddNewConsumableProducts[j]["PTESubCat"]
	local PTEProdCat							= AddNewConsumableProducts[j]["PTEProdCat"]
	local PTERarity								= AddNewConsumableProducts[j]["PTERarity"]
	local PTEIsConsumable						= AddNewConsumableProducts[j]["PTEIsConsumable"]
	local PTEStackSize							= AddNewConsumableProducts[j]["PTEStackSize"]
	local PTETradeCat							= AddNewConsumableProducts[j]["PTETradeCat"]
	local PTEIsCraftable						= AddNewConsumableProducts[j]["PTEIsCraftable"]
	
	table.insert(PTETable, CreateProductTableEntry(PTEID, PTEName, PTENameLc, PTESub, PTEDesc, PTEPrice, PTEIcon, PTESubCat, PTEProdCat, PTERarity, PTEIsConsumable, PTEStackSize, PTETradeCat, PTEIsCraftable, table.concat(Requirements)))

    local ShopEntry = CreateShopEntry(PTEID)
    AddToDefaultReality[#AddToDefaultReality + 1]  =
    {
        ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "SuitTechSpecialist", "AlwaysPresentProducts"},
        ["ADD"] = ShopEntry
    }
end

for k = 9, 11 do
	local Requirements 								= {}
	local PTEID										= string.upper(AddNewConsumableProducts[k]["PTEID"])
	local SSID										= string.upper(AddNewConsumableProducts[k]["PTEID"])
	local PTEName									= string.upper(PTEID).."_NAME"
	local PTENameLc									= string.upper(PTEID).."_NAME_L"
	local PTEDesc									= string.upper(PTEID).."_DESC"
	local PTESub									= string.upper(PTEID).."_SUB"
	local PTEPrice									= AddNewConsumableProducts[k]["PTEPrice"]
	local PTEIcon									= AddNewConsumableProducts[k]["PTEIcon"]
	local PTESubCat									= AddNewConsumableProducts[k]["PTESubCat"]
	local PTEProdCat								= AddNewConsumableProducts[k]["PTEProdCat"]
	local PTERarity									= AddNewConsumableProducts[k]["PTERarity"]
	local PTEIsConsumable							= AddNewConsumableProducts[k]["PTEIsConsumable"]
	local PTEStackSize								= AddNewConsumableProducts[k]["PTEStackSize"]
	local PTETradeCat								= AddNewConsumableProducts[k]["PTETradeCat"]
	local PTEIsCraftable							= AddNewConsumableProducts[k]["PTEIsCraftable"]
	
	table.insert(PTETable, CreateProductTableEntry(PTEID, PTEName, PTENameLc, PTESub, PTEDesc, PTEPrice, PTEIcon, PTESubCat, PTEProdCat, PTERarity, PTEIsConsumable, PTEStackSize, PTETradeCat, PTEIsCraftable, table.concat(Requirements)))

    AddToSpecialShop[#AddToSpecialShop + 1] =
	{
		["PRECEDING_KEY_WORDS"]	=	{"Table"},
		["ADD"] = CreateSpecialsShopEntry(SSID)
	}
	
	local ShopEntry = CreateShopEntry(PTEID)
    AddToDefaultReality[#AddToDefaultReality + 1]  =
    {
        ["PRECEDING_KEY_WORDS"] = {"NeverSellableItems"},
        ["ADD"] = ShopEntry
    }
end

AddToProductTable[#AddToProductTable + 1]  =
{
	["PRECEDING_KEY_WORDS"] = {"Table"},
	["ADD"] = table.concat(PTETable)
}	

local AddToConsumableTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
local AddToRewardTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]
local AddToDefaultSaveData = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][5]["EXML_CHANGE_TABLE"]
local CITETable									= {}
local RewardTable								= {}
local KnownProdTable							= {}

for i = 1, #AddNewConsumableProducts do
	local Rewards 								= {}
    local ProductID								= string.upper(AddNewConsumableProducts[i]["PTEID"])
    local ProductRewardData						= AddNewConsumableProducts[i]["RewardData"]
    local RewardId								= string.upper(ProductRewardData[1])
    local RewardChoice							= ProductRewardData[2]
    local RewardData							= ProductRewardData[3]

    for k = 1, #RewardData  do
        local PercentageChance					= ""
        local AmountMin							= ""
        local AmountMax							= ""
        local CurrencyType						= ""

        PercentageChance						= RewardData[k][1]
        AmountMin								= RewardData[k][2]
        AmountMax								= RewardData[k][3]
        CurrencyType							= RewardData[k][4]

        table.insert(Rewards, CreateRTERewardsList(PercentageChance, AmountMin, AmountMax, CurrencyType))
    end	
	
	table.insert(RewardTable, CreateRewardTableEntry(RewardId, RewardChoice, table.concat(Rewards)))
	table.insert(CITETable, CreateConsumableTableEntry(ProductID, RewardId))
	table.insert(KnownProdTable, CreateKnownProduct(ProductID))
end	   
 --- Adds the new consumable
AddToConsumableTable[#AddToConsumableTable + 1] =
{
	["PRECEDING_KEY_WORDS"] = {"Table"},
	["ADD"] = table.concat(CITETable)
}
-- Create new reward entry
AddToRewardTable[#AddToRewardTable + 1] =
{
	["PRECEDING_KEY_WORDS"] = {"GenericTable"},
	["ADD"] = table.concat(RewardTable)
}
--Adds recipe to know products
AddToDefaultSaveData[#AddToDefaultSaveData + 1] =
{
	["PRECEDING_KEY_WORDS"] = {"KnownProducts"},
	["ADD"] = table.concat(KnownProdTable)
}

----------------------------------------------------------------------------------------------
-------------------------------     Language file creation     -------------------------------
----------------------------------------------------------------------------------------------
function NewLanguagueFile(DescriptionEntries)
    return
    [[<?xml version="1.0" encoding="utf-8"?>
        <Data template="TkLocalisationTable">
            <Property name="Table">]]
            ..DescriptionEntries..
            [[
            </Property>
        </Data>
    ]]
end

function NewLanguageEntry(Language, NewDescription)
    return
    [[
        <Property name="]]..Language..[[" value="]]..NewDescription..[[">
        </Property>
    ]]
end

function NewDescriptionText(newDescId, LanguageEntries)
    return
    [[
        <Property value="TkLocalisationEntry.xml">
            <Property name="Id" value="]]..newDescId..[[" />
            ]]..LanguageEntries..[[
        </Property>
    ]]
end

function FillCustomlangFile(Data)
    local NewProductLangEntries = {}

    for i = 1, #Data do
        local ProductID = string.upper(Data[i]["PTEID"])
        local DescriptionEntries = {}
        local SubtitleEntries = {}
        local NameLCEntries = {}
        local NameEntries = {}
		local ButtonNameEntries = {}
		local ButtonSubEntries = {}

        local LanguagesData = Data[i]["Languages"]

        local NameID = ProductID.."_NAME"
        local NameLCID = ProductID.."_NAME_L"
        local SubID = ProductID.."_SUB"
        local DescID = ProductID.."_DESC"
		local ButtonID = "UI_CONSUME_"..ProductID
		local ButtonSubID = "UI_CONSUME_"..ProductID.."_SUB"

        for j = 1, #LanguagesData do
            local Language = LanguagesData[j][1]

            local Name = string.upper(LanguagesData[j][2])
            table.insert(NameEntries, NewLanguageEntry(Language, Name))

            local NameLC = LanguagesData[j][2]
            table.insert(NameLCEntries, NewLanguageEntry(Language, NameLC))

            local NewSubTitle = LanguagesData[j][3]
            table.insert(SubtitleEntries, NewLanguageEntry(Language, NewSubTitle))

            local NewDescription = LanguagesData[j][4]
            table.insert(DescriptionEntries, NewLanguageEntry(Language, NewDescription))
			
			local NewButtonName = LanguagesData[j][5]
				print("NewButtonName = LanguagesData[j][5] is ["..tostring(NewButtonName).."]")
				if NewButtonName ~= nil then
				table.insert(ButtonNameEntries, NewLanguageEntry(Language, NewButtonName))
			end
	
			local NewButtonSub = LanguagesData[j][6]
				print("NewButtonSub = LanguagesData[j][6] is ["..tostring(NewButtonSub).."]")
				if NewButtonSub ~= nil then
				table.insert(ButtonSubEntries, NewLanguageEntry(Language, NewButtonSub))
			end
        end

        table.insert(NewProductLangEntries, NewDescriptionText(NameLCID, table.concat(NameLCEntries)))
        table.insert(NewProductLangEntries, NewDescriptionText(NameID, table.concat(NameEntries)))
        table.insert(NewProductLangEntries, NewDescriptionText(SubID, table.concat(SubtitleEntries)))
        table.insert(NewProductLangEntries, NewDescriptionText(DescID, table.concat(DescriptionEntries)))
        table.insert(NewProductLangEntries, NewDescriptionText(ButtonID, table.concat(ButtonNameEntries)))
        table.insert(NewProductLangEntries, NewDescriptionText(ButtonSubID, table.concat(ButtonSubEntries)))

    end
    return NewLanguagueFile(table.concat(NewProductLangEntries))
end

local AddCustomLanguageFiles = NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"]
for Language in pairs(Languages) do

    --- Creating a singulare list that contains all new productID's and their langauge strings
    local LanguageData = { ["PTEID"] = "" , ["Languages"] = {}}
    for i = 1, #AddNewConsumableProducts do
        LanguageData[#LanguageData+1] = 
        {
            ["PTEID"] = AddNewConsumableProducts[i]["PTEID"],
            ["Languages"] = AddNewConsumableProducts[i]["Languages"] ,
        }
    end
	
    AddCustomLanguageFiles[#AddCustomLanguageFiles +1] =
    {
        ["FILE_DESTINATION"] 	=	"LANGUAGE\NMS_"..CustomLanguageTag.."_"..Language..".EXML",
        ["FILE_CONTENT"] 		=	FillCustomlangFile(LanguageData)
    }

end