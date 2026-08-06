--[[
  HORRIBLE TERROR - Depredadores :: HARDCORE
  ==================================================================
  Mod de dificultad. Aumenta la agresividad y la presencia de los
  depredadores que cazan al jugador.

  >>> CONFIGURACION 4 de 4: HARDCORE <<<

  ------------------------------------------------------------------
  LAS CUATRO CONFIGURACIONES
  ------------------------------------------------------------------
  Instala UNA sola. Las cuatro escriben los mismos archivos, asi que
  tener dos activas a la vez hace que una pise a la otra en silencio.

  Parametro                Vanilla  1Facil  2Normal 3Dificil 4Hardcore
  --------------------------------------------------------------------
  Densidad terrestre          x1      x2       x5      x20      x20
  Peso arquetipo DANGEROUS     1       3       10     1000     1000
    -> % planetas hostiles    9%     23%      50%      99%      99%
  Manada min/max             1/1     1/2      2/3      3/5      5/7
  Percepcion (m)              40      45       50       60       80
  Huye al % de vida           40      30       15        0        0
  % depredadores hostiles    0.5     0.6     0.75      1.0      1.0
  Tope criaturas a la vez     40      45       50       60       70
  Distancia de aburrimiento   80      80       80       80      150

  ------------------------------------------------------------------
  QUE SIGNIFICA CADA PARAMETRO
  ------------------------------------------------------------------
  Densidad terrestre     GroundGroupsPerKm. Densidad TOTAL de fauna, sin
                         distinguir rol. Sube herbivoros y depredadores
                         por igual.

  Peso DANGEROUS         Probabilidad de que un planeta reciba el
                         arquetipo con PLAYERPREDATOR. El % sale de
                         peso/(10+peso): los otros diez arquetipos suman
                         10 y no se tocan.

  Manada min/max         MinGroupSize/MaxGroupSize en las tablas
                         PLAYERPREDATOR. En vanilla es 1/1: los que te
                         cazan salen SOLOS. Es lo que mas cambia la
                         sensacion de amenaza.

  Percepcion             PredatorPerceptionDistance. Metros a los que el
                         depredador te detecta.

  Huye al % de vida      PredatorRunAwayHealthPercent. Vanilla 40: se
                         retira malherido. A 0 pelea hasta morir.

  % hostiles             PercentagePlayerPredators. Que fraccion de los
                         depredadores va a por TI en vez de cazar otras
                         criaturas. Rinde mas que la densidad y no cuesta
                         rendimiento: no anade bichos, cambia lo que
                         hacen los que ya hay.

  Tope criaturas         MaxEcosystemCreaturesNormal. Limite duro de
                         criaturas cargadas a la vez. UNICO parametro con
                         coste de rendimiento real.

  Aburrimiento           PlayerPredatorBoredomDistance. Metros que hay
                         que alejarse para que pierda interes. Solo lo
                         toca Hardcore; los otros lo dejan en el 80 de
                         vanilla en vez de reescribirlo con el mismo
                         valor, que ensuciaria el EXML delta.

  ------------------------------------------------------------------
  ARCHIVOS QUE TOCA - 4 rutas, ninguna compartida con otros mods
  ------------------------------------------------------------------
    METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN
    METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORMED.MBIN
    METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORLARGE.MBIN
    GLOBALS\GCCREATUREGLOBALS.MBIN

  ------------------------------------------------------------------
  TRAMPAS VERIFICADAS - no tocar sin leer esto
  ------------------------------------------------------------------
  * "Weight " lleva un ESPACIO AL FINAL. Typo de Hello Games en los datos
    del juego, igual que "BiomeSpecific ".

  * MaxEcosystemCreaturesNormal es ENTERO en el MXML (value="40", sin
    decimales) mientras que los demas son floats. Escribir "60", no
    "60.000000", o MBINCompiler puede rechazar la compilacion.

  * NO usar WHERE_IN_SECTION para localizar el peso de DANGEROUS. WIS
    filtra secciones enteras en vez de localizar una sub-seccion: una
    version anterior puso a 1000 los 22 pesos de Generic. La via correcta
    es SPECIAL_KEY_WORDS con dos pares encadenados.

  * Sparse/Normal/Dense/VeryDense se repiten en cinco secciones del
    archivo. Sin PRECEDING_KEY_WORDS el cambio de densidad las toca todas.

  ------------------------------------------------------------------
  VERIFICACION ESPERADA
  ------------------------------------------------------------------
  REPORT: 14 CHANGE(s) en total.
    5 en CREATUREGENERATIONDATA (4 de densidad + 1 de peso)
    2 en cada tabla PLAYERPREDATOR (x2 archivos = 4)
    5 en GCCREATUREGLOBALS
--]]

DENSITY_MULT     = 20
DANGEROUS_WEIGHT = "1000.000000"
PACK_MIN         = "5"
PACK_MAX         = "7"
PERCEPTION       = "80.000000"
RUNAWAY_HP       = "0.000000"
PCT_HOSTILE      = "1.000000"
MAX_CREATURE     = "70"   -- ENTERO, sin decimales
BOREDOM          = "150.000000"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "HorribleTerror_Predators_4-Hardcore",
["MOD_AUTHOR"]      = "ArnulfoDev",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "[HARDCORE] Depredadores mas agresivos: 99% de planetas hostiles, manadas de 5-7, deteccion a 80 m.",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        -- ---------- Densidad y reparto de arquetipos ----------
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["COMMENT"]             = "GroundGroupsPerKm x"..DENSITY_MULT,
              ["PRECEDING_KEY_WORDS"] = {"GroundGroupsPerKm"},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Sparse",    "@*"..DENSITY_MULT},
                {"Normal",    "@*"..DENSITY_MULT},
                {"Dense",     "@*"..DENSITY_MULT},
                {"VeryDense", "@*"..DENSITY_MULT},
              }
            },
            {
              ["COMMENT"]            = "Generic/Ground: DANGEROUS -> "..DANGEROUS_WEIGHT,
              ["SPECIAL_KEY_WORDS"]  =
              {
                "Generic",   "GcCreatureGenerationWeightedList",
                "Archetype", "DANGEROUS",
              },
              ["REPLACE_TYPE"]       = "ONCE",
              ["VALUE_CHANGE_TABLE"] = { {"Weight ", DANGEROUS_WEIGHT} }
            },
          }
        },
        -- ---------- Tamano de manada ----------
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORMED.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORLARGE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["COMMENT"]            = "Manada "..PACK_MIN.."/"..PACK_MAX,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinGroupSize", PACK_MIN},
                {"MaxGroupSize", PACK_MAX},
              }
            },
          }
        },
        -- ---------- Sentidos y tenacidad ----------
        {
          ["MBIN_FILE_SOURCE"] = "GLOBALS\GCCREATUREGLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["COMMENT"]            = "Sentidos y tenacidad del depredador",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PredatorPerceptionDistance",   PERCEPTION},
                {"PredatorRunAwayHealthPercent", RUNAWAY_HP},
                {"PercentagePlayerPredators",    PCT_HOSTILE},
                {"MaxEcosystemCreaturesNormal",  MAX_CREATURE},
                {"PlayerPredatorBoredomDistance", BOREDOM},
              }
            },
          }
        },
      }
    },
  },
}
