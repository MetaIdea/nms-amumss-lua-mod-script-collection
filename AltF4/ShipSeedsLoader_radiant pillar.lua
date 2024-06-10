DEFAULT_SEED_NUMBER = 3200
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
    local table = {"0xbd483b628d49a7e1", "0x508c69776363f6f7", "0xe761eb113b0c0d8c", "0x2e0474899a90ee", "0xf65e3ca29eb93f20", "0xffe776c35fead8ef", "0xa267f1b5e4434ba9", "0x2e6a11c804c0d0a", "0xe62bcd7057f1e32", "0x665a69af4d6e98af", "0xcd5db36541dd36b8", "0x175351c428edb103", "0xab49a0e8258f7f70", "0x7f7b4a4b14e2a614", "0x5e0fcd6618cb1c2c", "0xa626c3aa8bf31afe", "0x927461606fdb036f", "0x4270df1b92d164ad", "0xd99a9f4f2986d46d", "0x917799e03fa20289", "0x6e157d8239afdab8", "0x4d67c661a57e795c", "0x37176c0d4ec3685f", "0x43f8b0f0a426fc59", "0x1cfb2af2b2015837", "0x2f67dd31ee88641a", "0xa9988ebf7f312999", "0xd518c485e35dace8", "0x527c646edd3efc57", "0xea52cc6f06ce7787", "0x4156edd221644899", "0xa12cd7e42d4194a", "0x25cfc6624ce01e9c", "0x64029cd77058f117", "0x6e7b0a5fffa01ec3", "0x94a55dc9ca291f1b", "0xa064a6e56cfa0581", "0x36ce112feeaade5e", "0x8785870dfb362e50", "0xce77cdb4217340c6", "0x6083b61585766342", "0xa46e81c7aaea980d", "0x205170cd6f18c0df", "0x308b8ffd2d4a7ea0", "0xb49c5da4c40cfac7", "0x387e8cbf0f69e11a", "0x58469056964b0b01", "0x71346bac810d9a9c", "0xace6e5edbd9343cc", "0x2b93694fdd1ac403", "0x11c649f24b9e6554", "0x37a9fb5bf73d35ed", "0x6012044333704889", "0x49c672a9a189c0bf", "0x78c17831da69fc7f", "0x52e9c5b8d2cc9930", "0xad04d1db1b6d2643", "0x9fbcdf6b11a51d07", "0xcc19302be9ec05d0", "0x9db3df5a89e1251e", "0x7de2e0d55739363b", "0x28b84bc0872c0dbc", "0xcd33bf16cb695dae", "0xe7756249c838aa48", "0xd820718e3f9d3beb", "0x1269350b6a4f4ab8", "0xeb05bb04dd2343e", "0x593658b47c905181", "0x39cf652d7ce7a601", "0x3ec62a3a02310a6a", "0x3ba8bf7572eafc13", "0x630057f2277735e0", "0xaff34685646000ad", "0xe2b85491e4477218", "0x63a8c38fe9d6f570", "0x780e7bbd193374ca", "0x188bf2bd74a2721", "0x7eec47d853835b4b", "0x7a3c5133233cf66e", "0xda0135154cf5a153", "0x48059ce12d0619f6", "0xe01e5ad3bc805c6f", "0x7ef13b39fcf71af1", "0xcca3d3637f26d70d", "0x5829984ab916fdb5", "0x4e4978bec1d36902", "0x35e82c540994be73", "0xf1a44117f3e73971", "0x516198897a3e1205", "0x18e6a0ce966e53d6", "0x267261d3e3c63b0a", "0xdbcca56c4c724c2c", "0xbfcd6910783ccbd7", "0x9afcc1c48f0c6beb", "0x1e0cd0e6604ee6dc", "0xc09e9cc0cb1a8ad9", "0x1bfcbb3a32e560e5", "0x6d7709c1a51caacf", "0xcb380f12cdd713ec", "0x68a765d934f3edfa", "0x462b187551480244", "0x93437132150e4cc", "0x17c22a6d7e43581c", "0x2b1b0c28338695a6", "0x4415f95a2baf57e8", "0xd2fed55fa54af327", "0x80df8c0189fe2a51", "0xa777061b190db5c9", "0xb4538c93b43540ba", "0x5a1187d7f6bc52c9", "0x583710f5ad4e664a", "0xf83a8d75f2fd8e91", "0x3e614ded11941aeb", "0x805dd5b427495207", "0x6b678c53c7c4547b", "0xa978fb4f55f4a001", "0x1d03deb2c85d2b9e", "0xac5eb249b4b44e50", "0x9e658ba78c773c29", "0x693d8c30d51f0711", "0x7104b8e9048ab4e1", "0x285be7624fbe8", "0x436549ffd869359c", "0xd55c8ac9408ec3fd", "0x947624c8ec1bd5a7", "0xf88f670eeb76b794", "0x4462d66fe455c79", "0x37b93f561d54101f", "0x652f1da4abc15482", "0xce8b21ecee3fdfbb", "0x918753b9875f177b", "0x9d07a5ce0de4fafe", "0xe762e52ee043f917", "0x1371cacd192061", "0xa7f52f6763682ba6", "0x9c19701ea17e5368", "0x4ec0b8de1c8e015b", "0xd4b57a17d75943e5", "0xe0fb887d1aed01be", "0xe15c5ac2dcfb4170", "0x93ca728e5c7250fa", "0x412f9f469c34ace7", "0x89736feae8564f22", "0xba0b0b95b188c8ee", "0x2a83847c48801356", "0xb7f3bca534ba98ae", "0x53c9fa839ab3f3c2", "0x1a6f9fa5ebf82ef4", "0xb616c3054adf14b2", "0x2050793cc731d07d", "0xaaea24ed2532fc4e", "0xaa4b8567dd61059b", "0x639d1dc55cd467e", "0x67cb2b0d3e47e67", "0x6a3b9ee413ac9180", "0x1c1a10a0852a24cf", "0x11c39e3ad98adb3d", "0x4f644fb068041461", "0xfef6cb7a5ef028ab", "0xe7bd6cb25a02aa20", "0xd635e3ba66dd4e95", "0xd2fcdb4e9ff576aa", "0x6c55a314f00e274a", "0xec3c1533992d5513", "0xcc612bc611b247e2", "0xb14e56f94b64086a", "0x7d635763059ff2f0", "0x650ecb6258a9a948", "0xeb44cad9af2df027", "0x6213345d9e95b42c", "0xae78b7a2493d89c8", "0x80893150dfe06251", "0x83108c692df973c1", "0xeeeb3709e4519b1", "0x126a4f64682660d5", "0xb18c3f188a08f683", "0xa3f7d73452b327ed", "0x68352bbc1a9d9752", "0x176aca9d184d75ca", "0x629bb9836c03b6d", "0x7f5453eb905fcda", "0xff17443b0530c491", "0xa01454faa79f4b30", "0x1bafce83820f9ea6", "0xdbd61426252048bb", "0x624be6e60895e8ac", "0x6d3bda4ca78a1bfd", "0xc1317567680a3e47", "0xbf8a9bb91a872316", "0xb31bc4d75e000ecf", "0x6885b47ad04824ca", "0xc849cb541ffd6efc", "0xe11b2bfce7e94f1", "0x482b9687fa8ac3db", "0x73d31db0f2754c72", "0x8dc079010cea8b4d", "0xe0778a6211d00499", "0x9ad3d44c781616c6", "0xe7f3ac6df7fe9cd3", "0xfba0d6fbc7045bb4", "0xb0af4a321cda2e32", "0x7e9435686f5a9b05", "0x384d2329dd3edc1e", "0x1bb798c7a18d8f93", "0x2d2efe22aad2232c", "0xb5109d337616b05", "0x53a1e0d22e976a8f", "0xb041a9357c2105cd", "0xfa05cb66654f3223", "0x5278c691dca3006c", "0x199d09162ed00b1f", "0x483ab7e7797eff18", "0x659bfa9ebdce70ed", "0xba7be3366fbf2de9", "0x5b17042b48e05822", "0x9c1e116681b72165", "0x28e38e28c0611699", "0x27e502e1c71d6961", "0x13a54edce4069a", "0xf7c6aff300ea7b24", "0xefb3b7bd5485b691", "0xaa1cbeb7f4086b84", "0x56706e15dbe9b4a0", "0x67717f111e194548", "0x2009f24cc2ae0005", "0x755ca1fbb1520d6d", "0x6864ad5146b3a95", "0xc9803c612ecf7c0b", "0x9d05a8557ccb131c", "0x8af09127c7478e24", "0xfa5fa72eee1bc22", "0xe75646ecf3b2b492", "0xd7f6b60c8bee4884", "0x6cfbed71d73c3008", "0xade7044f1d97ba0e", "0xa4a9b4aab7c53ecd", "0xb5155d82661e4a00", "0x73f79dd0f1059d56", "0xc913be89f73aaabd", "0x5c073a7499b15193", "0x3fc9f3b31083422f", "0xbadafebadd31933b", "0x22365cf674928c51", "0xc82f62667e516b3b", "0x9b1b4ff161a0ccea", "0x994bfc5729278a6a", "0x9c0c909ee20ee745", "0xbdc0a0dcf6efdc75", "0xdb913106044752d6", "0x42cb6f231c7120f1", "0x2d9dd6694013dd13", "0x1acf1524fa13b6e3", "0x2b42c608dfb69daa", "0x5e9c00f72c4ee0a7", "0x761ceab636892cd5", "0x5e57a3eaa58b8cfb", "0xaab9077df4c95e3b", "0x8970da0d156faf32", "0xa6ab165f38990a01", "0x74538eb9cbf240d1", "0x8f24c3c213eba97", "0x3da41138384badf2", "0x5b54d1c533bc6ff6", "0x444cd5830b8cced1", "0xb0ebb76b7152da25", "0xe28d576348e82db3", "0x75a522959f19185a", "0xd49596dc3698a178", "0x3c50a6e0751ff539", "0x6359153549c7d6b7", "0x9fd986c8940966f9", "0xc2007c8f3a746571", "0x338c633d1b14c868", "0xb0fb7982c1f52869", "0xf5555dd930ca0575", "0x685a24d94efdc140", "0xd2968a18c7b89698", "0x154ac236d1b258c3", "0x9a78cf708e0e6178", "0xbc04182f5e223989", "0x22bb5aeffbc370fc", "0xa3a8e3c91a3b71d6", "0x654e60b17e4ee205", "0x730e0236eedaf9f6", "0x187ce8e5e4de730c", "0x92eed1a1c05c18fa", "0x34d4a0c5f605ee68", "0x86091f7cd8abf06", "0x38f25002e65c0a75", "0x81ea8222955ca07b", "0x5ccce8e6bf27018", "0x14a093b28bdaf1ce", "0xa8a8ad3688c63563", "0x793f98a4201c39a4", "0xf5310e0262236073", "0xddd975004d4f7f08", "0x5b59584a6f36b420", "0x739d123cb65bbe56", "0x7e58f354d7011af3", "0x3c6bd0700192a229", "0x7f521a01f6e7c52d", "0x4ffa7bb6a42774e6", "0x6f92a7507d23f2ae", "0xcc51391a5e231a36", "0x146534627bb2cd2d", "0xbde9c2239d8616ab", "0xaaf733662e969980", "0xa6b91b216e6aaf3", "0xf693863ffcc603a8", "0xa5e931ac6ac27bc8", "0xe140b1382da529bb", "0x8fb570ddcf76a4a2", "0x69d811dc0bc087a2", "0x6025f5a5b0d997bf", "0x19ce67314af651cc", "0xf31567c7eb383e47", "0xf86c5b418f2b7386", "0xfb0b0b1cdcfc0fa6", "0xe5202ef060917c62", "0xb3fe310e2d88cc82", "0x99547c78d365717e", "0x89ee12c348ad90fb", "0xb7c596a48c84106f", "0xc56ae71309789fcb", "0x1bde686120aea84a", "0x68827e9049158dc2", "0x68c6c013649a279f", "0x45efb5428c9241ea", "0x2496af181362974d", "0x3e7d9a8a38063d3", "0x9da35b12f9cf5ab1", "0x4eb7b8b8066aba81", "0x1a9f7b94028b0e91", "0x725e4c5a30003b57", "0x77151fe098065a27", "0xf349c5e1071dbe9d", "0xd7aa0f9ec033a3ae", "0xc4a7ba9ed21e4ff0", "0x97d6b2feb9c4ed7f", "0xd7bd7a81ccf8e90b", "0xe7fc0c5cd0b23741", "0x35d4eb4940908120", "0x4e790230609b43a6", "0x13f9831d57f0785", "0x1ffc3cf7617a306d", "0x6fe137ebc8af09f3", "0x16f0ea3fba1ef2ff", "0xe58afdaf44b350dd", "0x2eaed9345704e61", "0x5158670333ed4c91", "0x2ac3c7abc0741424", "0x805ffd587bfca887", "0xb713dbac04e90920", "0xc6a2658c62b303b1", "0x8cc2e466ee0f6b86", "0x22416fd7cf641425", "0x12c9302e93d55ca2", "0x25f9881ae0f8e0bd", "0xb57b86fa3e763705", "0xa5118f9cf4e8d667", "0x45675d0266ab0844", "0x9597e3b076847359", "0x500909ff77227f0f", "0x8a1ff7d22eb8124c", "0xbae46f81991f4205", "0xbba51585d9c05baf", "0xbc6ad0ab5f27428", "0x76d534010fb2b248", "0x17a0a2f7a599832f", "0x2ab83c5bfe5326aa", "0x797ce6fab06c797e", "0x12f70f53bd7a30f", "0x399b77f039b041da", "0xb7851802e201dc53", "0xdb52c14bccfac897", "0xe2a3cebc6ea8891e", "0xa7ce33a607f018b9", "0x3bd756103a3c4c9c", "0xa162c3b1fb3e5916", "0xfe656e2692b60a73", "0xa46e08e0b94f8eaf", "0xead45c242688621b", "0x7260d1ed8e21f9a5", "0x796bef3d898659c6", "0xc2fca252b031abfe", "0xd40dc700d2613eb", "0x72f4a9eada9fab89", "0x9bf6e7586094ca95", "0xaa87b7f776d2ddad", "0x5f8d636c4845fb16", "0xff037067e7f4b32a", "0x9fb66b21a1906115", "0x4b2ac23594bd1f6b", "0x9242edf8357c067f", "0xeace4d158b18ff18", "0xe68f8503ebd6b13d", "0xce9752ac4f7f3693", "0x43fa6b428665827d", "0x9ec87c6de7b29855", "0xddfa23f6eb349083", "0xdf4329596626ec07", "0x5774d01dcca1faf3", "0xfea0f09bb4a9f62c", "0x25a036c0c78bded2", "0xf95e80d40b94f825", "0x3614e0c6a3b21b25", "0x4a42562f65e7edbb", "0xe6a2b278857524fb", "0x89edef2ea003724b", "0x4db91244ba0dff73", "0x4311c4649e0f8680", "0xe6b66129709a6d61", "0x18f98b65465e4254", "0xf62b3d626c2537e2", "0xb75a0333b2d4c823", "0x8211e39e33194238", "0x31e1c7460ad04ad3", "0x2c9b4711d7475873", "0x6f9dddd742b85e89", "0x913f0f9bc8b74f24", "0x6f943df2eb1379e", "0xbc00026fc23a92f0", "0xb2af849e0631c290", "0xeb41883513a9ef9e", "0xb1ff1c1e4666bdf5", "0xacaaf8eac39c746f", "0x165301e78673f93f", "0xd45437af3f87a0b", "0xabfd815942d4e7d2", "0xbbbf4ea5d8f92752", "0x9d564200d72e3af0", "0x9d2a56113d5a9478", "0xd233e61cda72439", "0x5cf4e97521392ef5", "0x17fbf0e18fcde9d6", "0x655aa253fd1dc767", "0xc979768fd9b26e77", "0x41765dc125885bdc", "0xddd38bd042956b9a", "0xa8f683cc40e4adad", "0x22fe8132cd07d37d", "0x2e9b3e2466ee0b49", "0xbfd9f3ddcdaa69ba", "0xa32c3979ece25ae5", "0x66573b7df0149ec0", "0xdb8f505dff9d9857", "0x75f57076351e2d5a", "0x410845b2cc941f73", "0xdc61e3f7134d59", "0x56f16bece8d01722", "0xc99398384509b6ac", "0x28592496961e9587", "0x7f582c6339153248", "0x907b1df1c084378e", "0x57c2568100ea66f1", "0x3f872bee74e2211b", "0xd6aea06ed949c904", "0x8ff55dec5b5db1", "0x6047bb348a2b011b", "0x4fd08bfedecc1604", "0xa7b386d42ce11aef", "0xefa87e4bff879083", "0xbe3b7dc67559f879", "0xde749579e0620cdf", "0x4f1efce4580c73f1", "0xee94a4f0dd1e739e", "0x62583df756813886", "0x97f2319cac2b772c", "0x905c3d2a5a3597d5", "0xdf2a462f8e00315e", "0xa3587cd94f1d00b9", "0x13289dfef3d1014f", "0x2b8648e73339f78b", "0xb87b535a0a20af34", "0xedc05dc42ceb1b42", "0x7e4a84fb30b4e691", "0x6411d15138ea61e1", "0xa90b9e8d4b2156a8", "0x7e20166f510c90a0", "0x8844963653a436a0", "0xeb098c5acff3e5a9", "0xc9294e556eea58b2", "0x306a809dffbf94c5", "0xde24b731004ae527", "0x9d04615a364e95d4", "0x5740c444fecbb0db", "0xc515a84cf5dfd66d", "0x70d207234332ee34", "0x48bd15388f491915", "0xd20a070bd85c7821", "0xca101cad125e72a1", "0x82ae3f521b0f20fd", "0x66701204c93488bd", "0xb8d49aec1c257fb9", "0xf1cd188593d5924b", "0xeeec5019eb530cf9", "0x2d84691583bafd3", "0x90210d55c0372044", "0x556d7a993789181c", "0x50b28b545da8f65c", "0x2fe542204b9dd3d6", "0x581f06c15f09b3ab", "0x7157f55424795318", "0x6bc3f865d1c9a5ef", "0xbf25fdd5805959d5", "0x4793113c1814c188", "0x6be8d27627039248", "0x275dc2871ead6cff", "0xb149cdd7f9847181", "0x2cc33b924b598c03", "0x2a948051639b56b7", "0xf52a21ebef6a90c4", "0x8352bd8d0273d8aa", "0x42bc0a0ecdaef138", "0xe7dd8b2928dcf5ff", "0x418f47fbe4a425cd", "0xfbe0d2d4020716c", "0x80b97b83ab511038", "0x1ca6b4ad01555000", "0x241764925519d22d", "0x135a1f7eaa12c022", "0x9703f3a7368e3929", "0x90281b5fdb84658a", "0x5bf36c38d0a2c5f", "0x2687a0b197cf7ea4", "0x66d2e3d13bb42af9", "0x3b0e3c7ebda1298f", "0x65e37779fc146595", "0x94d5401279be6009", "0x4da028e2cf235cfd", "0xdc48d9632fba9521", "0x1f522fcddacb0d95", "0x987f88c98b461010", "0xe3f7368b66ef3732", "0xacecde8f148e1c5d", "0xc772890e288c60a", "0x21840f319d97a073", "0x5eec07a4cc2d7e2c", "0x65b953cf2e2d4a84", "0x19d4a54d6bd255fb", "0x6ef47bbdbb2e8014", "0x5e73fadadc90cc27", "0xcf9bb1f0a9ea0426", "0x78c4c985262f3b22", "0x7fdbd7cb8c773c3f", "0xcc86f40983dc00d1", "0x3fc41daeb187a3bf", "0x54bd34c5158d018b", "0x16e8d3552904df3e", "0x9fa42e3c817d5346", "0x5f46e7a98614eb43", "0x5072140efcadfe6c", "0xf8e60c0ecc4ac416", "0xd3182030ba25a4af", "0x49e34a5eb122d835", "0xb853e9154bfe1613", "0x44b1d7ead1298e0d", "0xa1453978d68c5261", "0x8926904f3e6cb569", "0xab253804cae0186b", "0xaf2d3b285a08cad8", "0x88321ba87e80487f", "0x1a9fa1ae5182e48d", "0x4a3bfac6341cb14a", "0x60bb21307fd0a55e", "0xfd322bca496f525f", "0x7ef120dea9c84831", "0xba3dd8e9d7173419", "0x7fb7ed02b55a3ebb", "0xe8a0c927d3f610b1", "0x7e1e18ee7a56e59a", "0x787b9b3121c2c65f", "0xcc197e9fcadce2b", "0x15a4e264cc4ab00", "0xb165335a7e19de27", "0x688eee40be9e5d58", "0x31c01998d94c32d7", "0x183c9ba843c4309f", "0xbcf60a18a16b59dd", "0xb665652da8190127", "0x77f3da6b1fa112f4", "0x60a39566cc7a2caa", "0xaed2eac510ff1b15", "0x7c109971b250e8c1", "0x59ae9b6833e61dbe", "0x915b1d589aec383", "0x3c54f38ae4b94f6f", "0x284ce415c0b42668", "0x418d452608236500", "0x64f711d1b8cec483", "0xb62a0070d6953372", "0xddf81437c20ce93", "0xe82e7a8e46ce4ce8", "0xe340df9bfb3e6d45", "0x54fb53e0eff19e5b", "0xde20f62c90377e58", "0x700f492efd7b240c", "0x91e3b9d65c9aeb20", "0x2dbb5d0858d563ad", "0x2b7f64964176f947", "0x94f3e80239e868a4", "0xdc8e09a7b0a42b3d", "0x7a4d0c7bc73ba5b0", "0xe69db58e05d9bf22", "0xd12065753c9b4c03", "0xbec0f7e5dd96d47d", "0x3cac98660937bc0e", "0xb7dc7360555e44b9", "0x1337be5fabb86740", "0xdbfb9420c4f782d9", "0xe6bd9c9414da908c", "0x2def5f85c58535b3", "0xfa89ed30fd67b6b4", "0x4534e8891b4fbacf", "0x483a28e37863b424", "0xcf55f6521cafd8da", "0xf7c49ee8155bfc2e", "0xcbe0f94f0a76a0b8", "0x623833660410df7b", "0xdae95b925a926077", "0x6b38e89a9eae6533", "0xda89ab61838ce0b6", "0x635f81471cb5d8e0", "0x8354658d3bb551ba", "0x80cd1d6e30fefe42", "0x1e146d98590c8b2", "0xa5b03b1387551b22", "0x442de5898c4c9f2f", "0x47d49d1f2dc2aa4e", "0x7f1f2381c5c14664", "0xc8f7ba0d19502a0e", "0xba2dc77068cbd08d", "0xb908dd388bae4c8b", "0x3dd74a92c8c9eb4e", "0xdfafc48b42822030", "0xb4289b6ef20e3d3e", "0xae27f5562dc1d905", "0xde6b86bed9d78ca1", "0x1745da4e2005d32e", "0x798c5fd837882cc5", "0x9f39cd1d44a492db", "0x57daf0754e9cc385", "0xecfd966429fc4d2e", "0x4ea2b4456e7ac757", "0x4b16e4874f6979ed", "0x260dc64cb655351d", "0xb3b59b617b400dfa", "0xde40dc7ca3fce165", "0xf9a9336963415680", "0x2de954eeb16e14e5", "0x2619b615d1836514", "0x833fb74bc130359d", "0x7dfab80bfd50de51", "0x60141c3fb73d6e86", "0x17bc8267b7e69e4e", "0x258508bb1a738230", "0x68d12df66c192313", "0xa1f96719599005c7", "0x2808b6e6239d5c44", "0x3e3bcf4974c361be", "0xe613e5d514524bbd", "0x93da3e5d5b156077", "0x259bad5cf18c58ca", "0x3c353f9586126400", "0xdf907ed91679b77d", "0xb0f3385970af36da", "0x654dc8a5ae810262", "0x86308f971486920f", "0x601c9c7b34de0e7e", "0x5e181893c1863d59", "0x17273027dd31a89b", "0xfd0d7b0bd654b8e6", "0x5caa83415f830a8c", "0xa6c978c2f3db8248", "0x252f96c1e1e7db57", "0xd04dda193901354a", "0x7fca09479c454c2e", "0xb02be2f3e1eec079", "0x72a6a4b93f68cdf1", "0x76741d13202b8795", "0x4252e876fbfd9e1c", "0x57ac8e923d79adbc", "0xa9f829c20ba6462a", "0xf4deabee83dfd563", "0x395774a1f8177c75", "0x6745e9206da30915", "0x9f15a4a33f852d70", "0xd079140d353fffbf", "0x4541a9f2cff59d11", "0x2f99a2f941d2678a", "0xd1cdca6fb37fa798", "0x6729c9f62c1a4d27", "0xcb0f03bf3a7677e", "0xa163f0ba0c71ef03", "0xc73704ee1da2599d", "0x5e63d82c7f837715", "0xc38359087710db1b", "0xf1fc91a7150bde9f", "0x1946da08b67f7a45", "0xc21831043de4af22", "0x831441a3c3c104bd", "0x58687de0ce66bb26", "0x7b79820ecfc73fc6", "0xe51c9b8e82636326", "0x7d0bbe6a612ec39e", "0xb6244b97120d66c7", "0x698d7d51d2e33e57", "0xccaac7d05a0c47e2", "0x73138e3c32a019e8", "0x33175142a7c49f40", "0xd463a77b437a574c", "0x2f58f4ec4af35851", "0xf97252eff1886f01", "0xf253fd06e6cb57ba", "0x921759a6d87eb818", "0xd4af2a1a5d2931da", "0x4e11c2ff9ffb5ea3", "0x5bcdc54d4fa0e61e", "0xdb83ddf19de67270", "0xe0f09ca0f6dbd280", "0x1aff33990770de17", "0x47e678ea4c169fcf", "0xeb713936ea634dbe", "0xb16d81da394ebc8b", "0x98c5c7feca2c3b04", "0x141f848517009e77", "0x449ca43131a0940e", "0x345a0423ab37f6e7", "0x953863d3e828bf7b", "0x218e2c3bfbb4e5f4", "0x5fa8b02874c761f8", "0x8f5bdf5e708b5ba8", "0xc25bcba2e7cad379", "0x3f38f1d4cab98e48", "0xf81156099a2e0a03", "0x522e8e9fbbc4ed8d", "0x3e023182fdca822b", "0x7373c8f69c16addd", "0x2b7b28c3ac2c67cd", "0xf59516b293d67854", "0x9037e0cb6e030e45", "0x31b36a19c6f71b24", "0x4648f125c58f329a", "0xf9153682f2ed73c6", "0xd506ce6106ed05c7", "0xb6423a591ba1162d", "0xa41c01ca338f19a6", "0xfd4150b5f21dfa58", "0x446c5c781e3e9a2f", "0x490eee3cb1ec0dfb", "0x7f7354a2bf653fc9", "0xe2b4b7345a8f57f3", "0xb03a2381e01d4bac", "0x96fdb924eaafa667", "0x364aef0f66aa7aad", "0xdc99ad491e85b0fd", "0xf8339285f2394201", "0x7d3185e35fd7831e", "0x1cf5bd91fd3cfd71", "0x1898dc12730d1656", "0xf1ac18cb4fc06456", "0x5a9789cb5a0b86a9", "0xd1f2ab5674ae0c60", "0x2dc0d99b7d447529", "0x7eb9608a35f56cb8", "0x388a451a04205615", "0x20391b94a643235d", "0xc7c5d6753044aeaa", "0x2c4442a95070843e", "0x29b43ab6bb46b067", "0x1c68e56d679b79aa", "0x3b9b36c78cbccaf4", "0x21d5d4c61f30d17c", "0x6b09bbae481e45fd", "0xfd9000229be4d958", "0x9666f8091279cc6d", "0x1446b630a853b771", "0x5ccb952addb07cf5", "0x5ca83973d75d70d9", "0x62f4098fc2694106", "0x398548f7ec74a25d", "0x82989898f5bdba62", "0xa0b835d30b8a5ae8", "0x7497bd2af0388710", "0x52eeff59cbc1a32f", "0x5357939a8bcd8cf0", "0x88449d1f4dcfc879", "0xa0a1e7c16070d3f4", "0x187798dafc9b9b5f", "0xbc96eb23b1631f1d", "0x3c7ed73dd162deb7", "0x6709b96114387e63", "0xa54ac7eb9c24aa1e", "0xfaa9a0fbf7cc08b9", "0x616da37773c9e8e2", "0x455be7dce09dae10", "0xa29a3423a6f83a10", "0x5580ca9d79643164", "0x3e322f3781e87fb4", "0x17a803b7625e0d75", "0x363b77858ffe1438", "0x761841630aa16652", "0x54b046f44bcc3a0f", "0x87b01cc5dac33a9b", "0xeac0a7029f2e4c0", "0xaa9229c5d2f4610b", "0x91dc27e94d5dd926", "0x7cb775219da0fdd1", "0xf58dda1b3c52e673", "0x12eab09fbd8e55cd", "0xff16b7bbb7a6e799", "0x3a457c701328c2c6", "0xa03cfede41fb3564", "0xd4acefe5f3a9f776", "0x7b2cf51133709251", "0xa9a0eb568626d998", "0x1bd65dd7dc0dacaa", "0x518bc300cf7651f6", "0xf60ac3e14974fe05", "0x99eb80f81b6ef96f", "0x4e416fc66799bd78", "0xca355e28f3304cb3", "0x8a2473e6350f9b1e", "0xa25f7f728851444a", "0xc1391a41d62646ba", "0x10c3a171ee6b6a8a", "0xea01158ccac3ae19", "0x12085d151ca813a3", "0xcc9a3f11d1f29fc", "0x30c597ea9cca76e5", "0x3903a2c66b9253c4", "0x952887f8aace6d5d", "0x5593467cdfeefcfe", "0x837de7a81b71a4eb", "0xb77714afae23497d", "0x544d3f960f4aa76f", "0x70e91b55d91bf90c", "0xc532bbee8f21941a", "0xb658d05fb6af3970", "0x1abe9cc247d03c70", "0xbd36e6aaf56d0170", "0xd01f3257baf6b83a", "0x84f13cd6b89eabad", "0xa20e133f79357915", "0x6aa0b9b48e9d5f4b", "0x6cd4631b88886cae", "0xcccd76702ce34ef3", "0x72769258c76f7999", "0xc519ada1b97fcf3e", "0x83f1f2a6b1c802c3", "0xaa30942b1f143e98", "0x26ab7301a65bd7c7", "0xabb90f1b3f8fdc36", "0x76fc810434ff5ce7", "0xfb881d47ed04a715", "0xafea7d42193ae3cf", "0x6d97446de5e2f58d", "0x7fdfd734eef60759", "0x6f82ba477c1c062d", "0xf501c1647cb74ab0", "0x88d071e0a1ff56c", "0x6cf11c1a61415d22", "0x6eda1f56d89ac12c", "0x4e19fcb2de16433a", "0x121ca5b91bcbb981", "0x41104723726e7770", "0x4782d4a1cf46533c", "0x4d1a44327e802735", "0x7c143f9ea327fec7", "0xe6deaaf3c5fcdabd", "0x9254a18460a6ff33", "0x9b0bc0f8331a76f", "0x8e55d8f56d5e9d17", "0x1c69a98ae6f11428", "0x89c606a5752ae22d", "0x87ec7a0809000f4a", "0xe675ddcc92e43df4", "0x317f406b5894dd52", "0xa2d3d4bfe43c4d2c", "0x2491c791aff95d3a", "0x182745ecce609c09", "0x1aecf4fde142f3e0", "0x913cc30f83bb758f", "0x595dbf005312255b", "0xc13e9f3bbb1186d1", "0xdff50a2bb12be328", "0x8589e6841356a3f4", "0x4805a8e602ca7d48", "0x3ca0eb910db34261", "0x8f389dc37bd70512", "0x7e90fee821e52fe1", "0xe142b9bb01c90c9c", "0xeb46950d04a07201", "0xcee8190dde73f1e6", "0xb16b2ab10dddf76c", "0x2ad401d9ae16fbf1", "0x2920644984f20bb5", "0xbb1acf2a67afb3d1", "0xd19ac89301c57a55", "0x3a80b0a8901dc7b3", "0x85a87dc1fc441f57", "0x9847c3bceb3a59a", "0xc4977bf97034bf42", "0xd09a36a877910654", "0xd485b5edbb4fa321", "0x4b09593d42b1925d", "0xd97d32aeedae447f", "0x4b90c943067e85a6", "0xda4a5434863ab3a6", "0xb033ef3729099eb8", "0x898e40d7615b2403", "0x1c70318f2e9b8b21", "0xe7739799dbf351ac", "0xc52fb0e0b9c1e94d", "0xae38b5ccab77dd8f", "0x1efaa01145cc9fa2", "0xecb123c5c7c8f425", "0xe2ba9f666fdac6c5", "0x5f1b8d7ae7f3a574", "0xb421158e182f0490", "0x89ac6d2dbcd5c550", "0x9d8d9b6d2a738f0b", "0xaa53165e8728bf19", "0xfb8727a07b737b1", "0xd0fd01b078a9077b", "0x61d68e76536aa5d0", "0xa66d4ae8dffd4995", "0xeafae94ffc076484", "0xaba07c2bae1d4038", "0x9994e25b94b82e01", "0xe46d89e1081ffbc4", "0x6a35e7c15b278804", "0x5868b17d8bfbf698", "0x91ab568289e45fa4", "0x5fd184fa408bc374", "0xcad3a266e576f495", "0xc25111770c41da6f", "0x9a99141bc7e76f5e", "0x238f1f8ba2b22f62", "0xd0dfffc871bae0dc", "0x4f37fd6f6b41d831", "0xb0982e4a8c79bf1f", "0xe5b008f179af24e9", "0x2d19f35945da2d06", "0xd0498221a5ed2735", "0xb56f515cdd31c8e4", "0xcb023e0e793de4f1", "0xd777d6d5b11dd64b", "0xb7f6a5ab6b9f85e2", "0xafaebadce8c0b9d0", "0xbe2a7b7ffe401763", "0xef7ebf3dd4b2f636", "0xd052e3de126a911c", "0xcb711854f0cc8698", "0x600c3303fe3b5b05", "0x16876f96c240cecd", "0x5ec32a9a8a197075", "0xfb9c204b8b5155a8", "0xb9c1855fe2b3970b", "0x1b9fee7c5215f6e4", "0xcb9613cdf6bbb788", "0xd495e633888fcbf7", "0x126271e30154a999", "0xf6889c7b36c6fc30", "0xe52178d2421490a5", "0xc92ab5b30e3c3d5a", "0x5093fda5a019a51b", "0xa5ed4236ed871ae3", "0xa375e9282d3a1006", "0x58a16d411cc26830", "0x45bb56aca69c7c8c", "0x25772f6564b94a37", "0x958d946bc887dddb", "0xd738630928e1bd4e", "0x7b1dc9c3b0db08ab", "0xeee0959657ae89a0", "0x5ff32e07ae046bc1", "0x240ffae99d023d25", "0xb49375911a084098", "0x98caa1c95360455f", "0x5ffc8b1234a7211b", "0xcde8d5132a6930ea", "0x498470fd778bed23", "0x8333333f15eba8d7", "0xdd6a04b8f00f5738", "0x5ea09703f16dd1f7", "0xc32e419ea6b99da2", "0x3b4220d7f2beba67", "0x91b7d6eebcace950", "0x51359316b0a9c293", "0x7ffe4a8ef007e7a7", "0xdeec5ca8a632ce71", "0xc1a17dde8de19a1b", "0x6d84020cf1d12e59", "0x6c9caa66f9458dca", "0x9c5430671f0164b4", "0x9464a6104aa1276b", "0x2b98a62c1446ac4d", "0x40a0ac8cb301710", "0xcccc1f72e1bc0c55", "0xa2d93e4811ffb6e8", "0x2c99f95d12fa9482", "0x7b46321b601b1b5f", "0x6163990a3eb226a1", "0xbad65c386d812058", "0x332db49c20ff95d8", "0xcbb3050974ab3941", "0xac50c94c07c1039d", "0xd95e7c542e2308a3", "0x3a9dcfd836273f5a", "0x430d4d3ee460227f", "0x53749273cd8e498a", "0xe21a62b989122520", "0x36518157f417d80a", "0x795f54abf57c0861", "0xab7067b10433031b", "0xb6b89d92dd523af1", "0x299b68300d8f63ef", "0x6ad177df61b33510", "0xfe319c722854b984", "0x9c02a73adb52c4b8", "0xf2f56643413bb6ac", "0x4be7b9ae519cba68", "0x8f135d6f6eaf3057", "0xcef1f48deaa60935", "0xab04bc3cda848e4f", "0x6cf6b0d3ddf2d5b9", "0x6deb7019dd2923d", "0x2c9a3d873a4728f3", "0xb54ffdc6d7b2bcff", "0xa794226c50c73611", "0x72541eaeb34a7b50", "0x42f044fe6aa4dc50", "0xa1c8032e0498d45f", "0x9a7de50f7b813a23", "0x4ee3ede2fa5611f", "0x537e4241974fd9f", "0xa7f79a068efbfcb", "0x45d9ee4baabaf0b", "0x3b0297ebdd31ffcc", "0x48389fa149946d08", "0x82dae334f7916c7e", "0x46e65bb5ef613d04", "0x44f5f90cfc571ad3", "0x91fc27d204950d02", "0x699406c0e4004343", "0x6eb3ba073b46db9d", "0x62a5d1bcd5a87efb", "0x8b6022756d8ddc8", "0xb40777b469567c8c", "0xdf9f6f403dc35865", "0x75a84e85e8467d74", "0x7df5fe5a8e4a7766", "0xccb332081e14cf67", "0x3a8df82294dc4e9", "0x10f17a6df24ca87c", "0xf009859081d3d811", "0xa89bfc4183c73216", "0x9cb6c61e66d1067f", "0xc0160e462bec30bb", "0x422c7365bb01ddb1", "0xf17a38b41d628462", "0x9243cfdc4a89a6e6", "0xe9be61eb21d50d2e", "0xfe6ce71c2ec3ed6f", "0xc06c5c91715d959e", "0x3a57e5972583035b", "0x531a06ba3f5e0468", "0xfd6574e083bcf0be", "0x34b5ad227d4b66ef", "0x5fa93e611849d44a", "0x72d4843ffcd0b2c1", "0xac1c592a4158364e", "0x2df7e31376b7a80c", "0x774417892f5310bf", "0x5b7364dbd2a531b7", "0xa777c7346de02bd7", "0xfde62332f9ebfc9f", "0x7274b616231073e8", "0x5274c417d8fe1eb1", "0x5b7ce7992be45604", "0x8aac6b5fbafd8444", "0xeb81479319df2a0c", "0x9fe4158bc4e52036", "0xe8b4b04f137059bc", "0x976924910ead1d58", "0x419730249df00e90", "0x6146f315d21afb5a", "0x9a8f174505831b19", "0x34a4def3655f37ff", "0xa130ad161df8e8ec", "0x5e26ab8be482478", "0x7fc48ea2803e41d2", "0x6b80d94d899feb51", "0xa74bcd82d7553a00", "0xa9c05438dd0d7dea", "0x1f93daa8b2a19a9f", "0x30b5d9c10d90eac", "0xb2371c9eb3831176", "0x8727495223cbe994", "0x7b237dd2de3a88cf", "0x426394419dded32e", "0x78e1f9f08435c093", "0x6e86d8d6fceb434c", "0x1bb9f16f22e13804", "0x764f17a43e5adb96", "0xfa1a1a0b9a76cadc", "0xd93cf2c9da73a55", "0x416b48a7e759afb4", "0xc297041117ef5f36", "0x2096ed4e3f8e7d04", "0xc9a20144bbc4e515", "0x6f6bd24030d29bc1", "0xf129edeb980ffe37", "0x9860e64f28cc4499", "0xc7e033be7e4d892c", "0x22693a74643a4dec", "0xe490853edf98cc06", "0xdc4b6c26841ffa24", "0xe73ca43a88eebcd4", "0x6e9a9d84754bda5e", "0x4e7243ff93dd1b98", "0x2ec547103f9ed626", "0xf3a8cea7fa4c7d88", "0xe4836ef76b19e69", "0x405d61e7bdbdeb9", "0xe8e976efa57931a7", "0x4d3db4ca9874b7d", "0xa75ab02d4cbcff4a", "0x1db054c969762b22", "0x4d6408dcedf4a8fa", "0xf346b7402198ead3", "0x3ae4aa9e9f50c49c", "0x4f4bddc20b2e99a9", "0xb87ead2dfedce952", "0x3c7f8015919af31c", "0x78f3651f96662d8f", "0x397ec1e9c5bb5110", "0x40519cda5eefb101", "0xc544681ec5cbff62", "0x82eddbe5d3f120fd", "0xb5330d245a23cc8b", "0x13955ad16943fe5f", "0x55fa24f01b60c688", "0xbaf7d8d56d92c7dc", "0x5f4ad07ca158ec0", "0xe1eb97959a62cb52", "0x60021f18a3a4a462", "0xba90c88bef6735c9", "0xb01e1d0935473909", "0xaba366ca73fd1772", "0x87b5cb3cecf2127c", "0xa1b830f997f89694", "0xe1eaf297c5d3aed8", "0x3e6ccba42b1348d0", "0xd5b9545a7302ed4a", "0x8d535803e9caacd9", "0xe4d150f413d5a3cf", "0xaf7d0dd99d1afd39", "0x30f228db1f7fba4e", "0xb82a20b703d81d94", "0x9864059e6a7d5856", "0x49c13f1b9d068b23", "0x2d4769c704993815", "0x7f1d687b4057de17", "0xfa0d727cb738a3f7", "0x4180a34899533f0e", "0xa67481570d34b3e4", "0xd0ecaf6988c38ebb", "0x6b66094cc53b6e89", "0xf8c510b5a885cd9e", "0xea2fe9f2c8076b85", "0xe385375ee35d4c18", "0xcdc0438d882f646e", "0x9d3361bb01892c62", "0xc768811fe4c53188", "0xffbc92cf4a5522ef", "0x48388943dfd33ee2", "0xc54def4233754c36", "0x6f5b0584a5fd50d1", "0x5d1130104704dd5f", "0xecaba1a6926ee8d8", "0x5b9a0fa0d2b7d2a", "0x83672ef03361edcc", "0xc091cbc8677d8c91", "0xf7e3b95c610d406d", "0x11e5cfa9faa67d4b", "0xad4032eab3dc2581", "0x8de74743c9d0be67", "0xcbd0a98647284f2b", "0x2725e111bf117afc", "0x87135963ce665a23", "0xb78ff545bee251f1", "0xe02ab751777a4a13", "0x30b1b7e257c548ff", "0xf2ce484d20992ec1", "0x1711120e74da63d9", "0x1f5503820c15403d", "0x5edb41d6608eec87", "0x652feeb83a72f4c3", "0x79dd1f3ff065be5b", "0xa2ea895515399db2", "0x87af1a0b96e64795", "0x2f2545c99288b071", "0xade4f49a757ddd2b", "0xc828ef0dba19c079", "0x51677bc8110fd017", "0xa224b53969f2f72f", "0x2afa59f4fe69e41", "0x98ff77fa839730f6", "0x4b5b95b519ae555d", "0xb3d7c2e37a00a7a3", "0x12572c43f203e59d", "0x9ee6d9810d4d1b61", "0xd79712cecef27a2c", "0x54ab7b077609a2dc", "0xecafd0c0b4a6a89d", "0xa7504a0c9765bf00", "0x360a1b9aa7f33856", "0xbc32e7f68a4dfab", "0x93b86056423fee8", "0xbddfc595a7d416e1", "0xca3a63beb213e9ea", "0xfa5ead8fe539ee3b", "0x1ff23009e9c02b70", "0x5da1d726decfdba", "0x31121127610bdaf6", "0x2d342ed25fa032a0", "0x4065e832698f403f", "0xd8072cb168a6ff07", "0x170258d2b79c2a53", "0x6319baa291dfe532", "0x187bba6d54f3d22f", "0x7b3b8d5399ee26dd", "0x4c16fc0f46a8deeb", "0x39b4185984227267", "0xac79245c4ccd03e5", "0x3b833da51a4bf363", "0xb997e4139af85d8e", "0x2913e32fdd4d23de", "0x31114e8e17a388a8", "0xb37c8ffc5b102d44", "0xf901f7ceda654426", "0xcf798b603af7328e", "0x2c2344c3e9880b93", "0x22705838164b743a", "0x7455c6650d9a82f2", "0xacede749a7f5f130", "0x11f98fe7f3336809", "0x7120d5f320674dd5", "0xbb9ee17940e6e05a", "0x49d883418c44ff98", "0x19e3b7ddbf323d99", "0x5e0d7b1e2f98d3d3", "0xd6f90486c07076e6", "0xddb3a604afd7f462", "0x2bdb358c48175d48", "0x23292a5ba705b639", "0x6b8373acc0b600eb", "0x77b71b77226a194d", "0x32ff86afbdb4bd78", "0x61a838023d689ee5", "0xc82736f5deb52d9f", "0xb3a4f7c4f4ac828c", "0x99455c920ccf3596", "0xe1a14ca1ee161f7b", "0x3eb27e59e5577322", "0x34c8279cc5c287fa", "0xc99de598bd5dd576", "0xa1e41961bb6682c6", "0x8efbb4dce2707d19", "0xe6f11bd5a10f4014", "0xcca0e96d1edd3c51", "0x1a8ec431ca1048e7", "0x4af4d47012513fde", "0x4f77eebdb9aa0bae", "0x60cfbe5e3bd78da1", "0x97b19e016e22f50", "0x5b927f70fdc79585", "0xdec2e5dd96fd2597", "0xad500217bf76fab1", "0x304bf2377dfb5b8b", "0x7b3c6426bbc9e0c0", "0xe50f864b5c24cbc", "0x2a0a95d67c209050", "0x3d5234386df02664", "0x6d6c00a46908e3a0", "0x87c73759f135dfc0", "0x7f643437a8ccb0ba", "0x6d07b19e027d9d0", "0xfa74d987db565310", "0xffee8f944b01e232", "0xede14f6c9c537d9b", "0x7b488e5f5c7a02e6", "0x6c72d25c77485109", "0x91a38daab8e95088", "0x61a5dbac476374da", "0x40214fa4076b6860", "0x6c47bf93196f612b", "0x9aa713a101e296fc", "0xeece65cb11fa6bb3", "0xd15371d3d2fa7ad4", "0x8d04dabf18d7e49f", "0xda01370552d9ec56", "0x56798d93b68da246", "0xd3769346ef0aeca8", "0xe71d95f6d9a46b72", "0x93f7231ea85519db", "0xdabb3e916f34c1d1", "0x5b609af746c8d083", "0xf3e2640de9d3089d", "0xa63f9532825d0088", "0xedc4f19ab62c0fec", "0x9a940abfac827f6e", "0xe53cfb0af38919c8", "0x5ff847f070e575ca", "0x52a84f8a9a90566", "0x89b8103a10647845", "0xf497b97e156a960", "0x8b249eea152e6ac8", "0xcb20fdbb09b4bd8f", "0xcf93b5d25990e0e6", "0x6842d34237f90343", "0xc52307b9f5b1c650", "0x1757483ad20ee201", "0xb787e0539797f813", "0xbd9b866e60a33935", "0x6317806e65ec6942", "0x24365d78830b42e7", "0x519ccb58c5b9a4aa", "0x306652706d7b1459", "0xd0dfb0830097ef82", "0xc2dc09ca7efa504a", "0xbddc6de5547521cf", "0x2c2c3d8197ee6ec5", "0xe5a8071ef29ac3cf", "0x4949c1a5281daee9", "0x811fcf1c0eaea2eb", "0xdd4e187a65bd9048", "0x16c0924bd01660d7", "0x60513b48aba649d3", "0x78fa13d64e6e8177", "0x1afa7175ae0ac145", "0x67089236748f92e4", "0x6366c12738d970f6", "0xd18241176ac385f9", "0xc9a2d9907f9b6d73", "0x8a0fdf9390f8f035", "0xa78b1002393be5f2", "0xfa86c399c65cc476", "0xc04a57c49653e11d", "0xbc2bd8a10ec0d033", "0x346abe2c444099a8", "0x2da1ccd55de6a1cc", "0xd9ebc734a8a89ce1", "0x2b0a34ff92de2dbc", "0xeddabf602e0ea2fa", "0xd41355137f9a7a18", "0xd4b97f6be782a152", "0x4ff204c62cbf1751", "0x86be6222ecc3a030", "0xceda6d157ba3178b", "0x111aee8943b70ae2", "0xeebc61775bc38b8b", "0xde87b491a7d66e49", "0xbf8a175e7de9591e", "0xe2dbbf824c9df9a9", "0x38419da3cef5f2c7", "0xf41bf6f2e228fbf1", "0x53ac91cf3a34b148", "0xede1e2dcb0f516ce", "0x50ac888fbdf1b48", "0xcf287ea7601432da", "0x3bfdaf81687b6856", "0xa7b6f9e102401391", "0x76a2ddf8541e407c", "0xf247419d82a5ac18", "0x669c46e56a4f710a", "0x6f47f925673e8862", "0x3817cc03a4b14db1", "0x6fd0f3b6020ce9be", "0xc5c0815c328fd3d", "0x3d1fc6cb86273ffc", "0xf78e0cd0da25994b", "0xf010ad0822fc9090", "0x1b73180a809de76e", "0xb0aac4f61e3bbddb", "0xb8da3d0487017181", "0xc813fbc3a07aa59e", "0xb33689b8270324d1", "0xdbbefad4554d8222", "0x53cfa90aa1b06e03", "0x15f26a067f04c4f3", "0xd7a14dd6c9d3048", "0x605ec5e18a490cea", "0x9cb4b4e9e1cb8efd", "0x514bd43abe99b4a1", "0xa025ab3ec2c20e57", "0x241203c87a5451e1", "0xf7f2ca25adf4d214", "0x768cb6f74979ef91", "0xd9c280ec513c5cd0", "0x44bff248c017e193", "0x113cf863997f1bfb", "0xfb333b69734bce25", "0xc717d5347acd0e69", "0xde29ed64bf2e037d", "0xc1c22bd07a7464fb", "0x6e4be139b9eeef4f", "0x6fdf6ce2600d446f", "0x499f1e79bfd7f349", "0xc98fa442a4ee66b1", "0x77475829bdef2094", "0x1f3376fdd83b380f", "0xafbe75e52b0ccf6a", "0xbef3c0c736c9260d", "0x6f5d4ebf19e8b2d4", "0x7ebba2673bdc78de", "0x944db03064ef8115", "0xdf92296189cafa27", "0x40a12291c04e4be1", "0x5aef8e0ce50fa320", "0x3d138d615d67191a", "0x68993dbad927053d", "0x56ec5f7a811de06", "0xfe6c9cd52a89864d", "0x25785e09745a991b", "0x6197e207e46f6e2e", "0x44570d0a789cc49c", "0xf45c8fb6e6ab7258", "0xf922164b56ee7a3e", "0xea3d017f4d8b82c3", "0xb6c5d6af1c565897", "0x1818024b7770642f", "0x6b0853021925550c", "0xe08e065a6b57ff1", "0x69d1e33c40f9768e", "0x3cfe8e3c65de340d", "0x515e049a66d5d794", "0x1c0ea07a500e176", "0xc7888b9116924aef", "0x71da5be7b89017d3", "0x3f466bc7d360c1b3", "0x120698e2b1511d70", "0x4b2a315e4bbb6acf", "0xa008f087370f610e", "0x7f714da5e755eb4c", "0xa169c3a2d8320997", "0xd1f9da3367c72943", "0x67bdd3fca81ab404", "0x32fa5aba7ee6644c", "0x5e563b47c41211a9", "0x8c918edef2cc3917", "0x5b45065e780b3dc7", "0xa8c7d526e5b1ef73", "0xef899aea51ebf72a", "0xc558a2b7087939cb", "0xd9d82a66041422e2", "0x365925f9ad386b9d", "0x9be70870327b02db", "0x4b3a98ac80119598", "0xe2a1f479d369d772", "0xd548ae6419b0359b", "0x74f6a5ce37a2d070", "0x5f98ce58dc4b105b", "0xe0b64cfd027aec80", "0x4e0bdd26da198383", "0xd4ec9bff0ce49999", "0x949ea1890b5605fc", "0xae3664fec7de1b31", "0x281174b2a5e9c9c8", "0xfdea08e76842e0f2", "0x2f354cf1a3ef24f0", "0xe96436b311160c1d", "0x2844f5f90cfeb398", "0x994eb2c32820675c", "0x1213721ac944ae34", "0xde9330e789750d74", "0x2d554c21a528ecc", "0xeaaee8657cefe6b7", "0x9343fb34a8fb3d65", "0x6a1b9d80b3d6d16a", "0x9083efcaee08c928", "0xa09e8d9650abd09", "0x4947cd04591c096c", "0xb918ec621949bd8d", "0xc4d85520e43b2877", "0x3c504e0a16787d61", "0xc3e8991c5ad2232c", "0x6c16dc27bf83ce2d", "0x73893bf5a555d0cb", "0xdae199835788ff19", "0x96655a72480743f4", "0xd1cf635ec27dd728", "0x5161347ea88ca424", "0xa0d5b53a2c1de0df", "0x49fdfcec0dae44f5", "0xd6bc676f9e57133e", "0xd2a182abdfe4d44a", "0x7548c46dfaddfdea", "0x7c606ac9a2404da9", "0x28302939a3ce3ab9", "0xb283d0084e3c225e", "0x9d44da25079c48c5", "0x180a79ced9b28238", "0xa20f4daa4c5df81e", "0xc2cba703794d9723", "0x11e664089d53213", "0x6bed068a77d57cb8", "0xbeed11d0d7277fcd", "0x1cc71988cf7cee8b", "0xdc10bcbfe523db08", "0x4251852484c80db9", "0xdf53d307dbbb9810", "0xf98e1be958d892a", "0x5820171efa48a831", "0x6deef7f7e2e79976", "0x54f205f427418702", "0x5f911f2c2b0ab2f0", "0x53cf7f73c2eeba7e", "0x71fcacd736d74b5e", "0x724beaa53ef5007e", "0xbec42b4b43bc8b7d", "0x29405e5784332fc6", "0x3f8fee8ad0759844", "0x14507ef7d6674149", "0x75eeb433b3ac9fb5", "0xdb1882e7ce91dc66", "0x6e7fa6ec31bd41d3", "0x985908529cff9121", "0xbd2e08f7bf64ce40", "0x6987164eea776f89", "0x2b240a9cd5267f18", "0xc6dc610c583a9933", "0x20e7cb702b8b75f8", "0xe53d0858623294c2", "0x8813c0dfc537d401", "0x9fe2bf7def539856", "0x8307530b1ccf8d6b", "0x5cc0f4625ad39343", "0xeeabc98b72493a9f", "0x5e5e93c609b04c73", "0x63ed3dee3c40cfc8", "0xda803532ea790c2d", "0xb13793fe22cbdb53", "0xc33a5743843a933e", "0x301b495ac17f15d8", "0x6ddc937d85dc6dda", "0xe7ec66ed7d16a9", "0xc2211f70970c04a", "0xab813164b6135712", "0x5ee7c8ffcee55655", "0xdd37887ccd9aec08", "0x77b7d18cf658fcbc", "0x54ef683be7f94acd", "0x7f259f0f67763a97", "0x804d16ad35133890", "0x4abc8669ccc07d6e", "0x4c54586113bd5659", "0x975fc7772f1f14e2", "0xdb2bd3bb6e8d5dc0", "0xbb43023434fcc945", "0x2f54cf10fec25503", "0x6c72120ca6460bf6", "0x7bd192786d706f12", "0x732d0d4130f6bf73", "0xd50c477aa76dea94", "0xfde5bc3448a13149", "0x22fa4f7879082bb7", "0x7ccc7ddfa3c0015f", "0xa86b863c29b2ba39", "0x980fa7848bf9c26", "0xb196edb2da0fc99c", "0x9f1daac12c7824fb", "0x6b2df697253fe28e", "0x630a097be3eabdfb", "0x8cc33cc286a07a1b", "0xb4cddb74f480f35f", "0xb33c39c55e127469", "0xc94b53f5402a828b", "0xa009bdb0bc0b177b", "0x2a58762d975910bc", "0x5f465fde47de72b8", "0xd60966338a4f0a42", "0x895dacea2b61b71c", "0x8c8e7b26e6b17450", "0xcb2cb2934844b019", "0x5397a2e1effb14a0", "0xfc128d3562cde48e", "0xf0e115e0c26e1d4a", "0x26b8cd884ca146cc", "0x6ecb835a4d9835cb", "0x39cbb8fc46418206", "0x2d42b4c3ac4f91a9", "0xb0455ed06b68aa2d", "0x3c8244a267868672", "0x563c95eaed2f397f", "0xcdfa788604ec4d4d", "0xe183c392387c8695", "0x74ffc202de614e96", "0x38923da6b8d0a10e", "0x55561edd232342a2", "0x6f0d8d43ebef6bd2", "0x1eaa55025c60bb28", "0x877a44ef5c973304", "0x1f7a11d73f21f5ac", "0xb130aa7475854690", "0x15af3982c85daf8c", "0xa3bf8ec020e068dc", "0x56dadb3805711482", "0x227e6b568bdfa5e5", "0x94b3bd7907732be4", "0x8aabe7ac944f6ad4", "0xb1ceeda4d75e5b2b", "0xa717935f69f6f7dc", "0x11301d2139541fa", "0x3e8c42268bf392de", "0xb8c48e3c817af33d", "0x3cf32c84c52d93cb", "0x337ef4ece0b42dc3", "0xc922ec2e4af95450", "0xff8fb41a4d36063b", "0xc84e3ca587979a5b", "0x76b775d596d4d276", "0x6fafb3f7cb88e46e", "0xdfc0cbe248bb1fa4", "0xd47c57abad2e4779", "0x7b0aa3098c984779", "0x358ee6724e037d83", "0x737df613e8638c5c", "0x58832bb04efcd862", "0xf033ad2292228957", "0x4a368ad9d849b4ea", "0xba996f584542eb23", "0xa14197d2c7fd5f07", "0x70e1e78a9e170771", "0x1e73472fe6519968", "0xecb8e715905cf0f7", "0xd195a128e6f22740", "0xb3ef2a15c7dd9403", "0xf04971c81fa7c988", "0x348515fced14174e", "0x83947be3ddfb6160", "0x147f261f1eb995a", "0x1e167b0f095a1bd5", "0xcd3ba50934bd7dda", "0x84cfdc47bd87345b", "0x1afd4e65f7ed6296", "0xd8829ed8a087c1b3", "0xac22d70f9040ee5a", "0xebfddb1986c2d34e", "0x1eff2e45b4a226a4", "0xeb7813312fcfa0e0", "0x9db58b1bf2938146", "0x3d08bad6a91e1b47", "0x5e57d33521279a2a", "0x5d23e101703de8fe", "0xbefadfd784c94eec", "0x5aabe64b7d5154ca", "0x6c094b22896c96f8", "0xaf33303a9210af75", "0x3c7187627c7b631c", "0x4cca0907c53dc20d", "0x1f80a3dceed6d8e2", "0xbf6c0c4fbc6c8f88", "0x6a61a8b64c49f4fa", "0x6804891ca7ec2b2c", "0xd523a84148fbf5d2", "0xa5b91952dec8210", "0x748f5ee248880e0e", "0x43f039be3609736d", "0xa144200ba7982983", "0x31f79501d5270fb5", "0xf912423ffa781052", "0xd5fbed9bcb5d8437", "0x9ad07f5282226319", "0x28f09f699c35ed9a", "0xbd9dc2425c3f214", "0xf2e3c16285109c1a", "0x464c456552f614fe", "0x3cfc768be6b3e1c8", "0xf32fe273a973cbc2", "0x33dc8f8a325d1347", "0x26d6d92db39e9f66", "0x54f9f0a2ea3e6064", "0x3cfd5de255dbbcc1", "0x96f3a47325b64285", "0x1df6176845dfee14", "0x338817f2794b18aa", "0x48b812d93e07b394", "0xf9fb9afb4ae07e61", "0x1cdd93996099cad1", "0xb561f52733fa2499", "0x7592d9ce014b2827", "0xf25e171f000d047a", "0x97111f022d82dbee", "0xb59902d332d19bda", "0x213e0ba7fb1b626d", "0x314de46de06e153e", "0x2a95f76e53b4532c", "0x5bc330a998118c35", "0x8045ed012a4f51c7", "0xd415675ac827269b", "0xf19be5a70a8153bc", "0x8a6d4143763cbde", "0x29fa5022fcaefd4e", "0x18493fca50506b03", "0xaaf89ac91eafda60", "0xe450eb7f19af96d3", "0x5e0ba37b9eeea6e6", "0xf75354ac69be1f06", "0xa6870ba30d280fa9", "0xb62ed8ca5c3e1be3", "0x82b33b0642934506", "0xd1ae4f9add25932f", "0x5fe550314333a571", "0xaab3a1a2503e84a6", "0x3f32cdabd331f51f", "0x730d640fd1a075c8", "0xab8547f410bb5e53", "0x66b08de17f828603", "0x68c25966c868fa4a", "0x30af5e74ce2feccf", "0xdcbbf75254645e29", "0xcc513ac44a18bb27", "0x3bc425a0ef8b23ce", "0x42b27cab774a32fc", "0x7bf1c65f7fee24ec", "0x42235da0c0ca4fa5", "0x13eb6198eac2fb64", "0xbcc2ee02691a084", "0x6f9c47579541ddc1", "0x6b266b7a6d0d3a71", "0x582012bcadf3d460", "0xeeb12de5965654b4", "0x47377d0659dae19c", "0x5f90ad42e335905b", "0x6776bf0881dd3441", "0x5d10a25c8b8f142d", "0x92e0d6fcbfd37457", "0x98ee8f06b8f5b48a", "0xc299e7ba3245d533", "0x43ad7e51aab7316", "0xe28b99cb5a8501e0", "0x44a76c8c1da01a69", "0xf4abbe4d6d99f476", "0xd6c4d8740c3846c2", "0xd0ae8d777891d7be", "0xce63a12471b16424", "0x7edddde8c2c5d0a1", "0xa63aad783b66c4dd", "0x418448e02c6800d7", "0x63449d89231740cf", "0x7209d90018e1db34", "0x6a42bb7bf1ca28bc", "0x4f8dc8aa2a6d6e12", "0xf55b462af3033e88", "0x53366c5f3155f5f", "0x21a7092ae5a6e46a", "0x65b3ac072f65e50a", "0x53cbee546104e722", "0xa0574a879f40b697", "0x59d20b76426e0813", "0xc137631db38c6c5a", "0x1fd7787a31d44463", "0xeb7fc959558d18d", "0x75e6a76ce072a557", "0x2563c95df0f2fa8d", "0x7149b40b1853be6d", "0x2c7d03073df102e6", "0xea5dfe6795059b1b", "0xa456117e9d3e7cd9", "0xe892e1e29a596086", "0xab1273a3db17baca", "0xbbffe765082c806e", "0xf7246bfee7f0a97d", "0xab7f09499a7145ce", "0x2515b2dd4ca3fb4a", "0x3b7ad5f54bc206d7", "0xdc2eaa180855b961", "0xb80cc4088caf7509", "0xbde3f0041a574d66", "0x25f5328a2a93bf07", "0xc025d88c6e02885f", "0x8b4921410bbc8c4d", "0x8814e7a6ce722d17", "0x7c747f47535d95f6", "0xd9ff00fa9fb8ef63", "0x9d2377add6c1704a", "0x5154523b7769ab53", "0x4360068b1380081", "0x2fab17299b49d2cc", "0x8936fcc8cab1e50c", "0x8c8fd8f93bcc66fa", "0xaabe92abb160eb61", "0xabc94195887bda5f", "0x2622c54dc135925a", "0xab69ddcef810d978", "0xca0c760a424a2f42", "0x6a10231e5e0e28d1", "0xde3e23254d1de3d8", "0x1ecada2ec1f68a08", "0x23e9cccf00b8cbd2", "0x4aff07a785b57458", "0xb155bbb7173c2d92", "0x37e5f49e4b7d4ebb", "0x5678615c544a3b94", "0x8e9675de4fd22902", "0xef60089c49ca8cee", "0x90e9cc912d867e41", "0xc96e5a2afe8b95cb", "0x4e74f6bfa838262e", "0x5d84a327a2fed19b", "0xb06e64757df93683", "0xb0e3bf510e5f1f05", "0x1a90e6af5bde2163", "0x288f3bc94b83c80e", "0xbf6be123be36d880", "0xd45a5c94beb947fc", "0xbd15b816befc96b9", "0xbe6c0ac4a8617371", "0x4f39f06e1866bf8e", "0xf20c57e78034ff2b", "0xc5e677c29951ae3a", "0xf48eced4ed4675ba", "0xd16394aa783e0365", "0xabfa26aff3a2d8cf", "0xa777d65d456c718c", "0x34810a8165427e59", "0x856c8cf01751943e", "0x535bca294bfd9c6d", "0xaecfd67e09258cd2", "0xb5c94f174fbb00e2", "0x934e3ceb570f94b8", "0x9ddcc82a94d69f2e", "0xb8545d4a9ae08901", "0x53a4117cc63c832e", "0xb03d6493da34d5d", "0x7eacf5f285c9bd78", "0x8cbf7f0a4bedefdc", "0x4b803f86fb830a9", "0x77df33efc52f0158", "0x1226821bf44a7a09", "0x18ffd50caad67e8c", "0x8c1d454035ec28fa", "0x7d86b95722744555", "0x87d69143a7db0f7b", "0xfc947415194cfb5a", "0xb5d37abee22c55ee", "0xb359155117273146", "0x3d657e3c595df5cf", "0x6ea05ac12da87e1f", "0xd7363bb9f2f3f6eb", "0x1ab71500ac2869bc", "0x674fcb0341b4bee7", "0xe0cf25fc5eef79e3", "0x464066dd67631b0d", "0xab1a772b9773fbb", "0x16ebfca8f5432cb5", "0xc4665d479b28d0e6", "0x49d61e82c7a72364", "0xfa1cc0bd5b49f4a2", "0x569c66e3476a6a9d", "0xcb130202baa4bf84", "0x90a2afb2edb77acc", "0xe96f2ec266291827", "0x4547957c8402c818", "0x599177baf9ed2a4d", "0xc84afbf41310dea0", "0xf3bc212dacfbc0de", "0xb30e892b5557eded", "0x9b811c57b418bc7d", "0x39728815c1cefc4e", "0x5d1ced68142a5cc1", "0xb4585cebdc84028f", "0xbc9e2554fa964c9e", "0xcd8ff9b476e06ccf", "0xd641117be9df7cfc", "0xbc794ed96c703adb", "0x7ce20cabff4d2c01", "0x1e51d802c0614a89", "0x2f89eac5516a89aa", "0xdb8bd06a98f626bd", "0xcaa86914d34e49fa", "0x8a733b8222879989", "0xa4cf5348506c658b", "0x5fe6465e0ad5b674", "0x3c76b411ed8a6e03", "0x9a5d607e95ca3359", "0x9d05ac1d45f1bbf2", "0xe7021fc608a00f33", "0xe11ef57da9fbd5c9", "0x6edc476ffe84caa", "0x3dd2ac5a007995d", "0x91afa200a78762a4", "0xfd5d65586b57d524", "0xe7bbfc2c2f9ab49a", "0xfa1f8beed014b914", "0xef34ed55b2bf3ed1", "0xb1672cdbfb741778", "0x265703ee67c968b0", "0x36ebca21838a3913", "0x9c66aced3dfdd295", "0x9ff358d81cf55876", "0x421a07dc416d8b8", "0xb3b2f5a226c3835f", "0x2a009871a277d6c2", "0x934ebe37e0ecd8c6", "0x94167a0621f235f9", "0x6b572508ff192fad", "0x7c7e5b450d6c2062", "0xdd113b0d12c017b3", "0xf34bc45d19cc7945", "0x43712d10bab439a1", "0x8382737a9d66119a", "0x98cab8c5806794d7", "0xa2f36bb1aecc86ad", "0x5b31d9032fff43d4", "0xd375b78fb6dd990a", "0x2a545dc354d6fbaa", "0x9417df2443a308c6", "0x84ea341952078c1f", "0xf7d9a627362ce62a", "0x32065dceab4b6b93", "0xb6f1cd02f71e2121", "0x197f14fa63c48b2c", "0x4b14f4e57fde1978", "0xe8b6fedb5b82a862", "0xc8e34f27cdde5a71", "0x53b94f8768699bb7", "0x2270eb15d1d9fd3a", "0xbac0dd3a3ee8ef02", "0x38eb9bbaa2a1c8e4", "0x1a17c94e23837628", "0x200a438d140ef329", "0x2fe6ee1b40f585c4", "0xf9307a1edba596df", "0xa2e9c73630a83027", "0x2eef581dc8cc7e10", "0x1d3078b618245404", "0xe9af2c36526aa77c", "0xde325e13d13d3c34", "0xb24b9d5cdf25bc63", "0xddf837c60ec8ee1", "0x7c0a0fe7dbcc5fe1", "0xa0838aa7a5556ee9", "0x728d5607cca6e311", "0xcc23f77d9563512", "0x11b9ae56ed235a57", "0xe8875975f0ba8905", "0x11cc404765c73d79", "0x480a6452f2d2e5bd", "0xd05f220ce48e2b9f", "0xc05364f2a575eb4e", "0x8c246e746464994d", "0x5304dd14241fd147", "0xc8897669b679c441", "0x9e241e78a2c7aee4", "0x13d527ddf26cf008", "0x7caff688c6896711", "0xb482ddc24a509d81", "0x7a56916930bc88a7", "0xc3b91d7ac9490dd9", "0x664614bbf3afa322", "0x785bfa11105cd901", "0xe5a95c27b45c9ddf", "0x4147e8119375430c", "0x64b126504e138e46", "0x81d7348d14611471", "0x5fcfc5ab65ba4bf5", "0x116a992039082f63", "0xb69675f2ef0d8f08", "0xa5ae4576cac4873c", "0x716deba790a2eb6b", "0xb0e88a71c8b98ea8", "0xd930fbf5a3b98ec4", "0xaa4bf0c0645c7b25", "0x3687f57ba07d5345", "0xeaddc7102a278f0f", "0xfe82690688559f22", "0x6353e9cab6419c00", "0xa920db6e9b7056ae", "0x41eadca80fca2dd8", "0xd3bb5e402ccac025", "0xdd9c254d71240797", "0xc8b0595616982840", "0xe4273d76b0bdfce6", "0x75e148041bc97dfe", "0x2ea6efc1ed85710f", "0x6eb3e4bbce19dc7a", "0x601415a5ce95242c", "0x1c3e420f1580838a", "0x2bb8c3db8a8e785e", "0x2ee4381beb0da16c", "0xb0545aa45e3ad0d9", "0x49fce59fed499b8", "0x68711e49082c875e", "0x6a522b658910d496", "0x1a510df6909c8613", "0x3a16619403ffaa72", "0x8ccf4ebac920fd88", "0xa89021ec19d0a1bd", "0xc7584f70873014fc", "0x4fa8b282f70fe1a4", "0x32f396d5a7c6679f", "0x32ad3dd469fe22b4", "0x6b157d1a353b1c77", "0x8003e2675f3ba192", "0x6d7f783e6f4d4c0", "0x38e83fe13763e7b3", "0x947fb198b000d14a", "0x7f757f09a289cdf2", "0x879c7702dbbd0fe5", "0x5abea86a4d460055", "0x6fbfc5f154f96dc5", "0x52308ab283fbeee8", "0x2d07adcdab38b6ff", "0x2cee285bd5b8238f", "0xf2d3bef0e2178f35", "0xb99f37ad856762e7", "0x4690d159be8e5ce7", "0xef0742016cf9e80e", "0x7d65d24c1c28b6f6", "0x76257b9c25b45ee0", "0x2c667f62132fe31b", "0xdc3afa88b56b005c", "0x8c96a1141dce83c4", "0x35bc3e1f92461401", "0xa5b74d4cb960703", "0x5b83d941a51accee", "0x2ee5ad0ee060a14a", "0x58b4dca7f33a835", "0xe591e7e0c82b339b", "0x83d0ea850dd2acc2", "0x97ab2f74cc4cf477", "0xd351964553910759", "0x6d26553d5ebd5dea", "0x92f4ec6b583ee5c7", "0x4bae3289900bbb21", "0x5daf060cea2cc223", "0x7932073d3b20bd97", "0x3d3f269de331f91f", "0xeb53433ab33be8c9", "0x225b1722d2a76427", "0xb1a3c293a947dd46", "0x51deafa26dad95d1", "0xe613be14ac6ac6d8", "0x57e8ebc0bc3d0f00", "0xa7b49ad4d0d54e9c", "0xf23960c3ed4d279d", "0x77cae2cd8de62965", "0x28eab337ab357ff3", "0x7069a337df3703dc", "0xf597e54644bccb9e", "0xb35850578db3a891", "0xe0b0f816c3419d1a", "0x9a75b5f8c732f65", "0xe68a8b6142dcb0b", "0x996f3bf0d7416ce6", "0xbb2e549e7aa7558e", "0xd4813a95ad5b867d", "0x3b55d7bcb548f53c", "0xa2526671b4f68806", "0x4652e0caa2b4c8e3", "0xb714fdaeef37f10c", "0x78b209d225a88b96", "0x419dfd26e1c5adb8", "0x14ffaddb2b63ae49", "0x8ad93848eccf3fc8", "0x7b0bf79f34b4d86e", "0x50cda6497cfd236c", "0xefa9e13273e03d90", "0x65c3b196f9e8cef6", "0x1f589210013f9f4a", "0x1a3e3cbabbc6a3d8", "0xc45b582be1bd16b4", "0x4bbfd34fe8bfe90d", "0x7ef778cac97ad1ad", "0xd35c514fa74691b9", "0x392572ff77080a39", "0x57d84be65275bd04", "0xef213af9fc2b4a32", "0xad0b8c3eb8020ae5", "0x2c278422ed5ae02c", "0xe205c160f230be15", "0x11a05d5644b4ed21", "0xcc529b705625ef02", "0xf73c44fb5ab15440", "0xe9888488626bf732", "0x30b34dc998dd462f", "0xe33f4e2af5761273", "0x525f373b821231c7", "0xc5210b1a64429463", "0x80ad583ea9f4794b", "0xe472bf49797f6cb9", "0x2e5f1b231156f8a6", "0x3bcabffa19fb38c9", "0x46b6c4f076bb2545", "0xc65fd7cdd7c88703", "0x478a0e0037e10fe7", "0xe9dd49f5d4470feb", "0x49eee4b8b4e694cb", "0x39f4fedc47d97c65", "0x3990c6bf24004ac", "0x5ddbfea59132a0a7", "0x9ed5bfcd37760485", "0x5e13a08b09f0f704", "0x267562b197e05ffb", "0x3be4d64ee464846b", "0x373ea5fa85e327fb", "0xc2aa632ec9ba07f0", "0x1962f8ea6515f07a", "0x657b2749d03feaf3", "0xf0cb67a52332dfbb", "0x4090c1e62d497b3b", "0xa222923b2d5a3139", "0x596de0eeb0f63f3b", "0x41905f0a49c35ba6", "0xe9f2fef71e0e9ee", "0x6928a7c2023d1625", "0xb8aef5652e969416", "0x6ef1526ebe41753d", "0xac75d79d9940e624", "0x7c098d7fe29f911c", "0xb8429ad616862ed8", "0xe749a2b1088730ad", "0x7d12df8b4fd176c1", "0xf8c1cae8b78fb784", "0xd4ab42ab9c3c3396", "0x571b758aac34c99e", "0x26a5933344958faa", "0x8ae94688a828b0d2", "0x807780e223211bab", "0x18e3ccaf8085fb83", "0x14602cf2d4bfadaf", "0x34b91006030f91ac", "0x34140c9a85978677", "0x25d0b18eccab2f03", "0x4fa53d22ce8ad06a", "0x9a97bd8fb5ea549f", "0x6b8650cd3ca12dd8", "0x9e7f618c963e0fae", "0x7e03745b740bd19d", "0xd12db6039633a17a", "0x59018ed1c5de5cdd", "0xfc554386ec07e4fa", "0x74ad446370c3d37d", "0x482d7b69b9813e0", "0x70aee0b47b147a2b", "0x75bea451261c60f8", "0x23d5d7bc8dac17f", "0xc6b8d557a593e9c3", "0xa3509a81a5fac94e", "0x1d90530a0919e2d", "0xbd0d84a399ccf5c", "0x92392ad591671867", "0x9ad3bc677049fd42", "0x31da7eeccaba8e9a", "0x489f0b946bfd9f02", "0xf7b42bbfd6c5aad2", "0x7a4d4d4c4a097b4b", "0x21e27cffd868c13b", "0xfa495459a0eed9f7", "0xbbd0e146caf00222", "0x9a7c34b9c0dd7113", "0x3d956dae29a28f2c", "0xfc0c74c3748580c7", "0x127a3f17fe1942e1", "0xd4b1c07e00bcf1d5", "0xa7cfac407f80ea9d", "0xb9f1467f0552ad63", "0xc7ef4bb4b5bc58d4", "0x9e840f31c45c1334", "0xf2335a3d2c8321d3", "0x8c79fdb19c698a27", "0xca8e4417dcde6dd8", "0xd9eaabb31aceb7ca", "0xb897607b32280787", "0xd78cb2b8240e8342", "0xc802b312ef7590b5", "0xd183551cd88bb909", "0xe4e21a19cd0a22b3", "0x6198fc4e0ff9a359", "0xed6d0bed122f1b17", "0x6d1ba1cf14228bdf", "0x965eaa433d7deb26", "0xdd5e58c8cc17ade8", "0x99d7b0fbc11ee0fb", "0x8ac222d14104a87d", "0xa1fdcac0b7078d21", "0xedc4bf8a068adc35", "0x7eef94869b265500", "0xd427e23d3f5077ee", "0x57729605d21e2bef", "0x57bda97f0351bc53", "0x6f5bb4ad776d427c", "0x8aa5f06300a8510a", "0x751eb88de5df79c0", "0xd8eadad1a7cb6654", "0x3a56743a8e8a541b", "0xd1b8f5dc5d8b6e5", "0x9fdeb51a1658d42d", "0x80235cdf18bbb8c9", "0xf641aec22ca65b49", "0x83d81275a32bd337", "0x7b511f58078ae7ae", "0x39cc8801d3d73a42", "0xbe0d2b8655e8b5fd", "0xa257b19da49c7bb6", "0x7db650f94ddd79a0", "0xbfa365b0d64153a7", "0x599ffc4c426336bf", "0xc75868f338184e00", "0x68527a10c4ccdf8d", "0x1c3926ab1d498567", "0x2ac042b63033341c", "0x70ba6c6dc2f9cfa5", "0x50a9ef4eaab03260", "0x135cb7db82fa84a7", "0x71d2c10ee92b61d3", "0x1837ecaa3b1c4921", "0xd20bc4915fb4d1f1", "0xa5bacc73b8aca1b6", "0x49ede7d263c29e58", "0x43a6603ec300f853", "0x257b69fdbaae8a6c", "0x8c2be787457d9c96", "0xd3af0bda47c84cd5", "0x6d7895eaac11da7a", "0x8037b0f09a825c19", "0xb8f0af7d511c4d76", "0x723f5125bf37a0ee", "0x4fdc97552cdfc669", "0x542c40e16f9bce63", "0xc7821e9d1e58a330", "0x2524c218721de847", "0x9e085e440e651f1a", "0xd1ea99dd72454f65", "0xc3ad058b005c8930", "0x7a265d48165b5553", "0x57b96b801943a9ee", "0xe9d3420d685c781a", "0xed96956d7941de34", "0x8b4a41866d7f227", "0xf8398aa3a1ae694b", "0x160605128964acc5", "0xd67f6eda0c3bf14d", "0xece1caca23ed9b09", "0x869ec1851dc2e662", "0xeea3627aaca9cab4", "0x98a491c22e62c4bb", "0x379cc23c565f6113", "0xcad960e14e7591f6", "0xb226ea75d3ba05a4", "0x80903709ca0b02d", "0xf3856c5675021e1f", "0x3a2e0fc46cde307", "0x85a3420bd05a4d7a", "0x19930620235e7a3", "0xa5507f9e96958b50", "0xf1002e5e12cb28d3", "0x41c0be9a2bbfd38a", "0xf0d71da02a6f5b94", "0x4d9fe4041953ed25", "0x4a3eaa1529d8dbac", "0xcf0fdaca9c130c6c", "0xe0b5951c5370cc14", "0x5a7ecaf3dfc80b1d", "0xdf37c1613793a623", "0x7cdafce27a1e98cc", "0xa86a53e1b5bb0da0", "0x1d6ffef450548c51", "0x96f034c6f6fcc925", "0x9dc88759274dd210", "0xf14f17b2b626fe5e", "0xfb49f91fa71fea89", "0x3c0d6c0fbb41463f", "0x890ed3dcbde36870", "0xb94a8228d6d2a7aa", "0xa916c2d6c9bd41bb", "0xf30f04702f1e84da", "0x37c13ea895cebd2c", "0xb9770ce23c213404", "0xd4eae9fde595024", "0x5e7895a9ca7d972a", "0x1f19e65584431767", "0x5f56ac128619d113", "0x7e0664030b62337", "0xbd59eef915dcd24b", "0xf0a96c80cbeb1c45", "0xd1f22f55651a6f04", "0x7b18e14cf7ccb817", "0x67f3c2c8e49f678d", "0x809e18458703d48b", "0x1f9fabaa4c8f519d", "0xad348b2efcac5197", "0x41e1be32b036478e", "0x5ac02a1fe3d5cc1a", "0x3235af0c30f0e59", "0x600d22e8df3d35fa", "0xf7d290dacc8d9bb4", "0x73d6bc91b18d42f9", "0x4b9d97ceec0dd322", "0x32cd1d397f8604d4", "0x80cd6f55cc23785e", "0x992a29987525a2b4", "0xa4f57b36e0ca8b1", "0xd29dbc41aaca673b", "0xb479e9c6816b717", "0xc22cf0301d27ae98", "0x9d9a2c3890244ede", "0x475bf76749eef21b", "0x472a600256a22424", "0x8a1e6375592edc95", "0x55da70ee164a3ad1", "0x76b79981b46da105", "0xfce04101d861ed35", "0xd86db170aaa4eeba", "0x11913d9fea5b813a", "0x91982e15265e927", "0x1ba20aba250da080", "0x9eec4ecaf584bcea", "0x81f7aad163fc74d4", "0x62433906b8396c93", "0x29d2f907143529cd", "0xde88bd0f92e77f8a", "0x27afcada57258291", "0x857d8b8e8ee00e04", "0x44998cf339f5276f", "0x88fad15ed3f0c31e", "0xbed020725335d0fe", "0x397714b05021e7c6", "0x17e4d7aa28dbd3e", "0x782962f8b5b597b6", "0x6e894090935909d8", "0xccd07e1d79ee591c", "0x6caa1564593986e5", "0xd1bfedb27681a36e", "0x1c2316a44ea428b7", "0xc1d8161ad52d940b", "0x8774996f9375c5b6", "0xa9acc38b98d00cd", "0x21c0dcff95dea4db", "0xc5251065b601deb9", "0xdf9c10c2f542b9d0", "0x8d088489c2ac69a", "0x3d4cd8002b3af84c", "0x3c0e4da1d2531dd2", "0xb20a230b971e831e", "0xf79bee90132dab8f", "0xcc057893fc8373a8", "0xe551659e814b6ef3", "0xac78eea7913069eb", "0xb1eeb8490fb1292d", "0x131782e8862e11c8", "0xfc7e828d40a70fc0", "0xa22dd1e19dbd08e0", "0x840d60b50a59545d", "0xf8f8b3ab0f8ac866", "0xefbec0a0e7ead912", "0xb8f92622dc59a7a5", "0xb79ace64a79595b8", "0xb7be1567ce5c6913", "0x3cf9b202262ad779", "0x21ed3fe38a0246e5", "0x4f33bf22aea7c423", "0x8ecbe0c3143e6cd6", "0x2eec61238c35507a", "0x32f75c1638745d47", "0xb395528d69a942d2", "0xe7036ac40f33816e", "0x4bb28f67b8c5824f", "0x8799b25e629d859f", "0x23f0c00ec59f779", "0xa70c3f747900b3f0", "0x6a2a4b063eae2024", "0xcd72ef681a9ceace", "0x267495bd50431c40", "0x9e91c6c21f4c34b9", "0x78fb4259dd0eb708", "0x5c3aac90783ca8a8", "0x4d433d4722d8cd", "0x57a34b44fe5907a9", "0xe8b50c3438069117", "0xe12b45ed5c6659d3", "0xb822e4c03422acf5", "0x86ed2fd62f59c023", "0x20a16bf5463c1f9", "0x8cd85d2b5918c589", "0xa169ae8b56dcafe6", "0x71a110ee3e42276b", "0x17f56db371ce0429", "0xcb06611e7c770db4", "0xab424a90dcfe7bc", "0xfda37090c099112b", "0xf561f55115842178", "0x13a311c6b82d15f7", "0xd60c54308947ae73", "0x1021f82244f39acc", "0x6bb4e29e7c3764b2", "0x6c27cc7806209382", "0x227787e28af71ef6", "0xcb0b12be6a23f7cf", "0x8d9324911b74ba1", "0xd66b359355af9904", "0x408e5daa9c316aba", "0x1fda7fe2e3709597", "0xb1b4a5b2f98d2199", "0x9d1184c559fee6fe", "0xa5f641358fbe4e05", "0x532a08d4f53065a6", "0xd676fe724e1c9201", "0x8b1b8e5ab5b354f3", "0xf855fbe3b6a48ba6", "0x46a291264b4febf7", "0x623ae8eabe550bf6", "0xcffeaa44aad6ae88", "0x976e0f827cfcb845", "0xfc4af66faa35f9ee", "0x776144eaae37a5bb", "0xe20d1f71beb21b47", "0x4160ab694272dfa8", "0x565713d191fef3b3", "0x485c0e7131e560a1", "0x7d052cf46171652e", "0x188789e001ccdd73", "0xcfb82910dc4704ff", "0x3e4020c18fb5c318", "0xbb391575df89d05a", "0xde5312dfe1876a17", "0x140b857fd1cd0764", "0xbbc2359fc07b1f5f", "0x9094540fe85fd6d2", "0x6eb5f1e2685a7f72", "0x8ee393318825dfda", "0x3cd450433c0b393e", "0x61876d03149f2fc0", "0xb771abaa0185ac02", "0xc5f894598066fd7", "0x491570bdd7dae610", "0xbdbf460e3a7b9841", "0xf42e7222702bdc53", "0xc2baae09e9c31296", "0x60a4f5ce9bea330e", "0x2e820bc3ba35cdd3", "0xe81dfb0d2e17ea4c", "0x5284b06895c4f93e", "0x7585e3188b947a3a", "0xed9661fdda7f914f", "0x567ed70487788643", "0xa9c72102ded23ad1", "0x9b2a934a18d7c692", "0x80a79659839a3b60", "0xa389de430f76cee2", "0x8006f872192ae43d", "0xbc400b5d85e78584", "0x8d9ac302516cbb55", "0x9bb7b487161be8df", "0xbeb31db97720d7ed", "0x350a46c58c4462da", "0x19d59a9fdcfb36ce", "0x8264bd8ebe065286", "0x1388bf44f5ea1f79", "0x96931a54cbe1ad86", "0x16a48b9bf6a12efd", "0x2b0aa88d280b95c", "0xa532dd7056332d59", "0x7f03013e871536d", "0x5ec2f7a2810f754e", "0x52013466ec392f4d", "0xdb4d9759220dd216", "0xce391e0a7aab0cd2", "0xdc6974b66c0f248f", "0xd3a8f1e29c3a77c6", "0x1b4a3eb25c071fec", "0xd1577637cd165548", "0xa9a0be7a979bd04c", "0x6d345d7423c7623c", "0x8c55e8b9f3b8546f", "0xf26d855c5451e371", "0x5a8fb4ac42ad102f", "0xbb487c951074206d", "0xd847468d3a0d3a8a", "0x1b7deb7f910c0f5d", "0xf66fa576905c1f04", "0x1cff0f50eef25b5e", "0xf3ee72df595b5abb", "0xce5de3a552897cb4", "0xc041586769855e52", "0xbd6dc3660b89449f", "0x15198eb5e2507a44", "0x93c7d40f814c1fef", "0x67e8480bc17ebc08", "0x4be6e4ca2459725f", "0x7c631514776fe1d2", "0x67444a0fd20ed0d6", "0x12ec1c411604a033", "0x256f0ad61bd6225a", "0xa18547c2792d30e9", "0x8f6c047916758ef", "0x5d1a2c6e91f9ce4", "0x648a9f667062f629", "0xdf6336833c299f2a", "0x8b9cd9c77b6777a4", "0xe7b3b85dbb41eeaa", "0xe4e08ee35d05adc9", "0xd06d3888de328028", "0xbb9700eba5d9f3a1", "0x4bec308740730c64", "0x3044a71c892c6cb0", "0xf9681287c1b7ef73", "0x570a4049db87a889", "0x5da59b591139771d", "0xcbe4568a24af6854", "0xd53607fe4405c353", "0x3c5a392d6b0e705f", "0x58bd960478fd9273", "0x557f010e31dcf631", "0xbf8d3bbfe5533ba5", "0xb28b3316d6113a9e", "0xe952908c45e73dd7", "0x1f015729eed6854", "0xa032a6457f5f4652", "0xe1703c216c2b703", "0x82cba8aacdd8baa1", "0x6fdf65b5ba025410", "0x4842a1a318afa624", "0x809e4a9c0068e797", "0x986a9c6e3bc0a233", "0x68cd6d748d2b5151", "0x3e6aeb1be175c0bc", "0x3d4096aa1b33edd9", "0x5731394c09a06355", "0x21a481e197e0928e", "0x816511329e98c042", "0x6c10979f16e89dd0", "0x4b6c0fe3d26ac184", "0x19275bed4a3d1446", "0x65adbf2b8cdc7882", "0xd25dd5086c11ee0f", "0xd2e6d443fb06d2a", "0x557bae5c0c63aafb", "0x43c5eb30adbd39b2", "0x53d461e52463ae7b", "0xb73485696f35e89", "0x8eee46232d8a194d", "0x70ff0394f9794e90", "0xebb485fdfbf950dd", "0x11bf4de72ab0bcdb", "0x8b1b7cfa3a10cfca", "0x3a84f2020ef77769", "0x6af63ebef3ad9cfa", "0x1a898c19c8863ab6", "0xcc3527b3130779f4", "0x39b7a923f114884d", "0x962fc6042830c279", "0x9fde46a1f07ee00a", "0xe27c33f5a0b65b47", "0x37a9b9a04fb3621", "0xb9e35dafe77fb73d", "0xd428656ce21ebacd", "0xa29212e2f0b02d2b", "0x344364a43f509b0d", "0x65c84962190fbbb9", "0x9f8ae5e992a6acd1", "0x322391732a7644b5", "0x8802657f7718fd0", "0x56aeb4adc55f626e", "0xf8db7719530404bf", "0xda54565668d75c8a", "0xd1adbe95e74c7a11", "0x93715b596eea8cfb", "0x4eb875e5f3f21e29", "0xc74fd1171524e65a", "0x67efe18445e40267", "0x6eb3346bb14be0b0", "0xbce1ab132a2cbd04", "0x5138b847fa38db2c", "0xd5fba289bea2a704", "0xb75ffd1e20997168", "0xee5bb7a07e32c4e9", "0x41dd6b81dfdc84ac", "0x3aa594028e93608e", "0x74f5d0816a1f8809", "0x11dd40e56e4399dc", "0x75d6c931541a3c17", "0xc3f082fb6b006e68", "0xc7e598b4c25579d0", "0x33b3305a39df57ad", "0xefd03afb3dc81aa8", "0x9915d42b6c1428d2", "0x3065a34f07d9859a", "0xaa73d2b36ce2722", "0x10582982b74eb57a", "0xa932890aefb0319e", "0x622bf13e22f20f99", "0xe49d0a19bbe510e5", "0xfbd26805339a4bac", "0xa306f348698af129", "0x20e4daa6401139de", "0x8cb3d726152846db", "0x4bf1c07e874a6a17", "0x1ea342bd609df234", "0xe82061d4ff20c43c", "0xbee3ab267a0b23b0", "0x95a1afa99f9782b0", "0xb9815a96ee476409", "0xf8c1d56b8ec2a4ad", "0xfaf99a4b4050a840", "0x6ed89bf6b64f2174", "0x9e0b20615ff6f574", "0x9080db803057d8bb", "0xf91d795517f6e73a", "0x9bf82ca2e593a5f7", "0xf577842271c5b0d5", "0x409948fb354bf4cf", "0xdf645ff29af626a1", "0xc46b765314c58a13", "0x1dc993fc3df1be07", "0x96234384c2d83ba8", "0x6c5cdbfe4dc0889e", "0x69e1934c98be62c", "0xf7f0871b9ce95c18", "0x4f8c0f69c227f831", "0xe4d5d87e4ef37d87", "0x65446ea94f87fd36", "0x231491c35d0740b5", "0x9f399a27249b12b6", "0xadb588ea9fbadbb9", "0xe6ef8cb9152bd321", "0x9d426099a0666ea6", "0xfcfcd7d75de6ba14", "0x7269f10e975ad29f", "0xe16368c370ce1874", "0x43c5b5aafa46c9ad", "0xb35356658f0306f6", "0x18601a676edd5437", "0x476517af1d330b5b", "0x4d1bf9f92915f6c2", "0x6c842604357565c3", "0xc71a87926d26e011", "0xc936fca8cb5c2daf", "0x545bf832798f89f3", "0x78f0ff69e593e83a", "0xea266d09dbf5534b", "0x7cf82ed56929b564", "0x930361ed97c4e69d", "0x16a129742bac3138", "0xa3546571d547b151", "0xdae916e90e440f75", "0x5a51607a09efc5fb", "0x9028aae2e7dee06a", "0x559c26bb0e3180aa", "0x5943d299716624b6", "0xc066074f640ecc35", "0xcb697c4ff0f76946", "0x6277e3258b8b9789", "0x7740fe2b9abf7d53", "0x66315d84d947d57f", "0x784361df2b32517", "0x284892f9ccaf9fb9", "0x9c74c6c2fbf0eb6d", "0x17e55fd2b0eb4c8c", "0xe1d76110af7ebed0", "0x380fa30e7d938a11", "0x90c3df4821aaa7a7", "0x7bd3793da010c854", "0x8327db4063a9c82", "0xbb02dd2851dd2c89", "0xc33b67e1bf0fdbb2", "0xac2e4aab90e8647a", "0x8c23a4dad8a8c3e4", "0x5be467dca21fb998", "0xdab8112e2bf5aaeb", "0xa5e9583280f51c48", "0x9ffc56538c6462b", "0xbeec81cbdb359a42", "0xc2f12c899ffb49d3", "0xce51d23c2576908c", "0x89c02fc51e4cb0c4", "0xca1570ee334f0d30", "0x776d29f4392fa68d", "0xa9e5735a19e2c3b2", "0xad02852135f38969", "0x8aed81a424883fa9", "0x67bf05a2b2110d43", "0xcdbddd64d0c1fab7", "0xf5550779cc2ff50a", "0x67ceb46d35f6697e", "0x180917aa59a9ccc1", "0x77a68ad037c6ae97", "0x31c6f69ee836976e", "0x1b765c8a86509614", "0x853d3099cfa79bc6", "0x1dea9de992b9c7ba", "0xd5e0bc7708a4dd95", "0x18f450f94fd3eaec", "0xf270c6197e6b6c89", "0xeaf834c86ef4e7f0", "0x5cb79fe073ec30b2", "0x7077b52c4b9a0d3f", "0x4875adb21e046404", "0xea1273bfcdce6b5", "0x38c77808376d5ac5", "0xc3d360653575fca0", "0xf3052437dad99cbf", "0xbc92c3aede1200a9", "0x7490e5e09090f95e", "0x998980ae0d661ed4", "0x8d5a68b710052537", "0xf972214fdb0105f6", "0x8e65590d64862ca3", "0xeb80cec12046ec5e", "0x1c16fa47b0c424dc", "0xd0bc7e41000c01c", "0x2092949a1ba6c0b1", "0x9d5397850409eac0", "0xff7013764195d640", "0x24a090bbfbcf683e", "0x5b1898afea8ddeae", "0x7d2817dc7b6f15b8", "0x2b289f390e9ea680", "0x1744621f4277b3ac", "0x1f96a16c09fb61ad", "0x4186e3b513a638b9", "0xada4398ebaaf99f0", "0xbcf6860000c15c21", "0x62dfa771e5c52ada", "0x869de22ea483515b", "0x13af6a67f0978392", "0xd6ccdbd9715b23bf", "0x2c980169ba6e7749", "0x643cbc3880d45a4c", "0x12f6337cda1affeb", "0xe4934359226adccf", "0xe50245e93ff0f331", "0xe78cccf90bee1200", "0x43c4c180a697c0f9", "0x35436fb4e19eb692", "0x73c7604da17373ab", "0xff63de806fbafcfc", "0x5154d5ef8f880c44", "0xff749de8f1c0a825", "0xc0fdc088596aee3a", "0x48afaab2f9960e3f", "0xed5848135fdbab40", "0xea89c660d826e2fc", "0xb37b08d4bd3ac6e5", "0x8b994d07a4fc0b76", "0x852de50a2a356293", "0x17c5321be4e2831d", "0x13ad9736b3dfdda0", "0x1b6606662200f6c8", "0x863295af74b5267f", "0x6906585874373eb5", "0x7d50261ae8c55768", "0x7c2d58278f22630f", "0xf67eaae51d15088c", "0xe523b2867ed6342d", "0xaa9819e0e915807e", "0xbc9f873e212d8e58", "0xf7cddef90e677c9d", "0xd47a2de12231fb8", "0x3e9976a2d200929e", "0x11da496bc1851845", "0xfd280ab14004d376", "0xd947440a1c2036b", "0x3ee2e73f604670e7", "0xd2e7c33991fb3606", "0x7d36988c30622e0a", "0x76f1fee18c509f48", "0x3b2fde873465e064", "0xc6610b64ad2817d6", "0x48ef55f7bae1df29", "0xfd3042aa0f9a843", "0x234163d85abed733", "0x260caeff1302566e", "0x1e0edd97a6c1fe0", "0x3de6128325b120fc", "0x270e35c1b3fee5d7", "0x2e747285c959ac84", "0xcace439df5463f5", "0xcfc32da2b859b4ee", "0x1fcd21697ea30e48", "0xc2e52f78e22f3fc6", "0x10248332cafa4728", "0xe17dd4513a345391", "0xd14535668acc8044", "0x2c0e09eb938ab406", "0x64e167aaaf1e3a46", "0x2fbf12629eb1f10f", "0xb5ad6bf5c04e68bd", "0x9c4f6fe7050b703e", "0xb7bc755d36c5e5e1", "0x25f0372788adbea7", "0xeee495cb99987c85", "0x95a1b08417c6b4d4", "0x37b31d9835a8df85", "0x87ac701732d1938e", "0x5dada7b906e4bc92", "0x61c64f412aac293c", "0x70463af9e375e7a0", "0xe145227099dff4e5", "0xf196ae82f3440d25", "0xd55203d338f83f0e", "0xa2f8916182a97552", "0x5e2724ba1a43fbe7", "0x790f74c257fca536", "0x91bbe2c80351e0ea", "0x62568958d72ec57f", "0x503fde97117d2bce", "0xfe1fd928842b3fa", "0x1da4bfee0fe3a98f", "0xe7178f402f1f3c5b", "0x9f97ce4c675da614", "0x10a362984dc7cd10", "0x952e0c699d9052b0", "0x37101931f77598ba", "0x8c5c3214d7bc83b8", "0x6641e38f2eda0d2b", "0x3212c942ef924f82", "0xce538b49c8b97b2f", "0x5b8d5bdb30167cc1", "0x37fb5977d1d8c4e9", "0x65781fe7a1107af5", "0x3793232b5dfb6d85", "0x4f6b52cb01c9b36e", "0x76c267aef55ac0d", "0x82153bd531f5a78c", "0x4be180651deb4fa7", "0xae3944aa10d2025", "0xb95cd6898cce1519", "0x35c0e9f8719d7135", "0xaeec0ce9d558bf6b", "0xe56192b4dd81d4c6", "0xe34cf1c65bb4c3db", "0x2fc1606fb6173f25", "0xa2073f354f4975d6", "0x55fd58face43870e", "0xff6b037ac112dcdb", "0xb2a54713c0e71d04", "0xd150b38c362d3543", "0x28290ddd2f573974", "0x9a9f4ffe63be67e2", "0x73867696d2160be", "0xc8a6484e6d9d5b76", "0xa239210a6658ddc9", "0xf651a1e6bd76d199", "0xac4738a3e4ee39f2", "0x398c08af5aaea241", "0xd1794b60331da82f", "0x33ec95259a121f3e", "0x27648e4f67c4a55c", "0xfef2b6648c2357b5", "0x6d3495c96c2f387a", "0x7e79bb991843a444", "0x9589f46e5a9547f6", "0xc2c3ec72c1d89859", "0x5dcb7c15f4d4fad5", "0xd950b4f43107b894", "0x296e32ab89c2808f", "0x985f1af0425b8442", "0x4bd58474894dcd7a", "0x4aad780df3b2fb56", "0xf2a1e3aee71e017c", "0xa6e739fe4f4340ab", "0x46cb500c0b3a86e1", "0xfe05f6589f4787f7", "0x5babd80eb76b077c", "0x4f7ac748f56d748f", "0x2e8f6936a46b494c", "0x1925708412058ec3", "0x85f7077737ae1115", "0x7a5dd31cb33f449a", "0xc2accb65627cba6b", "0xb20bd77a21c8ee4b", "0x26b519ff5c32d21d", "0x46a4a9a4c9e1932", "0xceeb81870a28fd46", "0xccff4e9cf2aef419", "0x34f4f6cd647755d6", "0x68596890e4e1a6fa", "0xf5228192edd2764", "0xcbf3730729fec453", "0x12aee98e86a721dd", "0xf9332832f36ce827", "0x515e138611b68beb", "0x7bab5ffb12132c51", "0xdee16d6bfe7007d5", "0x372fe0adfb83edf9", "0x30abce8a56587416", "0xedb96a52e17a1690", "0xa62ddda391576e4d", "0xafc9f419fdd5b373", "0x650f3bed52e73931", "0x53cf74d12cd1374a", "0x63c0cea6eca4f933", "0x434ef545b8631abe", "0xc7f1c107fb52e305", "0x1eb3ca8a6432209e", "0x575d2362d4fc4681", "0x3eeed4f7e22c82d3", "0x1dff3500fae2ff6d", "0x8e32d0e22fb8f975", "0xa3b391ac436b0410", "0x14b984a9ccd90a3b", "0x29b1750425b0bc97", "0x5fc852b71bb0bd49", "0x3205839a37fd05d4", "0x5f0c1ffff759684a", "0xda25ce11a0c87a25", "0x2ec028749c807c0c", "0xd734885e4fbc4212", "0xf2001968f4ea5436", "0x96fd00180c6f347b", "0x98aa4c1f06223612", "0xe77d5827d89439be", "0xa6cf6b49970b4c5d", "0x8f8669a12b39541d", "0x5698472abdb0f8cc", "0xc4ff1fe7143d7049", "0x27adc4d8bc950c1f", "0x26f84deb53bdf479", "0x7aca331795ba5975", "0xbded7f37e39a83cf", "0xfe89c094df7b1e7", "0x8ef9a00d1edbd945", "0xc261d972727bc5cc", "0x14d750ea3ef1db1e", "0x5a04d50775f28d56", "0x45dc0db446479aa0", "0xe5812f3d0e79547d", "0x96486c4e15bb45c6", "0x857db80ab4eb8fd2", "0x9baa892e5cf22413", "0xcbfc9ef5748b6d3a", "0x3f30f4ca7df0d4cd", "0x10d1e3c3cb88fd0c", "0x7eeafaa86627dc48", "0xf7843734e7be53e8", "0x4d1efd6dfff57538", "0xc9a35f91e203fd9e", "0x110486cf59bdd82", "0x9621cda8c69d248b", "0x9d6ad1769e1f073e", "0xc1481e97ae3cdb2a", "0xed52a43a70b9949b", "0xee6da97276b38edf", "0x4f1c5ead015a9c6e", "0x8580390cabbde71f", "0xf41254eb1893c0d1", "0xcc78d43c31cb8a18", "0x20272b309d094b46", "0x46c3ab01800faa2b", "0x1abb2c0d95a5012f", "0xc7a831a759184cc0", "0x1868df72093d3d1", "0x2bc3aabe513c1347", "0xebfe404ca4fe8929", "0x59b7e84a90cfcb25", "0xdbc9d1c90bbca45f", "0xc0f157441ae08cc7", "0x2bebbeacbffe7cfd", "0xe44f5b792f89f64", "0xd5291c323b5d5da6", "0x6bddfa038dbcb824", "0xaffc5d1d7c8e2ff7", "0x750f899f28a8b6e1", "0x53db2164abd5ce7a", "0x79897b629e5fa06b", "0xa4458e49bbae92df", "0xed95c5d8a3fa8ce4", "0x40651b56c11e0960", "0xf7e95d8e8921a0e1", "0xec34f2247f0775d3", "0x5493b193f56f83c4", "0xda941dc639c044f5", "0x715383157a0d7ce7", "0xa6813287e5f1d3c", "0x2271c4cff84bdb3e", "0xb77d06df9d9cb66d", "0x1b1cc502d2352d47", "0x3dd3731c471600b4", "0xab92663d9e411399", "0xab913d9e28117a6c", "0x9772c584e78b7929", "0xab7b4892ded4f098", "0xd2322054c75ec859", "0x700a8fc6d025b268", "0x72283390e4809d10", "0x4ae584d56602af67", "0x2c59c92c7b672230", "0x22684a7f8202bc1d", "0x14e45fe5cf341671", "0x62e7ac29bebbedea", "0x4f81c658ce0bd9a4", "0x8d8da4b426950265", "0x4ce782151b9c21d1", "0xd52ea09086d1a1c9", "0xd40643dc05450516", "0x2457084f869e32e4", "0xffd153820fbcae70", "0x1fca8ca8116aee1e", "0x48e95ca89bed261", "0x4002147a78c3792e", "0xae72ad0780dd69b", "0xb858db90a9853735", "0xc7134a349cbb1daf", "0xfefae88fc0ed2a14", "0x590b86d5c9c9e321", "0xb1e9d8e8f728835d", "0x520156069cd47f62", "0x60730ebd40768116", "0x56297a4aecbd360b", "0xa6d5a4e97d926343", "0xe19998d63f203a24", "0x63c9c48f24d76317", "0xa3624cd646d1ecf", "0x98a7517a53fe197e", "0xd8f6aae032d5bf4", "0xcbe40c32fbc5288a", "0x2e43f249c2a62cb5", "0x54c135f88ecbfc24", "0xe17b61e526f6cd71", "0xa26d703071bf22ed", "0x2fe42d3de2ed1142", "0x59270efcf76081fb", "0x53adcd57128e6e50", "0x363535d156162d8e", "0xdd6ef9159f0f2123", "0x2411840b846475d8", "0x7ddaf91823a9751e", "0x11ede6f685dc6aef", "0x139363658c49536c", "0xfe1b12801c15d5b0", "0xa4e1d26bad29606d", "0x47f5c8a27b61046", "0xffc27cba483267e9", "0xb00b5b43e640d60b", "0xeb63db3c60fd120f", "0x6fc16ed1e3de1e34", "0x8c09f941034dfc0f", "0x200411f387dd0fd3", "0xfec88f21120a6e6a", "0x88db61a56a18411a", "0x82cdd1cef0e97025", "0x4094007ca71c8681", "0xe280ec183e0c5afd", "0xc3707a3b896619c4", "0xe6b0a8bc34f7c541", "0xff26b6770578b2b3", "0xf4f145c08ac61f03", "0xffcc1d2a959f70dd", "0xa253285bb3142105", "0xbae034459bfb3ec", "0xe1355f0d9d73ba6d", "0xf3f1989f5766693b", "0x99279e1d7627b004", "0x9158e806224233b5", "0xf71d6dbb4212a607", "0xe2dcebe7673370de", "0xc3facb2e95ce9b73", "0x3a70025bf1ca9f36", "0xe4ae3ff81e675a1a", "0x3c6e02d86e2b2b5b", "0x1aa4941b0ae084f0", "0x4c5aabc7610f870c", "0x77c4f1fd9e3f1e77", "0x160fda3d7bc6991b", "0x2fed7e8d1943ba78", "0xcea68e6d53f83e8e", "0xeace33681ab8ef68", "0x7f16ef02e9a2126b", "0xec4d8d507f48fbf1", "0xa1acbbd0c0974be8", "0x85eb4e02d2831c73", "0xbe7dba45c41fd7f7", "0xad5b9e19158145fb", "0xbdefa94c939fe06b", "0xcf6ac0b04e157558", "0x3c631c1e1c454314", "0xec1ad9761c1f1fe2", "0x1267e66037b39535", "0xd599fed3b81a24e8", "0x287e129b4ae633d3", "0xb7ac0e11970d7a14", "0xf351e70b3715e16a", "0x9396adad75fea013", "0x3659d62d8f63f1c7", "0x455a16d2d3127271", "0xa55bdd2f827e23f9", "0xd1d97d0b18d65254", "0x9899ff6af1535eda", "0x1178680c10e57f51", "0xb78d0945aa62da38", "0xce260c39c7a5ce5d", "0x4dbdb2bdd85fab46", "0xcbb9dffecbb11ca2", "0x72b791a5018b50a1", "0x2cd823e28f313f63", "0xfbddaedbc12cdcdc", "0xa852a990bd0ae8ea", "0x611e68025599bfc6", "0x3416f32f0f4a7e22", "0x6848b2754231191f", "0xa1160645dcecdb6b", "0x8662ba89817e0ac", "0x279512ce8dc6fb71", "0x495fa11aae819171", "0x87466341a2b58fe8", "0x38f9c6849a217053", "0x2005f1cb3e8315d", "0x1215817e1c753923", "0xbfbdc29949df476a", "0x62eaf149fc65a1fd", "0xa34a6e936d5b8dcb", "0x7faae284a4e210d", "0xc6d6e5f91d3ff3d1", "0x6687461efb568ee3", "0x3912e652bacd2740", "0x2dccb210de905ddd", "0x8f8ebf44f383f1e4", "0xe3fcb47f650487c5", "0x21351988a48b079b", "0x26d08940a958f56c", "0xfe87a9415715ae6e", "0x506b1caaed4da37e", "0xa8aefa05038b66d5", "0xbcb575324c00441f", "0x7dde70dd6b707a41", "0xc403620384d6ed18", "0x8786fe20ac1f1db7", "0x50091e3df980934c", "0xd631b02128f8acde", "0xdeb310927ac76a64", "0x402cc60e42a0f006", "0x9f32f425e91f5771", "0x3ba523ac819686c3", "0xd83c45a8c6da8b40", "0x52ff30b75be53701", "0x36ebc3c42378f762", "0x1ab6601776176aba", "0x39ee43d8c2145032", "0x21c778bd7e8d74ef", "0xd6f03f00453a149c", "0xee730330209afeb", "0x64fa922b67598d7", "0x7e3eda9932892da9", "0x5ba174baa94d2816", "0x2a23bc69b0f8a29d", "0x63881ce59712ebb6", "0x88bed673f7b132c3", "0x2e5f9d7945ee2bb3", "0x70b01ad2687afdf9", "0xa148520f9bd2713f", "0x742e7fb4ffd4fbc", "0x9fb96cdb72abfe96", "0xe30c54ddde36cf40", "0xb2d6e76de41d04a", "0xc0805c6da11ae125", "0x30707551c177d7db", "0x2f5136590c0ba428", "0x138e9b57aa138c49", "0x4699031f4130b95e", "0x3a54f6fdb93ccbfc", "0xee5dda3975bd1fd8", "0xc2c95f238e6502ea", "0x43f7d4f741fa49d", "0xe5117cf4a4c5a7", "0xeae79cf48fc9e4a7", "0xbf4ae6fd023322c1", "0x946050c24c13c9bf", "0xa9f8150fff75869e", "0x8861295842224624", "0xa8f657d2ba2ace5a", "0x3c874f8f03b1fa58", "0x269c979aa4ffe2c3", "0x814927c46829124b", "0xfc1280fa128bd530", "0xaac9a465c080c8a3", "0xa53244025f9e6b53", "0xe1671cf21c8e5169", "0xd2de896ff294f77e", "0x6f448159870e9afb", "0x5167c8b22f72fc66", "0xcee95c3562524951", "0x718ef48acb7cbe5", "0x346db945b1b3bfff", "0x39a69578460d5bec", "0xc12fb5f5fe3ef238", "0xe49984d268cf7d6c", "0x5ae9a4205edd1ef6", "0xff710c44d90a1cfe", "0x6456ea2cce287f25", "0xf2e3d63ec2ad31a8", "0x23d09c7cc04ecc1d", "0x81aaf3ffc44d4bb2", "0xe3f5f49ea9fad74a", "0xa475e408cd9e030c", "0x6367f4845229e687"}
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
  local count = 3200  
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
['MOD_FILENAME']    = 'ShipSeedsLoader_radiant pillar.pak',
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