DEFAULT_SEED_NUMBER = 5000
SELECTED_SEED_TYPES =
{
    "Fighter", "Dropship", "Scientific", "Shuttle", "Royal", "Alien", "Sail", "Robot",
}

SEED_TYPE_PATH =
{
    ["Fighter"]="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN",
    ["Dropship"]="MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN",
    ["Scientific"]="MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN",
    ["Shuttle"]="MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN",
    ["Royal"]="MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN",
    ["Alien"]="MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC.SCENE.MBIN",
    ["Sail"]="MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC.SCENE.MBIN",
    ["Robot"]="MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELSHIP_PROC.SCENE.MBIN",
}

STATS =
{
    ["Fighter"] =
    {
        {["ID"] = "SHIPJUMP1", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPGUN1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "SHIPSHIELD", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPLAS1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "LAUNCHER", ["Amount"] ="200", ["MaxAmount"]="300", ["Damage"]="0"},
        {["ID"] = "HYPERDRIVE", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0"},

    },
    ["Dropship"] =
    {
        {["ID"] = "SHIPJUMP1", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPGUN1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "SHIPSHIELD", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPLAS1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "LAUNCHER", ["Amount"] ="200", ["MaxAmount"]="300", ["Damage"]="0"},
        {["ID"] = "HYPERDRIVE", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0"},
    },
    ["Scientific"] =
    {
        {["ID"] = "SHIPJUMP1", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPGUN1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "SHIPSHIELD", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPLAS1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "LAUNCHER", ["Amount"] ="200", ["MaxAmount"]="300", ["Damage"]="0"},
        {["ID"] = "HYPERDRIVE", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0"},
    },
    ["Shuttle"] =
    {
        {["ID"] = "SHIPJUMP1", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPGUN1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "SHIPSHIELD", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPLAS1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "LAUNCHER", ["Amount"] ="200", ["MaxAmount"]="300", ["Damage"]="0"},
        {["ID"] = "HYPERDRIVE", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0"},
    },
    ["Royal"] =
    {
        {["ID"] = "SHIPJUMP1", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPGUN1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "SHIPSHIELD", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPLAS1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "LAUNCHER", ["Amount"] ="200", ["MaxAmount"]="300", ["Damage"]="0"},
        {["ID"] = "HYPERDRIVE", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0"},
    },
    ["Alien"] =
    {
        {["ID"] = "SHIPJUMP_ALIEN", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPGUN_ALIEN", ["Amount"] ="100", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "SHIELD_ALIEN", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPLAS_ALIEN", ["Amount"] ="100", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "LAUNCHER_ALIEN", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "WARP_ALIEN", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0"},
    },
    ["Sail"] =
    {
        {["ID"] = "SHIPJUMP1", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPGUN1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "SHIPSHIELD", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPLAS1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "LAUNCHER", ["Amount"] ="200", ["MaxAmount"]="300", ["Damage"]="0"},
        {["ID"] = "HYPERDRIVE", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0"},
        {["ID"] = "SOLAR_SAIL", ["Amount"] ="-1", ["MaxAmount"]="100", ["Damage"]="0"},
    },
    ["Robot"] =
    {
        {["ID"] = "SHIPJUMP_ROBO", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPGUN_ROBO", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "SHIPSHIELD_ROBO", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "LAUNCHER_ROBO", ["Amount"] ="300", ["MaxAmount"]="300", ["Damage"]="0"},
        {["ID"] = "HYPERDRIVE_ROBO", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0"},
        {["ID"] = "LIFESUP_ROBO", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0"},
    }
}

----------------------------------------------------
--CODINGS-------------------------------------------
----------------------------------------------------

function GetSeed(i)
    local table = {"0x7978a399fb151016", "0x78ebcce1455975ab", "0x3199ad99035bd03f", "0xacb3a68ba38f2fee", "0x39ab5aff38a25c13", "0x314ef2bb4c308317", "0x85461f55965ded17", "0xea6ab5ae8bb81b94", "0xd88cfa6332d4dc3e", "0x39e776635dc93c63", "0x329421a27bbce300", "0x6c28a8904d693940", "0xed7081d3b5fc8857", "0x6299a619b1e87d24", "0x65e30166d9637cd0", "0x2726c9d0504ecfb1", "0x1ad111565c248d4e", "0xf99deeb3fb48922f", "0xd61b8bf8c15c2cdf", "0x6d4375c0854a0581", "0x71dd3a304638be63", "0xe75c1f885d7d9be5", "0x66013db585f310f5", "0xb0a231fcb8508da5", "0xce87cb5d4f0df3bd", "0x433c42f412b78be5", "0x3401a87e749e37d8", "0x3060bc26cf3a607c", "0xcbfc0e8f932420f4", "0x66fe147d1e97c125", "0x3d0f337b6520063d", "0x9104bd4b34187820", "0xb52f4721b0fabc37", "0x86bb866925eecb1c", "0xe9a8233cf7be5093", "0x81aa00eff7a70ab5", "0xa79e199f7fd95e7f", "0x55bc2aac8a30fa70", "0xa8fcfb411b9f9b3c", "0x18f42fabc944feac", "0x77aea8c64dcdf5cc", "0x34a410584011d993", "0x4d37e9917d782bbb", "0x52c06e3bce13cf8d", "0xcea6d5a98d297ea1", "0x873b84327abcf578", "0xe96e70a52a4e5242", "0x799bb7a6b359a4d1", "0x665723357014834d", "0xa244e175defeb32", "0x421f056ecc2681cc", "0x3fe3cca40051613e", "0xb26564f45203911", "0x65e4c9f5d5ace8f1", "0x68a7f1e94054d6c0", "0x7f526cbf4beb2210", "0x4bab74db35c6d2ea", "0x6a41db49425cbfb4", "0x2e87a86b5d5a927f", "0x605b5ef8a171d6e5", "0xa62e9a291f81d96f", "0x927a8ab045b7e0f6", "0xe248ebbd84815d71", "0x49e8953c5b604156", "0xfda91649fc89006c", "0x14eeb4a4c084cc30", "0x9dfcf65333ea7ebd", "0xccff72e2b28e010e", "0x63e89ce44cfbbc12", "0x227c0a153eb4a0e", "0x4a7593f564ae95a9", "0xbbd75ff960d94d6", "0xb540a4fc6ba7274b", "0x464c0edb9ffcb402", "0x9a5b4599332464a3", "0x25dd68b8d807905", "0x2c7fb01d01371d55", "0xe9bc90052254440e", "0x75a4ccbcd7464de9", "0xb0a071f13d6b0999", "0xdded003c44f454d1", "0x93d9bca817cc1450", "0x9484d7a9b22dca2a", "0x597c6d7a41ed1362", "0x8d248785763f5aa8", "0x578639f289f5418", "0xfbed0bbcec225f49", "0x5d9d9590e8ac41e9", "0xee2324a7f54214c1", "0x117ef1dd1e9e2d69", "0xba83f550f9df4bab", "0xf00b90e4011bd408", "0xf872ff00e09a6aa5", "0xf711887528f0356b", "0x98f08809489b9a8", "0x3ded6940ec06beb5", "0xb18de23e5b4d45e9", "0xe419e8162deb7cf5", "0x3041f81869b605c9", "0x526faf2033e7a2e8", "0x67a642eb07a1c546", "0x3bd71817804c6753", "0x902b408ca0ba9945", "0xbc37e8cd043345ff", "0x739af1977e713036", "0x6a30b5dd8fe8733a", "0xee525a82f9ea5f4b", "0xd7cb075e06509e9f", "0x80c9b5e5fffcc20", "0xb8462eaa1c8efd88", "0x451e1309af3fb308", "0xc7fbe2c4ee4c42c", "0x4e3d03ebc935eeed", "0xfa32463ff5d70018", "0xa566af46e5ac18c3", "0x42569f1fcde4945d", "0x646d58a33ff7bb9f", "0x2690457d2fb3260a", "0x61262d7a942271d5", "0xe7633cdd5e12142b", "0xb046c3f41cff59e8", "0x38201bb71e290fdd", "0x9bae0cdbb4136234", "0x980316eb210849b5", "0x8b2cf711ab38979e", "0x6bce451d05c1066b", "0xd8c4f61365e704ba", "0x7e0b7ea7449d9605", "0xe9abac9317eb760b", "0x39b8630daa286700", "0x70bfc3ec737967c8", "0xc7c257694362f1bf", "0x9321b4017484e705", "0x869da61945933326", "0xfbcbaba917366655", "0x9ec82c67bf40e3f6", "0x7e7d6f2466d4df83", "0x75a74a98d5c9006f", "0x48ed80db8df7690", "0xeee4bb5704c32f2d", "0x673907485185ec5e", "0x72dabe02dc163369", "0x8c2ab2ea1eef7ba2", "0xb94b84f94f7b90e8", "0xa08f4991d5302d22", "0x2f272b2bded23dff", "0xd6fea233b9d50d95", "0xa49da42f1ea54655", "0x137e0f5a77b1f184", "0x5877ab8cbb0a9483", "0x70c1a6f2be385907", "0x11643858e372a694", "0xccd3b4ca4cb063dc", "0x4e5fbf409b6a2d67", "0x24809ed37d35875a", "0xc03c88afdadb858b", "0xd2b67c7a7f3ebd81", "0xb27a8bb9e17bd703", "0xfd87e5885f230a48", "0x329f873f840fe2ff", "0xa2be58a9d7c5d55f", "0x406576070ddc6770", "0x512d7abffc27db68", "0xfe6f5b70a563c589", "0x285bae2bff48048e", "0x9091ff6d286e84f7", "0x6df66a8c0b447432", "0xe95287509774b8c2", "0xe3e668532d20de8a", "0xeb95cf9b1b83344b", "0x290b07458222e726", "0x5f5bfc4d65b58e8", "0xec5a6b14eaf8703e", "0x62d241e2affa1977", "0x512b7124b7f10631", "0xf7d324634c709dd0", "0x54cfec8b67eed8d3", "0x9bfa634511bb72d9", "0xb9f6c5fede4c58b0", "0xbce349b32e87313b", "0x13cb5b614af4f8c0", "0x20bb7032d45a5c95", "0x8eab2703fd8e234f", "0xa1752d3fd54fb98c", "0xbad510d5ec02b8d3", "0xa286fed2c22622df", "0xa35a055969fb7039", "0x2ee8c90efaceec1d", "0xfac0055e3b9ad1f", "0x1439b055ec3753af", "0xa5b767e2b5ddffae", "0xdef9a304f923fc88", "0x68edcb529d07e3c4", "0xebcc406f18b0ef51", "0xa4259b0380a18f4f", "0x4fbc1b7f7e511b55", "0x8ca2a72a1f370f74", "0x298af80d81784627", "0xef58a23b373d6589", "0xd3263ca0dc9bfe6f", "0x58b18bae599431aa", "0x3e0580bd1afc87", "0x7893c402f5c20b0d", "0x2d541b054bb99b9b", "0x6b8da55f8b4f47d8", "0x9ecc7692363b1c9b", "0xf4102a1f502e784a", "0x303f9f632ca6e1eb", "0x93260d181b574699", "0xffd9750eb710aa68", "0x902d18a9fa4b1962", "0x5ba9b63f7f7516f8", "0x89c63dfb127d82a8", "0x5399cc4aeed62a1e", "0x4aa6084b43bc2024", "0x932514850ce90408", "0x7703f8cd0474e31f", "0x42b10246840cef0b", "0xcbcf9fbe92ba17be", "0xc06a3cd9608c692e", "0x8cad3080335ec94", "0x2e7fe6ff7e127bc0", "0x12da82954d0d17a7", "0xf5ceebf6ff86a78e", "0xa7154263132c8947", "0xd177c131822abdaa", "0x8b5b1ac13bfbdac2", "0x9b9e549b74be7eaf", "0xe8a5a399ec381821", "0x2e8c458dacb87f3", "0x771a3ef6037d252c", "0x5e4399479e25bd62", "0xcee5f739de9fd6df", "0xf5f0a7d6dd44cf9", "0x56380158355391e1", "0x7c1515d312695015", "0xd2e4c54e28af6b67", "0xd7f5cbee2aed7e39", "0x16d67809468a2029", "0xaacc9d7dc4a7beda", "0xf5780ac31df7834c", "0xe738eca7e7599a14", "0x8fe6bcae0ebb990a", "0xd6a9a0a7f96bfad3", "0x33eb7b1bbb0b1b52", "0x1bd726a2d0ad707", "0xa81af9b338e0188", "0x84b1c1a17903f792", "0x5d9e3c6a9b410b67", "0x13b1d90a721c3ca1", "0xf8c97498c36215c0", "0xe980c9079208668c", "0x2c30d424b054f10b", "0xbde71488fac876c", "0xb96962a9b4326c63", "0xefd42f2a3fdcc032", "0xa0eb0128d0eb9fb8", "0x9bbb37997af50d23", "0xde7c4e622509c5a0", "0x609434262bd75e5a", "0xb6204bef7510076b", "0x5bbfc8e11a5458c5", "0x1c8ca5d16f63f897", "0xa4c28161b0484f22", "0xe2dde804b7fda2ad", "0xe35a6778c54e4f98", "0x61088ccb30a0f75e", "0x8baf445987ded949", "0x3d746b251fa86376", "0x1bcbfe9bc1f9ac48", "0x811862500c407718", "0xfe5ed28ed2e910a1", "0x7da01f476919c9b", "0x58d76b825d9a8b1c", "0x5e71d961b9424dfe", "0x9ca20eff37fdfa97", "0xbd4a56309a14e8b0", "0xadb7879a957db29c", "0x843b8794cdda95af", "0xb21add1488be2f43", "0xd7df9abf58fe02c0", "0x36ae8e29de2b9a18", "0xabbfc2318a37305", "0x87e282bcbe5eee77", "0x59bb4eafd719fb2d", "0x4831323c96d0c454", "0x8122acec78cd7b65", "0x8220c3294f4db5f", "0xa3c9e95bed31525d", "0x972c148f241bfc33", "0xfa897e8551882c34", "0xe509e569fedfe37", "0xf3273eef8d8ad6ea", "0x8c3a9b9631332dba", "0xfb9a050e0c83ab5f", "0xc969467cc3bea538", "0xc365919a8a63104a", "0xf6ca9b3fb7e6ab94", "0xf65c52d473b43d6b", "0x5e565470c295317a", "0xe1dc1d9f872d1555", "0xe39a3e55a22c4566", "0xa48666cd11f03f04", "0x11ba090c346f12c5", "0xb6f6b1cb067d063d", "0x9ca782f2d998718b", "0xf3bae637b1227373", "0x1652a858dbdaf642", "0x1a0cf759b435d0cd", "0xe28f06019318a988", "0x5fac428028b042e8", "0x7f56a0c5beb58acd", "0xb4ead4f7e7a3f74a", "0xf764de83791941aa", "0xd8deb952e4f1e20d", "0x270a9feec5badaf9", "0x400167b3952d63bc", "0x80faf6e4ee5a1d40", "0xbdfe9ea453427c33", "0x2b2e67d89d24acec", "0xae0aa6667e1cbfbe", "0x79d620502c2d9f53", "0x76577a1fab309610", "0xc39c63e344ec9b15", "0x10e91d9d08c8f43f", "0x7d3e5ca2f422a6e6", "0x10ba8da0707be8ec", "0xac354090a45576e0", "0x96be34a950ef569c", "0xb29641097bcab47e", "0x64d8d6b6fa6d9746", "0xfbe1f98720acf696", "0x375a9b403fd46236", "0x18e9627f4fd8c7c0", "0x34ac2ec3f0b76f29", "0x362c2243f348bd98", "0xaf7bdc5161a6b071", "0x4ef6f0f5d6c0b6e1", "0xa5d25c8eeb4449c0", "0x9795fc0151df09aa", "0x184eded78f09c19c", "0xbc95883b30c878a", "0x8a8ad5d5d3df29fc", "0xbe3cac148c29e6a", "0x7fdd441eb839c27c", "0x2ea523628ba9767a", "0xab30b53cd48d394a", "0xce4933a54cb705ad", "0x6eae542a24cd833d", "0xfae90d392af9f005", "0x6968c853020731f9", "0xfea02cb2ab1e9600", "0xb0b5243bcb65866b", "0x17cecb69df71c635", "0x49553b5a52d6ae02", "0x5b530fa7a609764", "0xa4f38d99c5d97358", "0xc546602cbdef7486", "0x6ee8a6d76284d26d", "0xadfe3601db9d7096", "0xafb951061b0bbaca", "0xef9ff2c50f02f95", "0x3111e506cf7cd342", "0x71eda5a78565ba58", "0xe7a8028f0219e318", "0x489de3f941f97310", "0xa248197546a250c7", "0xfc47ad4a686b6737", "0x6c401f041511b2b9", "0x17ce74bba3178c5c", "0xd69be3a4e87deb7e", "0x6b67c0f01c2921f6", "0x3b2ced06006a4e98", "0xd89eb7b516b63812", "0xcf4e00dd16ace846", "0xd7ab63653ccf9032", "0xd79932a1dfbbcf12", "0x672dc41231bd58a", "0xe4bced29e6b6c605", "0x211116dfa2a646c7", "0xfeea6ea18dcf8da9", "0x9d5ce80f5f2cc06a", "0xc64f1df8e18d6961", "0xe083f6b5272336b", "0xb67306ecd55b26ce", "0x276a42b668dffe0b", "0x94cfd37dff9e9d92", "0xd2ee66a907d830e1", "0xf494d5f03903314", "0x69d0e6f6d3b1c700", "0x5610c1f7a6be2bd7", "0x4bc938c3c9e76395", "0x23f3930830c9faa2", "0x6506844975bf1baa", "0x8c86ae417b4905c6", "0x36345fdd6cbde83c", "0x6348ac8e6ade9899", "0x560308f408aa6210", "0x29cd0c3f7c2b2135", "0xa96d9b88c3d33c35", "0x7ea85541f637d71b", "0x140f89ee47619d55", "0xf4ac299a0156d360", "0x6f20f08aa06958b8", "0x76ef33572fd8cd9a", "0xc646aa02ba1c076d", "0x82df2ef473295713", "0x8b0cd59f7f3b2a77", "0x579124d5e0a477d8", "0x96d5f5d8422b73d5", "0x54e147e34d792766", "0x70b4129e4b6cbee9", "0xd6be5b8016602c75", "0xa3b62d501a7c9da4", "0x9fa205253f09ed6b", "0x59ff38fa35de0eb1", "0x7d7def7d5aa0ea95", "0x7cafffab7a65a0d3", "0x7d8595029988b914", "0xf159824325cc7900", "0x36763da75e7566c2", "0x1e93a28028783d6e", "0x8e4652d31d587576", "0x8b674f816806484b", "0xf12f64cad48149d0", "0xc268efd4efa43dbe", "0x9e55547d642824a9", "0x8d75ab809f490b95", "0xac90387f579c6b0f", "0xaa6f4fd0f7b27155", "0x773fba550f7f0ec6", "0xa24086fc16a32506", "0x1d6e0491a5045795", "0x69802471aba76e2f", "0xce5f4dd68f729729", "0x4540033b2648e686", "0x2b1845941a31e3f4", "0xa4334e7b1e0b4e82", "0x2cfdd69caf2b578f", "0xde0cf2b37e1bb03f", "0x91326e07ea2ac4cd", "0x4b6132df901598cb", "0xd55f2b79a768c4f2", "0xee4703584a31cf88", "0x6dee1c3dfd80a35e", "0x79364c834b51392b", "0x1ca7fbac30b5ef39", "0xf07cf081125ca395", "0x1f81826d64a29bed", "0xe5a506f44d192cf8", "0x5a9662fcc32dd792", "0x98f22d6af80536de", "0x5248b7289d9ab398", "0x9e8735bb2e193c25", "0x982fbd64fbd01e2e", "0xc13f95d9ee2d88a2", "0x63f00dc0afde6d8f", "0x7c0235284644fc62", "0xf656d561585131c4", "0x65b91313a362fec4", "0x32073e4acfd0cc44", "0xf5a79ac617354d8a", "0xaf24aa2e0484f8ac", "0xe887a6a4409611eb", "0x761e3f0dc1fe8a40", "0x5240e6ef6ee37985", "0xe60b0db9b1746bca", "0x3685b9b145e70adc", "0x4429d6a3d10027c5", "0x4da9bbcca95e9351", "0xa90f818919807598", "0xe123eda31b92fec6", "0xee4212eff46af50b", "0x280c3643ed8d086d", "0xbeb43b608393ccd", "0x955a633da8f0509b", "0xf4a29f034f2853ab", "0x8e4d8c3d74f13bd3", "0x82bd72d88c03f40", "0xafb63063a9f933b0", "0xfa2186ec941ff9dc", "0x2af1d447c2b2870c", "0x2d94758befe37290", "0x783a10e26498e5e2", "0x873f439f68664f1", "0x748f11d9143af4c1", "0xa6278a26412e5105", "0x1a0b745f73e6ccae", "0xba32b99d9d9061f2", "0x48a74850a41d2f4e", "0x1e7c9f6b1360425e", "0x7f4699afa681ac44", "0x17c0b894f910ed46", "0x5d8853c71544afed", "0x165ca961abc6f4cc", "0x9dbe199c156cb9f7", "0xb46512a205e14da1", "0x7fa1b6fe4e85888c", "0x2d278da611ff2247", "0x6768d03594d0fffd", "0x4381ed6360fbaccd", "0x703891c2be360b21", "0x9fe286e1d8a3ed41", "0x558f915dd3bac03b", "0xef30ec1e8586b09a", "0x1c8f4a93b79f8673", "0xedab4487becf2f8f", "0xc2647e6081c92b1d", "0x5e3678ae20eaf814", "0xfb5f818b89cfb4e6", "0xf4f96ebda31e67fa", "0x340c085172aa760e", "0x35e6b56b9c84489", "0x6443624060483ce2", "0xec3d20f73812cd85", "0x31f03a5386cf6933", "0x476a762f56f23ba8", "0xddcdb64c5296f870", "0x4d96b5d7c19ff4c6", "0x31b2bc0dfffbbde4", "0xd2f070a1a9e2219e", "0x2412ed7b1c2eaba", "0xd1c4c61220493ed4", "0xacdef1e3be22a052", "0xb58bfbb1b8386125", "0x83730edb1a297e14", "0xbb5569df52d214fd", "0xbdecc48842bdf041", "0x5a71c10bc6040b66", "0xfa23db0822370873", "0x9994f6d5dcfeb707", "0xb99683f0a3bdd840", "0x20470b565072be16", "0x12f1e5077fc8fb49", "0xc8f600eb670eb5d1", "0x8072efa98795ec8d", "0xaaf9072ac2c4ff3d", "0xc196e942c8fd484d", "0xb22d8bda91334b5c", "0x324bf20d67754166", "0x5ce0c1c0c9b78894", "0x5613dc206c630321", "0x93922e898df4344d", "0x350d515bd3eb5fe9", "0x914addee2b35be47", "0xc93049ea315a9c12", "0x48b6c0a9da9acd32", "0x2c05e90e6cf5fea7", "0xbef9a29eec8e10b6", "0x2b9b2eb87e8ea9cf", "0x4362b9340bb6bbec", "0xb792ec2c4f301954", "0x16cb2d9a45d625fd", "0xee337faa2a497886", "0xf611802a74565e2", "0xb2394d360bcb32f7", "0xb16fa5007a5ceeac", "0x8e50531feeadab88", "0xdd1a75ce629d200e", "0xc4d34ef88b80bd6b", "0xb04be7189a0b2762", "0xf0d0f8fdddbb9cc3", "0x69dae438d75c5417", "0x4210443c504862e9", "0xf1f0eb8e43cab1da", "0x40232f5cd781057f", "0x7d4f9280ab51477b", "0x4c9649e544d22f2f", "0x273e822c01af1c0f", "0xcc159f58064f42fa", "0xb4730a24483554ef", "0xf60f805c9c2676e7", "0x305bdac3cf1899b0", "0xe9d15bfce807265f", "0xbd3de784cefe343", "0xfefe34f4953ff827", "0x71dd2cb201a0e8e0", "0x9377956c3e0c02c4", "0xf6c5587461293063", "0x6befa86159ffe412", "0xb4582e960e11ea17", "0x505db4ec937be5f8", "0xb2b103551201d37c", "0xbae344159630f049", "0x4e9e2fe6f0eda9e9", "0x18924096a6bd7439", "0x71c694634b79f831", "0xe907139e52326e3a", "0x90100ae464b50b0d", "0xc384d2241405a072", "0x225197c4e6bfbab6", "0x9be55b02badf6896", "0xb9b5dccbc6c53d95", "0xe08334eaa058cd5a", "0xe3293dfc605ea90f", "0x505bbd991a2d642a", "0x2e1d791d69c08554", "0xd3bffc0ca182c361", "0xf57e6b938a2ddf98", "0xce07c56f88bfdb35", "0x627bab93d61a3bc0", "0x276047c84d15ad4d", "0x87da04f595c41559", "0x33a5ded390d39af0", "0x277e91aeecb103d8", "0xa43667aef5ad3a98", "0xbfb500c8997b77e2", "0x9f9d18dfdfd73bfa", "0xd0f157d4003a5495", "0x3830734cb556d8bd", "0xc1d6220d78f1584", "0x6542d111fd299505", "0xc78d25773b8a7224", "0xbf0961c9e571faa6", "0xf9bad6fb3eb0b0a6", "0x19d84090b1799bd5", "0x82e4365d441075e8", "0x57d4a3965006d5ae", "0x1bdf4b564d0f4e37", "0xccb0afb27cb417ec", "0x73b9790062be682f", "0x4d5349765e599997", "0x3a4f60e94d6ae160", "0x90221a0aaa2154a7", "0x669c70166bc82484", "0xea0c48ae53001451", "0x5e504d930b775b", "0xe11206b7f38f4a6", "0x5ad9cd6af5a869f8", "0x8141a0cccc8ab952", "0xa09facc6e331e3a7", "0x1ffce4857f7ebedb", "0x60ad311b365f9baa", "0x4a9535e90411435b", "0x1218621343ebf01c", "0x323e185c7a3ce175", "0xdf7cfb212cc4f57c", "0x18999a2a947967e4", "0xbb72b46258fd2a17", "0x5a2e4727bd112d02", "0xa615d1f0bc88fe05", "0x6743f4ccc1afc006", "0x3b17d9d5bde02600", "0xe41cb5f47a8d2e8e", "0xc7f1de4d090234f6", "0xe3066bacefd4d75e", "0x8eeeca9d5bc53312", "0xd4db5d5cdd2efab4", "0xba364640634d65c0", "0x33154d789331730d", "0xfefbf34c0b2e1aa8", "0xe47249492f071288", "0xc3a40f17f9f6d640", "0x70c79287166e337b", "0xa91f2aa62c57efed", "0x7004e2169754cc03", "0xef7261f8fdb2171e", "0xb932f58cad619ae4", "0x8b11566ae60e5819", "0x43133aa75f5a6fc2", "0x313731651dd6374e", "0x68bcb8f62257efb9", "0xadd3abde1157f5d8", "0x762a49fa49062273", "0x771ea8a2bbe7c63f", "0x41b7db57294f44e2", "0xc812f0d6d2ca73ff", "0x8b6ef9a3066f1e71", "0x862948ee701af6e4", "0xc41ba6c3a944f9ef", "0x88ff06a4b5dcc4c4", "0x18e1aed44dc04572", "0xf8215e7d2c3ca090", "0xed869871a1799e11", "0xea29af3ec264b2c7", "0x700398dab23d401a", "0x68239688f6e084a6", "0xb3d13503e455a511", "0xef096a5d1e5807bd", "0x16815cd831279f9c", "0x43880ef59f1800b2", "0x7ba34cd7b3112ff4", "0x716a8fd1a5484563", "0x87401d37d688fda5", "0xa1fbeb093621091b", "0xeca0388f40d5a3af", "0xb9f2311ec560a14e", "0xc6afabd6a4949220", "0xaf68332945c41329", "0x4ba28f7d3fa474bc", "0x4d2ca35629739f1e", "0x36fdd19798de1a39", "0xf97af26a10e2b87e", "0x43d429a825fc5e6b", "0x61d22c6efda90323", "0xfa37e8d409e144a0", "0xec7ca388efcbd3b2", "0xc1c9ab88bc235067", "0xa6e2a02f32d6b54f", "0x7043904d13385259", "0x73ff32fbf6270a59", "0x51eaff35adc581a0", "0x1463c43b86560fae", "0x5b02c2fb6a62d9bb", "0x715293b86ec6f1f0", "0x8938934cf4855983", "0xc9ae40347a2fcfa6", "0xda74f53f5940ab71", "0x459314724a789596", "0xbbeb14b40cf200e9", "0x3bfea681bc53d261", "0x5aede857e086ed07", "0xaf368714bdc698aa", "0x352167bfa5f6ee3e", "0xfb6b724602100e27", "0x9153a7e158ab6371", "0xd3d73929f03d90c", "0x3c26f21fd9c4f0e2", "0x5630f1f46c6116bc", "0xc48982de4e81d53a", "0xa235e9d6664c9ecc", "0x35e3762ed5636bbf", "0xacd5277039392ba8", "0x2117af2c832ab558", "0xaaa7a931a2e40e01", "0xdb8f2cb8e3f76ac4", "0x34cbf4b502d11a9d", "0x8ca3f3fc6462e561", "0xb4f67814b1e6a3f3", "0x4d7b9470d1a4aa6f", "0x6ba69a09d1a0b70f", "0xef69e01c5bacc3da", "0x69afdb389658636e", "0x10ba21da80ea109e", "0xf5d47b0ca08cdac0", "0x52a50f30088d1a3c", "0xbafb24e008ca600b", "0xa055d612d060e39e", "0x643b5557f3600a24", "0x13cfc6217b355450", "0xb2c8b198da6b47df", "0x92fd834ba7da7b3b", "0xca7486659c962446", "0x372e310ebea3567b", "0xb381f57a6f41e5f", "0x9f717d809bb37456", "0x784c7003501f8b52", "0xdec12945fdc8b06b", "0xc3bd9cd0f873b5e0", "0xa29cc44b169155f4", "0xfd54f00e07ed71", "0x7365d39d81e8814d", "0x44e2001e61f4046e", "0x2f0d00cd7ca84c1e", "0x96537009754f4abe", "0xde472e04269f9a7f", "0x743d91cc5a16240a", "0xd5283f5ef2853425", "0xf552517ee9954b44", "0xde5a2351c109b425", "0x37f9fa213d028862", "0x6d8976aa1d262c7d", "0xfb5d1a2fa58ef626", "0xab973c67df81a87", "0xadd4c18ea28d03ea", "0x103082a8ca097480", "0x539cf79398f62203", "0xcfafdad8cc39f329", "0x35538fff959e22ba", "0x147956a0b01bda55", "0x694e29e9a1925e62", "0x7835dcda8223d945", "0xba2b9256c5a12cbd", "0xde72c293614e1b3e", "0x689882112e972a0c", "0xd27b354bab9fb47f", "0xf37aed9d3697f13d", "0x52c9312889ab0c40", "0xb1b6eb166c2aac77", "0x22bbbf63d0cb0e7c", "0xe7c0f69265c09a92", "0xf538a186fbf9019a", "0xbd30c9d1f065fd98", "0x1ab39a2c44ad1745", "0x7aa3b1005d774249", "0x7427be21b45a48", "0xdbc693d5d6435769", "0xc4a5d47d304a1b13", "0xf718a5ba4859071e", "0x954634505a533531", "0x94103f1cbb40a004", "0xd5fff93f6259b6e7", "0xd007b329879e76cf", "0x7b06bef32dfa7e4d", "0x1be9ae0856544845", "0x3e517310d5e5b948", "0x58209caab255b8bf", "0x1599edcdf54314f2", "0xf325c9feca9bfbb4", "0x2cfede0cf54a3bf3", "0xc1a8b7170797406f", "0x4ca5c9212005b211", "0xc957e34d35e597c3", "0xb2a7d625633a8951", "0xdbad61972e8188e4", "0xbc8d4af4494e5780", "0x2003826bef2132dd", "0xd693f15cae2abf1d", "0x2c0693f6e6881893", "0x4ac8994eed7a5329", "0x46c4bdcd6c4c71b0", "0x2f1882f6ae29608b", "0x86e74758a0a30740", "0xf950c2ee3eda65f0", "0xa1b5d0b24f1475f3", "0xbcd78b073bccea4d", "0xbefcb3d06b965afa", "0x6b18ab91f3784eae", "0xd21ecd952dfcc6da", "0x68b2e6bf6df813b5", "0x569b1ecd8f89a241", "0x682cff3e76208fed", "0xe61dace3743f57e4", "0x41a2f441418ad806", "0x846958ce2cc96de", "0x9eaa5721f929e81d", "0x9d71c1253a94e5dd", "0xfdfdff71d5ea94ba", "0x1d3e6b0e5705991e", "0xe747700a9bb5990a", "0xa607b72aec042d43", "0x5adfe18ede457421", "0x2b5d050a09ef2a85", "0x66b2665927100c41", "0x6591c1d86bd2392c", "0xa7720295f0393380", "0x2d60ed31cc47af0d", "0x2c0e37f418ebe0cf", "0x21ca7e7b398af697", "0xeb48924f191f140c", "0x507c9d1ab092302f", "0xf1043ca86e0b953e", "0x878ab7040f163d40", "0xca7a6e0258049876", "0xc230592aead2bf3b", "0xb2b4e417674d209f", "0x629ede98e0c81eb7", "0x9f8c32a555c19a96", "0xd3e5c7441782861c", "0xc56c8f4468b300c6", "0x2b125420d1d71252", "0x8059035d8e54367a", "0x832fc9e29930c82", "0xe748ef9184e7136b", "0x65bafc3d03992ccb", "0x4a4f0a7c5cc8e003", "0xb07d5a8ae523a9d7", "0xdcded745b6cece2c", "0xe2909a3036ea980f", "0x350497a20624a1a5", "0xd676e872149dd57d", "0x8cc111e22687c552", "0x4eec4ffa8827a0d4", "0x43bfcea6ff88680d", "0x9e680fab0667ce4a", "0xb33cd8e1eb96c832", "0xf9df91029d7ea85d", "0x58bb2b8fc6950ba", "0x6222b69cdbd5be74", "0x6af8c76c6fbc2083", "0x7ff75e5e45507843", "0xd900b4ff4bfebe69", "0x6ad1dc293d52427d", "0x7f16cbff590dbc27", "0x5f253c5b49c9ec06", "0x3c9ac8d985c8ce70", "0xd9f19fdf3496c735", "0x7159f39d841388af", "0xe9ad7f35066400ca", "0x7c96e0d327554eaa", "0x2478dee4ac1f1602", "0x8977626dd828ba05", "0xfdeee59faf7851a7", "0xc12b2bc71c42d65b", "0x768b62105e9a8829", "0x4b4d5fef80884de6", "0xd181ac98ed77bb96", "0x166d9a93dfaa7d11", "0x2bfd87eb4eace64", "0x48fb30e8eef2bb7f", "0x898ea6a861d4e465", "0x4c796d364ca4d4d9", "0xa1bf973929044678", "0x2ca729ff5d4cfa3", "0x19b0a96a9f63fb06", "0x9d1ebc510335924a", "0xacad928cafa19eb4", "0x7158d45dec58fe28", "0x32c81ed0b8737337", "0xa285a6fead290abc", "0x8f68805e4aae3807", "0xe2d9f4b376f38db", "0x9676006d04d4d428", "0xd837ca33004eedac", "0x278e41c2e3b2909f", "0xee8b5030f1f3c6ba", "0xe9dd41c784eaba27", "0x441b3aa53c9e9120", "0x60cecac6ab7ddc0f", "0xc103d4984b1c6df", "0x83caf8010c408f45", "0xada8dd1a00f0e254", "0xc02e724190874d09", "0x3b0ab7436192f297", "0xd9869d6ecdd065ce", "0xc0ee37e4936cb7c3", "0x687e2833d9dfb1a0", "0x68b2836e9000f1c3", "0x1de173b9466ea817", "0xe607524326964e3a", "0x7bf1c0639a28de17", "0xd0949ac14d0f58f7", "0x54a0cc75d1554356", "0x3ce29e5f5d8edcc1", "0x86c6e2393d80b057", "0x9a242b53fca456ab", "0x6e2b292328e6e21a", "0xb9000228f5f59dc4", "0x9be64ea527e4482b", "0x3918b6405a8d466c", "0xeef83eeebebbbbfc", "0xc6653a7335c0c2f5", "0x70823ef78bee461a", "0x1bb2ddb6774a0d7e", "0xcff105d37f0b6d4", "0x25e0ce6ec988f80b", "0x9fdf94b7b0c58903", "0x81267708cd39f13e", "0xcc535de80357056f", "0x6363737a83203666", "0xe2e6a5f563e6eaa7", "0xffa274b676beac9a", "0x87692631b45f05cf", "0x9ece2faba0106208", "0x469b6e5e195b4730", "0xd27e5728d65fb054", "0xa6d29fc31f317b8c", "0x218dee7d045f4182", "0x490fbdc286203422", "0x57ad4c41005fbc04", "0x966b90851154d220", "0x24d9fc6f6dabc067", "0xb9d25863632cf559", "0x84da77b8b2b93be9", "0x41c961180a414234", "0x31480145ccf2c6ec", "0x7895844fcb0714e1", "0x5260c5eb7036e6bb", "0x2457cd9e1501be78", "0x7c1e3adec8080896", "0xe543175f6c9f2012", "0x97ba21e1369d0188", "0x7d03d118d69da7ef", "0xa14785b6a01f5bbf", "0x7f6bb5ce6c3f7b0", "0xd715c927e69160f4", "0x128656f3342115f7", "0x51934dbcaf758c7a", "0x4078a8922ab87bf1", "0xe60b96e8e31774d6", "0x89edac1bb496f6d8", "0xf6de6710d201710b", "0x919b4ae03f41d1fd", "0x202a746068099664", "0x244ac8a9250c9fde", "0x260c9fc1623fc0c3", "0xc3145a50bcf1d94a", "0xd398d7a3e63f1dbc", "0xd68481c9ed5f7d70", "0x2e7ea463d9e81ba4", "0x10996f546e4cbf8c", "0x64539c19f1494209", "0xce0966c212ec3a76", "0x75c4bc757f68a33c", "0x9af27666720cb2df", "0x96458887a6b920a", "0x304c5ab88772358", "0x77657c9896d4ec14", "0x70383137c09926ed", "0x53e39192407566e4", "0xefe01d8201c7c7eb", "0xa01c072237cac897", "0x6f1c78f3158b8cb4", "0xb1b5f420d478ed", "0x8c5c122a7e655fb3", "0xd7b5416a735d037f", "0xcbfbf363cb0afa1c", "0xd0c303eb37c76a2f", "0xa6267423cede8568", "0x37f655ee465c0778", "0x77976fefe0d28685", "0xad57655ff9f85c2c", "0x45b85b282ce5ae27", "0x6fdaae8268217f3e", "0x3a1800c20e21c4a8", "0xa62090d84e591dfc", "0x158ac584874bcb50", "0x83baa925584b9b3", "0xa261d1c3a6f2ae95", "0xaa331ce4592ff734", "0x388fa29264233186", "0x6771019b622e0b0f", "0x20a43b13690f3118", "0x30663f822a923687", "0x43a3d5f9b39699b7", "0x9821c5bd436eda81", "0x602cf8a7c6300c34", "0x97159c13a630bdd5", "0x61710d8848bce2bf", "0x5979846852880e9c", "0x1d911ad741d7ea88", "0x2266d388f2891092", "0x51f489e44af90a3", "0x62d3ab5115160b72", "0x78516f88abaaaf92", "0x34e3942787895b98", "0xf17bb26e0eba9a4b", "0x261d1615721961a7", "0x6d520b741e3b42a6", "0xaa1817e818a3a7b2", "0xca89cc4ebcbf0caf", "0x377c298e1af2e97e", "0xa34fbafe2e906cc1", "0xdfc4d4107d8a923f", "0x580d41e5019b5f4d", "0xae50642b271bf688", "0x7ca109ea5696a103", "0x595892280bc201b9", "0x86c5a2e35d6a769f", "0x77e4642eee1e2164", "0xf0da0757b963eea", "0xbbfbe7eb4cc2eb84", "0xf4b854e12e16f2d0", "0x98798b6c6e0f6a29", "0x7ee49e2ca47dcf82", "0xdf09a90b5a98d2bc", "0xe5f9d2df8274c16d", "0xb0d18f95157d6c2e", "0xa78685ffcac189e2", "0x7fe3a3e463e36c4", "0x3673dbfcef1660b4", "0x2ee9bcf5a943e062", "0xb8af89e46e1975fa", "0xcd65fed82624c0f2", "0x7d6c88eaacfbd1d3", "0x3988fd86afc866a0", "0x77a9b9148d311893", "0xea35d4631183cef3", "0x825490f9dcf67954", "0xbbd06ffd11479ed0", "0x7239169d240e97ae", "0xbce163a735dc8341", "0x210aa4c260ac17fc", "0xfc3263c12da47f34", "0xcec4e69fd3485166", "0xe62183221a128f8a", "0x28841d81dda55788", "0x620a8ec676b0b66c", "0xf1751c11d2d0263c", "0x4392710fe780ca0a", "0x9b61212c8a1b1436", "0x87b942b7a188626f", "0xe58ced20364c3337", "0x938c2061a9f1f1e2", "0xa6f79e4cecc84d2d", "0x25f3223502d637e6", "0x625dd79b20d1cf79", "0xc2b077672915442a", "0x1fa0d3c07db9861a", "0x19c350d2b57079c3", "0x2d4b36a939136f7", "0xfa9ff438fbdfd79a", "0xc4b5452ada9bcd48", "0xb033d83eaa2a7b57", "0x3a0a4a72dd789bd", "0xbbd007ecc716062e", "0xb4583b972e915af4", "0xa1f4c34720c61417", "0xf2485cf90e8c9b02", "0xe428a95d6a33f427", "0x6030ec888e3205a", "0xd418d40f544d594e", "0x40297b0c2b16fc0e", "0x7627fbaab3fbd91e", "0x25d977cfad6ef27", "0x4b53640e699569dc", "0x821218980f5f3f3e", "0x4b4f91a6ce9ab64f", "0xb26d192df6ae188a", "0x71a5803405ddbafc", "0xf89ac9d4047e5fb9", "0x53218f2b1defc102", "0xbbc575b8c2ff026f", "0x649000657543b461", "0x4b7df8ebd180b43d", "0xa53b8b1186283d78", "0x7d6b863022cb300a", "0x34e7a487a943128d", "0xed62f1b1439c4969", "0xd7b9c3cece46a9e5", "0x294a7db5465a38b6", "0x904244c9b6518f43", "0x8845cfe85864a47f", "0x20a5bbf8fccead86", "0xfc073328cc642e15", "0x501f200059f96428", "0x9d2e9eb1e1031ae5", "0x4e3b2ca860894f05", "0xd0ffd3880c7752bf", "0x238054d615fefcba", "0x12e8ce293e1cef6b", "0xc274f92047654191", "0x7c6834377c900b11", "0xd1b6058a3b5e691f", "0x37f670f05c1bd486", "0x49dcc425eea06fe0", "0x8aa219a4f611b75b", "0x3dd7fad17c5d4d5", "0x5673f0aeb92488e3", "0x3d60e8085b89ad0e", "0x413852b0a2eb028", "0xee01bc1029b9839b", "0xf4ef9652699cdd6c", "0x9b735bb900b6eb62", "0xa96d9a5209ebe8a2", "0x31170c61a4e25f92", "0xec0a7947e7ffc7f7", "0xe31705189ef6c5ab", "0xf626885009a6ea92", "0xc9fc7e147aaa741a", "0x6f03ab67506aa59c", "0xa7435e23610c9b5e", "0xd3dc99bde561ead", "0xc8ccac4bfad7c3a8", "0xeb54f38ddff63bf1", "0x465e515ce032df0f", "0x1ffd2ec9f0fdd961", "0xcea364824eb0172d", "0x705cac0c6ad7e7ae", "0xac0ce95f14c1d0cb", "0x67ab5086f0f5bbdd", "0xc66b64e60f9cb670", "0x7c1fbe96ecdfd229", "0x34e9ee5e7c7d94f4", "0x1323aa7f808b52d4", "0xb5e40b1c3b038420", "0x7abaa58cd18c1201", "0xcb08c0218d2bf910", "0x5fd832be1b89bae6", "0x1c6fbe0e50d555bf", "0x1175c5995859d6a0", "0x4c73829292bc2364", "0x8accc84bcf3cee01", "0x1ac78609762a1657", "0x1a75ffb5c0e3e31a", "0x9815b2ad1e6eb9e", "0xdd56ad35aea0c371", "0xb10da1132f368b3", "0x2c3af6721e839f2d", "0xf5d5f627981b6a0", "0xfdbc164169231554", "0xc135afe9facc6479", "0x35a22dcfadc38579", "0xa85194e537b69869", "0xcd5fe4e37ae309fe", "0xf37fcf590d16ae35", "0x483c8730908231b1", "0x656b5cc87af04a42", "0x9358a8f1b5185025", "0xb308b7d1d58ed9fd", "0x9cf0912ce432f6ab", "0xba5c1cd275eb755a", "0xadfb0753538356fc", "0xf0c1bf29ceeb40c", "0x76367faac83629d2", "0x22e186834c18bb75", "0xcb0d075d0b879186", "0x651794df9fc5556", "0xdc8a46efc41e7f52", "0x481ca98fa257c199", "0x662fda40efab7f93", "0xac9a200354c9dab2", "0xc0d24d3e0aeab4a8", "0xecb2303a6a995178", "0x53137c8c8ca8a652", "0xc9fa494f42dcb878", "0x50b4ca4c5ea420aa", "0x660dec5628a124d0", "0x1f50cba0ffff105a", "0x888d3d08df0064b3", "0xf9a125c90f745549", "0x838f51010f47230a", "0x62740a19165d55ad", "0x7a45d69769e3abc5", "0x1163b78d3bd042fe", "0x40360a556c26b461", "0x9aa215a94afd776b", "0xe52beb32c116408f", "0xb0800c3077172994", "0xdcc5727131fe2fd8", "0x5e2ab932eb1e4c4c", "0x7fa8d7f134a26143", "0xf4d2167fc2733b9c", "0xffbadec317f702bd", "0xeda32cb33eb0e427", "0x3401455d771c3036", "0x20af482ef7718c80", "0xd0b9957b17d041", "0xf89e7ea8517d46e7", "0x74344c1cb68367b9", "0xaeda8383db35cc97", "0x480aa92f546c9e5e", "0xc4c2dac230b0cfd7", "0x3814ecad9392eb1a", "0x61043c67af012dba", "0x629d3a196efa71", "0xa6bfa6c685742ded", "0xd10890fad493af28", "0x46e3898f9cec84f8", "0x7d0df6a7158b2215", "0xaf507de938321564", "0xedd8d27213bebcf7", "0xdb6638e1073dd18", "0x8011632993ed9a0f", "0x776ad46077bb66c1", "0xc14bf08fa8a61aba", "0x37d815ce882c76c3", "0xa7f335376d47dd57", "0xad6f3e0fa0975442", "0xb90bb8a0b1b36856", "0x5949ebe840247482", "0x57324bcd39692c7c", "0x9aabfc712735ae92", "0xe952c25a0efb20a1", "0x1f90610799a39f3", "0xf0fed198f2bbb27a", "0x7076ca927af473ec", "0x60c31d88b681a4fd", "0xf5b7f9cdb00f09fd", "0xc68163930d9327ca", "0x3cdef2bdc3231b4c", "0x20cd449c1a1cb1bb", "0x746e6b033573560c", "0x22b5d56d9efaaf59", "0xac035f74c4f69e32", "0x3779b71724d7b5aa", "0xb817002eea91df32", "0x59f11c694a1131dc", "0xa2595a8ef9e86926", "0x22e078a7ea5715af", "0xc1adb3e1320523cb", "0x81312c73a5c74eec", "0x4c0ccfe03d7c5813", "0xaed518f5e39a327d", "0xafb1b2faed1ac4aa", "0xc4dd23202633b3b9", "0xb7e80c9bb124afa9", "0x9bd2d9322ca0fbb2", "0x7d488a3fff262b2", "0x34ddaebe858806a4", "0x267482e9fd9fce28", "0x10046fc496893e25", "0x5ce5ba0c04f6be6d", "0x598f26e8ae1279f9", "0x255776984066ec8f", "0xc15e04151833578e", "0x713d6623210edbb9", "0x1047cfbb4257de81", "0xe7862cd144655027", "0xb1be7d1ee3d3c30d", "0x7963583fdc848c83", "0x8ff64f779fa5c809", "0xc310fe1356be3ccf", "0xd923cdbd7ccba0c4", "0x59801a026ea89ddf", "0x123578f60df37900", "0xf4b97283b5950bf4", "0x8b4d2937787895a4", "0x78f3568add84e15a", "0xa0f740abe4607b6b", "0x67343cfb62a7779", "0xa7ee5f2221fb9f07", "0x3603d8e7fe4a612e", "0xc8c1b3eb9ec0e86", "0xb69a94e601b48e5", "0xfb8dff44c0411f8c", "0x22369d7e1c410f0a", "0x83e323cbb3fb48f4", "0xcd56d4869291196c", "0xbe0b55d1ba0bf789", "0x16b2b8ce68dcec04", "0x39e09c0cc3c5f2bc", "0xc552aaeee74f6d71", "0xe0f77b4eb4ee93d", "0x95f80b181e048ad7", "0xad71c6cb4a50b455", "0xeedfd36a9b4ed4d7", "0xdcd0ec741bfc73a1", "0x94d7f887d7d2ba93", "0x442b18a15d360ab9", "0xce3dbdd2d93767f2", "0xd166269cb0409378", "0x91fb280eef8e5415", "0x99c5d405625153b3", "0xd9f8abddb20a00ba", "0xf89e4a96dd739fd9", "0x28c34f5d51a92c9a", "0xb36a6f4d7c81982a", "0x8fe57a320c36b66", "0xd2a6adbd02541b44", "0x7c6641f460ce38fb", "0xc8a53ced218b93ac", "0x6069912f319b645e", "0xfe3577f5d518ba64", "0xa2fd9e6bcb8ce8c6", "0xf0332234e32e093f", "0x373649cefd6dea16", "0x3bf9c31bf50a2a1e", "0xcde828f4d974f1b9", "0x4c2cf33e18324787", "0xc07231ce35885ba", "0x82f339e59968434a", "0x29b83726731e82b3", "0x4ff2d3285a41306e", "0xd50bce884e6d937e", "0x81dbbb29ef2c2921", "0x6d53ef0398b905e5", "0x72bc4824eb2c563a", "0x235acea8b1d8edb3", "0x28a28266b01125a6", "0x662af037a79e2168", "0x1b1620eef2eeb48e", "0xfc5dd50433e3b9af", "0x11d5bdad48c83eb9", "0x416c68dc7b352734", "0xb7fa9ed87eb00770", "0xcbfdf81c368421c1", "0x97c3b0a91f651baf", "0xf7d755e9464e88a0", "0xca1672ae3dc900cc", "0xfd5a5e945a76f69a", "0x167ac58f54543b43", "0x491c0fe08f565885", "0x162f30f9c0ead2a8", "0x8834a3355e7fcfcc", "0xf634fa6511fe50", "0x7b0685bc10c77fe3", "0x8bffe31f648a1788", "0x6a487e6ea10d8e6f", "0x34b278e570e0d9fe", "0x529e93c457a606d7", "0x3f1edebbf6ab2c78", "0x1fff849ab038e750", "0xcbebe59d1cc4ca79", "0xb6cf07ea2554eac7", "0xd3eb8a82e6c04cfa", "0x35e781e4e72fe082", "0x82cd7f979a300183", "0xb39b87516b17f573", "0xc53a4304b98b7dd0", "0x115a0bd4e8c9ac8a", "0x96d18f2e14ce0c47", "0x80fa05832a511a66", "0xd28ac2a216988a34", "0xf8b45d218ecbc9a3", "0x362c61a67431b7c6", "0xaff4684657259dc6", "0xdecc4ec92399ad6b", "0xce3176584df52271", "0x5669908f4c3d8020", "0x64221dfdcd522e75", "0x36bd26b14c78d60a", "0x4442d89c885ad5d1", "0xfc1b604c600e01be", "0xd2419be155bd830b", "0x91def08e20322924", "0xa511a0dd1ed6dab4", "0x66a877ff1acfaf41", "0xcba58a4814f3e90a", "0x73d8a6250cdfe935", "0xcce48c6f49fa40d", "0xcac117dd549aeccd", "0x84b6795074e4875f", "0xfb9abd046d6e8153", "0x32d83886d64725c8", "0x7bc89f946fcfb3fc", "0xa9f84a27ba227084", "0xc6c4ae4d33d7766b", "0x68b109e052fa3983", "0x7de5b48315a2eaa2", "0xec5ca47d2ac27789", "0xffffc44ddeb267bc", "0x3dd5b0e90d099947", "0x89926947afdf25f3", "0x27eb4a6ee0bb0f57", "0xbda0f8249e9d1060", "0x62d672b0dda3983b", "0xb72239cb852878a1", "0xbad7ea5cf59418f5", "0x456509ea6a01aee4", "0x8083644e87fa956f", "0xcf9baaf0f0ed5293", "0xac6b8a00ab0d32f1", "0xf622c152a1717dcd", "0x60b83822bdd5fbc8", "0x20ac5084a60fe364", "0x8ffd47c95f300c79", "0x4f360d2b964c87f8", "0x28c6b4a646d0fbfa", "0xb67194e03a77f330", "0xd4a5dec958c9a937", "0xe3bb97983ad8d8bb", "0x5fa4177c11f65153", "0x8917e0b9f0e62771", "0x40ade2b58d5eca2a", "0x8ef388376ab5092d", "0xe5799de6c823fd12", "0xf9f206314461ee2a", "0xe52ead3d20becfb3", "0xdd97ede336c2e41a", "0x839d29c52b12dfc8", "0x9a863489e82a69d1", "0x5eff2f542375bd75", "0xdb326a0a2622297", "0xa6855254cc98f08", "0x3cfb0807939933c2", "0x17943444ecb0f513", "0x8862255b39edf6f2", "0xa147c8f2db59b8d8", "0xe00228dff3726c17", "0xeb234a86df5c0dbb", "0x3d47670766f410ab", "0x1eabbf87e9f8f3c0", "0x5cfd6e9bf7b91395", "0x5b42883c889f9f8c", "0x124bb5870224f2e0", "0x6cddd6619469b891", "0x13c704e77e1c6b14", "0xda1f0cd599dceb4f", "0xeed3ef4b682d175b", "0x83cbc350f3a89bd4", "0x343a36ab5380a210", "0xa7d2de280052e37a", "0x5634a8259aef813e", "0xd3390bb47fc9b12e", "0xfb83a6a44f6fd022", "0x700cbeec74129e9c", "0xa27aba4e841991c5", "0x7151759dffc38ca", "0x661b94948c8bba0a", "0xfffb5452eb9ecd6e", "0x9faaf95edc1311da", "0x6311b89538fc8cf6", "0x965396326d7a8d8e", "0xfaa37d71cc18e164", "0x16acdcf8ad246b8b", "0x7c634b54e4bbc673", "0x2886fa3e494d37", "0x991d40f22ff56e43", "0x45d1aab9e48094e6", "0x6bb04ec1e3943962", "0xb54888f3d1b7ef45", "0xb00a16562ee1dd2e", "0x1fd93f064b8e941d", "0xe90cd8ba5e53f156", "0xce7c071ef4ad40b0", "0x713a62139398563b", "0xf0b2e9cca0c1e7f8", "0xb37d533dbafdb3ce", "0x850d8ef4c14c147", "0xa4f1458b0c608b33", "0x22547435df8f665c", "0x8e8b49a2afa6509c", "0xf9e57a2eee355572", "0x97be40f5001748f7", "0x36850d1918a04a5f", "0x966826a8184c1e60", "0x60d5922126fbc49b", "0x79cdeb2b9a77a232", "0x97080d064d49cd04", "0xc07d1820ccd667ff", "0xf4a989cc017d814d", "0xb761a41255fe573f", "0xde22a3ebf6fa0055", "0x731d2eb3e50ca191", "0x255d55918f4af274", "0xce3cf82a43a33ec3", "0xd9af3c7ea0fe5721", "0x93ecfeffb7220081", "0xea7b175c1bc46ac2", "0x1006dbd781143311", "0x5936d3f3ba5f1e41", "0xe39d6aa41aba8682", "0x64ff43d17fb57015", "0x1b2e88168242086", "0x7149603a9135bc80", "0xdaa8fa5918f525a0", "0xe657c0354f6d2820", "0x842b912fe31d900d", "0x6e6b861c1498c9de", "0xe27fa9ba7c784b3f", "0xf2b4f019c5b34b31", "0x237c948db87718f3", "0x25282a2073368232", "0xaac4b1a71bddebc3", "0xd3aaf57a23a2b45b", "0xce815eb6cf94a22d", "0xce576b867a02f78e", "0x39e718ddce864320", "0xcf9c224fe586dbc7", "0xdb2ba98d07e25d8a", "0xd2d6062b255634b4", "0x3142a5fce94c845a", "0x92ce5fad551ee0bd", "0xa429cc1f5548825b", "0x3476a2b034557f4d", "0x9379cab2df8e8f6d", "0x5a206587ddca2a79", "0x21ff9ce9fe165d4e", "0xd491f661f3df1c88", "0xba12088020828a6d", "0x9e13ce4a1193eb4", "0xab73b62e910c53f2", "0xe4fb8f6ba71cb8e3", "0xb034c08099371256", "0xd23cb6f06e850dc1", "0x4f80e146710df74d", "0x5969d677e0cef561", "0x3ea93fb2da5bde0b", "0x8fdf95ee0f77a953", "0x675f31f7946fbd41", "0x17860cbe9a712d58", "0x9598c648d5348769", "0x6538aa4becb3b82d", "0xa3c24d7f32200c8b", "0xfa3aa5b62918f02", "0x2de5cf7dcd2e92c", "0x7545f6510aa0c067", "0xd6df49276effbb9c", "0x5df03b032e4d4ccf", "0x525c1706a6eaee40", "0x92515a942f0a5166", "0xbfc505b911ed1ca0", "0x9c3dd7833f82fcfa", "0x55a5ff1e25137464", "0xdc692792630b7aa4", "0xcbad34309881db34", "0x8d095955e65982f9", "0xeeedeb828d026d5b", "0xdb10bbb532152389", "0x57bd4af0b2aaf9d0", "0xbca32aa796062d0a", "0xb233b19e7b1b8ab0", "0xb7eadcc9f336656", "0xfff1a6d1cf41e788", "0xedafb3004084839c", "0x53a6cc2f1dda0e18", "0x33299f920cf0a790", "0xca5b0820e73d3070", "0x2cd628ee81d47532", "0x808ce1feef2725cb", "0xb6943c109bc0e825", "0x722dfa53dc48a8e9", "0x55a913405d494ffd", "0x50f0f0a66e89be0c", "0xd874d63388e42f2a", "0xc3e32b3ed47f7399", "0xa6d13e226c3d73b3", "0xb47299bcd606e63c", "0x1191fa99eb529a0c", "0xc4a9c2f4a4d194b6", "0xf222b3cf9c04ae2", "0x665350be7eff0f64", "0xa68376337cd8da7c", "0xab9f0c46b76121b9", "0x81c81d85e6ec3d23", "0xf90762016fc2d41f", "0x4f03da1e5f5ee5ff", "0xcbebb2e8b0a93d25", "0xee9f5a0c20c5fc30", "0xcc223d1f24dd4877", "0xa6b88d3a08358e44", "0x85a820646d4b1f4", "0x36121bb8aa409aa5", "0x5926713f7e3446e", "0xc905ff4ee715762c", "0xb332cdf9d1501b4e", "0xabf85028733fdaca", "0x9c56f77355126e90", "0xe65187300e36a958", "0xcb3f18aff702de6e", "0xd6c6607a3eac71c6", "0x336e78b067e5b908", "0xefe930c1e3d704d8", "0xaec381fd2846d8c1", "0x35f3bcccddb32fae", "0xd830aeab5cb10f33", "0xc974cb3bd7eca3c4", "0x618eaa6d2739f9cb", "0x516da445f5102b72", "0xe8693e48c08465b2", "0xf1a3920717e580da", "0x3f9b30544fb433ce", "0xa3cfa918076791bd", "0x16a502b72f7029a4", "0x34aecf881059fab3", "0x4d1ebdbd37f50412", "0xfa11e78d1cd911cf", "0xfedc8ca6ca4c4173", "0xa1a755b277af1518", "0x2e802a547b45aea9", "0x70eafb3e51ea28b5", "0xc163569093f8f4ed", "0xa5f596c3798d6596", "0xda2dd56912fd7a91", "0x6f56b6cea4f9ac5d", "0x1d7a2419982254e", "0xdc5ecc7538f992bf", "0xe78702d60e28dbbd", "0x6fa808dd78a1fd3a", "0x7fbff9c64a3f85ef", "0x8c77f8ce5a63b04d", "0x2197260530a7df42", "0xbdb61ec54d50a5e5", "0x1bfaab78d914b670", "0x31dfa09b59cfa221", "0x1fd26a038ce79d0c", "0x1c20801e28403c01", "0x62fc580beb814e50", "0x133b2990194884e7", "0x986454a78fa6800e", "0xb037e717ffad0ca8", "0x947e7ab7ecf033bc", "0xb113ef22bcca0188", "0x303fa26aac03a3ad", "0x14173efab006b8d7", "0xce98cd0fde22e236", "0x1ae3706adf7649b0", "0x66a78fd7c3243398", "0x369e4ed58e107545", "0xe9ff903c053a34cb", "0xac65ad38bb0f3ff8", "0x6dcf0bc72c945a54", "0xa4cfc92e5881b8b6", "0xa1336d5a6938bf1d", "0xb4195c89af374fd4", "0x9dab0c7a24b93100", "0x759a0033012cea87", "0x20c95211e24771b9", "0x5d524cd93c89a15b", "0x5fff7bd78ab0803", "0x3bbaf7da3391cd4c", "0x77235ec7dc5731c5", "0x2acb91cdf4c45a58", "0x1a1efc86c2d357fa", "0xe4c33418bdae11f4", "0x7fee85916bb80f46", "0x3367f0e6a84dbc65", "0xc356d2a7a7d796d7", "0x481061d8842ac8b1", "0x11b2b60a5abe63bf", "0x780838806c736345", "0xa7d8ff03748fbbd7", "0x71a79e4b7f762993", "0xe33f60daa27c1672", "0xb62015a50fee6ba1", "0xd6f9b72d45d2f17e", "0xe24558fd3e818328", "0x56e4204fb50d84c1", "0x3eaebcd694f77799", "0xdfc81b987f8a3282", "0xbd09210a1049572", "0xc1e45bc567e0a064", "0x234984c4d1165991", "0xed2019613e318178", "0xfe894efe2a750127", "0x2e442a8cf6a1262b", "0x68643403a10fdf6", "0xedbf7eb5819f3999", "0xbd3f7701c1826015", "0x119f1857bec8bab0", "0x82c2b27ed124434c", "0x45394d0865ddf7b2", "0xde3b8342c91a9bab", "0x944b1f27b3fdc84f", "0x9b4d68422ac6e7d0", "0xebd960d6d08ddeab", "0xb73c88c446941712", "0x2bb5867139d202a", "0x9289454e9f2e5109", "0x83cb3509743c7eea", "0xe2a2fe971189b112", "0x3d3c79ead609dbb9", "0xcadfaa45f29994d9", "0xee56c13fb0ee9a27", "0x51c0c725e1ed3a39", "0x6f7512b92246e39e", "0xc46473ca4142786d", "0x49b6a8ec52cff9f2", "0x56ffcc193ab5934", "0xbb26e27fe981c21e", "0xe488fd8f04cd75a8", "0x9cb9dde777a5fd89", "0xd9fb5d76b4959d48", "0x15b30d4821c49570", "0xff207fd68988679", "0x8d8eb2d1c9a9262c", "0xec22898a4b420ed1", "0x5032bb20919b2ed0", "0x9030c5fb7343d0c8", "0xaf0a6d62504a3767", "0xe68b353dfa12a1cc", "0xc3f0faf15749f7b7", "0xb4f139e7dfe18f74", "0xb7ff36e06d1d7f04", "0xa540273483587047", "0x347c4293b9b86296", "0x616e6b2b9744804f", "0x16238dd298c2cd12", "0xf80583e0a80eab9d", "0x29080cac425e6c30", "0x511686c6f734914", "0x87d4397a5e32c78f", "0xd719d200d955fd59", "0x7532c0cbe032572", "0x34a545f0ec35be49", "0x3e3ff434c2482744", "0xb91e2266c59869d2", "0xcbc00695831cd05f", "0x8fb3bbd0365151e0", "0x7b82afd0613e2b04", "0x44f743644bdcc4b3", "0x2ae173af3af4f95a", "0x770fe9055a23ed22", "0x6040652f4c4d5df5", "0x1861ce5633884a70", "0xca46d8b436bf644d", "0x323d4073f7fbffa9", "0xb7fb0ec820601ef", "0x544d5a8e2fd41e49", "0xcff85c6aefbcde13", "0x12fe0bb27ac4b8d9", "0xf6d59a41007be4b8", "0x55ac018856f73e4e", "0x560d4a8c7ff42404", "0x1cba932e550dacee", "0xb88ed21308fcdab4", "0x38f9ca4ae746d9a8", "0xe8b89c8bc996b6a7", "0x5a30cb8237fa4d9c", "0x4e7038af79037ae7", "0x22b07d08dfe912fb", "0x13d379c43c7f869a", "0x4b2d3a613c6ccb7c", "0x502223dae108b98e", "0xe2ef27a468ca85b8", "0xfebc09133bcec3ef", "0xecf07b5e391dd4", "0xb0b3cc8a0b7f5a51", "0x38a76252fcf461a1", "0x3187ff08bf5017bf", "0xf1a2a8182373ce8a", "0xf4c760e481ddec4e", "0x983a66e6b6b4a84b", "0x3202c55a8caef514", "0xc5508e5f41ddff25", "0x32b8a2c768d23b4d", "0xd0894f87fb661a52", "0x4eae4dbb9f654fe5", "0xfd526a1fd12667dd", "0x1ab050bb13d54ed6", "0x1bf82dca4d195cdb", "0xd7cb20f7e65d3679", "0xc6c8f8714e1f99e6", "0xf4273e8da3d9a197", "0xc5a136e0c0c2a41d", "0x9408de5ffda3acef", "0xe7360f911841e3b", "0xc7b5032b412e0a94", "0xe247dd86db0948a3", "0x82b1922bfe89ff4d", "0x19477b2ea590da87", "0x32e1bbd67f214839", "0xfcd7a1409f70f24a", "0xf2cbcae7a93bf876", "0x182af2b085353652", "0x16dc05feaf420c70", "0x4d18dcf95047e5a0", "0x2f062005c7e0994d", "0x70fc9b4f7e1c7171", "0xd474f80a98fea6ee", "0x5dfc4a7cc99b502c", "0xd3811e7825b22234", "0xb227b5b2841ce90f", "0x6dcf08f5348012fe", "0x6f1288a55ae5731b", "0xa50faf3c7f3ed1a0", "0xfff953d247a46229", "0xb288f3040cd9ee51", "0x25e043fbd038abe4", "0xea5f45f9e7bcae17", "0x904b574e7179d6de", "0xe758f3c8591930d5", "0x118bcafc68b6e8c6", "0xb4a4ddfe7e310679", "0x8684371caf278060", "0x44f48a58b6fe8924", "0x66919a49cac59a1a", "0x235cd338dc64a1a7", "0x92dca54da9d21951", "0x6e67010404718362", "0x8a5a5405de56dea1", "0x77db2c9457ff43a1", "0xb9d40f9a10b4faf2", "0xe367b0630b0c1f66", "0xf99214cdfe4581a3", "0x43989be26d818380", "0xea1cdc68d1d52051", "0xa5d541525729da19", "0x77f16b8dfea04eb2", "0x626af856a0dbd6de", "0x63e4efa50fa573ce", "0x897c7590968da6de", "0xaf8921f044925db1", "0x67162bdc65a3b751", "0xb5f9db485cb22eb1", "0x28d72b8048f54f98", "0xdc6c7768ba25e3ce", "0x3e6279fe8c8a807b", "0x1f7a99a6651e9554", "0x54696a5e8178b8dc", "0xcbffea8dad700b0d", "0x9f6a7ca8223b28f4", "0x33dda90adc5630d6", "0x4c95f28d99404153", "0xb955f9d9e4b5634d", "0x5e2c039fdf49ec96", "0xd6ae2bd8c99e700f", "0xd07f5249a90c6644", "0x51165e6e84aefa47", "0xa99fdfc74b104901", "0xf70574340ae5bbb0", "0xaf3812987f88e7b6", "0x36f762c0965733ed", "0x82053a9d85606c46", "0xff679e07abb80042", "0x99be063c6a80a050", "0xc8d76cf0a0c724b7", "0xd01e5eaf7f9ff5ab", "0x8c650bd3ceb5b104", "0x8937ea5daeb496c7", "0x5d9a74da6504fbab", "0xfb7c9e980e89370d", "0x2d531aa65d4db47f", "0x7631f624949fe8e1", "0xb6e4702613e8a10c", "0xa0ea62563e3c2f39", "0x67a57f509f230292", "0xa636471cf31945a1", "0x8f88148ff88e8989", "0x909b961343864077", "0x5a6660ec7eae33d3", "0x362b5c3b3b9194dc", "0x87790500b9c9a4f", "0xc529f24fc75fe939", "0x6e030feae7ead78b", "0x28b57102ce47f97f", "0xf1f1f21f75db5a27", "0xafe47a170ec932", "0xe1d00684c92bf767", "0x5efe16e44e117c55", "0x38acbea660a5fe3a", "0xa7463c1647e19d01", "0x1b0f6cfa9f618060", "0xf7ad7823160887f3", "0x77b85383f1c0e0fa", "0xd584b4616a77a4ce", "0x58b7d76a5f972d9b", "0xe6b3d99fbd90e89e", "0xa02864ea1ce13958", "0xa6862c920d0a2789", "0x37528218fca66482", "0xb0ddc2f8709334ae", "0x24ce2e99e0b96418", "0xb10ce98f88cdd5ed", "0xfd6b03dd8642ff28", "0x48b6a020178b4ee7", "0x4f93ce3342e48006", "0x55edfaffc314a5d9", "0x297cfef96a62e284", "0xd2fd1b641b656ac6", "0x7e7c7b0a133cb3bc", "0xe844cc701b7304d8", "0xa5a100e917df1370", "0xc7f723d00d7ee738", "0xeacfd9e64c5778e8", "0x855007a35360d119", "0x1dd25a295870b676", "0xc4d96c7f2bd21cc2", "0xd5de1077a2361cc4", "0x32cebf18024c7408", "0xdcae8d22475b4ac6", "0xd3471fbf3b69b644", "0xc32c401f79a3b340", "0xb6360cfa9a3ec5a8", "0x7801fcbe764e9dfe", "0x5f2ca6fe45176665", "0xc0246af3973a60ab", "0xd6e1a7e610bae17b", "0x376bbaf6b27f1b30", "0xe07240b6cf3ebe58", "0x247abc1493c875ed", "0x3a9fde2893deead7", "0xb3fa7ff1906e054", "0xe13fb0cfd39c10e7", "0x37f24d8cffea8b59", "0x4e8788345ffa9774", "0xe1262f7cf14803ab", "0xa1f13350f3f67c4b", "0x1e094ace0b960647", "0xf049c6bbbab7c88d", "0xa9a55379e7c3f2cf", "0x4226cef11b0ba00c", "0xa8181f38c14b5c9c", "0x77da2856a9315de3", "0xac2029497f835719", "0xc65817f162c27059", "0x2a74b1bb9836b7a5", "0x85e4e495e33743c5", "0x32746f941a268d5", "0x627bcfa8f9c0b85c", "0x7f39783727c889e5", "0xf44df01b929ebd95", "0xc9f630c59f64f42b", "0xbbec363fd325a112", "0x7bd5f324b2abc11e", "0xd0de3de803cb7399", "0x11dca81223a15d2b", "0x2e32d8ce2deae2cf", "0x1cd5960386b22b67", "0x53e46435bf86b68a", "0x859a629b9430b2be", "0x4e297d40f7172a7b", "0xa8c3f5c0401b7c39", "0xdecb74c45747aa5c", "0x25cceac4bee05f1d", "0x6a4a0009fee20021", "0xe69371bc25433267", "0xbbdb2fffee2f2510", "0x46f286013c629ca9", "0x939a811b1401cafa", "0xba091871d61c15ac", "0xd561d305cff3f843", "0xb40160937f572293", "0xdc08ce360acb8899", "0x5c05c752a785adc7", "0x2f467e9e91f98058", "0x28b52f6f6b6763fa", "0x778bf5fad1d950d2", "0x58f3e194a2a36519", "0xe4b79fdf1cd91b47", "0xa10d09aa66dfc16", "0x4dc97fd0175d4b47", "0x1eca3f58982af3e8", "0x727d128c0bab6ace", "0x865d5b36ab745146", "0x97e8072c7964d056", "0x1f62dac521de0c4f", "0xe3efcec96d798b33", "0x6c5d202abd2586e", "0x5c57106c816181f3", "0xa9f9fe8267586f28", "0xe6de3e42cbd42b55", "0x7f6edba9430bf5e3", "0x85aefbeb49db6e8f", "0x66c2574ca00649e2", "0xd307d8e5a76234ae", "0x1a2164aabfba5577", "0x7c77ad10d2911590", "0x590004e685495169", "0xbb84facd338ab75a", "0x3c652b3494298343", "0x8b0550f876a3d54e", "0xd746eab11be04783", "0xdb8642a9f48d02e9", "0x949b50b0e2b81418", "0x769364cd8696835b", "0xe446c4e0c3da4fb", "0xe74a05defee63862", "0x671a9077ab99f43", "0x83175e5422a4d993", "0x866bd213baa71912", "0x54660a3c8cdb8a2d", "0x3557c8f241be4285", "0x79ed9b4e308b3060", "0xe46b0f01511709d8", "0xe4b60ff3fe384e7c", "0xe462647369c45e5e", "0xc68cb4d0df6e932a", "0x50633c5f2e838807", "0x9b2b150081cd8cb7", "0x7cea9ca734d3bb68", "0xb697829bd772eea5", "0x2e79cab00bd41cfa", "0xa7c044a813f71254", "0xe2b1ce509241110f", "0x79c008caa5a96a47", "0xee872dc1753e7c3c", "0xbd61837eedc4c227", "0x35f3c1d6af53fcbe", "0xc8e028c33197bdc3", "0x4546ade435732286", "0xefe99c0bd9546930", "0xba794279fbf67fea", "0xf37099f1516a2486", "0x2f1572943160a5d0", "0xd95f4b559f1d9a29", "0x7a1c6a0416d10a5e", "0x701bd9ccd9806e75", "0xa4dc4b949f928bb7", "0x2d1c2bc122af1e0", "0x3db31f1f93fd7ff7", "0x86c3f61e0ee93642", "0x7538fbfa8ba056e7", "0x933f36c1b83cbc50", "0xa274eb29bd07f2ac", "0x3d1092d47956e532", "0x4864793be2024694", "0x4c8fe3ebc2fc3abc", "0xf2762573a8025139", "0xf535d5ea2ef31c59", "0x4a1345ae1843d302", "0xc061053c6e08a051", "0x76c008051733d04e", "0xb04c3fd0351d18a", "0x9ab351de20041561", "0x3dac6b5308d55ff9", "0x8d4b8586da6d28c3", "0xe4108a41e7c3cdd9", "0xebc3645218972e69", "0xa9a2b3e9eb9cb70d", "0x71ce869308bfc8da", "0x3c519d93e75f2ad0", "0x51e9e98bcd531909", "0xcacb27a59860cc21", "0xe487125873b03b62", "0x685caa00595c1768", "0xd2baf4d92b879326", "0x869a6ac74104671e", "0x699b68639b8a4429", "0x9c59711e7f3e0676", "0x8f271ddaf352a03", "0x819626ed8dfd6626", "0x79039063fd9a598c", "0xf7d0646d322c829d", "0x8482abd3ef43c768", "0xdcbc81778f8b71aa", "0x25d1b3a2f25cb45b", "0xf4139a68cdac31ea", "0xd5337c4906dbb2b1", "0x120a1ae3a02b71d0", "0x8b7c6eec0c0f6fd2", "0x6a82b6babed36a2b", "0x3a907fae73e6f9c", "0x4e6ab166646a4408", "0x92394daca794f567", "0x40feea1667d1aa27", "0x5c50c32f02d9c1d7", "0x8dad862de00e54eb", "0x9041d9fd41c1204b", "0xf652dfe422659370", "0xdedf895be55113f8", "0x1a8ee0f2d2567155", "0xad80009f8d6926f7", "0xc74765c0958a75ef", "0x1ce79ad1ca5844cb", "0x33effdbecb08f0ea", "0x4cff75980797ffe5", "0xcd2dd36d8529dd2b", "0xdd0a428525d8e113", "0xf521489d8d896712", "0xff3ec282275a962f", "0xe3cf85b8f32854ca", "0x8ee9d866b5df3e97", "0x4fe974238cfc69d8", "0x881095e132be3503", "0x508ab87b0dbf3ac1", "0x3e1a8e46603f5e05", "0xc76096f9557a5e59", "0xd2faa98590c44f26", "0xbd47099cc4922a3e", "0x2d026ac53ce0dabc", "0xfb1719437527a43c", "0x820dc02b0f7a024e", "0x31b88d25a7bde71e", "0x1db22e116e16b70f", "0x4db2699adcf6b624", "0x8cd0c04474128676", "0xbadbbbd6e2263e68", "0xdb799f5f71e55d02", "0xcfa50dc679cd3558", "0xa72dbe35af05175a", "0xd5b4893114fbcec5", "0x86e434f0faec0dff", "0x47dfdf5864f487f7", "0xafcdee0d0079734e", "0xc7a8bdb2370b7a65", "0xce1d09e5137b6f09", "0x8ecd3cb358f45b6e", "0xd8c1687c2986fb1d", "0xb018ec06e302721d", "0x9a1d7f545a8ea954", "0xee42dc6909c710fd", "0x89585d52979a6cd0", "0x15141be63573243f", "0xa95320f12b6f7bf", "0xd3faa18159990c3f", "0xdedbb7f93c78278c", "0x2f837b4db3c62cc4", "0x490c3667ecbdceab", "0x8906cc57b1ba7c30", "0xa31ac9bc410b5946", "0x72baf40303b11e3e", "0x9ce3996ad4b4ba78", "0xd0cf35a61d39c541", "0xaa5dc8e76aa5b75c", "0xd7dd1051d887ca2f", "0xf8d771b7df09f72", "0x2a21989657e893e2", "0xef736339c71a5c09", "0x44726c08c92b27cc", "0x3e7a5eab96ad9ce7", "0xd21ccf54a5b9acf6", "0xd020dd5631c58ad8", "0xd4b645960ed10164", "0x1c04afe8ddff0e0b", "0xf3eaf34c675ed209", "0xf83a5b87a01cb9a7", "0x897c9aaa61f3d31e", "0xe8f26e2de4be9113", "0x1e2e79125439fbe5", "0xf087c60cbe916617", "0x76b0505e72d14219", "0xe0dffc150493c786", "0xcf601f8f227b16ec", "0x68cbf30467fda7b8", "0x2ac597a66d8b7582", "0xe9d7e430fc0235f4", "0x838f38613810585b", "0x232018a7ba2936c6", "0xfcaa57f18e125296", "0xd2cf528e7daf52fd", "0xf298bfd34806251e", "0x9d225fb386f019e5", "0x724d584fa74411e8", "0x88a4269e2121160", "0x1099ec8581dac2a9", "0xca31862d03a7e6e0", "0x2b06eefd917028af", "0x273fe5a95b7966ad", "0x99b357e1bd3e2301", "0xfdfa4283886fd128", "0x65fc4e52d44f7d76", "0x9df1dde10013e4ca", "0x5ef3dcd4417a4b81", "0x608de4d0f61a0ed2", "0x27dab327de12dd13", "0xc35fceef27009037", "0x20fb392a0ae305bc", "0xf8ba129b362e4a4c", "0x68bbe41814a21bdc", "0x1582b70858607cd7", "0x9f1aad1881e09660", "0x3bd6892417947e15", "0x8170979be7324667", "0x8bca0735c8194b0e", "0x721710ce0776e48d", "0x66664578bf757409", "0x7de6dd1adb95fe65", "0x6fa4802ee3cc69f0", "0x55b749ad0edb80a1", "0x5e5191fcc5bd5fcb", "0x3447f3676d6668b4", "0xcd05df22081fe5e6", "0x50553d1c393c6ac2", "0x1885c57d8d309783", "0x3598f88a5acc305e", "0x79b8ced00ec7e4b8", "0xc068423739f61324", "0xe73bcfe7e93efff3", "0x25090672c21d280f", "0xa6b9302ac9448241", "0x1243d2130f863f28", "0x8ad781802c35c7ca", "0xc97b7a79540cab5a", "0x891b49ed049f589d", "0xd0f67a6a96c92973", "0x7999c17970aa78ea", "0x29d090bd6314400f", "0xa1956c6604f5be31", "0x7fcf439f118ac137", "0xaf950b050cdca6ed", "0x17149910911a9386", "0x3de2d2b23f6e0bab", "0x9cd38ce497a61e18", "0x9632f279027c2dc1", "0x985421f7a85d34c8", "0x8441f13a44c2377e", "0x8c1c7a4592616459", "0x5834bceaced205d4", "0x6f0d98d57dcb754a", "0x5070f6643d43f710", "0xc6942c6b430867f0", "0x3ddf24167a18eea0", "0x73e6fa82dba07849", "0xc5e9c45b9ba5c372", "0x3db08f376eb0c52e", "0xce00fb14f7886952", "0x3f9b85a805f0fea3", "0x6258749eb4cbc91d", "0x3bbc4d14306da21f", "0xa340fed5252728c3", "0xf37726a3479aa65c", "0xc38d580fc6bf1592", "0x994236b662169903", "0x5418ea593ef88881", "0x9964e9f7cde6e226", "0x176d18ba28e65e61", "0x7dce01dc15270984", "0x1405324b9247d6c5", "0xd2360f8c002ea98f", "0x590b0d1f31483ff9", "0x16312f7da0fb23ba", "0x3cafe4fbf24179b9", "0x5b41e36f0b79f3f0", "0x6e4351ad18da83c3", "0xb274ff2b0e5fb3ce", "0xa317fd366d38e1b6", "0xaeb5f44da5196c5f", "0xd24459ef0db919b6", "0x7ff4ea7c556ed572", "0xe3980ef0103890f7", "0x8a4263cd7d679651", "0x3f71336ed2387140", "0x400badb4a5b7dbfb", "0x544c76d50e4460b9", "0x9c35723cff10e440", "0x96060f16414dcd99", "0xd4e796aee16ac503", "0x6fca570d8ba7fbb2", "0x49a7e0fafa7e0f3", "0xde9710b435719f81", "0x7f2551923f77771f", "0x247bd9134d82d12c", "0x82999199a1ffa44f", "0x4234e6f3de7bcae4", "0x1c27628751cecb15", "0x8bdbd881898711e", "0x4dda17f53091c94a", "0x32e1a56d04fb9821", "0xa9d44785095a2c5", "0x7f87477701a22ccc", "0x2affe26313e36bbc", "0x6036508bea033002", "0x3dc745c455e542bb", "0xa28724ff1f12efc0", "0xe25184d45fcb1709", "0xd706673caf4831da", "0xfe599f9d58613a43", "0xf21c2fa57ba0730", "0xff9cfe8b1e33e844", "0x93f8782034d7e0d7", "0x8a7e40ca1dc3e789", "0x7e8127cd72253c36", "0x25f27f6a21a3b081", "0x3766349ef93dce47", "0xedfbc9b42745b8a8", "0xf57d4654e71426f5", "0x3d139bec7b359da0", "0x35a90bd2a813a1cf", "0xc0f08b704f7c3b44", "0x9bb7c8c485683bc0", "0xadb41bb8a117bf51", "0x6efc34b07b772da7", "0xb0aa5e60b4837ed4", "0xb28a1f3f40d1039c", "0x13573af722f9dcf1", "0x28a73c45df912502", "0xb4899c0baca92010", "0x1f9659b2efe18ec5", "0xef10ef726adfa45", "0x3144e033b7ddc7e1", "0x8770d6539bbc6dd6", "0x557eef114b86e7c7", "0x3f7cf36b0f868eda", "0x8aa16692f3072b1f", "0xa9475ef67a14a9cb", "0x3522bf8b5d2b45b", "0xa0ed084e8e1fbefd", "0xb035c17d6735e8b7", "0xefc3e219a74e220f", "0x5156cb674d39195b", "0x774924958d082b93", "0xc36fe211c26f2b25", "0x4e7a1106a76df437", "0x18266f94e350da12", "0xd2ea1f449bbc8104", "0xea8c9ccd85ca651c", "0x7349c602fa37d3bf", "0xb4d82473108b6c83", "0x8ceddeb24eded361", "0x8c60955aff452c27", "0xdebc99d3c17cf5d", "0x699e7a968d0cfef4", "0xcc96fffccf8a7a51", "0x8c54c7fa8b66fcf1", "0x161cd6afcf3bdd4d", "0x8fbc5b3a43aedc1c", "0x5c3e6974ccb92ccb", "0x24918afc921c3eb7", "0x47f8a0295bd59af1", "0x1fd9864a41aa797e", "0x7ecdb56f6520c739", "0x1778d94b66649022", "0xfa0aa8140e916c6f", "0x9bed4ce6909bf6aa", "0xdd04a713e35830f5", "0xbaff6fc7c5c5ac72", "0x3777f402cb3aed13", "0x801fcb6c4e4698d", "0xe3b2bdc1a6331896", "0xcf03490175bbe30b", "0xb2ced8ce4730a947", "0xcad6ab9e19673433", "0xa9e1ba2fc2e59f1c", "0x7a3777f007bb9737", "0x8892b904054016b2", "0x246f882db4b2da31", "0xff550f18b79f0f60", "0x709ebff583e41e6e", "0x5b4ad31c2b4a16bd", "0x93498c70314e829f", "0x2b6abe05655a7bcd", "0xf7ac2aeee22b370e", "0x5f0b011ea8a7bc0b", "0xdd45e253080bce1d", "0x3e97c1b52fcb76cc", "0xf003f1bee06769e", "0x715b3d455e3ed51e", "0xe71e344a2b470b17", "0x438cd2b764b0db9b", "0x324a09a9373716d9", "0x9032a38a7aad1e25", "0x6d8f321be865a35e", "0xeaef2dd39e780644", "0xafe4dba2a2e121c9", "0x82c6ceb99abbd28", "0x4aa7a1b90ad6f50b", "0x8993659ec923a2db", "0xd7dd67c55b14239", "0x129904dcb8a90544", "0xc2df28fc42078f1f", "0xec1c328627fd1267", "0x5e19fa0bce6c9e97", "0x74c8996fa8cf6e72", "0xa1390bd016cf08c5", "0xdfb2463757340a6", "0x3fac5b0ef02535bf", "0xe1783f75ae0dc736", "0x592b939891796a0", "0xf9763c854db19b78", "0x355964ea8fe7dd7c", "0x9157ec0e9d5a68f6", "0x2f8d22121f703ebf", "0x8b325bc5030e3480", "0x47eabdf3ab2d7a12", "0x5abcde5d4ea64cb5", "0x252e9c1d7f8924d0", "0xf907f937f6f255f2", "0x1abde26e8ff3eb23", "0xff98e1989d5dfa40", "0x8e31a8e945760f8", "0x7fbea5b24426df93", "0xfb777bb88a3da163", "0xf289eb938e63fb7d", "0x273d9949e08a2d51", "0xe8f1ccfcee8ea5e", "0xe81e08a5f944df18", "0x6d96c4baea2bc55e", "0xa8cdabc6a3ec8134", "0x197153af8f8fa79e", "0xad05ba885ad3fafa", "0x69f144c57c51d84", "0xf5a0f881ec593774", "0x9c2ae56924cec812", "0x56297a3ee3f275c", "0x131f88fbc6ffae1d", "0x293a511e618f8874", "0x3098a770f715c8bb", "0xb682eb40e1cf799", "0xf12be518b7b1472d", "0xee2776a331b0633", "0xfb30f31e34508a8", "0x181692508f6da10a", "0x35c30970856a3e16", "0x5b1bc8e7e8c34857", "0xe1606a495c2be662", "0x9ef1395b1cc976ee", "0xd906ddb6ed1dee93", "0xf4b4a6c6118ab5b4", "0x66eb47b26f71fbe7", "0xa387afbc10c78e75", "0x4c30e4e5abcdeccf", "0x2f954b25a6ea253e", "0x513cf8c919b85e2b", "0xfb4cf815a48ce37d", "0x975ad7733359f117", "0x59159119d655f063", "0x43b813b6d181d067", "0xd196c5ec2bafc287", "0xa9965ab33530d589", "0xd07c83731fc99ea6", "0xbceae95de9d9280", "0x43f021a61aa96d45", "0x4e1f3139f1482a1a", "0x29891dc466fd3b74", "0x27f4110dee452519", "0x61efa1ef492b62ff", "0x5e13201c2249b301", "0x2ceaea85c1899fd6", "0x5648880b01e6c4c5", "0xfbb09c6ebff195b3", "0x99f118bc66c239f3", "0x55e2b82a008807b2", "0x37ded914d018916a", "0x6c138674f8c2b8d6", "0xa0bb9b8a49b03609", "0x27e529e7a4e85294", "0x9ec680aee9c5ea8d", "0xfea4dbd1cf020a3e", "0x7097f90fd1f8f65b", "0xca6254c228b3f326", "0x6ca76e8147e3f033", "0x816017d5b3d73254", "0x2dbccef1168e5c03", "0x4dff1acc2b76f2da", "0xdce8194176970819", "0x703a5927c0f38afc", "0x8e91d3ef80227370", "0xebc84999df590eb8", "0x7dfe6be82e8a7b04", "0xcc4f9fb9cd58fd9", "0xc5b69e6c632c2c67", "0x708fadbe6503cc72", "0xbe3a2f8916905294", "0x2fbc666f449aba03", "0x63b8e427e0315feb", "0x810038dc24595adc", "0x8674d9dac963915c", "0xb31fff590458c9b3", "0xa9b27ebcb20a023c", "0xbdf03045ba0d910d", "0xee97be9ea48652eb", "0x379be51f6f67c6ad", "0xfdd09e3910e7386b", "0x4212a020e5e1707", "0x911b5b6c76c3fa5a", "0xcaf2bc3e118d0609", "0x10d0090983fd5fa3", "0x736514ea2dbc9426", "0x16378a3cb05589d9", "0xbd653d6b428bc400", "0xf19af4937e9d0ebb", "0x75516ad5730336bd", "0xbcb20767c20e534c", "0x800625053970ecc8", "0x70f2b12da5eae98e", "0x27101fae18f5fdef", "0xd2cc530b784831ae", "0x428ab3c73a24eacd", "0xacfcd8e6fee10c74", "0xb94b6a858847b1a9", "0xad7c3712824d29e2", "0x12bc7a69e7e52c8c", "0x3c998bb725d8cec", "0x3038e96cdd602786", "0x7bf4f5319d1ee075", "0xb767593456b71a85", "0x9afcad8321cca73b", "0x6a6679557572b048", "0x5c084092aff9f5cc", "0xbf9b6aee6f0557fa", "0x8ff3696eaac4ef43", "0xe8c19f753cd14703", "0x290156adfc2f4b03", "0xa15cdef70e2cf92f", "0xcc0a7f751bd33996", "0xef9fa7cb1dd6f399", "0xf175a3f8cdcf97ac", "0x971ad43bdb5cc580", "0xbe385e8efbfee929", "0xba5867a86e0e9227", "0xb8796d62d0e3e5d2", "0x5e4b71a296ad2254", "0x734d9bbc9e556a49", "0x78190a0ecc677597", "0x8a4f3b50799b9c63", "0x8032d5e81928fb66", "0x217329eaf1809c08", "0xe11035f5130a8d85", "0x8b35c1d9b5e18ee5", "0xf8bc6a6400220efd", "0xc1ddb6d1edc60243", "0xcae47dcdcdbf727", "0x5eee67042c34d41c", "0x432f8e86bb7ccc41", "0xc929ccfd8f387455", "0x72d2d3515e14111c", "0xfe9c902f779ac3ac", "0xf5c06db2cb162cf7", "0x7f2bf5a5d53e80a8", "0xb5fcfcd7bd04cb54", "0x8076f93fdec6fac3", "0x3ad036fa526747e9", "0xd45f87a9c029302d", "0x67b040bdb6f48d1", "0x1c8b47d2a6e92844", "0x36acee19ed7ec90e", "0xa756109f650557d8", "0x7fca505f05e18a76", "0x7c7eb7f377282260", "0x2128f67cbce22845", "0x250069e58c648901", "0x5ef78ea66b4cdb57", "0xc8a39438c0c4fb41", "0x93343803c93e355c", "0x6bdb8e3cfeeb984c", "0x2e71f4f409c5b2e5", "0x9a88684847a94040", "0xddd931254958c8b3", "0x1a163df45924c1be", "0x82011e516e3a4b0e", "0xca4f11b28126625e", "0x87232c9ea433709e", "0x33bae65fc0ce8c87", "0x85d2b673e776c65e", "0xb1d56e48ce08560a", "0x86da721434ec2a15", "0x365de3f570018119", "0xd39122b075ca128e", "0x6c1275646a7c078e", "0x95de60fb908f2de5", "0x600f986116a3e2bc", "0x1cb024535fcf26e4", "0x8613526999813d27", "0x620030ba471604e6", "0xa09247d1f0ec40a5", "0xf2f9147cd4ae47b5", "0x1e816d9e124e030f", "0x92b4652598ad410f", "0x4ffe8b39c52a2e60", "0xdedd2b44284d1b33", "0xf710e06eb23fcfe8", "0x84ba75b2a4536f84", "0xfdd026d8cf7763e2", "0xb30d760d90bdfb8e", "0xef921948c072d844", "0xff02251250005326", "0xfdc71f9ca3983f05", "0xed89eea0288e52e3", "0x417302b75811947e", "0x6f507b233d2cb046", "0x1d7746a9fd2680fd", "0x5242fd3f8fe73bcf", "0x9158da6bdc2db689", "0xa347937992cb22c1", "0x1899395228ac3ecc", "0x278caf8a3420e5a1", "0x26d6626088e7d2a4", "0x1ef8d308b2f30924", "0x7e9c48f7921394cc", "0x21d6e67058c0722a", "0x743367b6b39e1869", "0x5fe5d3e684b0db2", "0xf27d7c0e9c5d910b", "0xb1068fa32c4cbc4e", "0x9c490681f96095c2", "0xaeb0c0dfea8ceae7", "0xb4f1b33271b4a4e2", "0x926ccfe78982494f", "0xf11106091995bbf5", "0x3cddc1eaca748ff3", "0xd8cd1f511cdbd81e", "0x721978e1e0b806e4", "0x33ef6a6f12b5f119", "0xbe813a648ad7892c", "0x97daba0d6639b332", "0x7662317e4d32a9c1", "0x3a8f5e55bea97ccb", "0xce70c2de322f4cfc", "0x9aa6639e2a117feb", "0x8ecde821805b9775", "0x2e08b7f133b99025", "0x208356dbb12c820d", "0x77fb4429d29b2df1", "0xaa21900dd365d06c", "0x8758b52158c87370", "0xe6048658fc0fc60a", "0x48c00ac871fd7f0e", "0x8ceaf56b50b4d4fd", "0xb4a54bae366d00c6", "0x1a2e64fdd0220795", "0x6fc1cab32d6dbb63", "0x3a6c04102c6b162b", "0xe16ab0f626363d4a", "0xc2535a40282963c7", "0xd32163a0f4e933b4", "0xdc71a9321b82abff", "0x615b76fd726da98a", "0x388e744c2722861f", "0xbbe7f8c757e7e5a6", "0x7618439e9c9a2075", "0x6dcb4637bd1ae9f8", "0xf0e2e4dddcf2d87a", "0xf89ba4509907e5f6", "0xb53e9882751badb0", "0x16918fb5051065b3", "0x171c75fb63638bb9", "0xfbbdf6d45b33b61c", "0xaee5d535e4d4af65", "0x9f9d04956a51f652", "0x24c7cf9447037098", "0x225ebcd667e8c70a", "0x313a85480ba19fd8", "0xc5f36666106598e7", "0x9495cc45c28d3fc6", "0x8fb4f1ee09e71135", "0xfd0f92c9e02ef8f2", "0x26c8499062e3080c", "0x709016a6036fce2d", "0x757bb4352b2412de", "0x5b54b4afee481492", "0xf7d3d6048be8c251", "0xbfe6d2ae7b19c857", "0x2a176c1f3e96623a", "0x15ad94067e31ca12", "0xab1d554f1a6d506a", "0xe4209c5c2f743e59", "0xab47d70e0d471936", "0x89a654d2430976a9", "0x1439da33d4a769ac", "0xa4ac5c28c8f326c3", "0xc80f19acd70227e5", "0x9ab063d45f55121e", "0xfa5f5953da518e84", "0x47876904cbb864d7", "0x7796f0c80544e170", "0xee4d7d0816002763", "0x6627cecf51b9837b", "0x361319c52068bc6f", "0x5d2cf406a1304681", "0x308e00bb4b0d2704", "0xfa993546edb25e4e", "0x7d0ec05915feecd2", "0xaa78710c9a53b301", "0x85c836421aaefa9b", "0x96aab50d966eedb8", "0x7a9c290f81c91411", "0xf839598cfdd05fd7", "0x149a50d0246a57ac", "0x6dab8db20f6a3c2e", "0xa005fd145bc0572f", "0x8032c9a087c123d", "0xd5d052f2559cf509", "0xbed0e505edcb0e92", "0x6c589412b5705994", "0xcddf826ca0c38f70", "0x6bb4f825963e3522", "0x6d1fe3b6cf40bc54", "0xc25791fd82db99e2", "0x18dd87c8b2043cf3", "0x1f457ba53736c636", "0xccd1847f25646a62", "0xc34d5e61240c537b", "0xc411b24db71751ab", "0x8cc7884195bd880a", "0x45c59d28a4847505", "0xce8d24f6791299b7", "0x4927fb2f2b38ab48", "0x557d97c8420a038e", "0x65680bae49ccc17", "0xbcecd25a086af972", "0x17d5623aec1d2efe", "0x3cbffcb8f809f01b", "0x6c9a5e76fbcac31c", "0xbc6a2d12d8bc45f0", "0xc877e2a0bf1ae76e", "0x710e8feffd3ceeeb", "0x3cf4d6cfa7f1680f", "0x5afa6534435221a4", "0x36da167d41e9cdb7", "0xc83a28aa706726df", "0xf7435d70050759a1", "0x9620f46cbf1832a5", "0x8c656809f22d3ee8", "0xf8544a679d744919", "0x234f710ea57175d0", "0x3974f35ea171dd9d", "0x7698129bc14d6c6", "0x2297fcd490fbbb70", "0x2e82adb4dea70eac", "0x3ce2a033cb0da25d", "0x5ee1755847109a08", "0x54eb54e8bbbdf1e6", "0x436989e9f20db32d", "0x34a8af94a39d602d", "0xd1d89ebee9ad17ff", "0xe6a532275495a062", "0xfd8dacbe220e8aef", "0xb50d102401a79e30", "0x2be82d4e8daeb751", "0x2e43cf59bb913321", "0xcdeae6bd67f2a461", "0xc54d50b3b869805c", "0xaf6ce05f84c47a60", "0x2565817f378cc66", "0x173bb39a08d13ab9", "0x6c4329920754899", "0x5bb28cc9cefef639", "0xb21efae2bb74e3fc", "0x674d692fb8e3d12e", "0x27f8a9c30f41233e", "0x69a7cb85bee75d4d", "0x8dd2e40c66eeac62", "0xdd5c901467cd5b9e", "0x7d5e46d9befe51f5", "0xd89cbf8f4a907009", "0xea7c4673fea6c5b0", "0xd14f973a9d3fa33", "0x319ed1ea4657ad89", "0xce09fcb62859fbc", "0x718a1aff1bb2bc6", "0x8dea23a1a12ba791", "0xd1771cdf4da6cc77", "0xe20f7f8fb44b10f9", "0x903f941f0e8539cb", "0x365f74ca109c7a78", "0xfb32aea86d2c35a", "0xda27698a85b867b3", "0x8e7ee8eda4056ed6", "0x6187f10d07b75763", "0x7bd5bccd3ccc5d9a", "0x1ccacb9a64b388f5", "0x4a374734e033508e", "0xd84f1a31f776309c", "0x6687c117c14de633", "0x742f7cd01920ce23", "0x66d412b15def7c90", "0x5003bb720e15c726", "0xa1c579f880da4da9", "0xc6bf538e69a45cc0", "0x397192919eaf5cbe", "0xa0aed521aa2925d9", "0xd0d78289d387cff4", "0x7246c6963848c5af", "0x7b2ec26cbcc26098", "0x9f5ab5547d47c15", "0x4e9f9cabf29593e4", "0x576218ee0d2cf92c", "0xc7af2be297f2a7cd", "0x24491adecf8afda6", "0xb9ef54575c56c4cb", "0x2b64a91ff2d38cd1", "0xd04abf83c1ea04af", "0x29c3bf0fb56488fc", "0xd4cf51a53ce1d5bc", "0x9789c0c8d1e93fd", "0x1d8715ac721a216a", "0x2e2a14e610c89492", "0x94a82169f44b18bd", "0xf73761b24828d15e", "0x76d349baea20623a", "0x529b0c0f696c0302", "0x5afd988852e49b0f", "0x919471e06708f613", "0x78a681914c6e3d92", "0xc576d0638814473e", "0xe8bff599110ced1e", "0xf715269be0e3750e", "0x5b87690534e41bf9", "0xfb53117743bfdb7a", "0x7e67712564d41688", "0x3b7a68b620fa9961", "0xa1348efc68282ba", "0x356d8db54883f212", "0xe2765da27c468226", "0xa9c06e7f2048a11b", "0x665ce4ad65966ca9", "0xf9b1412bb2a686f0", "0x528b9440d7db2e7f", "0xd186e168e03c9915", "0x64be937223aafade", "0xda1f6cbccb041212", "0x7e5abc050d3bacc7", "0xab05387abe969a7a", "0xad7cd636c79bfaf8", "0xb965ce7015b8571e", "0x297890389967163f", "0xcff9ed9077fcd2a8", "0x3d9f841aae2e1eeb", "0xa1f40d19e8952314", "0x102c4be4fe1f843", "0xacc1b9f1d7c0544e", "0xd5d44aee0f55305b", "0x7c5bd0532eed76cf", "0x7022f5212aa1adeb", "0xf7903951e769e5d0", "0xf764b00638bbaf7b", "0x17e990ae6883b58b", "0x598c49573b401eb6", "0xc0dcf232777a6a1d", "0xa452448e2f35bd55", "0xe99fd648060a0860", "0xdd8fefff83889449", "0xc64712ef98848640", "0x55c9c6e85acccd30", "0x4e386341283c8fa7", "0x61adeae374ca881", "0x83a435218adb5549", "0x5fa47519008da7c2", "0xf587c939d21e7945", "0xbbb8ce39021c8daa", "0xf2735e4ee1ee9f8c", "0x14b0f00800511263", "0x55507cdd842a7243", "0x2b7ad85ed7953b28", "0xb0c227e57de464ab", "0x8d9fffb88ceda0b6", "0x69c2a9c36a4bf0cb", "0xaa16b1f192851e57", "0x4b143800effeaac5", "0xfba8d1af9f1dee6d", "0xd6a9c78c09282c85", "0x5a636680776eb31", "0x3dea2d975be63998", "0x209ecacdfc0c63a2", "0x778a91b051319e57", "0x838b0b0fa2b57ec4", "0x80f8787a4130c7bd", "0xfb7bb1cb8d1fd8c8", "0xd8efdf54271a1c7", "0x36fc853b8cd28681", "0x4700547ca4986737", "0xad27690c5e0f8949", "0xc17294995ba650fe", "0x6f57eb2d3c62469c", "0x443cf476be5849f7", "0x5ef697cbb987b2c9", "0x270cf512c0f999f1", "0xbdffdd5a37192453", "0x990a09dc7516c90a", "0xbceea149c1b097db", "0xf05dddae9fea6397", "0xc7383e9c743b7105", "0x33a12dcb8586c181", "0x9e1e615fac147f79", "0xa2833e2f67aba33", "0x279e5782f7f86967", "0x2a5c63387682fc24", "0xd2b97ca83c374a81", "0xbd2dd3b7c6ec49c9", "0x1a717e12330c82e0", "0x1de07589dc989fde", "0xdd978db6bea9a828", "0xcf8c7bc96539edb2", "0x7ac34496281afe96", "0x7737a7afadb3448e", "0x844df605ee36301", "0x947819830ab7cbd6", "0xc498132f0a676284", "0x33ae20eb26f21367", "0xe72325e1f01fcc3b", "0x8c288284c8c4b63d", "0x820b2e5bd7143df9", "0x279ca3d3dcf63d01", "0xdca259e828cc18d8", "0xef8bfea2e898a6ee", "0xebfd1f749a84f0d4", "0xaf9d6603ae83e1b8", "0x750f597c4c91c3f1", "0xa81329b453567c2a", "0x52268ced40c34559", "0x2f6cb69a342c88ed", "0x1cfb3dc2347594c6", "0xcfe44302dd13cf02", "0x76557db3cd9ea687", "0x996604495901feb4", "0x5c235dc47c06047d", "0x1c454b53e52114c3", "0x8748fb2ba23503bb", "0xd03ead2e66d1538", "0xcc76d41e60629593", "0xe92d91654af4b19f", "0x72a56ac393580481", "0xf33f9cdcf891dfed", "0xa64b248eda06c084", "0x6d446bfd52a31253", "0x106149048ce76db6", "0x75167fc659a3a310", "0xe155f5e825afd64b", "0xb43b11f2fd04174e", "0x1ec3bcde85ade4e2", "0xf503de0e43599fa", "0xba5dcaa1f57a93d7", "0x1d4f1a405bd6222a", "0x99dea4fda9cb4dc3", "0x71d8be53f06d30e3", "0xa5f6272dbc82ef92", "0xa54008e44ac958af", "0x96f41022996d8b8", "0x608c7143d804dbf2", "0x64897448197596ec", "0xe0ea5e2a19ecf350", "0xf901db4cee0a21c6", "0xf0fe060e1441cb98", "0xe3adb230e2331083", "0x61dbb40e69310fca", "0xa5c65b7e0295413c", "0x6a2a63b5018ec066", "0x53ce9f0c3fe89372", "0x1d3aebd91fecc1fd", "0xb2f1c660878da6ae", "0xaadc29c6e8bdd3e9", "0xeebf144210ea72c7", "0xda7d021a82614de2", "0x22e138a10df75b72", "0x5d2500e73c9c8e2d", "0xa97955c5ad7e063f", "0x318843336d53ff56", "0x94ac23ab21d56d61", "0x92b733651b3bb5c6", "0x13152201be991e6a", "0xe28a8f84035a76ee", "0x731a93bbbcbea02b", "0xd3e99d029d64b36", "0xedc3cdb9f393166a", "0x751ef568b9c51e85", "0x579dc35844183a1f", "0xfaf990e709755a9e", "0x29195737f2f0103", "0xfdc911138dd5d1b6", "0x228ef323102c9ecd", "0x684d04f2f16ddecd", "0xd61a67c4bcd6666e", "0x9203d0572e4ab84e", "0x90881a59ef021636", "0x88138d0f024f3ae7", "0x5c849524e89090f0", "0x4afbed340d70be1d", "0x31ca81f6749664e7", "0xe03afd12a76109e5", "0x70152f31817cdf56", "0x16bc95c26c1691a", "0xfeb90fc6d89b3b1a", "0xfec207cc7b0e1089", "0xcb832f56c6a850e3", "0x115c2cefebfded08", "0x6411b72b97190f9d", "0x22561458b73c8edb", "0x550542b8c5290be9", "0x6cc8471d1c6d221a", "0xd226105281a2b581", "0xdac55f8f4c5ed8a9", "0xf16f09663ab82a34", "0x37dda325b08db236", "0xde0f8a53684d44e0", "0x20da824d25faee76", "0x9bcac233c13a6c07", "0x1669aecd205d4e97", "0xa9003810690d0e6e", "0x8b130fda4014c7f0", "0x6eb586e3de18f8cb", "0x11e899e93a497b44", "0x48ffadbd935d5ff1", "0x1a6f5a28dc084fa9", "0x95b905a87ca326fa", "0x67ee38c85324e970", "0xa6c046d1f7b5abf0", "0x93a8098a4934ae3b", "0xe26dcd2587f392d7", "0xec4aa9adb55c0104", "0x97b0a1bae2d05ccc", "0x1422682207b524dd", "0x1b4c32dacf3f0e48", "0x941f66fcde76637f", "0xbbc78431012f6d1a", "0xeb9266c3a09a9e17", "0xdc10becee52cfee6", "0xf314907d498b4be6", "0x2f3e5f6f041d1859", "0x9731481dda016ed6", "0x28a68dcdcda1a022", "0x17327ed9d0257e46", "0x896f5a6ec3a00c9b", "0x102c0d4d409ed2b3", "0x56713675f818293b", "0x15308832378c3d77", "0xc8f6625da81f5d04", "0x65e13bef2719e9d4", "0xb0c8a4e4546c9292", "0x4e5a769b7ce0d3da", "0x4ac1ce3c597260dc", "0xdf8a3288b039d9c3", "0x2ed61453f5621632", "0x4fda0b223f071474", "0xc4f0b7bba652886b", "0xccfd5d85bdbf65f5", "0x90047f4380405b3a", "0xcfcac46ca9937dd", "0x856db15f90ad8474", "0xacc7ad3f2e332540", "0x868eee67ca578e68", "0xf6c8b27e35a24f59", "0x3940318b0c90c888", "0x8e822df7e63733db", "0x855dcc3733e24847", "0x5f2ed2876346d084", "0x30099e4b0af84b33", "0x33d05e4532cb3ca6", "0xe6dab7cceaa5a2fe", "0x76c4ae0bf108f303", "0x2eb6a61288a804be", "0xb5eb9813cd5a08f8", "0x891380b34e4ce34a", "0x3e4e89292c4a7eec", "0x4aebdd5eed87f1c6", "0x856c0bcfcf65be50", "0x59bc34b698c31ed2", "0xecc7293e448bd751", "0x854b4bd62851b3ce", "0x3ce0c6de5abec6bf", "0xa87809f573fbafe6", "0x3bd7d45189f9342c", "0x4fde8213db93d71", "0x5a0daf2cfdd15dc0", "0xbf298e463a73b4b9", "0xeb6b177003f4c16c", "0xa1427af8fb86c744", "0x47ffe99810852102", "0xafe3608c63e28a33", "0xd871766b0712b084", "0xae8e81453dc93fc6", "0xe325d19afc1f192f", "0x6980cd17c15cd8f7", "0x1ddb740ac916b0f5", "0x576530d503008236", "0x17464de4d9bec437", "0xe89d58e169b148bd", "0xffa931576f382796", "0x10c06bd606e2a9f", "0x469c48a4c46854d8", "0xed2b1c0e8a292ebe", "0xc4b848727fc7b302", "0xc9e5ae34b694f954", "0x72eed88a2ed709b7", "0x674e41a8db950ddb", "0xceda635896419032", "0xd44c940bf718fdb4", "0x7753c227cccff608", "0x9ba9a7825ff0418", "0xd0b419dac9d5103a", "0x4f95efc1fd8e2af", "0x3cb5b07342c281e8", "0xd66a86eadf0b9d7d", "0x7a7b8839eb341d13", "0x44fe0530b9073b29", "0x476bdd9fea7edd88", "0xbcc6d44ab64975af", "0xade9264b727ef1da", "0x3bc44d3afe4d196d", "0x32ffabe7b17c3562", "0xc057f7c9e49d9993", "0xcd912502d53a334c", "0xc25c4d6bc8db3084", "0x110745a67fc73eee", "0xc9eb3e7f95f7b464", "0x30a1de536ce382f0", "0x79c50c0cedd4b39f", "0x4d2f029b4d949573", "0xae0980615b6b79e4", "0xdfc9316ef15c98c0", "0xddb537e8e14d3e21", "0x5f0d2b2f7be73c01", "0xb9f630cdf31f80d7", "0x30f2f411bfc8f99f", "0xd25063c245d2acf", "0x5454a8ac4e17869b", "0x1f59473d817df114", "0x4e0dacbbef9189af", "0x8f6f212fac49c1b7", "0x2c0d903908eb967a", "0x744e754b2ae3623b", "0x9e40a31327343e2c", "0xf0089b408a41edfe", "0xe154bd73f9f6a4fc", "0xb20f49e0a0535fee", "0x55c1b7a95018843c", "0x92b1b86c93f744f", "0xd61719f0234d13ba", "0x54e6ca881f6d9de0", "0xebb4587a01db1fb", "0x97ae9d47f332d766", "0xad20940e19e3529c", "0xbf5923fa52c8f57e", "0xb19d41a2143a837e", "0x425689fd52af073f", "0xca7fcaf58cc8906e", "0x53075fbb7bc9ab36", "0x557700e647bb80c3", "0x2da17f8c53093dd5", "0xac9ce71fcce5c110", "0x3a07f6fbe0fb2612", "0xec2148652ad01e9d", "0x6e8df3367e4c8ef4", "0xa424ea3e2135e872", "0xa2232b13898b379e", "0x37d0db040b985a60", "0xe24a74619e30cd00", "0xd3157a981ad0f8ec", "0xf1c15330e7d4d13a", "0x23549a0f145f62af", "0xdbbdb319ea97a33f", "0x2df26bcfd409cbff", "0x5867dead5383d03d", "0x8ef257d0a835e038", "0xdc7532dbbea9dd05", "0xa8d677530367608b", "0x33a5d3caff5d2f8f", "0xd7a60bc5dcf76925", "0x4e5a33538d19909c", "0x54eb42b0115e035b", "0x40a56fa35e7d3ed6", "0x5668a30b8fdea1e8", "0x732a12bbc3a33a38", "0x2505773762d8fe5c", "0xe20b4f0cbb853262", "0x287c3b673d6825e6", "0xb1af7218867bf123", "0xb82a64a8a662c0f9", "0x2f8a4b31e9beca29", "0xd18784712f0c8001", "0x64fb483a3fbec833", "0x88a57a731464a82d", "0x62f68f57b307139d", "0x1f529485b0339850", "0x5ca030d99ae8c2c0", "0x2a7d14601389548a", "0xa350238528445061", "0x801ba00eeaad63d0", "0xcf1428247d59af06", "0x7cb9411b509cbf6d", "0x62065adf83e06c70", "0xc761dce3fd791ff0", "0x1f910212108d42ec", "0x35455cacac83ff2f", "0xc74bfc3f6fe3facd", "0x72d63bc4b0d41c9c", "0xb5c6b7be6f759400", "0xf23838196d0a76af", "0xa420de43f505ee30", "0x60393557011ddcc5", "0x2bd6f95136e55a56", "0x15cfd1b445a19f11", "0x1be03c0173fea47b", "0x1dacdfb7e6896acf", "0xb7b4c5e72680168f", "0xac6954211b8a2109", "0xd5683fd5cbf6033e", "0xc982af7e67bdd85d", "0xca2ae83e098bc90e", "0xa1960157311d5855", "0x741ed6c57eb52ee1", "0x423508473647a881", "0xee4018755e9e0adc", "0xca492d74ea913b1d", "0x2388179e791dec63", "0xad06b82f388f1e8d", "0x81e7856919181fd1", "0x3bde399de3db6917", "0xc66e3ccc9fe167a4", "0x8bcc2eeebd764f1f", "0x9dd5a21d24438f45", "0xfcca8430254596f1", "0x78d767272220043b", "0xaab3ce8b2c09cb0a", "0xce009677f394bca2", "0x8d9f979a620b8d45", "0x97e1d2f603a6c103", "0x3537d379b95faa1", "0x2639735919e3522f", "0x9a861dce201af8ca", "0x5a813cf359af6fd5", "0x6debdebd21ccdff5", "0x8ad8a425e3c5816e", "0x13144ad8b618c5d", "0x33700fe2b0697a3f", "0x21231a5a73174b65", "0x37a78fa4319f2f45", "0x25ec6b7d466282de", "0x43305afeb83fc873", "0xc0f4ec1ccf7c612", "0xb44fde7c508c08c9", "0xa63d8006cf5f318a", "0x22c19c2b4d9ca58a", "0x6214a24a20fa6fdd", "0x5dc6a6553b0b0bb3", "0x3eb2a52b4874c8af", "0x4a3f6362ab88f905", "0x3570f55e0dbebf52", "0x7ce3eaef30fd7105", "0x490fc90e45b9a8e4", "0x308391bf8b0d3382", "0xfb4b355379798dba", "0xfc985950080f2280", "0x9d435129d54f1015", "0xecc87742246ffb28", "0x977003a94980232b", "0xce9ea81e4a662d8e", "0xd2cce0669bfc461d", "0xb8914cb1a7a900b5", "0x3fd6623b34729f47", "0xb94c8aacf364c932", "0xfd7195433c102595", "0xb4871e41bb1b8359", "0xc1de0ee0fd81373f", "0x66f082b389d7c689", "0x4836e6709bebaf35", "0xf689aa4e6faba418", "0x1bfb8ab0007f4027", "0x7b43ba3ada270e9a", "0x612b13d429fd7042", "0x1f9bd9591d0b5032", "0x65ca940df00ce8d7", "0x3d2b93e3e32f5ead", "0xb21c57360cd2757d", "0x5ca00ae2cc4da5c8", "0xf780a302b933faf9", "0x151ac4c3b31ae5df", "0xb585b07450519a6e", "0x88e4236a26928346", "0xd1e2be94458a9a9b", "0x901993c34dd97392", "0x772bab016e1e8d2a", "0x67ac6f702b525e6", "0x728fd21627ad6edf", "0x324b904515b5fbba", "0xf406063c6e7c63bf", "0xbab9b13881adaa94", "0x7ed62a6d7ebd19d9", "0x61133e288652e3a", "0xd56ec2dd2a4d3dd8", "0x2d1f0a1cca58c866", "0x87e0c1f7fcf90d5a", "0x4a83a1d5e97a9d26", "0xa367f34b5ceee154", "0x86ceec4e97b2d399", "0xd8495f63698f48ef", "0xed8d6868db2eddb0", "0x71e4c8f83be408c4", "0x361caa6cb38e5066", "0xe2942243c55f8142", "0xc86bce017c430cd4", "0x7675d55fe83895f1", "0xfdcbdca62a0866d6", "0x54efd3ebbcb4e277", "0x371016937b5fc039", "0xbe0a69aaf45d6414", "0xb416d49d04eed84e", "0xce8d9fddb126c0be", "0x8f1f610d5a896c6", "0x413a394d767c3d7a", "0xb2ebd69f0e566076", "0x9ee9deb523c43683", "0x56567c1e083f4f22", "0x247f0fda6cae67c8", "0x21612c4591a92a2c", "0x677a50e8e5af381d", "0xfbcddfcf8e5a2b90", "0xa81fb099146eb7e4", "0x3802a9667a9c70f1", "0x66d2ac323148da28", "0xc63d1381bbfd413d", "0x28fc7d52d7a68f9e", "0x7cb71f91ca507b0f", "0x6197ebd86d2a175c", "0x1549d0ed81f430af", "0x4dcfc3ea7b94316d", "0xc8ddc5826bc05547", "0xb9763bd41411f405", "0xe18c93ef6931a2ae", "0x3b29a80b7189b9c0", "0x740bde6994a90913", "0x9783f210ddfc089", "0x91919bf5481755be", "0xa5e2a9fad64b922d", "0xac9379e3432d0a57", "0xbbd876f1d27ddf44", "0x6f2fe80651a2521c", "0x2f54a4909333bbe", "0x64c9045c6e13cc31", "0xdb39f41fc77c4ad1", "0xdc3ff5744cb2127d", "0x35d0f1556d713749", "0x944ec3d3d05671ac", "0xd9dacb30550356bc", "0x99e3fcaf013f4105", "0xc9af023e4c24cee5", "0xd6e4886eb8845c42", "0x67692d73a28637bb", "0x7ec472ee7b58ad8e", "0x369805979882187d", "0x384fe73941ce340d", "0x3f973abe4bc1d85e", "0xda2f76f6fac48d5", "0xff3df6bb7f69ba20", "0xee2003893299905c", "0xabcb73cb9c6a56f0", "0xa5f65e9bde5ed537", "0x52631e8a8cfdc71a", "0x5880dc76f659bee2", "0xe278879371d5299b", "0xd0834a46d8c6a902", "0x9aacf6720276161c", "0xbc10768e4e9d5349", "0x6d40e603bad03e8d", "0x87fcb365f921f2d4", "0x31f78be644910568", "0x88ca2086484e0088", "0xd1bd37c2f91a85f6", "0xac8a945ac3eaa001", "0xee5e21a942f5e65e", "0x42b23df887957132", "0x1c6fc1575677e6d9", "0x987b21fe6edd16ef", "0x5b5a827b204151f1", "0xd8fced64df76256a", "0xa17a3533002fdc78", "0x919dabeacf74db61", "0x8843aedef2d4d250", "0xcdda34ef0cfea219", "0x606905941d69dccb", "0x82226b33d532e9f6", "0x88f1b9d5eb593982", "0xac34eff48ae5d517", "0xccfcfff7793c068", "0xca8f3a0abc25fab1", "0x4fed6d3984d3e0cf", "0xd0acda6a0f5757bb", "0x5f0d2202d7218392", "0xa74901ddaecd8a97", "0xb545314a630e5ced", "0x191447dddf273eda", "0xb3595b3284735a09", "0x81425d5c4201e271", "0x65013a3c2b2cd0d", "0x17ed7e97a142960f", "0xc15e265a4431e264", "0x6e40cb145bf690e3", "0x9bcfe31bd7b62a2a", "0x5553169a465e569f", "0xf7be741717e1c3b5", "0x1dfe37fdae134ef9", "0x92ba65dac9dd80b5", "0x4f3de1877782bbb1", "0x6ce94e800147e744", "0xd1567b21d92cfd45", "0xb7075be2ccade7a9", "0x23fdc92f44b784f6", "0x8392402e68c413d5", "0x1b19b38d4f79aa43", "0x44a3c79963258fb4", "0xcc825e4179f21c31", "0x4b56d4d72cde6f7e", "0xda92a8974a48fe0c", "0xc2f7ab50838f630", "0x6073b5014615bc88", "0x862f6cd637dfba9d", "0x4dd649f6028bc7d0", "0x7e793cc38d1b2db7", "0xf3227f603a97db1b", "0xf0cf0a20d48a5132", "0xadc5acddc6780c51", "0x6d1c171e9878bb53", "0xec311936d235751d", "0xd3b79db2837d4763", "0xa2d52f1706bd5f9", "0x4afaa7f57b77b747", "0xfc2aa79a34c622d0", "0xdca35f9ddd8e43f6", "0x11b73cd776332fa2", "0xbc70bac4c8429b06", "0xff36a98e91832eed", "0xef7fad4cfcbc4fe7", "0xf94ee54edcea336f", "0x45081d457969c84", "0x6d29cc7a90ef44df", "0xf8c816719c970c22", "0x32425e56bf2cca3", "0x5cfff3e2fb49547a", "0xa77b6359468fae41", "0xc47ccbba4232cecf", "0xe73cc6ae6a8644ff", "0x74725ae2f48e30e2", "0x8875556ffe7b580", "0x1cd1b5950de8c2e2", "0x1587d4877eba9a73", "0x4937203633c77fbc", "0x6644592a4473b668", "0xa835fb26f604204c", "0xf77952c892256cea", "0x33d14270814d3ec6", "0x85faed7e784e3066", "0x308c99c769480593", "0x63e91806c7ade81c", "0x9e564873c05e37c5", "0x4baa97070ee30d93", "0xb0fcdb32de0321c7", "0x310dbb1c15d33b43", "0x82a2ecaced1f73c7", "0x6a98aee0d7511d60", "0x59a69c895f69373", "0x1c780598012eea88", "0x807089c52280d605", "0xa3be1b36910fb001", "0xef102f59755837be", "0xbfc4430e8518d9d2", "0x1021a39a7f5ca0f3", "0x682bf0a9b7ed9235", "0x314744693ea5c4d7", "0x46cba687bfb47c43", "0x1488d8e4976894b", "0xb16f5766dab3c95d", "0xb1ed32f6ab659e3", "0x22de6266acb34756", "0x9ec18f16b34d0e72", "0x43a5017082230d35", "0x98c4f18cf218837e", "0x836713521b9a8ccf", "0x45b8dfb53b78eef7", "0x630cc9abbf5dceb2", "0x56ba377f2e298131", "0xdabb761cffa55d5e", "0xb5f4314c274355a3", "0x6dfdcc1d83cb7db3", "0x720cda76e9e1cf9f", "0x4986a346f497f037", "0x81dde6b52709521", "0x7524f020d3817cd1", "0xe3ab36f2541435c8", "0x50d8e68f01378e35", "0x84f85b966c52430a", "0xf67bfce19817d8e8", "0xbe71b11cbdfaa4a", "0x98ad7d2cfb169e9c", "0xc6910626d087a2bb", "0x2e4ea6b7b26a620c", "0x644998380423d7af", "0xdfe02cd13c68e152", "0xe4d5f43e2dcbcf7f", "0xb262f225d8bf9305", "0x5067430bda30f2d5", "0xbf462062028cc02a", "0x2929cd0ae4ececcd", "0x137c6e9a3b3047da", "0x9a8f99a5d2cfb799", "0xc61e122a4832fa1a", "0x9f706ff057534580", "0x325403ffb9994d30", "0xe6fc034be01fb9e4", "0xf19eca1d873d38af", "0x557ee5cdf3c75add", "0xc45b6f2e7dc6a92e", "0x859e2370ef6a1715", "0x50a969c53c35800", "0x3eec29d0528e383b", "0x2417e63db4727ee7", "0x4079c7878d8024df", "0xc48eeb5ab30cd45f", "0x1b069cfede934685", "0x668c443bf05e1c1d", "0xe54eb89dd6fd90bd", "0x6c935061af78fdd7", "0xe308618f21fc2928", "0x4e24d79ad67e18f9", "0x4236975d66435133", "0xac43ac1d1d19ec24", "0xece2982168bf8160", "0x3e3150bfae024c9", "0xe62ddcc87158df93", "0x33397f4613947801", "0xdf8634103e613294", "0x512d5e9e5561ae53", "0x2ca25788f0bfd3ca", "0x720368416565a1da", "0xdc0870d278bd2892", "0x290191c652dd29f6", "0xcf47253b4e67b0e", "0x6d28bece7de84a2e", "0x4961651aa59e0c3e", "0xdee2262b7ca2cbe9", "0xf365fc3a32b9ca25", "0xe6b68351b7ae5f07", "0xa1579a9bc8fe883b", "0x9836784d5240cf45", "0x51a06e7acaeaefc7", "0x9df1ad152650c434", "0x5a45bd02413c5271", "0xc3cb4722de3d74ae", "0x57c7d1f6c34705b4", "0xa0d247c5dce6a7c4", "0x918e9092792e1b97", "0x71a6eb3ba7eee890", "0xecc5ac79597a2cf4", "0x57b7c5665d66d8e8", "0x4ee33af025f4662e", "0xc0d4efdb2af132d3", "0xdf64fca54a213833", "0x7d119c18d1437535", "0x41661c4dc536412d", "0xd1278d0a7dd31781", "0xaecb2dd400da2a64", "0xc491e0d4163d5867", "0x1f1a65584ed2553e", "0x7fb99f32353e79", "0xaec621bea4814868", "0xa583d5054d616971", "0x3271bba57b0351a7", "0xb1e4d8b0e88fef4", "0x2b88d3ef39eee50f", "0xac29f885d74fccb6", "0x61d9ac874fb9a5dd", "0xf834f3435bdb59d", "0xed5d014d3ece092d", "0xe0371944cf7acb8c", "0x5de67dfc5ef1c71", "0x980dae7e00020c75", "0x36757f8c68e9b040", "0xbc6bc18e798e46bb", "0x6d64075c11c4c5a0", "0x173b28b27231ba1f", "0xb5c3f4814dc971b4", "0x30558985245e54ad", "0x658c254f72f99efc", "0x711c38030adc0dfb", "0x10ad3a4d2cf47f60", "0xdb57705465b31483", "0xd75ebbac5369e709", "0x692004b5168909af", "0x12b0ddaea79a609d", "0xda80dbd8abdb0edc", "0xb582704fa6510764", "0xfa530bfb5e65b398", "0xc9d4c2a35ee1b931", "0xf9b0baa7dfdce544", "0x196425c069c7fa17", "0xbff148aa1e3c7338", "0xd8822266bc115d85", "0xa2a3e0c1214e1a3c", "0x1c19dd0d67beafb5", "0xc29cccbfac1c122c", "0x42a2205448ceadf8", "0xcb0c7721bbdd4cdf", "0xffcecdf6737de144", "0x228c00aa89c84f4c", "0x812235ecc0ad3ed", "0xa2a88f22da0b132b", "0x3c2cd384e13960e", "0x94c55eeb8cdcbaac", "0x2137bb15bba1486b", "0xd6bf1912697feed8", "0x63d2aee942c0025b", "0x864b7ddc0c894b33", "0xc1a6ac567bd32f3d", "0x9d5356048d466b", "0x5aa5871448fa3485", "0x5df02f72537d8e81", "0xff11994aa5285b28", "0x987933f93bd1f238", "0x5d590361285126ba", "0x5973be1184682408", "0x9c696afda53944b", "0x74249015206ffe26", "0xce1f2973d9b8d5cc", "0x1d5ffce74c73d57", "0xaa8607741169f922", "0x3fa4ae56cb4cd9ea", "0x2434f7f1e03f2ef7", "0xe3b038fed24b8d42", "0x77eefcb88e7eefea", "0x9ddcc64c06fd9ca7", "0x1b79552126eb52e7", "0x29e0cbd09f123548", "0x9fef9d6b47b015a1", "0xc1382317c367979", "0x430827d02cf68d99", "0xf1b5211bb376413f", "0x12a0af1b87bff135", "0xadae444d9b6f3a5a", "0x1725c3251931213c", "0x5b4fa3df3289de99", "0x473f8446bdabb2fe", "0x4196829168870b19", "0xd160693b2f61b205", "0x2929fe0872a90cde", "0xcc4ecbd50a36a328", "0xab3d472d4600bbd3", "0x886e6e13a59f99de", "0xdee620f5f21dad89", "0x7c6176d54dd52268", "0xd7888f336a4e1e2e", "0x18633f329e7d3dfc", "0xe0db95dd902587ea", "0x860b51065cfb3dc7", "0x90f2f217bcf61766", "0x3879a352ab03828d", "0x6551f1eb714b979a", "0x4ee3cf2c52d89d83", "0x8476e5247f00d49", "0xa42924f943111654", "0xd43d9ca19185652b", "0x4ea2bcd1a8df9ccb", "0x3129be3ccf06451", "0xaa846067374fc0c6", "0x7b98d8e372dfc3e6", "0x7d545e63d7841272", "0xcf0a3fd296f4744b", "0xd8516c0bd4e66939", "0x9be40566cab19bb5", "0x1582b585f4e4fd8a", "0x77b433a5ac5ff98d", "0xa77961ec0d02feec", "0xa4e1ae52d741df3f", "0x30ea6e498b902f7b", "0x48946ce2f25fc632", "0xea91c50d4823f895", "0x3df0ab04a258e30b", "0x7e8f81230e1b9254", "0x3494704cde330a26", "0x3dde1346d518f403", "0x986548bb832c3511", "0xdadc183a64953ddf", "0xf8ca41e8c4af68fc", "0xab0989af558418b9", "0xe0538147389a0817", "0xb43f83a32cccc6ff", "0x3edf25e2bcf295f0", "0x67f3c6709bf6dde6", "0x697e7abe20916d84", "0x878a49a5b24b4bcf", "0x92f0c89c020a2dd1", "0x8596cc55f91b4a36", "0xbfe3e011440786fa", "0x1388209fa0237544", "0x947a266fdab024c6", "0xcbccd0bbc93a0b6d", "0xad7bffffc7a321ae", "0x1e06874bcf655237", "0x3b8ee9e9faa951f6", "0xcb73624807e6671e", "0x3c6a47b465381a62", "0xb4b3dd32280a9ef5", "0x89b1872a51d0da60", "0x2770713d50b44676", "0x8fe4b6d39e69e024", "0x23ffbd9d80e50be3", "0x7ab8f1e7f7d4d1ff", "0x48cdfcba3298697b", "0x1a3889f6eb845cf0", "0x1548f3442d8a8843", "0xd4bd8e2b11b0a8da", "0x4124c8f37e24e77", "0xc35cdd4a3cd33aae", "0x9e7568dd809bfef5", "0x9f348c585aece591", "0xc3c142fd3e20fa7a", "0x9601d927ced56920", "0xa012d17d7c80313f", "0x4a90c728909e48b9", "0x11bdd2ea3a96b18f", "0x5ed50103080178ed", "0xdd5cb3fcc63617b8", "0x5609a80dab12500f", "0x5acc92b01de70e89", "0xab1ddc41c3f24191", "0xdf19480f5948aa86", "0xa0cdee6da942ada5", "0x17b72e8467747d66", "0x79d29e50cb3e028a", "0xd26d3f1b30deb1bd", "0xdf97cf75bef791d1", "0x703cfe8e56cbcb97", "0x815361c42c2a21d", "0xd7997a99d390c585", "0x9cb26ed426d357cf", "0x5c2e059fe45822b5", "0x6a90c6fd98f17a22", "0xed44ed48e5304297", "0x50408d991fdcdc82", "0x6565e4c51f7362c8", "0x1ae8bb2d7435a3f8", "0xce95fd50617a6a02", "0x2baa070fa66bdb6a", "0xceb2e2bf768a7129", "0x9fcb749e542dc54f", "0xc2b69bcf8953e913", "0x4e39bd846cb18651", "0xf26d5719dd977cc3", "0xefbdcd675fd34e0", "0xe56f5dc9628dd73", "0x6dfe2ce181651a55", "0x406d02fa872dc1c3", "0x6ba7840e2da5f79e", "0x2e6461d1651a15bd", "0x6edb2af56e00fdb2", "0x9dfd69ce8a0514ce", "0x4e59745f3e996939", "0xa7d73c5c219f302f", "0x4da6780105e7bcb6", "0x667efddd3fb4c22f", "0xe55d6c83f8aba3d0", "0x4f1678894db22f61", "0x733ffa7113c3b45d", "0xa1a1515a60924137", "0x2aa4203edb435f74", "0x6aa3fac035bec122", "0xfc296dfc28e95f84", "0xc20cfc423fe0068", "0xe295372511869072", "0x66105c51ee3fc803", "0x732ac800dcd0e26d", "0xe187a6e245d3eb55", "0x1a75dc91aeefdbcd", "0x3ff523c56405f048", "0x3b319b195947f723", "0x33c025d94c9afc45", "0xdc017b989fdad460", "0xee22436cca5a8e66", "0x6868067a0466c0e7", "0xd1e14b615705464c", "0x8dfb1745c599dc1c", "0x69f76710b615ef43", "0x2e66a51130c3125d", "0xf30d1bac54b1d56a", "0x4b10244f3c44411f", "0x80c141f31ffb0fbf", "0x4326e34be6cae0cf", "0x16153e2a4025785c", "0xbd0db2cfc3786325", "0x5a300e6dca413709", "0x1eeb678b2e39c1d0", "0x9b0b2e773db8ed29", "0x5f49fdc6f547f204", "0x1efef21f16d2a9e6", "0x16f498881fad6169", "0xa9d34ef9bedada28", "0x18c4ae5c1ac7993b", "0x913ad42ff62748ce", "0xa27f683147a477b3", "0x1f3256cf2e4fe971", "0xd189d4491f31d98e", "0x5d141728659ef063", "0xa8ff62de3eb9de0e", "0x196341c1f8d00d30", "0x4f009645441ab457", "0x1495ca265d0c749c", "0x2670c0160d72f31e", "0xe3eb184216ac1b86", "0x3181ec609474e50", "0x44bd5e0340eff9b0", "0x3e88e37d1968f431", "0x500d25a46165ae35", "0xe3edf482c7556c6b", "0xdd77562f7880b0e3", "0xb79a3922d2497fec", "0xc1c240439912a075", "0x36e41fd104b63a95", "0xdb8be92f18ae5450", "0xd6341fd1605dc773", "0x848f7aa0d5bdb9fa", "0xf038fb923a2d26fd", "0x24d52bd07d72b945", "0x9ffd84667e3eadb2", "0x1391e6cf207b4985", "0xb454905faab0bccb", "0x43b6295f8913b4cf", "0xbb24438ba3180650", "0xc7839f83a96992a7", "0x426c16a26ccccae3", "0x8bdc5efeb05a97bd", "0x7a0cd592cc67a871", "0x9cf71305659c67b5", "0x974e788e39d272d6", "0x6dcdce10c74fff3c", "0xa62feaec0405739e", "0x23538358b7a35adf", "0x15ea0e95a766ea32", "0x46be58d8dfed7ba", "0xb6690295cc0f19b7", "0x7e14fa47b9911fd4", "0x296af8c011532ad", "0x42091c0b1ed01d29", "0x291aeb0004435999", "0xde95141e7089b926", "0xf726999a76af86f9", "0x281f8700e0a53fdc", "0xe0c8d317f92c5d69", "0xf4c3d84f9bd194c5", "0xc53ac93fbf3928f8", "0x7062dfb7f14490c6", "0x3a77c32262719b0c", "0x39a317bff4590952", "0xf98751336441e844", "0xd3fdd13a8bd97971", "0x38a0637ce6c9858f", "0x6a20d4d8907a4dd1", "0x526b7a87f7578ce8", "0xa768e0081d0bd547", "0xa15b356a3c2e28d6", "0x72f0cc0df8683fed", "0x9b942ae40e17a6b2", "0x43cbaf7b895a011b", "0xd0efc521032e8f34", "0x779e6a4a6722bb65", "0x434cfac8fd906476", "0x3d862f4e280392ef", "0xa4dc993d1dd85f92", "0x2d638487736228e", "0x3c9e07df653ad54c", "0x98a686b9891d11c3", "0x547c75a1992d60ce", "0x3d2e2f8bef433ee8", "0xc9d87bf45f5ccb20", "0x29b9b5787cd59103", "0xbc81a43ef3c47b4f", "0xd184a85c5e8e196f", "0x81d776adf6280f21", "0x423e19fb9aeacb32", "0xfbc57cf0bdbf9754", "0x5d6acb3be9631bce", "0xb987224c83b2257c", "0xfd9bb379db764615", "0xca221a430410f969", "0x291fc54d75131464", "0x88979a9550231dbf", "0x778c1f20f2a8c48a", "0xe6fc6fb72b42c17e", "0x65946d825d38bbc5", "0xebb243d549d7faeb", "0x37371bf26f89746b", "0x2f0be1cda2c212bf", "0x51acc237f2acd03f", "0xfd51ec61d578d656", "0x10e6bf43d890c772", "0xe4388938574f8db1", "0x33a0d3a34d0040af", "0x1527acddc3738469", "0x37327de21739f446", "0xb2aa5034e57497d1", "0x7d658c209fb58f39", "0x2615769a59659769", "0x4223b2503ecda3c0", "0x9ab097875880f5d0", "0x5a2ac8b08197a5ca", "0x6e78a82fe3abc458", "0x181506e3f4660647", "0x23d8a5b19da80dcd", "0x9a7e633b67668da3", "0xb738bc06ba8e23db", "0x83444d1c6ac2df78", "0x84268af3d1047aa9", "0x275865553c936a89", "0xb25fb67812efea", "0xc8e98aaec5dabd26", "0x8eae4def8646f649", "0x4308d9980f1ef0e3", "0x429da7e8b2605ba6", "0x972ecf476915500e", "0x68d70b8a8dc6d277", "0xef6f17277fffe3b2", "0x8f46ba34529473e9", "0xe2eba662438eb51d", "0x4652ce546ee80ee8", "0x783c051ca9e5f84f", "0xe43d9a04b51a6a5e", "0x5ce8b9c3cbced2b2", "0x8e56a227663ab7ad", "0x1e4b058a61ce46aa", "0x756dfb8d4875d0bc", "0xc42e305127db8a79", "0x255bc044fad97b3e", "0x6fc478bd0ff9e1bf", "0xf457cb8bb70434a2", "0x4eef5a168b8fabc7", "0x7d4bea95f4473d2b", "0xf5b93fc6267189cd", "0xb581c480a662e9f2", "0xb819d367df52edd8", "0x80615280b38d8f9b", "0x4c53f7dc9452dd9d", "0xc60a80d328bf78f2", "0xbea0caee6adee20b", "0xade6a73b4160dea3", "0x17da845602a8af7d", "0xd05f2e59087505bb", "0xcca7b4a92ea259f4", "0x9e2667e92a567310", "0x3e9354913b193755", "0x9c2ea2511eec0a96", "0xfe87b965d9df9e5b", "0x19b745b6d51a242b", "0x5a55eefe1824f44d", "0x589b424989061b0e", "0xa3076134cc6900e2", "0x93fbafa9634e6cd9", "0x55183b4bb07e1212", "0x1164e888a6ba167d", "0x9b92868d05c15a9f", "0xab1b79736afd1a47", "0x63a3d73b681fef8e", "0x78811eb063e475f3", "0x15468926aa8d1f1c", "0xc2f810f8b8155459", "0x216864937be9bcd3", "0xcf1f0372625d8f7f", "0x4c1154f0c40c928f", "0xe4ed9083fd947ea6", "0x13ddf31448d684d7", "0x626bca03262dec39", "0x841d2761420196e6", "0xe44e034f928899ad", "0x1435aa544c2dd85f", "0x8b2849659b1cddd1", "0x9f6f3a7c8f3cccfa", "0xae5e73bc96acecc", "0xbf2001b7b9001250", "0x9c37833838f155e3", "0x3447c57bd4385e2a", "0x5c62909ac2dd8d68", "0xe3bcac52b1a6da7d", "0xca1140e155253924", "0x11d53cf04f7f216d", "0xd8a7180cf3e37bf", "0x94189c9a3d5bdfa6", "0x8ca590e02ea18646", "0xa33b2a4efdb1780e", "0x251e4018d03beed7", "0xb1a061e305d14411", "0x12124696f9304f47", "0x425e95d84ffd9451", "0xb198ee843ea264ab", "0x3fab1088f1ea61ab", "0x3aee2e66c206a82", "0x74fc8d0934d692fb", "0x89ae5017f9a13bce", "0xcf8a53eaa42392b5", "0xb960359cf124c0ae", "0x8b0087bd255947f6", "0x195b4ab5d82f580c", "0xb2f6b78b25aff28a", "0xdfe54f1585c9b08c", "0xcccac91db130b8c2", "0xb8b78082b7d7c9a3", "0x78e2bf3b6513e8bb", "0x7955fd7db8e669f1", "0x58b9a7929a4d91a2", "0x8fc5a8311e1b0980", "0x579ff0d0b00e6a28", "0xc80d2848a2820d6d", "0xc9f0dcca19207aa7", "0xe70c90641714887f", "0x3e53fc3c3e4b389e", "0x5766c4f1fee48f77", "0xbe6fbb2f25d36585", "0x67740f82ffb8d593", "0x95ced16858409508", "0xeedabb986c1738bc", "0xc5f2a1913bdaadb0", "0xfe5a9f1dba3e5a2f", "0x7e39f8593c8c7976", "0x80b0cd0b3fb69b9f", "0xaf4ead29ffd15dec", "0x2489839a9ebe03ce", "0x57e7874129c3b155", "0x68e320beb5da61b8", "0xcaad2cc927d05c4b", "0xaa554f35cb868bae", "0xed7895358171c449", "0x2bfe6932ec2e13a", "0x76a6c928a97929cf", "0x43e21249ae1f29d", "0x94ed5b3e122fe644", "0xee251f7206cf50df", "0xf3f79a6ac9799f5a", "0x9a63c682bd47952e", "0x7cf09e5707dd77dc", "0x3c92bbbd8b52ca5b", "0xd2b7e883bdf8aed7", "0x9d6026f22e4ed1bc", "0x1f24e72ab49ef55e", "0xf236d5176390383", "0x76ecfd1c54d815d", "0xfaee941fde99d912", "0x28a479d0fed18399", "0xfc516d06c6a8f180", "0xa1c94ea40a37b0b3", "0x35d24ef9ddef7ccb", "0xde61dfdd00230509", "0xa9ec80d525eda37c", "0x19d379788335c633", "0xbc3d3b070e68d94b", "0x66e1eceef3fc2383", "0xa4106d290dd9b53d", "0x871d48cde733ebe7", "0xc2d25738f0add16d", "0x58b65c932940a006", "0x7281bcb65e194206", "0xd917d219d1ea977b", "0xa1e0943658f482f1", "0xffdd1a45cb904eb5", "0xcc706e0f94f45e9a", "0x11860e2180737c21", "0x1d188c3b74b0c0d4", "0x1324060516274004", "0x74b2eb49a176c71c", "0x953166f537596587", "0x6eafc1220390d816", "0x8d532331297b9f6e", "0x9e28fef58e11e642", "0x9e7e3d7a00976cc0", "0x30685dbd2cc03c44", "0x32ca63a63dfcd1db", "0x70f30d21539f13e4", "0x1c75ce31c0e65cf9", "0xedd226a692b3dc7a", "0x1300966f328907d3", "0xd686e1062f491622", "0x71b46bdb2ce96beb", "0x97976af70f8eee9c", "0xc2b0308cc2b8bf03", "0xd3e6f989faf4536f", "0xc1daaa2fd0fcd5a7", "0x3c9f19e45b767937", "0x93745cb2b57370e7", "0x439eca623d44055f", "0xf0fd206057a35345", "0xb51e2cae0d9cab08", "0x3766ee8a2cfbc3b2", "0x64416df3686c9b26", "0xc14e736386cb66da", "0x22460461579a511f", "0xb1c32d7eca4dc65a", "0x38cfadb7a1c7ef7", "0x64d0ec46410827f6", "0x89ade4d53ea7ef71", "0xb43409e304f51bd7", "0xa0cb7733c729abd5", "0xf0927da6684904a8", "0xdc48dd48033ad828", "0xf34d1dfae89d4289", "0xcde93cea3d7b013a", "0x7c2ba3adfb861fb0", "0x9f45b09098c34f20", "0x7c45c25418ae3e96", "0x8e10496c82a75b59", "0x4cab6cb055800fbb", "0xdde820743beeb998", "0xa85d79a02fbcb2d4", "0x3512cdfbe13ace90", "0x8e50c20966ca4601", "0xadf9a73f51975089", "0x32fa20c78128ecb3", "0x400267e9e6763ce3", "0x76367202f7c8346b", "0xdb7f27753b800748", "0x11fc67e40343e8c4", "0xfc6c3691e4536596", "0x47ba87633f0a883f", "0xaf806508e76b4c4b", "0x448c974a9eec6776", "0x28a6e0a63b89b934", "0xae76ee2ecaf83fc6", "0xfaee671e5e2ac4c", "0xb294d4e54536a5f", "0x851c55280ddbb559", "0x3e5676883f86827d", "0xd7ae07f96d155103", "0x7c422de1634f08a7", "0xd850115396c2adbb", "0x81844383ee956a5e", "0xcdabde903411d555", "0x87b7e6a22632e446", "0x92dd3c7d31f5f81c", "0xbf9ddd36e331cfca", "0xdb38f2e3213252c2", "0x5190f40bf4464069", "0x9e9e6f9e3b8ae16d", "0x5529abb0c4c76f41", "0xb7eb3c3e9dc5070e", "0x87fe8a98115ee3d1", "0x8cb742e56dbe0f9c", "0x137618b5939b844b", "0x5d6fccd108f9f1af", "0x53e1b3cc435e2d2", "0xfb346f0758e7bb3d", "0xcc56586491de4fab", "0x3927f868c978b7ee", "0xa0f1df3639b86e2f", "0x4eb4dae8beec2fe7", "0xd42d2f07d3f05eb0", "0x21a23b6a9289d5b8", "0xda280aaba2771bb", "0xfa7e515b1d858565", "0x1b8cb27c803227ef", "0xdd14de24001eb44b", "0x37fc7170f71e30b8", "0xb477b792f840aa0a", "0x4570e1cb4cd3912", "0x7808a9a26b0ee7c6", "0xd149d073c2568f87", "0xf5211f051f94e21f", "0x7040031dec3ec486", "0x429eba830efb3654", "0x40cdf200941d0c38", "0x4185e949e2fc3c5", "0xf3bdac7815182745", "0xe1331eea74e09b73", "0xef9b45c7e33fa3d3", "0x1ab2e42e79f6b226", "0x15db246a6b277aa5", "0xdad3b48c8950b1ad", "0xe2a92c657279ba84", "0xc342b510ca1ff16e", "0x9a444767f7300a82", "0xe6f02007458b2205", "0x2f62dc0432750c13", "0xdce655031f58233f", "0xee48f59bd47aeb94", "0x18925d69ac3430c6", "0x3ede5826adf78049", "0x4f109eb9c744a06b", "0xcdbf5cb5b4f28618", "0xd819bc277ca1ac50", "0xe4096b3e2351abf8", "0x6bcda242441c666a", "0x7de4531833496607", "0xeed82ef739368dfc", "0x4a24345ef07220dd", "0x3de070ab591413cd", "0xcf0e02045e26dfce", "0xa021b91b931f5d28", "0x86eade469336eed8", "0x1d6f7dc806acd682", "0x81a8a4ede20184a7", "0xaf1b93a52b94376f", "0x987347ec2766b2cd", "0x300ef43fc4f5d3cc", "0x8fc1977556d175de", "0x3686fca7e7bf1122", "0x47bbfffb42672fcd", "0x5ec479f516e323fb", "0x1687db5cf8e070a6", "0x7d61a560ca378e25", "0x7aace0e5ef909c13", "0xefcee3a77ec287cb", "0x7f8c6b82f870bfbb", "0xd2ac2a6d4ef9c9cc", "0xfc8119e5172d3d79", "0x7fc7dad52621a2a5", "0x38542736231f4b88", "0x6ac4f5b3c94bb32e", "0x8cded9dda2778ee8", "0xce094ff588277dd5", "0xaf75bad0a8a82671", "0xd0275a2b6340bb3a", "0xc699ff2debc3d599", "0xb90a731d4d2bd77e", "0x6653318fb93d11b", "0x1a5c2629fcf170f7", "0xe2383abaf6777e4b", "0x5bc2a520e8a71a7c", "0x94bd2fba7a3bd369", "0xaeae6fa4120a570e", "0x7e75dfedc313ab11", "0x4913ef8caf830162", "0x9ff2d7115e9e4b8d", "0x1ed5d9b4377e6bf2", "0xe978f2037a899b41", "0x42b6640148aefc2d", "0x3dc62e0ea04a365e", "0xd461f015df1451c8", "0xe1fd69b538890976", "0x80a8969d6dcbbbdf", "0xed711cb8c2fed5ee", "0xb3d6d1f9807f00e5", "0x40845fc0b2cf1be9", "0xad69fdedddec4a5b", "0xe9192879845ace85", "0x853cab8a6d1eeac7", "0xe36451027b891286", "0x60051b43137c8bca", "0xb14d850e76308312", "0x6bb3e8a73fb3e9f", "0x50d227a9455159db", "0x3a178af1e7565d24", "0x6cc0c3af4d54f866", "0xe9f5efff485f06d8", "0x4470ef2d688c1b84", "0xb218686cb3cd678b", "0x82074845170ccc83", "0x78d52951492f177d", "0x29eb07207f5fd103", "0xd15eed379788f8b", "0x849ca783febfa232", "0x4caa2cc3959a6d3a", "0x2c2881e405ee9bd3", "0xa098b58b46029778", "0x6d60e6394e20d703", "0xbc48ee72ff8e517a", "0xb1d5eab1da37c81a", "0xb0366b60d672f450", "0xe9eabfc1c4cad226", "0x1b617fc3df9aedb1", "0xe409ce57d8bc740d", "0xe052c79b7119036a", "0x418b23e86b37ea1f", "0x8bde090fc9f6485e", "0x557bf2467127633c", "0x3cf774eadf9fb2a4", "0x156de6f887336fbb", "0x3a36237f065338cf", "0xaf1f9484f91c1a84", "0x289c0f7ceb8f415e", "0xd5500e7bec9ae8d3", "0x38781eab124c657a", "0x4c39d5ebd4fcf983", "0x13f75e1ac3189e7", "0xef9a88747840913f", "0xb078bebc3ed9183d", "0x58a9a64d98b8b24a", "0x8b6faed91445f0ab", "0x92c1b8ad1cd81d05", "0xaee8f336c0a097fe", "0x829e8e675973886b", "0xa5e26b53cd1b1898", "0xd662a5b142b99a05", "0x30e400a7ae6b72c3", "0x2d508c01de216d1f", "0xfe7e72fd1dba9d2b", "0x3aa7bade6f1344fb", "0x70ffa1b43d94ec03", "0x642751372c4d75e3", "0xc29976791209350b", "0x969da6fce4b100a6", "0xd7f6d6fcb86473b", "0x593cb71b5ec352c1", "0xcbe80c4bcd91fce7", "0x8f5ffa5c3a86fdd7", "0x223bffeb3a29fcce", "0xeefebbfe1dd266cf", "0xe19ade20dda4a8e4", "0x55a1ef1fb7c97792", "0x48142cd08edba914", "0x3dc9b406e219940", "0xf5742192a29cded4", "0xd8e403f6f0c7e7bf", "0xacad7781594ebc64", "0x33d050823056655e", "0x7878fde66e6ac6c", "0x46f5dea75db0762c", "0x96360c5f2a0acf46", "0x81661c4ca56593e6", "0x16fdc318345e0dce", "0x75d03191b2cee685", "0x6ee55f251ad8dd5c", "0x5ff5541d349b93c9", "0xcba3dd1d2b74aa14", "0x9002d62b957ca8bf", "0x8d173871953fe3be", "0xea00b0b35026a4b6", "0x198bff12002f832a", "0xdb4051c133740601", "0x7287db110c8afec5", "0x35ed412be803ad2f", "0xcaa2c8f2c967f576", "0xba83157a4c82420", "0xcb25625069bb40e5", "0xf15be501d4246696", "0x42b61d1d5b374d45", "0x9bcc679790845696", "0x34542f881dedc54c", "0x3d8f1054ae6ec301", "0x27162b1a7c9ada35", "0xb896f36629b3502f", "0xfc7e877cb4b4be68", "0x5cea5130bb8233d3", "0x309e02b888ebc7f8", "0xf41ed8edfd51781f", "0x967ed221c9d87632", "0x4b07d2e3360a0e91", "0x827c4b4ff748bacb", "0x15b8667af52fc8b8", "0xd450936386b3b5d2", "0xca5e77f144f206ed", "0x9f499d244df25ea", "0x1a8927ec4a102fd4", "0x3a5b18017d4336e7", "0xc5fd47d14a47b289", "0x3fe8ea4ba1a38bb6", "0x305ed1b039370419", "0xae917e1aabc3a541", "0x273899529f520929", "0xacf5193fd0dbeb22", "0x11e0bed4cc5f7b12", "0x54e0c569c75e5028", "0xc45ea09215a33436", "0x2916c0962e9da160", "0x46e1a9ee40c9c5e7", "0xaa6e97184a729ab", "0xe7a74c0cfa88b3a8", "0x5c1e0e26769939a5", "0x7c53e93d8d1df2cb", "0xa9c956bfa240288a", "0x2efdefb37924419b", "0x256a7645a4a48d12", "0xb9060ce72273fb30", "0x2e043281dbe3146c", "0x8e1e14d3c00a5c0e", "0xa92bb00eb08864a4", "0x2c8348203b1f64d4", "0x8a8997f670485d8c", "0xa241e974eb08ea3d", "0x287b0577a60a84b4", "0xe83c5432d8766834", "0xd8c5a4a5a28a075f", "0x50f142ff40099a7a", "0x523f0b68b3566ca7", "0x952e2c31fa673bff", "0x87a47b9c82baa9f7", "0x55398cd03b282fdf", "0x86ccdde92c2c63a0", "0x1d28fa76c40c32a1", "0xf6dcb16475f876f1", "0x870898133dcbc191", "0x3c35d4ea45931564", "0xedb1a446ae142e61", "0x533b50a049a09061", "0x54f5d8341a7ba1ba", "0x80a613bddd371bcc", "0xf93ca9378082dbe7", "0x9339eb355f2a276e", "0xbfbcacbb2d8c8bf4", "0x1514e96328cc62d5", "0xf86fa238247d5bd9", "0x43e6af6f973a1ca8", "0x97847ded93104ff7", "0x73b989f21d2a236d", "0x56e932b59763ce7b", "0x81d911cdffef2ed0", "0x219abdfe54f156ea", "0x95823d794b4b2c41", "0x22e91af0c22b2766", "0xbae99ea83c92ce70", "0x6c9ad633a9d6833", "0xaacef117f33bc6", "0x460f921c67422d35", "0x90402bf5963ed5ce", "0x2ceed76776f2348a", "0x3ef2c7db972d9a1a", "0x6e1f9cbe5210901a", "0x7b0fe252ee9a04e1", "0xbde9abdb08db84a3", "0xb974841d45a48779", "0xacf4df67ed5c00cd", "0x5d7bff0af4072fef", "0x7db3109817ccb174", "0x72d1f226cd1be420", "0x9dace28bc78d3384", "0x25d519b08bee27c9", "0x8f9905b119c1b017", "0xb1a425ea8e774aca", "0x5c57116c9597ae36", "0x453ec759270ea240", "0x92f411192657b63e", "0x6ec57d777f8b8c8a", "0xafd65cd2e78c0e42", "0xa20282a0618deec6", "0xa75fbe65cb895a8", "0xa5122fdc0297b22", "0x977c5a7351f028b3", "0xabc8dd1385a7c144", "0x2431b1ef3fd5378f", "0xfa00722783ae72b2", "0x52fac8f9f1e3415d", "0x412b2a6e55912308", "0x89f74f91b448c425", "0x4b4021f7888b1a0d", "0xb692c695fc9cc330", "0x6d33d619ffd455df", "0x7dc589b8b0b997de", "0x51581d877069c923", "0x8a9c97723709a015", "0xe7a807e75bb12c14", "0xada1d8d685879d0c", "0x88c440dc0631317a", "0xb913cffd530bbf43", "0x74b92289d0978d0c", "0x7f7857a1203fea9b", "0x56a34be5d79addfb", "0x1cdb885541ba1a09", "0x938bc9c0801973fa", "0x198c694898b709fd", "0xcbc79c11fa9287f3", "0xdb05f8900bbf22ce", "0x605cd4142be952e5", "0x60d8c6f4d122bba5", "0x363cbb030d794432", "0x6f70ba6f72baebcd", "0x9bae20b35a7a4c2a", "0x1594d04126d2df64", "0x9f5cd24db4887c8d", "0x2e96e36a00fee8af", "0xea8fa1b9cec6d23d", "0xb6adb871343c004d", "0xb539f5db800c7967", "0x2ef9ec5ad1d0d345", "0x740d118bac8ffcbc", "0x3789edab0953cd5e", "0x157bb9acb071f5f0", "0xf12a8fcdf234c6e", "0x7dd7c84cd46e56dd", "0x9ff530d0a47c926e", "0x5ae0cbbea7471a3e", "0x980d20eae70f6112", "0xf523bbda9a32572f", "0xc39002f2f46e2003", "0xa75963984020fbbe", "0x83f98906816e2eeb", "0x5a4aeb7cc7b5dd79", "0x6e96c8483629be13", "0x342b68539ba902cd", "0x3da22931bd55a437", "0xc60c87f914070b4e", "0xb7f205ebc8ba687e", "0x7011e2d45170fe1", "0xe33e318913801549", "0xbd09c6925068eed0", "0x1973ed2726e24029", "0x97c94b73651fbba5", "0x4fe634658a0d6fa3", "0xdc4748c7ce08dc23", "0x5e038f4e67445263", "0x23c9f7cb0d4e7bad", "0x9ef9fb64714fbf28", "0xc1d987d6d7831cf0", "0x946384c19ca340ae", "0x780edfbc804ca69c", "0x611176cdca2cbb74", "0x6470fa30abfc3cdf", "0x4a7e42b09ee0eead", "0x2440c822c12dce04", "0x1d5748c9fbb4297f", "0x378b661bb238abf6", "0xf39ec518cf39919b", "0x577bb19ef703dc39", "0x2a93c7d537c5874d", "0xf6e9613bad19e3c5", "0xba566deef6b64f0c", "0xb9ffeb918b10db8e", "0x47149a1c86bd2a38", "0xf5533dbcba49b872", "0xdf0faa92c9165c2b", "0x3915069eadf3993e", "0xd6f662aac416a794", "0x489d0120be73dd7", "0x1573a771f6c65d8a", "0x57a35db6c8a353d8", "0xe89b19535b1014e2", "0xd4f9a0f670f59876", "0x16052715b2580d38", "0xf0a62dec115329f5", "0x47d8ef781f5845d6", "0xf4c9b5f95f0a6a2c", "0x733d9d9d5087cd3", "0x85569e20f7a05254", "0x1946a1e45e973244", "0x6a72c7e8b5ff3af2", "0xe8dcccad710a8da9", "0xccdb8dc6cfeaa2e", "0xe5b766fad7353779", "0x3f37907fb2540b32", "0xb9ad39424bd7429", "0xfa49ba1df6e54efd", "0xa7fd78e2fe69101b", "0x9e17c31d19a272ff", "0x3b906ea5de633d3", "0x19b3f03d5e66c1e", "0x2965fd27dbc2e976", "0x21fb53f300dda5c3", "0x2c9bc1bd3fcb33fe", "0x1b1188bbabb5b11a", "0x6bf4ae5aa03d8553", "0x63c767bda9f13a24", "0x6a8f6ef38ab1a438", "0xeca9145b88c8b6bd", "0xcb0f74969694f8c5", "0x158a2fe86bdcb76b", "0x9cf163bb05f5c453", "0xbe14896fa618f480", "0x57b300505e0e054d", "0xbbeaa346a4ee8bc9", "0x99752d1361b4e823", "0x5d524ca9b4a87b3d", "0xb9d7f4782c43081e", "0xc3db08c80ef64e7f", "0x861084675227d4e", "0xb67b2e1267d75093", "0x50524bc28a4b4482", "0x88f41cb0b923726f", "0x2e8297baf3eb9527", "0xc0e381fb51568a6a", "0x3176ea09a7e257a1", "0x1afff7a8e78fd770", "0x801ea39d6cddc619", "0xee3fcfa68b198d76", "0x3f2670aca739fedd", "0x269ffec21cf01895", "0xc5016d213abef110", "0x8d7d7921c4962635", "0x9a35199cfa186a0d", "0x9d8e7af61873f051", "0x754b12368444ad9c", "0x461c08535c62a9be", "0xe28872c8c69ad634", "0x918bf7dd0330532f", "0x51ca393cab76c6d3", "0xe14c6b5adecd06b7", "0xf78d8db64d676e7e", "0xf68360087625d678", "0x82ef9759052ac91d", "0x631c4c26ecc8a33b", "0x61e509cd00dd3b54", "0xea200f3d6fb2e60", "0xb891c4507e0b72c1", "0x2382bb78c7a53dd3", "0xc44697d3f87aa8dc", "0x3864365f22fbfc61", "0xa49af0a9de5e99a1", "0x659f2d1a420f344", "0x3e401c63e10bb65", "0x9a5522d2efb0872", "0xcac2197963089ae5", "0xd8121fa170743f3b", "0x1e511ea1b37912ba", "0x35242f2ae50c3b2a", "0x5ee7a8ecfb1cde12", "0xed760f3eb8534e1", "0xd5083f3061697d4a", "0xa5e2915d732d2ab2", "0xb9ba148c95e8ec21", "0x8ecb6804f2d0bfe1", "0x492cf10b11c28479", "0x8725466f439a6457", "0x74db348578fd901a", "0x1da997bbf2fa34fe", "0x52febc926bd4a660", "0x3a2f37bf52f71247", "0x3b4c169a34b70156", "0xb873e0e8024dc51", "0x94410eec40ddab82", "0x9e09162ebc6c9da7", "0xab8fb2df7f58a0a7", "0x81166e6fbac39f35", "0x8abf2c2829ee2f63", "0x4ec3d3fbe1ca4d50", "0xf9df95a26a0795f7", "0xb750bb956b915e5c", "0xc39f13c77d7916de", "0xc7d3dcc10fe27355", "0x5e13f067c52ab1c", "0xe86b94d0bbbe57f8", "0x81ee03c4b7f9594a", "0xf23ce5616636a90", "0x57785aeb4541ecf", "0x618424a92ceaa535", "0x8161f277d1c37dc8", "0xba83b652ab56377d", "0xa96a0c245739779f", "0x285a9c8e4619d386", "0xd4c1e2745f081317", "0x4a6aa57dab36859", "0x1e63286cb44ca8e0", "0x71a7afaddf64459a", "0x2c410aacd7f0c02f", "0xec0b6cd51f11b2c2", "0x955333ac3c67fd39", "0xf4f95613f4d2818e", "0xb69f30133582256c", "0xb34e3d12acfb6970", "0xde20750d4b493823", "0xf54d03293ec1e263", "0xf49ef8ee9c1aebe0", "0x89106f92e65b9be0", "0x8a77d5afe9f5d0f9", "0xbdcde4192b55d1fc", "0xf05c1c5c43404d06", "0xdcfb3ab53937ffd8", "0xe6575cc5462774dd", "0xef8511669ae19b6", "0x70ecb3eec9925e87", "0x355cbd345d1511f2", "0xb2f0b90558f375d8", "0x38307dbff778401c", "0x77ccaa4ec864c2d6", "0xf9c294423361ab2e", "0x36bb4d0fa208f7df", "0xeefcb5cc17788467", "0xfb147d1341285fbd", "0x70f2cc6cba44d508", "0x60cfa8408a6d269", "0xbd3544dae732e82a", "0x1372ec4ed88979f8", "0xa5c558380bc776eb", "0xf78d27c04d44225d", "0x718de3d7acecce9", "0x89f503df0592a758", "0x388783c8b659b75", "0x73285777378aa1a1", "0xe75931ee2ec6da00", "0x60ef0ff3bd87b1e1", "0x8431092fb2787e9c", "0x12714579c28e6278", "0x2a9b86ba2b11f3a2", "0xbbff4938080aa4e4", "0x9a1a901d6cdbd35e", "0xf5bdb3ba4fd2a485", "0xf54a1656991bdaab", "0xa0ff399e2391aede", "0xb7047146ab63b304", "0x738d8850f94d8d56", "0x47b75e308ee44ea1", "0xcef4b8807132424d", "0x6e63531c073a0306", "0x50e378e0604b3522", "0xebd073ddd6ff12d5", "0xc9059cc323e37637", "0xce4c2091d14fa018", "0xa97ae4b39b2c2bf4", "0xe4cbe546403f3ade", "0x1b48da857fdcc9b", "0xa2d57da9ef83a886", "0xdc72e0365055a0f4", "0x6a9e0c2e1ab1942f", "0x8e92e43b68e74be0", "0x8c87da06207fe31b", "0xb471a5b385556b77", "0x1bfa224803b8db1f", "0xe35c3f5e8527b6", "0x971bb170b4ae074b", "0xad6e6cb6e4f709f9", "0x5d0a823cef5e5e7a", "0x5cea0b6788e94368", "0x949e9f8f6eb59944", "0xdbc314846b383e4", "0xeebfe6e95ae7d9bb", "0xb0580314368219be", "0x61237da93e135a50", "0x6bf59210c3a0adf8", "0xb02fdf3ad1e37de", "0xb0d8e5da9274fe76", "0x769fc37697ff2c1b", "0x9e1cddbac8382cf3", "0xd4af0a5b822d7c7d", "0x975de1a7702c8207", "0x71324d33b69e0463", "0x1d3bd96a93b7a446", "0xf0dbe4b2ca79558a", "0x751b579969fbb130", "0xfcd6a20027bc6ecd", "0xd6cad1346caab64b", "0xe9e855e3d6cad2d4", "0xf154f1cecc290141", "0x3eb60fb9a680a41b", "0x16c8fd5c7734fdc8", "0x84b361204009db71", "0xf90bd977efa6da53", "0xc8209d882c90ce52", "0x5d8b48dd2b84e4cb", "0x54513e2f465190a9", "0x8449af3b18aa9cf0", "0xf19189997c1777d1", "0xdb31730648794698", "0xdb603a4be1f59e5", "0x1e0ec93138016c91", "0xe9d7f9aec4613bbf", "0x19f267367ea6a73e", "0x1596b0170ae639ab", "0xd773e0a923281a3f", "0x851a9c1e77a4e399", "0xcc68c605a4de0544", "0x3776095bd05153c6", "0x1f60decd5595381c", "0x1b4ed58be98027e1", "0x4757a2d142642941", "0x44340161ffa22917", "0xd2adec388585dee6", "0xf952979eadf4f881", "0x73992f45da7e61b0", "0xa643941fa6ee681b", "0x6a1835f45ec6879f", "0x66212736a835f7d2", "0x978a977b3f18b72", "0x4aab4a191b4a31eb", "0x5cf80915faa7ee98", "0x838e4f2796083774", "0x437cfe263f980af4", "0x6003c2e199c07137", "0x54e25bfd1dc62f79", "0xeba4af83f2bcf681", "0x855c13755b5b1863", "0xda6a73c5931802cb", "0x315e76cb459fb186", "0x16bd97333c2ccfba", "0x9fd4a26f3f617185", "0x853d760a7efc85c4", "0x647140d6ca67b137", "0x853b991b62081fe", "0x8446b276cc6cc5a4", "0xe6b096005bb8bfde", "0xe30ce54dc04e18e2", "0x90b2c16aee2ea68", "0x263e8ab456bc6d0d", "0xaa968cbdc8536cbd", "0x1c1e98caf2b18578", "0x2d11c45d2a280342", "0xa8981f0500535aa5", "0xa11a472ed4dba9d1", "0x69c45ce7b7a8f4c3", "0xac43b86469814d09", "0x5f466e776164037d", "0xc90a90b6109d4bf3", "0x7202c5aeabb61154", "0x3cf678704bf30263", "0x6ac72a70ae2f8f4e", "0x16409d3cca9e9d17", "0x4123528715c2a005", "0xd5415ad8e3a0a8bb", "0x7a1a6e549d1d4d92", "0x94d1b947e77f48a6", "0xddcc5fed5360f607", "0x7c0142243321780", "0x5f77e90e0eb44217", "0x30067d95aebffc75", "0x189980a55b644631", "0x7b19840c3fb668a3", "0xd81d974b78a76cd6", "0xc49fb95087e972d0", "0xce51cc08570814bc", "0x4c410c82c4f977d7", "0x682d4bb699551a5f", "0xbab20e8f805d84f0", "0xb4eab358394dcf2b", "0x11a676105d6a20ee", "0xabd2d57f36ad506d", "0x305bba3f49b95a7a", "0xbc3a25a7094f2c71", "0x5c2fb16472ef0fd4", "0x970592dcc95dbabd", "0xd0ee3b238a8ccfd3", "0xb6b3fd06f1b289d0", "0xde6d1962eb6237bd", "0x438c305e7369927d", "0xc86011c008959caf", "0xac42796789a973f0", "0x50096e99b2e3f075", "0xe8d758914901f4ca", "0xe25b9afb5227ed9f", "0xd3528257796abc9c", "0x824ad47633419066", "0x27cb413098e66c62", "0xc86ed049882bbfa9", "0x79b0ddd03b7660ce", "0xeeea68f7c2a06921", "0x4623d38b1937ae9b", "0xf7ec5976dac2aac5", "0x5c22b42bce5f20b4", "0x4b2be1afef154048", "0xe6a8ee02bf183093", "0x333851984d10cf78", "0x958e547139ab0ceb", "0x3df38f82cf21f18a", "0xdcc963b1f4573392", "0xcba5ae6bdb913817", "0x17054265a2a8c277", "0x96529a0c9a35a52f", "0x159d5521a8c58f53", "0xe80ed1d16546d9a", "0x724d349dcb144cfe", "0x2abb5893a0c84c07", "0xdec3bb29a584668", "0xb8a8065ddd343bb5", "0x460f0be6397cee33", "0xc2f02d3f8c10edf7", "0xe0db87fc74734960", "0x98bcc656d711187b", "0x7c0f88bc28bff6cd", "0x61d2786a6b56eab5", "0x300d221f8d9729d1", "0xfca7f3bae8fb950f", "0x948dac61355f5e98", "0xe3a5567981fe23e1", "0xbba6f47401a58687", "0xfa0e14aba7b6e480", "0xba783c423b6c889b", "0x79addac36e705083", "0x3a1a5053a5bdcdb", "0xafd6d01dd153967b", "0x79a36b61f1a2e347", "0xedcfb68844499f3a", "0xb65f6f6d97761e5e", "0x29611ee5b5ebc951", "0x1f9fa8efbe3a7bee", "0x505708e2a230c266", "0xfa8b0083187c4fd9", "0xfdb0fd4f29617a1f", "0x18b68024e3002657", "0x510804a864d1db0b", "0x75b41ccca6aab44d", "0x8ff996d649c595c0", "0xfa5774c9c356ec15", "0x15efebf8766adf2", "0x9a8e62d4ddcb8cdf", "0xe6aae53b044056e0", "0x2bff67ec3ec146b3", "0xfaa61d11a0b746bb", "0xea1858c3b0495e73", "0xe7ffd125fbd0e1f6", "0xf2107de3d4631ce0", "0xfafbc1f3d3fdfdf5", "0x537ecd84152cd6c0", "0x752ff5752e9dd595", "0x43995ba0fa67767b", "0xac724c71577a2a08", "0xf381920b17d621b8", "0xd7fa15878a38aaca", "0x44feb647cee0105d", "0x9d55abb70246dd6a", "0xf8cbfedb7d3e9fbe", "0x9239e80f75e8e6d5", "0x223969ad9ddf9b01", "0xa481abf65cee3818", "0x13d439b48ba3aacb", "0xa0855cdebd9cb0b0", "0x56e2900afe8624ea", "0x8c32a96c5382f1ae", "0x2a48e35172de224e", "0x4ea3e4f31e998512", "0x4720af10213209aa", "0x5cbcb7efe9e6a8f1", "0x686e4e7acfe3fb8", "0xc93dc28c98af863d", "0xd8cd0c5a8cd2d6d7", "0x6ab11dde3d457af", "0x347b969a4f4c1335", "0x31e9838210f44477", "0x855e2e14e44c517b", "0x891475a9b65fb5e6", "0x398b5d68780164c3", "0xf9a7a1d512bf70a0", "0x15653361e6c18aa4", "0x8681219937cf142c", "0xe23f6ef1177e2fdb", "0x542b61874b3e6dde", "0xb1b25a839bd261c4", "0x59beb674e9f25721", "0x7983ec9e3085a2f", "0xcb9deda4950f35dd", "0xa0416e0e6fd702b3", "0x5c3f5b89fa80ada6", "0x9698d8f3e0a940a", "0x4b9fdcea3b907bb4", "0x9cb927db566e2a7f", "0x453ca50d563e58af", "0x47ba4a57bcd886be", "0x6632e657be25ea17", "0x671ee6c0d859cc2c", "0x8d2412b19692c082", "0xe28313f036d23428", "0x24ce1cbc95d718ce", "0xcf0a1896af1c50bb", "0xda98b494424d5c23", "0xf66b61c51c227acf", "0xe8f64939854d97f6", "0x28c5e0289ef8fa3c", "0xc9abb2efb2f7351", "0x81d24ce979ee94ad", "0x6012dc5c832e43d4", "0x11859159002e97d8", "0xaab87f7bc42e9da3", "0x3b01beecb9cd0adb", "0x83c992679e6eec3f", "0x6ea54b03366638a5", "0x3adc9c7904d8ac14", "0x7c32f2b6941aaeda", "0x13ceac086f796518", "0xeb54805fafd3eda5", "0x9f2d9a7aa6f2e721", "0x60e31807ee13624b", "0x9ad7c237abcb069b", "0x996d97d7d88115f4", "0x822bab7272fcf67b", "0x46078a2d7fa78cdb", "0x5e4713b20a149945", "0x37f5ef318fa270aa", "0x789532f6db2df01b", "0xd90af3e228250173", "0xe5838aa1f1f56ab5", "0xd08acf0205b03b1d", "0x59907ceb2cc8b96", "0xc95d688faf4b6f92", "0x5da3e9bd84b642cf", "0x37f0dd9c394fb003", "0xb96668af96e269ec", "0x905d862f83458034", "0xe530d78e189483fb", "0x5f4318acbe69fbfe", "0xca9139c34bbb6136", "0xa78f9f306fbf06c", "0x85dad9a4935d9cdf", "0x4da2fd472da820b3", "0x16823d05e12f96f1", "0x38ccc629e8659e4e", "0xfbe41421e3689f06", "0xc1a8f90771b7b3ba", "0x2b6a40e2373d599f", "0xe470cd0868b471c5", "0xdc94b8cd808b739c", "0xf48f61a872d8b413", "0x625b462312654db8", "0x47fc331478a626b9", "0x1bddfc180296ba4f", "0xf933f4dcb900780d", "0xd0f53762b8583654", "0xb6fc64bb4b5b3799", "0x455179a3d89e1d67", "0xcdd93aec10949b00", "0x2bdf9ff3b8135d62", "0xebf769b0e78f2b51", "0x9bba923f3dbca7f7", "0xe6ba5a862cad18a", "0xd0ef3bdc149aa063", "0x234a4648e3415550", "0xb62d0c373c7f1a0c", "0xcdbfa6d0b958cae3", "0xbef526bee15a8ca7", "0xd547c603b66f4298", "0x97d3599a8936575f", "0xf87c9cb7d552a81a", "0x779dbd2ebaa30504", "0x3108b2c8ed870d06", "0x19a42de1b9c128ae", "0x76b92b6109056fa9", "0x20ad94ea7f164a10", "0x8bf84a53c6dd0920", "0x6ae30f14ee17e877", "0xffbb190fabea16b7", "0xcae2a6b6389aa991", "0x44bda2f1d1e2284f", "0x11a0284972b324de", "0x8d85cac84f991562", "0xb1ece3f3afd925b4", "0x5306c90da772ed1f", "0x3cafe649fb5fe4ac", "0x7c9327ee9f1c88e6", "0x59e684bf825b6647", "0x8bbc26b6028b8fa2", "0xf763d37a978c6933", "0x203cad92197501ff", "0x54e43c344b5b8f1c", "0xa91fdb55fd57f28c", "0x8bdd94c2f7a9d18a"}
    SEED = table[i]
    return SEED
end

function HexToDec(number)
    if type(number) == "number" then return number
    elseif string.find(tostring(number),"0x") then return tonumber(number)
    else return tonumber(number,16)
    end
end

GENERIC_ANIMATION_FILE = "MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN"

ANIM_TEMPLATE_ALL = ""
QUICK_ACTION_BUTTON_ALL = ""
ACTION_TRIGGER_COMPONENT = ""
CUSTOM_GENERICREWARD_ALL = ""

function AddInvetoryElements(TYPE)
    local statsList = STATS[TYPE]
    local statsStringTable = {}
    local statsString = ""
    for i = 1, #statsList do
        local ID = statsList[i]["ID"]
        local Amount = statsList[i]["Amount"]
        local MaxAmount = statsList[i]["MaxAmount"]
        local Damage = statsList[i]["Damage"]
        statsString =
[[
                  <Property value="GcInventoryElement.xml">
                    <Property name="Type" value="GcInventoryType.xml">
                      <Property name="InventoryType" value="Technology" />
                    </Property>
                    <Property name="Id" value="]]..ID..[[" />
                    <Property name="Amount" value="]]..Amount..[[" />
                    <Property name="MaxAmount" value="]]..MaxAmount..[[" />
                    <Property name="DamageFactor" value="]]..Damage..[[" />
                    <Property name="FullyInstalled" value="True" />
                    <Property name="Index" value="GcInventoryIndex.xml">
                      <Property name="X" value="-1" />
                      <Property name="Y" value="-1" />
                    </Property>
                  </Property>
]]
        table.insert(statsStringTable, statsString)
    end
return table.concat(statsStringTable)
end

function AddBaseStats(TYPE)
    if TYPE == "Alien" then
        return
[[
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="SHIP_DAMAGE" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="SHIP_SHIELD" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="SHIP_HYPERDRIVE" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="ALIEN_SHIP" />
                    <Property name="Value" value="1" />
                  </Property>
]]
    
    elseif TYPE == "Robot" then
        return
[[
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="SHIP_DAMAGE" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="SHIP_SHIELD" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="SHIP_HYPERDRIVE" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="ROBOT_SHIP" />
                    <Property name="Value" value="1" />
                  </Property>
]]
    end
        return
[[
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="SHIP_DAMAGE" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="SHIP_SHIELD" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="SHIP_HYPERDRIVE" />
                    <Property name="Value" value="1" />
                  </Property>
]]
end

function CreateCustomMultitoolRewardSubEntry(DEC_SEED, HEX_SEED, TYPE)
local GENERIC_REWARD_ENTRY =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificWeapon.xml">
              <Property name="WeaponInventory" value="GcInventoryContainer.xml">
                <Property name="Slots">
]]..AddInvetoryElements(TYPE)..[[
                </Property>
                <Property name="ValidSlotIndices" />
                <Property name="Class" value="GcInventoryClass.xml">
                  <Property name="InventoryClass" value="S" />
                </Property>
                <Property name="StackSizeGroup" value="GcInventoryStackSizeGroup.xml">
                  <Property name="InventoryStackSizeGroup" value="Default" />
                </Property>
                <Property name="BaseStatValues" />
                <Property name="SpecialSlots" />
                <Property name="Width" value="0" />
                <Property name="Height" value="0" />
                <Property name="IsCool" value="False" />
                <Property name="Name" value="" />
                <Property name="Version" value="0" />
              </Property>
              <Property name="WeaponLayout" value="GcInventoryLayout.xml">
                <Property name="Slots" value="24" />
                <Property name="Seed" value="GcSeed.xml">
                  <Property name="Seed" value="1" />
                  <Property name="UseSeedValue" value="True" />
                </Property>
                <Property name="Level" value="1" />
              </Property>
              <Property name="WeaponResource" value="GcExactResource.xml">
                <Property name="Filename" value="]] .. SEED_TYPE_PATH[TYPE] .. [[" />
                <Property name="GenerationSeed" value="GcSeed.xml">
                  <Property name="Seed" value="]] .. DEC_SEED .. [[" />
                  <Property name="UseSeedValue" value="True" />
                </Property>
              </Property>
              <Property name="NameOverride" value="]] .. HEX_SEED .. [[" />
              <Property name="IsGift" value="True" />
              <Property name="IsRewardWeapon" value="True" />
              <Property name="FormatAsSeasonal" value="False" />
            </Property>
          </Property>
]]
return GENERIC_REWARD_ENTRY
end

function CreateCustomShipRewardSubEntry(DEC_SEED, HEX_SEED, TYPE)
local GENERIC_REWARD_SUB_ENTRY =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificShip.xml">
              <Property name="ShipResource" value="GcResourceElement.xml">
                <Property name="Filename" value="]] .. SEED_TYPE_PATH[TYPE] .. [[" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
                <Property name="Seed" value="GcSeed.xml">
                  <Property name="Seed" value="]] .. DEC_SEED .. [[" />
                  <Property name="UseSeedValue" value="True" />
                </Property>
                <Property name="AltId" value="" />
                <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
                  <Property name="Samplers" />
                </Property>
              </Property>
              <Property name="ShipLayout" value="GcInventoryLayout.xml">
                <Property name="Slots" value="48" />
                <Property name="Seed" value="GcSeed.xml">
                  <Property name="Seed" value="1" />
                  <Property name="UseSeedValue" value="True" />
                </Property>
                <Property name="Level" value="1" />
              </Property>
              <Property name="ShipInventory" value="GcInventoryContainer.xml">
                <Property name="Slots">
]]..AddInvetoryElements(TYPE)..[[
                </Property>
                <Property name="ValidSlotIndices" />
                <Property name="Class" value="GcInventoryClass.xml">
                  <Property name="InventoryClass" value="S" />
                </Property>
                <Property name="StackSizeGroup" value="GcInventoryStackSizeGroup.xml">
                  <Property name="InventoryStackSizeGroup" value="Default" />
                </Property>
                <Property name="BaseStatValues">
]]..AddBaseStats(TYPE)..[[
                </Property>
                <Property name="SpecialSlots" />
                <Property name="Width" value="0" />
                <Property name="Height" value="0" />
                <Property name="IsCool" value="False" />
                <Property name="Name" value="]] .. HEX_SEED .. [[" />
                <Property name="Version" value="0" />
              </Property>
              <Property name="ShipType" value="GcSpaceshipClasses.xml">
                <Property name="ShipClass" value="]] .. TYPE .. [[" />
              </Property>
              <Property name="NameOverride" value="" />
              <Property name="IsGift" value="True" />
              <Property name="IsRewardShip" value="True" />
              <Property name="FormatAsSeasonal" value="False" />
            </Property>
          </Property>
]]
return GENERIC_REWARD_SUB_ENTRY
end

function CreateRewardMainEntry(REWARD_ID, SUB_ENTRY)
local GENERIC_REWARD_MAIN_ENTRY =
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="]] .. REWARD_ID .. [[" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="SelectAlways" />
        <Property name="OverrideZeroSeed" value="True" />
        <Property name="UseInventoryChoiceOverride" value="True" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
]] .. SUB_ENTRY .. [[
        </Property>
      </Property>
    </Property>
]]
return GENERIC_REWARD_MAIN_ENTRY
end

--------------------------------------------------------------------------


function CreateAnimEntry(ANIM_ID)
ANIM_TEMPLATE =
[[
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="]] .. ANIM_ID .. [[" />
          <Property name="AdditiveBaseAnim" value="" />
          <Property name="Filename" value="]] .. GENERIC_ANIMATION_FILE .. [[" />
          <Property name="StartNode" value="" />
          <Property name="ExtraStartNodes" />
          <Property name="GameData" value="TkAnimationGameData.xml">
            <Property name="RootMotionEnabled" value="False" />
            <Property name="BlockPlayerMovement" value="False" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
          <Property name="Priority" value="0" />
          <Property name="OffsetMin" value="0" />
          <Property name="OffsetMax" value="0" />
          <Property name="Delay" value="0" />
          <Property name="Speed" value="1" />
          <Property name="ActionStartFrame" value="0" />
          <Property name="ActionFrame" value="-1" />
          <Property name="AdditiveBaseFrame" value="0" />
          <Property name="AnimType" value="OneShotBlendable" />
          <Property name="CreatureSize" value="AllSizes" />
          <Property name="Additive" value="False" />
          <Property name="Mirrored" value="False" />
          <Property name="Active" value="True" />
          <Property name="Has30HzFrames" value="False" />
        </Property>
]]
return ANIM_TEMPLATE
end

function CreateActionTriggerRewardEntry(ANIM_ID, REWARD)
ACTION_TRIGGER_ENTRY =
[[
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="]] .. ANIM_ID .. [[" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="REWARD" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="REWARD" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="]] .. REWARD .. [[" />
                </Property>
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="BOOT" />
                </Property>
              </Property>
            </Property>
]]
return ACTION_TRIGGER_ENTRY
end

function CreateActionTriggerComponent(ACTION_TRIGGER_LIST_)
ACTION_TRIGGER_COMPONENT =
[[
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
]] .. ACTION_TRIGGER_LIST_ .. [[
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
    </Property>
]]
return ACTION_TRIGGER_COMPONENT
end

function CreateQuickActionMenuEntry(BUTTON_TITLE, ANIM_ID)

                local ICON = ""
                if ANIM_ID == "FIGHTER" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\SPECIAL1.TWITCH.SHIP11.DDS"
                elseif ANIM_ID == "DROPSHIP" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\SPECIAL1.TWITCH.SHIP15.DDS"
                elseif ANIM_ID == "SCIENTIFIC" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\SPECIAL1.TWITCH.SHIP12.DDS"
                elseif ANIM_ID == "SHUTTLE" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\SPECIAL.TWITCH.SHIP06.DDS"
                elseif ANIM_ID == "ROYAL" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\SPECIAL.SHIP_B.DDS"
                elseif ANIM_ID == "ALIEN" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\SPECIAL1.EXPEDITION.MINIBIOFRIG.DDS"
                elseif ANIM_ID == "SAIL" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\SPECIAL.EXPEDITION.BANNER01.DDS"
                elseif ANIM_ID == "ROBOT" then
                    ICON = "TEXTURES\UI\HUD\POLICEMESSAGEICON.DDS"
                elseif ANIM_ID == "MULTITOOL" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\HERO.TWITCH.GUN02.DDS"
                elseif ANIM_ID == "ROYALMULTITOOL" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\HERO.TWITCH.GUN05.DDS"
                elseif ANIM_ID == "STAFFMULTITOOL" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\ROBOTPARTS\ROBOTPARTS.STAFFPOLE.5.DDS"
                elseif ANIM_ID == "STAFFMTATLAS" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\HERO1.EXPEDITION.ATLASSTAFF.DDS"
                else ICON = "TEXTURES\UI\FRONTEND\COMPONENTS\STAR.DDS"
                end


QUICK_ACTION_BUTTON_TEMPLATE =
[[
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="]] .. BUTTON_TITLE .. [[" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="EmoteID" value="]] .. ANIM_ID .. [[" />
      <Property name="AnimationName" value="]] .. ANIM_ID .. [[" />
      <Property name="PropData" value="GcPlayerEmotePropData.xml">
        <Property name="Model" value="" />
        <Property name="Scale" value="0" />
        <Property name="Hand" value="GcHand.xml">
          <Property name="Hand" value="Right" />
        </Property>
        <Property name="IsHologram" value="False" />
        <Property name="ScanEffectNodeName" value="" />
        <Property name="ScanEffect" value="GcScanEffectData.xml">
          <Property name="Id" value="" />
          <Property name="ScanEffectType" value="Building" />
          <Property name="Colour" value="Colour.xml">
            <Property name="R" value="0.823" />
            <Property name="G" value="0.475" />
            <Property name="B" value="0.432" />
            <Property name="A" value="1" />
          </Property>
          <Property name="BasecolourIntensity" value="0.2" />
          <Property name="ScanlinesSeparation" value="0.1" />
          <Property name="FresnelIntensity" value="3" />
          <Property name="GlowIntensity" value="0" />
          <Property name="WaveOffset" value="0" />
          <Property name="WaveActive" value="True" />
          <Property name="FixedUpAxis" value="False" />
          <Property name="Transparent" value="False" />
          <Property name="ModelFade" value="False" />
          <Property name="FadeInTime" value="0.2" />
          <Property name="FadeOutTime" value="0.2" />
        </Property>
        <Property name="DelayTime" value="0" />
      </Property>
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="]] .. ICON .. [[" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="]] .. ANIM_ID .. [[" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="]] .. BUTTON_TITLE .. [[" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="EmoteID" value="]] .. ANIM_ID .. [[" />
      <Property name="AnimationName" value="]] .. ANIM_ID .. [[" />
      <Property name="PropData" value="GcPlayerEmotePropData.xml">
        <Property name="Model" value="" />
        <Property name="Scale" value="0" />
        <Property name="Hand" value="GcHand.xml">
          <Property name="Hand" value="Right" />
        </Property>
        <Property name="IsHologram" value="False" />
        <Property name="ScanEffectNodeName" value="" />
        <Property name="ScanEffect" value="GcScanEffectData.xml">
          <Property name="Id" value="" />
          <Property name="ScanEffectType" value="Building" />
          <Property name="Colour" value="Colour.xml">
            <Property name="R" value="0.823" />
            <Property name="G" value="0.475" />
            <Property name="B" value="0.432" />
            <Property name="A" value="1" />
          </Property>
          <Property name="BasecolourIntensity" value="0.2" />
          <Property name="ScanlinesSeparation" value="0.1" />
          <Property name="FresnelIntensity" value="3" />
          <Property name="GlowIntensity" value="0" />
          <Property name="WaveOffset" value="0" />
          <Property name="WaveActive" value="True" />
          <Property name="FixedUpAxis" value="False" />
          <Property name="Transparent" value="False" />
          <Property name="ModelFade" value="False" />
          <Property name="FadeInTime" value="0.2" />
          <Property name="FadeOutTime" value="0.2" />
        </Property>
        <Property name="DelayTime" value="0" />
      </Property>
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="]] .. ICON .. [[" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="]] .. ANIM_ID .. [[" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
    </Property>
]]
return QUICK_ACTION_BUTTON_TEMPLATE
end

function CreateSeedRewardLists()
  local count = 5000  
  local SEED_COUNT = 1
  local index = 1
  local seed_table = {}

  print("starting big loop...")
    for i=1,#SELECTED_SEED_TYPES,1 do
            local Seed = ""
            local SREA = {}
            local SST = SELECTED_SEED_TYPES[i]
            local index = 1
            for _j=1,DEFAULT_SEED_NUMBER,1 do
                Seed = GetSeed(index)
                index = index + 1
                local SREA_tmp = ""
                if SST == "MULTITOOL" or SST == "ROYALMULTITOOL" or SST == "ROBOTMULTITOOL" or SST == "ROBOTMULTITOOLB" then
                    SREA_tmp = CreateCustomMultitoolRewardSubEntry(HexToDec(Seed), Seed, SST)
                else
                    SREA_tmp = CreateCustomShipRewardSubEntry(HexToDec(Seed), Seed, SST)
                end
            table.insert(SREA,SREA_tmp)
            --print(SEED_COUNT .. "." .. SST .. ": " .. Seed)
            if SEED_COUNT%count == 0 then
                print(SEED_COUNT)
            end
            SEED_COUNT = SEED_COUNT + 1
        end
        SUB_REWARD_ENTRY_ALL = table.concat(SREA)
    local ID = string.upper(SST)
    QUICK_ACTION_BUTTON_ALL = QUICK_ACTION_BUTTON_ALL .. CreateQuickActionMenuEntry("RANDOM " .. ID, ID)
    ANIM_TEMPLATE_ALL = ANIM_TEMPLATE_ALL .. CreateAnimEntry(ID)
    ACTION_TRIGGER_COMPONENT = ACTION_TRIGGER_COMPONENT .. CreateActionTriggerComponent(CreateActionTriggerRewardEntry(ID, ID))
    CUSTOM_GENERICREWARD_ALL = CUSTOM_GENERICREWARD_ALL .. CreateRewardMainEntry(ID, SUB_REWARD_ENTRY_ALL)
  end
  print(SEED_COUNT)
end

math.randomseed(os.time())
CreateSeedRewardLists()

NMS_MOD_DEFINITION_CONTAINER =
{
['MOD_FILENAME']    = 'ShipSeedsLoader_dreams.pak',
["MOD_AUTHOR"]      = "Mjjstral, Babscoole, ApexFatality, AltF4",
["MOD_DESCRIPTION"] = "Adds seed buttons to the quick action emote menu",
["NMS_VERSION"]     = "4.72",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim","0H_GREET_MOB_04"},
                            ["SECTION_ACTIVE"] = {2},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ANIM_TEMPLATE_ALL
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcPlayerEffectsComponentData.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ACTION_TRIGGER_COMPONENT
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\EMOTEMENU.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Emotes"},
                            ["ADD"] = QUICK_ACTION_BUTTON_ALL
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GenericTable"},
                            ["ADD"] = CUSTOM_GENERICREWARD_ALL
                        }
                    }
                }
            }
        }
    },
["ADD_FILES"] =
    {
        {
            ["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\ANIMS\EMOTES\NULL.ANIM.EXML]],
            ["FILE_CONTENT"]      =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkAnimMetadata">
  <Property name="FrameCount" value="10" />
  <Property name="NodeCount" value="0" />
  <Property name="NodeData" />
  <Property name="AnimFrameData">
    <Property value="TkAnimNodeFrameData.xml">
    <Property name="Rotations" />
    <Property name="Translations" />
    <Property name="Scales" />
    </Property>
  </Property>
  <Property name="StillFrameData" value="TkAnimNodeFrameData.xml">
    <Property name="Rotations" />
    <Property name="Translations" />
    <Property name="Scales" />
  </Property>
</Data>
]]
        }
    }
}