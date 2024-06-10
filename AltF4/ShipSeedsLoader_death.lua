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
    local table = {"0xb39986ed810556bc", "0xead609cb7e5e0de5", "0xe13188e1ec46d680", "0xb3f8bf71602e656e", "0x532f869fccd7feb3", "0x2be9ec87b776db40", "0xe4adcbadbd8b8ff8", "0x467b8a54bd7e7eb3", "0x17302cd79530a685", "0x344f8d902373f6ea", "0xec7ac5981ea145b8", "0xc1e1c937e6bf008f", "0xc72a983a11d639e9", "0xa283e368df291b64", "0x61637fa8f65b3474", "0x5ed56ac3a579af88", "0x9db863bc591a8ec9", "0x3dc0952d6aefae9d", "0x7a18da6f90598c2", "0x8dd5d73d7621204d", "0x5dbce089458ea180", "0x4753dca218cf2a53", "0x892f482fee8fec0d", "0x4b4e9357cc69963f", "0x77fdf7457c2abb", "0x3496c0200476698c", "0xaf6c9adb1639761b", "0x9e9b6d2137096c92", "0xddfc6c0899cd6014", "0xe5e3d4933dfa8b61", "0x5fc95103fbb6196d", "0x513cc6c6bda460a0", "0xf257c2e6011eee55", "0x39a7cbaa587bf922", "0x151a2eb2d56233d4", "0xaca4117b4d8b7f2e", "0x373d531d69dd28c2", "0xbfc1467ffa4f4362", "0xcd747779d8d9fa56", "0x4f4cd0ddd2404775", "0xaa4045424ce58501", "0xda56d7032a299f4f", "0x758d2114a262f15e", "0xb2bc3c8af27c3835", "0xd961faf5ae24863d", "0xbb988e36e03df434", "0xe6ec564393de8a5d", "0x5251cfdb4204dac8", "0xc2b229951bc04ddf", "0xedf9097f0cdcc5a0", "0xfa6b362ec272b3d8", "0xe2f440f4f5b93e52", "0x30200d5da34da42d", "0x866fcebdc503db6e", "0x379833d685a9a6c", "0x21ff0142cd901ad3", "0x58bb7a02c64d3b7a", "0x28ad45c210cb4431", "0x117926c02e21ea09", "0x60ea813ec5c1b97a", "0x24a653ceb0e47813", "0x7dbc828b13f50128", "0x8c50ef61d96358b4", "0xe3c557fb5103a102", "0xd7282397d4828419", "0xe01037fba7f3b2d2", "0xd6cc4c317cc70827", "0x98faf3711d1bb715", "0xc23f456cacde037", "0x6aef74a7c3821b8b", "0x921b4d2fa5c479f5", "0x85f68ce7fdb5cafe", "0x90eb1f98cb77be0c", "0xab6dbc986dcf9ddc", "0xc953b62fab081863", "0xeb48368086caab7a", "0xd118e1b1b95feda0", "0xc437511c4f40dfba", "0xe2388677ed219a8c", "0xa891603c06ebb594", "0x9e6da3e284a65ae3", "0x87faa598792f9451", "0xadf5a39cfd8df98d", "0xa93eb210c1b6aefc", "0xa5c35ce0ac73efc", "0x1e5f7ef2fb9a051e", "0xff729de97fb39bf2", "0xdb0b8b151f3dab5c", "0x794c91ce47534d3", "0xa1cd07f10532dd9c", "0x317be6ea639da6c0", "0xbda4a166b0372a3c", "0x8d3a1d93ab35889a", "0x7d4f01fe6c4b329c", "0x11e4dc69db6a0245", "0x8a06aad5d24e386b", "0x7f35adadb2258017", "0x625e188879e56616", "0x1c813c0bdf66c9d2", "0x4636630308484994", "0x346720daa0360f7b", "0xf348155696f6392f", "0xc07d480228edda41", "0x6cde03e6551aedae", "0x3964fd0dff3363cb", "0xad007485064b0226", "0xb10a6ef75098cba8", "0x774f22eda5c2e461", "0xb86e8997ffd6876d", "0x5af3c1c4e65152af", "0xc5f5bb5c55db9545", "0x35007698f2589b4", "0xa3b6612fc09975d5", "0x856b42c04aa4db1a", "0x5325208c612418eb", "0xd231bd08d480d432", "0x349ab0cc5c2e75", "0x9d13b8cf230cc7ca", "0xea98dd6c6d32e85a", "0xaa04a464d419330a", "0x8bd477bbee202ed9", "0x937a0ca50bcfd06a", "0x7837a4751f8eef59", "0x261bf6298c1d2f6a", "0xf55abad875b20de3", "0x6f2c1aa264eac635", "0xb90865b3469656f3", "0xd8129b6d2e0a6564", "0x3ea87660f8da2811", "0x577ba6f407909374", "0x5571a878400f5969", "0x96045fd66e4e1aa9", "0xe74ed03155c0661f", "0x5875b973628f87", "0x23b9051e037b2df6", "0xf7db0e2bebb4a369", "0x2c94ff812ad1c713", "0x425b672874d76edf", "0xe950a09be579eec", "0x413b7a664443f47d", "0x1311d4c9809af22b", "0x7668e52069a51f37", "0x6f87db391b9f311b", "0xb7a85980b9096cba", "0x4057bcab6c86b820", "0xe62809d2d1eb9e25", "0x5314d8f167fbd54e", "0xc217cceac6677958", "0x50380199eaf78d48", "0x279a46211b635ae9", "0xa840bc5af34f57e5", "0xf793311937d7843c", "0xaee2a273b72a507d", "0xc5399ed1a35b2373", "0x16495035c36df57b", "0x13d104c78e8169b8", "0x78a420a4b9e66187", "0x8530728836213179", "0x38f40923734a3325", "0x4cacd486b5b2034e", "0x19fa9e57c020e1ed", "0x4fce5c6205d20238", "0x498cf379f955f6d8", "0xe983c73ea342f402", "0xd51e8ccc1f97e35f", "0x88de5c92a82daf06", "0x5b80f0e56e2a1c18", "0x9312d623830eebf0", "0x69b0b08b185b4216", "0xcb7bb3128d10d839", "0x48f5f78c951893b4", "0xcc9c511c51000fd5", "0x5d325940ea15c14b", "0x28c91a737afa0051", "0x5eb2a42964ba62e1", "0x11f4c555b0742ae4", "0x8d2a7a64d88c9c8c", "0x9b1a1a79a9d54b57", "0x3d263ad589ee6d46", "0xde3e0e5c420f0f5", "0x8f7d9de41a732f14", "0xf126c09a49b3d0bf", "0x5b14e099630efc72", "0x543f8fb091890da", "0x3fdc258b1f8ee069", "0xf28aa6eb2fd4f50", "0x476e5443e1ad9878", "0x12ecccd268760a86", "0xe6523b4b89a45665", "0xaab48daa448fbcea", "0xf74007e01f494f89", "0x3009b80cdc9849c6", "0x62e81a199770ddfc", "0x3fbefde6ef323e22", "0xd776bccb812a268d", "0x1bb8ff623e7ca598", "0x1590253d43bf1201", "0x4422e8d44f480134", "0x47bb5be5434fe984", "0x4ad9d0e896f3f0a5", "0x7f81d5366eddb39d", "0xa937f272bcd34777", "0x522a19adf7ba2121", "0xf8d7a8a58428e937", "0xfb41e35b84a11ff", "0x479c0e43eeeac324", "0x6767f5aaab8901f4", "0x5a800348b5e3850d", "0xf370e6523dc924b4", "0xc7ac3ae9ca5954d7", "0x14fd9b79bd637dae", "0xd8d2e3ba91e910e6", "0xe63a46b2de075cc8", "0x4b80e7901024a3e4", "0xe276c7b01f744e99", "0xec7e6e6137cdccf6", "0x748bc5270d74ba3a", "0x7cfa6cd26059f45c", "0xa11a92c110a6bf3d", "0xeac209ef7531d3a", "0x2f5dc029a4cf010d", "0x3bc2bc9e9958239c", "0x2a5a521f9d0c2321", "0x30ad754b9fbfa812", "0x329f66ecff083b6a", "0xd9fdd75aca91a3cd", "0xf2181d9895339632", "0x38b2332f86af1d56", "0xb3682bf86a35d1df", "0xc087e60dcdf8ec88", "0x70713fabb8891c20", "0x4fd15586343fcb1f", "0x8247c0ed594128ae", "0xb8758f239916f2c4", "0xcf3ef9e81855357d", "0x40acc53ee174554d", "0x14b3a64c33d3b6d2", "0x8a0bb7d9afab11e6", "0x88d9b04454000ccc", "0x79aa70d0a50c7bc0", "0x2242fb0f5f198259", "0xa797c0f4d963a589", "0x3475d9ac518a9870", "0xb3ee0d1b71afb99b", "0xd80ad682a1a7d366", "0x76826a8050492e99", "0xb33031dcbf67a152", "0xd49125a74a3adc81", "0x63149130e2ca295f", "0x8a5887af8ab556c1", "0x277fb787ba84b54d", "0x35644ec2e6205c50", "0x4c049bec5834b45c", "0x66431003a40ab502", "0xcc6e81677d7677a9", "0xdd3b205773055b87", "0x4b9b936b622bc823", "0x89595f9014d85f6", "0x393d4348dc8761ee", "0xefa714e6de844b23", "0xccd7806d12fd6093", "0x3f28ed49ec099060", "0xa69b07225b57b817", "0xf0fa62bb21a1fee5", "0xcca8943b7d22f85f", "0x3adf62e0dd3f6907", "0xc9045e90f284d970", "0xbd3bcc7e2e70c11e", "0xaefb1477d39d9d51", "0x85a3954aad08bd3a", "0x9f334db8bddc0fd3", "0xffb9ece8fea7abe5", "0xe80c10e26db481c1", "0x148c7b083b7b0554", "0xe0136f5ad0c05dd0", "0x611770a70d0fb9f9", "0x4fe7c953a7898de9", "0xd2e1ed2a0996eb1f", "0xa93bccfd94e0e522", "0x98e925d3cc307406", "0x491b45f8b11a57a4", "0x6b69afa8497ce7de", "0xc842ae6b04198458", "0x65252bfa0fc73bc5", "0x14e4f5ec8fa76ef", "0x170f770537c094ba", "0xb6cbf0c27b576006", "0x9eaef165486c0dc0", "0x5661158bf63f7af8", "0x4a72d49e7ec6142", "0xb324ca1d7a6e9081", "0xfd889340211566be", "0x8c846a67bd9f865e", "0x860ce5ed21d13873", "0xdf0134f0b8b30a82", "0xcd26a77246a7d954", "0x78692b8ad8721f31", "0x64175441a8a43708", "0x8a8036a32b4cb6b4", "0xee9574da28d329b9", "0xd507ad7c77b00d81", "0x2354ba6d21374a36", "0x4cc651e9a59c4845", "0xa5e7960e2b2aab28", "0x38e081e833a59bfb", "0x316aa75429b1c647", "0xdc7d5c4e8a29ce4d", "0x40c92e1d24a796d9", "0x3fb9251b0a0122d8", "0xdca17f3a1b990742", "0x7562f570a6ea8756", "0xfb32ac98ef935a9d", "0x4b2d6d02eeecce17", "0x269262a2ee3e39fd", "0xb4402c69747cda3c", "0x5789bce13939fb3c", "0x184e3de7557084c7", "0x7bd96a65369555cb", "0xf7392ff9ec877e94", "0x9abc1f29b7780da5", "0xe8136fd9c77094fd", "0xb2425dc65a9fdaff", "0x98272cd2a2fdd66a", "0x9030bfc7157089d1", "0xc0ead65ba01bf86a", "0x7de1eae3c1231f97", "0x30bc742eb385fdfd", "0x331e114991c9ed19", "0x309d1bafe6a8b120", "0x52a3a16ab6d68e4", "0xd8cff00fc448b10b", "0x6cff1b5be7e6d6bc", "0x2eaa020de8b5c90d", "0x267766125afa5da9", "0x2eb96c350adf84be", "0xa18c7d7ee20f90e", "0x685096a9840d4a96", "0xaf9aa055f109eca5", "0x95882c4f52dab6cc", "0x89329a05a317ff1b", "0x6d072a45a3a8f432", "0xbbda835d5a6b0c1c", "0x7388bccafd9478c6", "0x5975a7c292a83b51", "0x95499a3a8b73f7a6", "0x2eb5a3b574308479", "0xaf3efebaeb623ae8", "0xdadddd8f89558447", "0x70abddb38e48409", "0xbbd54e09530eada5", "0x15fd71b12b01e6a3", "0x1e94f42308fa083b", "0xfd01679e89e7422a", "0xaad53e3f4a67fb2e", "0x7ccbb93ed1d78416", "0xc19f0ad7fe772963", "0x95cec870d9a29dd3", "0x9dd63c61366ec195", "0x93753f14317efe6e", "0x34888c5b5398ce88", "0x51edabd38540dd08", "0x98b2548c58e4af69", "0x53768aae3094c660", "0xabde89d088018b57", "0x7b4ab4c790024b42", "0xf8929a8b28c77a60", "0x81c30079dd9b868c", "0xf43f35764addc06b", "0xa5b2627c4e8d7ac3", "0xfc97d1641c97ed77", "0x70193c22c4bef728", "0xbbf66d92f26e5e7f", "0x4f4c966ca6686f0c", "0xfad3b006910730e5", "0x711cb6319c798b40", "0x64d4d32a43ef8d8a", "0x896f827985085bb9", "0xcea93e6fb3d12395", "0x36f115c49578e908", "0x8fae1b8e25b6fa62", "0x4bd7f6e8e8a687f6", "0x4ebdb0c94c1d3015", "0xe7562391fd530055", "0x1795b8a34e508eae", "0xea4528c9b0685778", "0x6cdae2eec3f608d3", "0x62308ff03a722e99", "0xcf7104df9e196ce7", "0x9ca4164b17cac995", "0xf2394b5ac7d78ad9", "0x3864e725db1b7f9c", "0x2cd3b947b42eebfd", "0xccc6c577a7332789", "0x951e3a15f6a7b95d", "0x2d0fa05dd9422c5b", "0x40d744fd9f03da5d", "0xdd14c211b02e9505", "0xaaaf13a9d1fd4713", "0x2b1d50440123e4d8", "0x58b6aa27831c4d8d", "0x514ed254b5b5cadd", "0xea3dc3f3fae47825", "0x13b9b824d3f71713", "0x2f9a91f0f17a3292", "0x2ee5933e19153d29", "0x1b5cd2607a4014ef", "0x4f6f62632edbbe1a", "0xf12967bed9a1349b", "0x105b0c33c30fddb", "0x731dd2fd50de76ef", "0x396fe89d5e508a07", "0x3fced110bf591169", "0x43f0c3699fd8d869", "0xda6d1dd451e3829d", "0xfee0d8cb7980b957", "0xb9c4ca876c9f04fe", "0x8dac174ce5db10a7", "0x91b2c3869b7736bd", "0xe930e025627c3d33", "0xaee97845fe855ddf", "0xb6df351edcd189ac", "0x3f4f3eedca1e76e", "0x8ba57062e87d9fd1", "0xafc49772eb499fd", "0x7b6ba7d46008e74b", "0xdc62e0defcd76a37", "0x5390c177aa8d4b6f", "0xd60ecb66e926cb96", "0x76404b7841d68bc", "0x21590c04f4e25bff", "0x589b04761d2f9bdc", "0x62224d3f936238cd", "0xb097ace15b9739b1", "0x5759d469ffd2029a", "0xb6dfa0b0797040a8", "0xb2dd4bf5de53aae6", "0x92a787111b76285f", "0xc5ae9749394c1d7b", "0x21eeb8214520e3fc", "0x244aeb1293f19e80", "0xb3add58b3c97e1ff", "0x2ea4609e338b921e", "0x5eb1f46330c9d5cc", "0xb966141b4833c835", "0xc6e7f8e17db692e1", "0xfbd1908cfafd026", "0x2c57c7f8fc59c3e3", "0x5bba4c26ec116958", "0xdc3eadf68dd64825", "0x58054449fed63bf3", "0xd4e91b283be84d92", "0xc28a11508e9438d7", "0x25bb06bd6d286151", "0xce67c8f071effad2", "0xe580004d24da0554", "0x6e3eacf6c25b8d1c", "0x5d10c44defe02ba5", "0xadb5be003e52d0fc", "0xef23edb471f44cca", "0xe6a5d85a71de287f", "0x4d4513754f0c0567", "0xe3b451d339ae3af4", "0x6dcef909b0a6efdb", "0x3bf6396ad822731", "0x7b79671bf2505a9f", "0x38be5e0654353c10", "0x3c45b5674db4746", "0xbdf7f3e1a5d420d5", "0x1b66ba59e34f9a49", "0xb9b061471516b5f0", "0xaee770ed20495a4a", "0x663a03f8723e0243", "0x2dd1c3268f4305fa", "0xc88ff322cb83aa84", "0xf28db4f577333425", "0xbaf332e73a8722a3", "0x355101bbf429976e", "0x90dc7511cfb70fd8", "0x1e99445dc058f83f", "0xf5c13459f4c9a2e5", "0x173f5f0e614cd534", "0xf77ff581abc1fba3", "0xde77dfa226eaba82", "0xdfcdd72ee58a83e0", "0x7104d9e514caae1f", "0x6ca7c14d03da5e31", "0x127134fbcc235af9", "0xf91c1f3fae657a33", "0x1d4cd43a642f3757", "0x6dd23070e2014e41", "0x1a8a013093f71adc", "0x2d592f77f54506d2", "0xf9e65fef90f7dcb3", "0x3e5539c941ac7e7e", "0x2530c2ae5029cc54", "0xaa0081d8630d4f8e", "0xd75ef2403d730752", "0x6b431eb9e0c4bf56", "0x20eacfcc5942e197", "0x35c4ee28d6773606", "0xd588afd9c75b0bf0", "0x577fccd17944f1c9", "0xd1f3969f08cbf3cc", "0x6e520c5290a13e6", "0xe65b07b7c17f5086", "0x92d38f8144d2ae62", "0x904fbdf335a88944", "0x4fa46cdb20cadc29", "0x7f2442c0712af61", "0xb09c6b7bf7470002", "0x263537d0040082db", "0x27400155005ab6eb", "0xc6604013b944771d", "0x7f75ae294cf01fab", "0x354a0c524270f72e", "0x9b42cd759fb6e4ce", "0x658a0bb8e1045bfb", "0x1247d967d08e7274", "0x52a858634b74fe75", "0x110c1d1f9dcf1549", "0xcc358e6d01d53518", "0x41dbbaab5840d82d", "0x6afbd01c23ae0271", "0x643dbaa7b83bdff4", "0xd8a363a7c0d2eaa6", "0x25db3a835ffa0118", "0xc5ee075d56f7ff0", "0xcd3d292f42125b36", "0x94efdfcd6ffc0c7a", "0x29796846df6ac8a5", "0xe3f20ae061403263", "0xc21a2e56a19f610d", "0xb5dd7cce81bb883a", "0x379cbe839e0249c9", "0xac39b40e0609bfd", "0x3dad844cd548d6a6", "0xa21cf25219ac6fea", "0x79e205334ef1c3a4", "0x1d4e619c2da41353", "0xf5f2c793cb0e891d", "0x693c68a0c0f4c85c", "0x4ecf17067fd2afe7", "0x1b2f8a60e8dab161", "0xeee93287f1756bd9", "0xb6aa564c13836007", "0x6d3c4be5d66d6edb", "0x615d179fd2379515", "0xe69e0fc7daefe0c4", "0xfdde480565d0abf6", "0x3bb615a2b3ca6767", "0xa8eb816a3401d206", "0x971f9ea6285c7ac0", "0xa5ba61ca84f05b5b", "0xd4715ae2a05e857e", "0xa47267a9740360c4", "0x95354df23ea8a706", "0x6428276ec6942b75", "0xf6259cb35c863582", "0x92ecb48e3da71133", "0x7a56e9a762858648", "0xaf9bf446b433e4ff", "0x6368b7471fa6e96", "0x76886bbc589e99dc", "0xa44198add9d93aab", "0x53c913ed99159911", "0xe63b4b8e81d00c1", "0xa5b9692e72075e35", "0x7f6dddf04a305b3e", "0xb7bb39956fa7289b", "0x30023cb81c678a1", "0x7197e3bf02aa6601", "0x803ab0fe94d86e20", "0x192283bfa66c24f7", "0x4975dca34369299", "0x26fcd717d2b06713", "0x49bd127ff361288f", "0xb108649ff68cb160", "0x2bf99fa253c834da", "0xeac7f3f23c002a05", "0x618e01654393ff64", "0x93b540f1742917a2", "0x9d565b8c416d3529", "0x36885cea62ca5fcb", "0xf31d6837253d53d7", "0x135c1dcadd6feb4", "0x96b1bf5c9f2b54bd", "0x9618b4edeeb8fd30", "0xaca61caf35f99695", "0x3c5b93cd8835abe8", "0x52a6614dae14b6fe", "0x95c0f98af5c6dc1b", "0x6d61a4c5d4fa4475", "0xb007a99ed9b071f1", "0x4d7f0bfd27776315", "0x66b7e31651bff217", "0x18c5f3f246a81fa0", "0xecce012ada73a12a", "0xf6f898c294bffe9e", "0xfbb02df27758081d", "0xeacbd099c5da3992", "0xb1e21713a24c83c1", "0x18aea6c375151589", "0xfd532a4db2f5d22f", "0x338554584aa12f30", "0x1a1c27b32fed7570", "0x1349dffbf8b6986", "0xfe53c470c5b9a8b", "0xa843edc2c967f051", "0x28b37f31f7b86938", "0xa4ab46b9a0d230fa", "0xfbb1369b197cdbc6", "0xd9026acbd005296e", "0xac99f0335943bce6", "0xf7ba2c24f1983aa7", "0x7c0ee0e74e1135fc", "0x9a13c4c0fa393e96", "0x9d6510ecf74fceb9", "0x9564eca5b011e562", "0x6074c1a6721476ba", "0xe12295bc7204e704", "0xdeae272668b267b8", "0xc9ce57f4e378f324", "0x8cf5786838535acd", "0x695ce61f210e187", "0x735921195d4603f0", "0x23604953e224bd57", "0xd2c62d3dcaf20286", "0x6e56a7a547d59513", "0x324525e69fc37a5", "0xf1c0a71891f52dd2", "0x8f684b530aae67e", "0x796ad615337dc39c", "0x9c769918bf997395", "0x3bed446ae43ae014", "0x9d469c9b3b0b9faa", "0xc9aeca793972c827", "0xfbde05abfc4a3c06", "0xda60709a3bae01a", "0xd2233622d1c0215e", "0xa54ba9662adcf563", "0x9bddbf658dfe42af", "0xc653b0e036690145", "0x46accaa1ebfd645f", "0x941b1c0bbd3f6980", "0xe19286064ad3185a", "0xb45693d1bd876a1e", "0xbbe2af2430aa37b1", "0xd8cad5704354d25a", "0xea2065f4758394b6", "0x40e9d54380405502", "0xf7f7cac345d1448e", "0xdd8f9168a880e2e4", "0xf96e8f69eaca4629", "0xeb55bbefcce1b459", "0x34148a2f5765468", "0x1380c654ed4f93ee", "0x77d0e15e462a9b26", "0x3024bd507fd17bea", "0x9fc0a89407472e1f", "0x7b60d47482c4da29", "0xdb39d2a92b57125f", "0x64d4e791271edc88", "0xf4d8a4d3b1fdc39f", "0x323ffd45f580f874", "0xefbefd3f164e70fc", "0x497516f414afdb67", "0x535d16212a1521ee", "0xc568b8d8637fabff", "0xfffebf65b61dae20", "0xa9277a8003f4a86c", "0xce04c82d7f5b26f4", "0x447275c26d0df61b", "0xd1cf51ba8de610c8", "0x78cc80b8be56531d", "0xd915d7b2e0af605c", "0x5f207902e878bf5c", "0xa6e1a5ce80445b2f", "0xe1d8c6f5183dfbb4", "0xe248150a9b756139", "0xf1adb14100ebf5d2", "0xe5067dd1d04a15c5", "0x717444934a799e05", "0x312d4660ce8a539c", "0x6117d9ca31ea4082", "0x446a9f6cc55330dd", "0x4a4da5e40a62728b", "0x3c5241cefc046a7", "0xedb087d8f3d179f9", "0xa28d3d55d36d0739", "0xb98db0738ac90cb4", "0xa774263f8f262eeb", "0xf0b63428ca04693", "0x2a4094391587ab37", "0x409fa55e5d606b11", "0x44ef74d4772115d6", "0x7095258552acb296", "0xaddb0e5eabb7a8d4", "0x10438d2f7565cf92", "0x2d7dc80c053f324c", "0xc69d01ed5a6a7edb", "0x2bf775262db1aa9c", "0x507fa2468e327ef", "0xa93c43dabbd8827e", "0xdc87e6889cd03f72", "0x39ca03bf33efd1da", "0x37868a61d622556c", "0xdf551c1c805915de", "0x66fa84e3b5b84ee0", "0x74bb5102644619b0", "0xb5f0793a1cfb48bd", "0xcbe8e042dfd85647", "0xe390a2dc668fae29", "0x62d3deead347806b", "0x5def8c6fd72d16e9", "0x434601f02d5457cf", "0x8278dade1cbecc3c", "0xd47222465493c18c", "0x7836a8c43f60978c", "0xb372d56aa8a36ffe", "0xede9b2a455305e5c", "0xde5b13986d323142", "0x62c278bca536544c", "0x2bc81ade2b0ca7df", "0xa9e3d621f43e6fc5", "0xe4a1527bbcd3482f", "0x66fee7871bdc1419", "0x772f1fd0402c4843", "0x73852784d85ae41a", "0xfaaa3dfed73b0d19", "0x58fb417a605c000f", "0x43b5b5f4a3f19598", "0xc7ac7f299d0e710a", "0x1684a91e72b1681e", "0x95769bb83431fe44", "0x5a85b54009664422", "0xadea071d70dc9b1e", "0x412a38adb377b7f1", "0xe50b52f918ad8dae", "0x8827a718d5e689ec", "0x247d8ed3f5bf58c2", "0xac42b2b64c53d252", "0x3b546fa8fcc6e264", "0x6ba0050da235c35e", "0x799b2a7c297a638", "0x66cbd290d19262f6", "0x6fe94fe731d3000a", "0x7102e9efe05043ca", "0xba73904042bc35e8", "0x57a05cc1de923626", "0xb28656d445a96481", "0x3f5daf099dbd8dec", "0x7131ada670890617", "0x584b503316bbd961", "0xd5ca56038ee8e0bd", "0xa428abe0b06ae970", "0x1bac01550f4329a5", "0x753468e7960ef1f7", "0x45d78906ac82af8f", "0x585df0d287b5885b", "0x4369d6e2f924bea8", "0x47b5579246b116f", "0xc9b1a23e732ea0b2", "0xa937eb716f9317a4", "0xef56da04c255755d", "0x941158106784c0b4", "0xe5e6de081f8d4b91", "0xd3d19122fe61a808", "0x894d14b65c63ea6f", "0xb3aa24efd5930689", "0x219257f0d4db2307", "0xc69450c614567f5f", "0xb4ddd17d8b9f2ab0", "0xcef2d4505395fd3f", "0x6e9546eabd27b80e", "0x11fa0753eba9cfe8", "0x357e0b4171be0544", "0x1fa8e92f9deeab31", "0xd936e79df7b18af9", "0x150dac73fdcfae37", "0x3b36ce76e5d54c51", "0x3f2b9466861a47d4", "0xaced6c2264aad92b", "0x3d3383c105e1a09a", "0x51d4d7a1a10fd15b", "0x66ac2313408381d9", "0xb4a5da757e199501", "0x49fae7b8dcf28447", "0xb64bf3fb0d83a242", "0x1ce3965fa280d07f", "0x60153b828670c764", "0xed302f84f9268512", "0xd3531933263c1a7a", "0x2a8350713e7a63bc", "0x8a232b6c5066fd1", "0xc2b4fb261d207b6f", "0x361883ea2702be54", "0x9b103cd7523d031e", "0x91c79495b0f55d32", "0xbcf7fcf4910beadf", "0xc5a0168ab5cec5b8", "0x7d057c63cd5b534b", "0xfdabfe2ae9954625", "0xbdb46c0832bb3028", "0xff1cd35eb347cf92", "0xc7b445c9a376744", "0x9a3e3143f063abd2", "0x6878bfb37f01ba94", "0x3afcf5122a3401e8", "0x4a5a25c8f75b427f", "0x77d496892aea6d9a", "0x5f2b8ca7de77bc0c", "0x3a3c5951ce58068b", "0x624f963e2fbd54f8", "0xe2164d80a93b7277", "0x3b46fb6853d8f3a1", "0x7b8f453f6e07642f", "0x441505975dc035e", "0xeb70c3093941baf3", "0xd82e2bf4632bbca6", "0xa77b0f1510987063", "0xc8b65b3a38abc8b3", "0x7a00b6253912b623", "0xd1302ed3ea808453", "0x7f06ad0f261df575", "0x8fadb048ba1c1ee9", "0x4698da4f6fc5c65d", "0x1597c29c3ab6e44e", "0x5ceeda16d3d6c9d6", "0x3df9d5f8a65a05c2", "0xdad23f82447f36c5", "0xd6472f2c52fd919d", "0x50dd64333ce928ee", "0x8ac606aa1714720e", "0xcb75d12674ff6ca3", "0x1c48e91957fe38f4", "0x8d081d5367b4f472", "0xd1aea01b2b883f9", "0xd07f52592b71367a", "0x9173fef6e67e7b3c", "0x417d0a22b00a7be2", "0x96685abd3569b278", "0x72b3feddb2997c98", "0x89280f4207aca2c6", "0x6a7f75459a7fd82", "0xd47a29088dab0a6e", "0x2db827e1543570d5", "0xaf1a98bc7e917515", "0xd5ce21752353a775", "0x9976a06120408428", "0xc772130690a0b5ff", "0x20232c6bdfaeadca", "0x498ace985ce428d1", "0xd089ae4131050d03", "0xc62dd15a6a3ef780", "0xf067f52932fa23ae", "0xccbd2c3de1081990", "0xaff9d8f0052c253d", "0x924ac4c03457b6ad", "0xb8ed0a4a71fb1160", "0x3dfc530fec47e103", "0x3fdaacaf331da887", "0x873143d7d4002bac", "0x25b3765b3b67b2b3", "0x43bd5b34f8359628", "0x27162a3d72f3a0bf", "0xb56b9667ba127c3b", "0xe10fd17c2d90f82e", "0x731574a188ce8717", "0x91eb7bae2919d221", "0x24b93a54952c979b", "0x477553ef418e77df", "0xe2314d677c156e3", "0xa3766b6a2c9ac0c8", "0xdc0739ed2f664c61", "0xc487e348a0f84130", "0x23598ae71edc1b97", "0x439ec6e91d1aec42", "0x5d5b5bdb9112fd87", "0xaf65d203720e5f61", "0xeface48edd535e54", "0xd955ca2388a3953d", "0x99e52646294deb89", "0x4033b36bc9e7398e", "0x38082c71902ee52e", "0x91954af767ea7db2", "0xd0debe801f4b60d9", "0x55c2ac42843cd011", "0xb0fa4aed13ad60c8", "0x7f9b3f597dbd7091", "0x4e5f4a5da9b9ac1e", "0xbc9a1d202e14ff90", "0x30bfb44a6fa8ba90", "0x87cd86a665664ee1", "0xd87d71c527607954", "0x1defeceb21ca3632", "0x2b414bca53ec071f", "0x954389ed4a9d2c42", "0xdccbaa74f98d7482", "0x2c59df54ce3d85e0", "0xefe8bef6e29d06f8", "0xa679cb1b4cc32b58", "0x9c41acd5b19e0e17", "0x7cf2a708d463a86b", "0xeadfc23999b4d826", "0xfa234c674dd8acb5", "0x24f1fac64f6b9d4f", "0x19f3dc952e8543f", "0x3f2aab585d7ac4e2", "0x44c9e2434b0aa7ee", "0x784908ad2963a747", "0x6ce36eff1244d7b4", "0x253b5ebfb8a019e9", "0xfe488589832aecd0", "0x6578d1d9901738cb", "0x3b71d40e77bc8626", "0x48b9a467d2c65bea", "0x125261f42127cb7f", "0x2012491f0e6e135b", "0x8006d41c771f75df", "0x6223c0842706a498", "0x93023a4977ebd626", "0xf843ec13695b3d29", "0x8047e778df453465", "0x9fe98940e0baac4c", "0xfb45730bd7962ee8", "0x61ba33288f356e1", "0xa48a6e5e7979c333", "0x724f47643009dbcc", "0x45a98ff25f756cd9", "0xb2f5521f0f93af3f", "0x1aaf5578010dc253", "0x6362351be802c3a8", "0x95108e6bc995c5d3", "0x3e1a3a168dc53fc", "0xfdd546fd82a8db4e", "0xc1283e02e5757c47", "0xbf7c58b6671a811a", "0x86d9cebdd8357848", "0x94c834ac51dd4914", "0x67ca69a0d537fc11", "0xaa79abf219fadaaa", "0xdc02603d69e421ce", "0xad9e789a67f1b728", "0xc42aedc192174746", "0x9e02f1dc574441d8", "0xa28d9b22762b130e", "0x1fdf160d60ae3ea9", "0x3051d2d4de31fa2a", "0x6b9bf50415b942a", "0x463d95e5f54495fd", "0x375e7fde4cfcd940", "0x51094fd74c0ef586", "0xd5052ab84e0a7c8", "0x8e5074acb5f665df", "0x6993538a27ec244c", "0x3668b30e53d5776b", "0x3852790e436640db", "0x8227582e5ae7936a", "0x3ed44e749fbeecd6", "0x69e8a9348f68ac83", "0x8feb04fb34aefba4", "0x4e90e15b8f6da3d7", "0x73bee8ef12a661a6", "0x964fd58aae0c232e", "0x404e46c675f9c708", "0xd9eb8f3ad87a3f52", "0x15d87129ec42d138", "0xa76fc9cc7e4c04ad", "0x83748d0333f0c656", "0xb4430368fd0390e1", "0x5d16d337b1d132b7", "0xcbd48d26d5b50b3a", "0x7df141be826127b1", "0x5bc89f1a08be78d2", "0xf4716dcdb7e8f158", "0x15d991b4d97b4f0", "0xffa0c28bf04f3553", "0x6f0a784b5a2e8190", "0x38330141c3f99996", "0xb8858da04473f58f", "0x1b3b0b966e85226", "0x32f2d1f23b4c3a4b", "0xe0ca3575d56a72cb", "0x86bb53874bdfcb7", "0xb3fb61369cdef3db", "0xa5a6400085059f57", "0x87690c396858fac5", "0xe65333be65429808", "0x36fb6b5cd5158488", "0x8a68fc7eb7f11467", "0x317d49544104d987", "0x421ab8ed152f8d3", "0x7d8320fe3e6020d4", "0xaba0c70cac3eac66", "0x3a4183c11af082f0", "0xa8930ebf06ccfec6", "0x261a116fd7546791", "0xc40ffe0b36d46ddc", "0x1e620b2d4e20e220", "0x6ba56913dcb8d873", "0x15ceb5f2a4798efd", "0x156116078f7d558", "0xbd03cac1f454904", "0x765ec092ae434254", "0xa4dede2ba17650e9", "0xefeaba25a211b8ba", "0x74e1b8395cee1995", "0x1fff114288b39b71", "0x29d1709c894a4e22", "0xefc59910c893ad66", "0x35964714d40ff8a7", "0xaa6c2ad12c30f9e8", "0xa18eaeb05891bc71", "0x4e8c9c28d8e0aabf", "0x8aea3fbb1ca2d17a", "0xd98ea5fac72d9de", "0xba23136b709fd6ec", "0x2473da0d6815f63e", "0x159fc0f967b374a", "0x963d6c67b1a41957", "0x32dd7b76a6058239", "0xd286841695e4334b", "0xe88b70cd05a8fcf7", "0x713f8196e16a010e", "0x3e8e9a264d950f34", "0xd785e8ae4b683f08", "0x7d42535b9a87a20b", "0xfd51da2aa7365755", "0x8d60e4d181e1c2b", "0x60f5ddbe22b3a7f6", "0x5ef2521b4c28495f", "0x2634479bbedeb657", "0xda45a8cf8f61d57f", "0x7373144ec3967b0e", "0xfedf6e864b7f25df", "0x6ffbf43ad0f2d92e", "0xc7e6c4333d537356", "0x348760c2e4e50ef5", "0x2cb13293f1da0ceb", "0x530de4bc9697aaa3", "0x4024760915042254", "0x7af0ec858a3081c5", "0xa60edd77da0f7026", "0xec7dca2b953c0139", "0x5a99091495dbf343", "0x7a390c1a8be6bcce", "0x6db6d239989bfa8f", "0xdd7e24e2b90b67e7", "0x9401e112d745c0e8", "0xf4fffd0782360361", "0x29c12e901db42610", "0xd8a850017c2f5cd9", "0x948ff5db11edfe7f", "0x6323c601b8181790", "0xcd99d2a3d329e0f", "0xfd55d317bec546", "0x63411fabb1689704", "0xf3c7b5176f61b73b", "0xe4f83e04fda3bd1b", "0x16b2537a95a940d4", "0xe2fb2ff662af37e6", "0xd65a0d87084e17fe", "0xc28b30d5b4419887", "0x64eff54024a78a15", "0x8c73402427735826", "0x4054b5311b8a2115", "0x9107798a0c683657", "0x1ccf2edb6f115d68", "0xd9b37332dfd1dc8f", "0x24e1ad71110f67da", "0x7bfb0b50db10304e", "0xf22b39911e1d2ead", "0xac774c5e68c1738b", "0x826e63afe370e9bf", "0xeef1f91f4bb97006", "0x65f2ceb053b8739d", "0xbf18794722cd4bb3", "0x34012bda8fcd5b9e", "0x4320e9f1292c38ca", "0x79127618714ec2bf", "0x7b3618d2863cca8", "0x5343e6d1d4133018", "0xf7bff3747960af8e", "0x8d36e78835d433e2", "0x1c69d51c12dcedf6", "0xf1f69ca66ad2b5c4", "0x6d8e0797e43a8198", "0xf09925c83cd3ece9", "0x1cf5c2c6abbc9890", "0x538acb98761d9818", "0x477a9ce0c18c3fd7", "0x2003b6227f8308c7", "0x920226e26d70e899", "0x403458f9b27cf34f", "0x6832e22edddf15c", "0xfba6e033309a6d02", "0x9e228ea9694ff04a", "0x1b8e42a77231babc", "0xa4b98523e946a858", "0x8ae8d592ee09bd2b", "0x4db0ad82875b28f2", "0xfdedf2b1b8ec553f", "0xdc348822b6c6422", "0x76f5008c74bc4dc9", "0x1a3897ebe7b20725", "0x60dac7459503abde", "0x6d2e47080260ad3d", "0xf063004c013bcf8c", "0x751ff6baea4f3a25", "0xc51766b37d8c4838", "0x1262576b406314e7", "0xdeb46b46500f9a56", "0xf0e6b791e2717620", "0x4ea8f7955c0233b4", "0x6c39788924f85673", "0xca0cb8190b075ba", "0x66b2c696b1372e75", "0x9675716a1b202bc5", "0x502f9034a6cf218", "0xc3fbdd062f99c185", "0x3cc4cf0ecaef10e1", "0xd0399d39221cc5be", "0xa0aef21a02805b6e", "0xf9cd36c45b791a43", "0x461b929cf7c5ecaa", "0x1be969cd77534688", "0x1f556e1602f0de4d", "0x5282527b089b1f35", "0x920e29928aa36440", "0xef2cf0617dd04b2", "0xdde77ab7b93dd336", "0x5a0a23364eacab75", "0x19e941a11a20fd76", "0x7f540193f5533d65", "0xf6c849c603afca0a", "0xeed2a2da5e48d92b", "0xee19523dd7bfa45b", "0xe17e1cddc8fe08a0", "0x4c6940ec086990ae", "0xa3e155102b15fb1f", "0x7dab7a3b9168ba83", "0xd54fbdaefeec90b0", "0xfed0179b9c0620d0", "0x7beabe0ca57ba3", "0x913b3248fa576ffa", "0x9fbc1ff29ecdc592", "0x82b0ea25b28125b3", "0x295da018bd0cf954", "0x337105883df9d56", "0x85618d81e5114ea4", "0xd1ecf3dd8557af70", "0x34bbe1006a7d6c26", "0xe7e561d5a15381ee", "0x1273b1ea191b5ac3", "0x73145bc6a91f728e", "0x8c51144338f43e53", "0x8c94babd33629d2", "0xebeec30f2bcc68c5", "0xcc3cfe3d15c9428c", "0x83f5a191cd9cbb92", "0x30b9e1e6a40ef00", "0x6e3100e05292c42", "0x50b9609281431729", "0x97a908f031245444", "0x3cc8fc2d122b235d", "0x80e4c38fe85468ef", "0x599f8cc3c83c7eec", "0x7ebd3fd31521d6b3", "0xd32cb0de157b4f12", "0x55698cb09b66ad00", "0xd50df3551aa37794", "0x145de6be23556193", "0x862cac48c1eb51a2", "0x303631c80fc2189b", "0x510b26463d8fcfc1", "0xc7045d866c07a47b", "0x5feb6e39804fdc0e", "0x8277165e6e562a46", "0x8675e365ef2becd8", "0x5cce8fca434132f", "0x3ee6fbe01f7242e4", "0xfc0e864f7fd7f828", "0xf6c196fe62713685", "0xc3918c498a011e25", "0x293e1b6dd93f9d2f", "0x807d258bd4aee506", "0x32790ed9949d9136", "0xec6e8683e86b472b", "0x8290281da56215cf", "0xd0af5ee62da4830a", "0x21899eae4b2e0e42", "0x5c0365b978ced693", "0x9bf7b7bf91d7f201", "0xa6c4d5221097b7ca", "0x25fdcd10a3cebe92", "0xfb1a8155f119a034", "0x5c65ef960aea211b", "0x3184612210e39c6c", "0x70e8494a6afc915b", "0x724f450ec2bb9602", "0xea97893c9141e018", "0xca36421b9895fd3b", "0x46f36b3ab76800a", "0xdd02bbf97e7709a7", "0xb36933bab2cc0e94", "0x65e150a0d2a6e2b1", "0x69cd128577aff360", "0x474d62e18b2f5dea", "0xabdcc2ca62008d65", "0x866a33504412c16b", "0x6f3f6af75668c386", "0xc0ba0c5116865660", "0xd44fe6cf12c92b89", "0x3918553111c56654", "0xbc096b984ffdf064", "0xbd18127073e6fa80", "0xc84bad5e35dd4192", "0xcad4f0a694c2c9eb", "0x6e231060f1d27093", "0x89d7b1f7f80e1f42", "0x8c4f010a508892eb", "0x264fc35070190bb5", "0x5596be523cf9d516", "0x764500f4468faec4", "0xdcaf4ff457558942", "0x469e3eaff5584124", "0x1b00a1f56f8e0a51", "0x19a8473760a2a71c", "0xe44733cc8cde6dc3", "0xc7b1aacecbab996c", "0x7ac47e62d2fe04ca", "0x430362add9453a22", "0x922f28652b70f728", "0xaf5351533b5e2288", "0xd09632553328aabc", "0xc27a770879115076", "0xa03f7a621b45a199", "0x62537f6e994ae931", "0xc39a56c3d0b8392", "0x498099fc34e9f4da", "0x4c1cfd82db610a01", "0xccd6d28534b396dc", "0xe98949822eabf545", "0xb1c2a4ca28ac1cef", "0x37a373db59bb157c", "0x70d8aedc397f400", "0x8d895670eabc8ab1", "0x43a62a47976be252", "0x3391ad8595f1aad8", "0x3537b571b44a2f24", "0x78eb0a1314282258", "0xd8964ff3b3764e65", "0x433853627b6cecc3", "0xb32d1d5531274462", "0x9486560fa81229ad", "0xbc9d20912288ae59", "0xc19e5d309a1d2c5b", "0xabec9abab72d0197", "0x6b8ee6ec41c49b88", "0xd5d2fca2552a5a65", "0x1b3be458ba14869a", "0x27130373257ec5e1", "0x5c65e64e331689b4", "0x61d8c28e79bc7a37", "0x1c0e9561cbddc583", "0x7c8554e2a934ed9f", "0x35e4544ed12b2e82", "0xcc3f0bed3395308c", "0xc5542bdacd64ef8f", "0xb889d33541f24b67", "0x5ea8ff02284cfb4b", "0x8ba9783459e06e98", "0x7ea274a777557edd", "0xa75f4e48c98a774c", "0xe67c7da43cc59abb", "0xe51125f6422ceac1", "0x2755c670a93780c7", "0x86fd210c87b869af", "0x2abc09d9273e9206", "0xcc1dc39f8bfc2060", "0x60dbafbceec9213c", "0xef3f68a99321d960", "0xdc9fab50cdb30163", "0xcd34d5359d840ae", "0xb0b111c6fa547799", "0x867d66c5c500421", "0x1a4d49692d707fd0", "0x9a7f035a26493a70", "0xbf06ccfb522f953b", "0xcb997539d15c4476", "0xecd2664e81e87095", "0x4fc89deded7ec648", "0xd513bffb792d58f8", "0xaf47b6c5a41586d3", "0x9f7c1ad697474f47", "0xaedde0dfdd163002", "0x41bb9c63a351e61b", "0xd190af880caa8896", "0xf146e9388f60d20f", "0xa06e808dd16ccfe9", "0xb15c7fc7154a3bb1", "0xaa1345e5c517d0e1", "0xf32fd62eae02618e", "0xeb2ac01c0063bef6", "0x11b2dc1b87288f4d", "0x94893c94d2593ff3", "0x9a4803b2d02168b8", "0x1d39265890053699", "0x485b1d35858c469e", "0xe1f67c4d5f157c97", "0x60e1834b76ee0b66", "0xa8467d3a7f82e95c", "0x326292ce190bafa", "0x21d96e9cd75fafd3", "0xc6c29fb27e75a9c8", "0xaba1435a4dab1589", "0x709b69093c3c1bd0", "0x3097b3d0fb352183", "0xdcd5a0b9ef394ba1", "0xe124171caa9fac42", "0x87b8fb1e9b2f12a2", "0xe13d64b59882f38e", "0x110dad73065ec210", "0x71d3ba1b26f35ac0", "0xddd4b8c077ac5759", "0xe7f56850d61db4f2", "0xa27d7925db7526c8", "0x63d374081d2a4e04", "0xf1d980b20b9edb56", "0x8480b151393b8942", "0x8a91f124be5768dd", "0x9b5c868c3a3048a6", "0x430b0e524aabd9ea", "0x923bc5ef12cdea4a", "0xfe63cd324dd95e7d", "0xb2ac500e20ba9e1", "0x39407ba8dcf33dd5", "0xabb3291e543ad4cb", "0x83ace6a21bd506aa", "0x8efd35d4c3918170", "0xcfc9b00b48b091bb", "0xc46092c4d3ee542a", "0xe9760bb256803be1", "0xf3f123ba069caa03", "0xaee8ad6cc282853", "0x75129db3a8cf9cac", "0x6dc123062a631a9", "0x735e88df9f65fb69", "0xabbd97946692513b", "0xe81b12ecefb96ba2", "0x94b8a88cfad0dfbf", "0x1b2c53a2df96a3a6", "0x1a8f1c455c512f9c", "0x1656e8d2d98791fe", "0x66f02189b92b5adb", "0x3145edfdd51b72bf", "0x7ef61d54d0308566", "0xeb6f670a1f7e8beb", "0xbbf4f62b5765affd", "0x74fbbae26a4abc1", "0xe21485cd5d89b540", "0xb80da00be8ed4ee4", "0x723695a501ce59eb", "0xec103282cd8b8abc", "0x6aa018a224960cb0", "0x64865e844ffa6247", "0x9da482379e4df23f", "0xe5fc6384386beaab", "0x29213c13cd1a91a", "0x4069c5eeae5dc28e", "0x57dc56c10fca0bad", "0x5e9c52dbc84a5e9a", "0x4f815742055b4384", "0x72363fd3bc1e4b56", "0x4d077f6e4458e0d6", "0x4ab3682c3e6d7a9c", "0x4912c89ffded82be", "0xc6e6525a16553554", "0x9aab84caa3343578", "0x88cbe276de932297", "0x824d6fc6fe12f972", "0x83944cf4b1d1b214", "0xc84ae7f25b8e165c", "0xc80685b4e999618c", "0x9574247eaffe82dc", "0xcb74a4381deca33", "0x8b42bc9b33629e0f", "0xfe2d546a189e63ff", "0x688da91208545a43", "0x58bfec2b3408026a", "0x507e169b17effb04", "0xc041db2f5d48a59c", "0x4afaed11caf9775c", "0x3ec75361305d7673", "0x3d204752ff786b52", "0x9f3f58b295916bf2", "0x6d570c80c628c52e", "0xd0875a7a05533b9c", "0x53454fba41f3b542", "0xf86991a3f4f4b503", "0xb55240b8a19f28ed", "0xda3a17bb1c3ef0ce", "0xafee163f343c6f48", "0x6ff7f887aa47aa95", "0x9afef8ed00dfd4b3", "0x4e53bce83a9f7e13", "0x2a1824f30862c58d", "0x99eddde89ac0a5cc", "0xf9e363400d484088", "0x8d4b1db77d4989c7", "0x4acf9dbdd7991a4e", "0xb1033df9879bdc24", "0xe48ff94ac7927275", "0xfd8719e599ee013d", "0x95ce789f07e8b67a", "0xbcc0a3717e14b88e", "0x4bbdf0a15797ec21", "0x6457a465c576e5ef", "0x16235300a9f0540f", "0xdd027d76a00e747e", "0xba888db96f88e4c5", "0xc3751d7af9e4872b", "0xd947fd0266ef88f0", "0x19bc61e77302ae2f", "0xef60c8192731e816", "0xb14ea5e81b6c94ea", "0xed6ad4e2f0092849", "0x3ddd7a9da36dbf", "0xf6f9ff0af0e08f66", "0x9ab793f5c86ba989", "0xa7dd73f5f53c6b01", "0xedaff5bb7095e38e", "0x5ec120e70604826d", "0x766544a278431614", "0x5c63eef1c29fcfd1", "0x4b1f70310a1b9560", "0xe2a781adb01a39cb", "0xd87019f60dd7b004", "0xabdaef2a31aed075", "0xf25ba433be7c7b6a", "0xf4cbdfcf5a6d1701", "0xa3c7817e2fa4dbd8", "0xe2e56c4c1781ac94", "0x52ef84297f6e55a2", "0x4df57e5096a366fb", "0xcbba27ad8f6a91d", "0x3aa11251fda12b37", "0x1318e083d8d52d83", "0xecf9b1eed6d085c8", "0xc113ce70feb758b", "0x5eba876abc05b98e", "0x10e1aa854825035d", "0x75734c178d196bf9", "0x4514ae5664f8ceb0", "0x8eb5b766f6114b1a", "0xb31ca0ca69ec7f20", "0x225144b1c496ee70", "0x17ae53193acce989", "0xdcecd73ae236d847", "0x9ca4d9f14cbd230a", "0x8a4343fce26bfe60", "0x5991c1bf6567f47", "0x65a72d62f2785b84", "0xed1ab47882b0aa8", "0x3977a8b53760c4a1", "0x28d89d647019978c", "0x99cf8087631593e6", "0xb87c1c068a2d62b3", "0x1c132a1987b85751", "0x4eb03241746ee503", "0x6394c59efaa18df3", "0x31dfe068ceed336e", "0x5cec04038650958f", "0xccda86d23f7181c7", "0xe4b3e33d8024465", "0x68fae27faccebe10", "0x765f6e5fb7c48638", "0xd1bbf03798e087b", "0x488955440699bfd0", "0xf2699ceec8c8374", "0x286b438943d07fe9", "0xd3acc25b8603b7db", "0x3b0e588b8ca2930b", "0x4fe7167dcc15f56c", "0xa920dceb2743d127", "0x59e9b72a6c04193d", "0xbadf2e28595700d1", "0x4d2e094c1dd3b98", "0x5633a5e5d261404", "0x8037f65a4e4636a8", "0xfd6cd2077ba72bd4", "0xa8dce448a6eb87f8", "0xb8903b4540c10f52", "0xc6952e806929f318", "0x92882317f5c3cf7a", "0xac475f1a64454a0b", "0xffcbef7dcb000961", "0xe0de4b56c4c3d424", "0xebb219fc3d4d7f3d", "0x7ae03cf5328f125a", "0x97a01dd4b81260de", "0xa34dccdeb367f251", "0x9df5912a1fc7fe85", "0x7ef58cec873dc60b", "0x8de0dcb6512fb864", "0x1301efd201dd0e23", "0xb501678882ac4847", "0x2f702f18bd965c4c", "0x4bb4892a409ea7c0", "0x32751a5f3a1857ab", "0xff213a95121c4bdd", "0x6946ea21634c3a6c", "0xb5e78263dedddd49", "0x329b08753e3daf11", "0xd9d2fb27ee94838e", "0xe2d4efb5304ec8fc", "0x92eab11bb2dc21c9", "0x1c927cf5827c7233", "0x3761d0e2515d8e65", "0x41873019846ecc2f", "0xc3a8b594430f7dc0", "0x3f8ba9bc86bfef99", "0x444411e4dcb66859", "0x12cf6c6205f2d14d", "0x5045d350eb03c560", "0xb38594232c1b5cde", "0xc402f6f0ed2d8ce9", "0x28e1b9fdc89e7d5a", "0x1c54758804ef3c0c", "0xc9616ccec7fbcde6", "0xba101469d26e6a76", "0x9adb40fe531b84d3", "0x59c2b093da552cbb", "0x6c737e92f1a0c5fe", "0x35326f23f69fabdf", "0x8bd2100767089722", "0x7dff8f27161a12cf", "0x96296c16022c9a41", "0x21f705284a85a557", "0x692ef6306357cb3", "0x86bc5da9969dc3cb", "0x5883d85a08546baa", "0xf6679d3c13658cb9", "0xd55229291a26ae31", "0x70d3bbe46d0f024", "0xad17f602391be6d0", "0xc6180f0ac9264b2c", "0x45162f2ed7b2608f", "0xd6dc1df0941b26f1", "0xc53da5a2b7c96ba8", "0xbb627a10a720275a", "0x26da02fced07d3cc", "0xcf5b9ee944faabf6", "0x276c362b191d8ad9", "0x506578d20c08eb61", "0x37e607603496f293", "0xccbfbbc58b4a151c", "0x9a1ab0e2d1e4dc0b", "0xdc7f61a7ba427857", "0xa024946663065d91", "0xb19c050dc85a1f84", "0x1a4ed60dff0f6f53", "0xb9cfccfa0c02e69", "0xb1d665e64391fb3b", "0x1b8924727dac9743", "0x704b01fd171920a5", "0x62466aded6df7a21", "0xc9eee8129255b318", "0x354ae2063eace440", "0xc7b14256b616fde3", "0xf1955d1b7c877716", "0xb382ba199a232310", "0x241c51bebf2d76d8", "0xad5e26376fb51ca1", "0x1c3a4aee2396138d", "0x6686e15b09fcaaf6", "0xecd0e4da93a18bc7", "0xa5387acac37d56f8", "0x71f4c49777db2fca", "0x3336bf17ca4f63df", "0x8c4aee77d1047542", "0xac3379e7c97dce98", "0xf1c14d189b36f225", "0x698dcac111fa9b0e", "0x2a03b8f6b1b70e97", "0x12dfd83b490d6bb", "0x673c083dafdc7aed", "0xd1844e5e472fbc97", "0x526c65491db46ccf", "0x2df469520ac8e262", "0xf0403c9eb885c350", "0xbd3426e72ab1a467", "0x948527bc59ac3503", "0x9ca069f2da75851f", "0xed20f60034678cf1", "0x20b52d80de947009", "0xd84ec477f898287d", "0xbeb182f4d5c56e3a", "0x3f256c6965f6f49b", "0x2909eeb080428d0", "0x8f2bb84b6e28c8ca", "0xa173614169b7ba22", "0x3f4ef2e368a31d71", "0x9ef7d5cde4d3688b", "0x70f406cdeb86091a", "0x6b3dd628f4c7add1", "0x1588cd776014f197", "0xb7318c7e1eb505ba", "0x8ceb6c83a7a9b534", "0x9cc0ea756320cfe", "0x7c23b0316836be6e", "0xf65feb065178cc4", "0x87dca4eea3d07958", "0x825f9c98a7c28f7b", "0x41551dc8f1f5c40e", "0x5586e01c2ab99e33", "0xddc321af2499bf1d", "0xb58879d0b1e716cd", "0x1721a802c1fe9f1", "0x79e8966970ef6465", "0x9946ba55106d7788", "0x30c5d0d4ecfa4823", "0xa7f3c5373377e816", "0x7f3ec67fe3294eed", "0x8db7e83e7e5c41ac", "0xa834a91f60f3e735", "0x8a1d4af8cf31889e", "0x6eed950b96088744", "0x34eec3aca1a2efe5", "0x9dc306569b984ad7", "0x3f7cfb48d23b3cb7", "0x13d6d842cf79b037", "0x7d8f5ea883a53627", "0x3bce47ade1ef1ea2", "0xa17cb4baf3a7edce", "0x4b321ee546f742f6", "0xf2b89441a29e8d1c", "0x92556ee4d4898883", "0x14988fc9d5982a3a", "0xa769b15f85682fce", "0x6b8045909bf6dd76", "0x5d3b66ea21c1a002", "0xcf1835c65c655a0e", "0xadf683c42e29bed2", "0xdebbdf5e6439b0fc", "0xc8921d181a129ddb", "0xb832d6adbb7d1275", "0x67783ff8918ab827", "0x6baf41ae827b966", "0x32d58d37828dae78", "0x4db4ee67c07ae372", "0xc9120d76478a456b", "0x1468289c451ddadd", "0xb62d9882840dd345", "0x7a9e707a35d1859c", "0x643d1c83ed4a219d", "0xc859838d95692979", "0x69352797fb86bacc", "0xc9cbf1626c9438b4", "0x1f03f0b123eb532d", "0xcbba6b001650e03e", "0x4cd64559b32889c3", "0xaed45a9039cdf7f9", "0x96881aaff9e0a27d", "0x4a636e6db3b603bb", "0xb42623c4ba14844f", "0xfc17021b95e23324", "0x304727a2f5ac4119", "0xc5d87b6d0e44734f", "0xcc9fd5a23bab4eed", "0x50676f9741537fd7", "0xe198b8b1c458277c", "0x4c7293a935994d1b", "0xd0287253b66493a5", "0xc7fee8553290e64f", "0x2d35dfda928cc86d", "0x35e29100c661e0d", "0x91c4d564efa5d985", "0x8bdd170f93ccbd7e", "0xeebd2961c5f2bd6b", "0x57cb7f79cfd1765d", "0x2bd9a77b398e2f45", "0x14b7d17e0970b462", "0x92eeff02b64ea317", "0x8bc73a32fba441b0", "0x69de4053a4082d25", "0x77157293668778c5", "0x7403019e45ab5e57", "0xee94731a55ed5ebd", "0xc29d3102eab5a415", "0xaf3d4ebac40a6282", "0x68b8ce599f071661", "0x71c2e0c9a1f9ec52", "0x6408a94c289d5fb", "0x9e8d4fb4e9b52140", "0x4d99cef370a14a", "0x1d4bcc9bcf3c502c", "0x1b765f590828ca53", "0x7c90a68942fb4c09", "0x8358f50f80054860", "0xd7e76b5700a4ddae", "0x40dc3d28d3cfa534", "0x9fd967af3b184623", "0x3b9f4715aec36dd4", "0x61e69cd042f81976", "0x98dfa5480b99a27", "0x51720de77a347c23", "0xc1e2dc60991635ce", "0xb3aabb385914bc93", "0xb9174f2a9bf5219", "0x7f2d98be48cc4db7", "0x4d1ffb0b73037d65", "0xbfce8511f2c49fba", "0xda77127a0f8f8eec", "0x3eef25f783255c8c", "0x18cabc3847530ffc", "0xc4a91c024efca82a", "0x1447885513efdbb7", "0x601e5009908fe32a", "0x4e1051639982c7d7", "0xed95f09c4621433d", "0x695ff89530967f6c", "0x285aeafc8e5dc5e0", "0xb0ab39c1977af4ee", "0xccd00107b3796bc7", "0x3a733695db907e5", "0x54f964cdc340f3a0", "0x5eec4e970239471b", "0xd40332e123acd27", "0x4e4c58a6eac88ca9", "0xc6ec99da38d6598b", "0xe1cfaae4898710b0", "0xca1b0b60a34a0785", "0xe761d587c09033c3", "0x2f6d44226ee4f9ca", "0x12aeede41b1757ea", "0xb1159affc3065e00", "0xb09423d84cb6979b", "0xfe360eaa4cdb8def", "0x2830732dc07194b6", "0x71d77d59e9decdc2", "0x4ffee4b904f76815", "0xc8a9d69735791006", "0x8dc36d357ceffac8", "0x4532424af0cd3b26", "0x78ba497cadee109d", "0x834e36faf7da10e5", "0xec7599b9ce166a4a", "0xbec966825520535a", "0x183d7e0ed4837ebd", "0xa8b6b90035508c17", "0x9d86bef58f54d5bd", "0x6aa5fb776def0f45", "0x598de4dba7831180", "0x532c31ac2a793cef", "0x98bda0e2771d72fd", "0x3f00a52d0d502494", "0xdca3719d6b5392cc", "0xf2d7e11fe3ba6cdc", "0xd296e068fc242bfe", "0x8b5f4c82d1e918ec", "0x528406a26bed2181", "0x7e24a126508386ee", "0x1332ee26e09df1cf", "0xfd8fbca117ee1bf9", "0xc7c4431ad0559683", "0x69691b5d88e906df", "0x21626b62491fb76a", "0x26f54427f6b9fe52", "0xe6afd39469f4e71d", "0x87700152f20661ce", "0x62c688b72518e24b", "0xb734f2b0820a1f01", "0x2b7a64d3d0b4836", "0xa565b02f2a4336f1", "0xef35d7e4422e2743", "0x29799e9802f1685d", "0xa93fa6d711469f60", "0x56f37abe7058913f", "0x302514eff6f354be", "0x95809e3c62af5e29", "0x8c0f2789635333f7", "0x2a6df0f337a98746", "0x9c4300ec33fd40d9", "0x985086c11bdf1e82", "0xb9cedc6167e3027", "0xf4fb9754f69c9eb7", "0xd6e718cc8b980fcb", "0xec98f375b6722532", "0x50afa68caca6f886", "0xdd7e014696a213c0", "0x6ae2d3883022b483", "0x2bd3e22f2adf8639", "0x38e398eb56e4ac57", "0xe17079f2f6e62ae", "0xb23198d9f9a4ec2f", "0x84c340dcd3dfa573", "0xdc5cca342f3a183", "0xb9eae1564416fcee", "0x3f5236a8d1feab59", "0x2b7f63b74efa6cd4", "0xf220a81b4d982b9b", "0x18fb626dc5f24234", "0x57de03e0c8ebc253", "0xbbadf00179b4065", "0xedee9b46a2f7b105", "0xb22c50f04c1179e2", "0x406e33349e575ef4", "0xac317a61bebd7242", "0xe332fb96989ddea8", "0xb646bfed917115b3", "0x6132a60964fd62fb", "0x65e298677ac208a9", "0xb5d06154fcc81fd6", "0x232cb60adc9f9993", "0xcc5b74e17e40246f", "0x376ce0ab5f3fa7a6", "0x1667e41f1f824f3b", "0x97c9c0aa5b9ca785", "0x6143ac2b2dbbe762", "0xde0c3f39a0fb1c48", "0x24e8f65f109919dc", "0xdc76406e935303f9", "0xc985cf090bdc25e5", "0x3fc65c7df77063e6", "0x2a6fbdc421d72864", "0xada4f8a64ab0e0b9", "0x862c400c7a606fc2", "0x3ca907549aeca6b0", "0xdbb64252f8b45408", "0xcff34b74561d9f77", "0x47cce4f55beb39d2", "0x61f077ab011f3f0c", "0xac9f8531f5114cd2", "0x3135997692f09980", "0xc3bcbc7dbe8db4b3", "0x2b67afb3ed5bca62", "0x16d10a77fc0e688f", "0x791dfc310603955c", "0x1d32693dc3bc1f0e", "0x7ad999cac498426d", "0x8aef86136fb8db65", "0xc7d898fcca1af3cf", "0xb85b7bdc61b01a6e", "0x27c017ba1a7f9706", "0xd18a478e7269e3ed", "0x4ad5145fb856f94f", "0xa67d87e1f33dfe8f", "0x25b21045a27160e5", "0x592bfabf9d072f41", "0xd7c3c395406d89b", "0xfb765c74cb58e350", "0x43d38f8b089081c7", "0x66b656f9ebf8b897", "0x61aa1df15c2216b9", "0xb73e5427cc12631", "0xcc863ba345b53e6d", "0x1dc95bec4d18e046", "0xa978d5f398b6c6d9", "0x128ca23fa5ff864b", "0x9f4837a6595b1238", "0xab1ba78979204f5c", "0xbebd568a703be868", "0x5b98b9ad46b48093", "0x9f25de2ae1151599", "0x9ea9c3bbfd10f4ac", "0xf364cd341661682b", "0xae39372f06ae14c6", "0xd2b729733e847f5b", "0x8e6d43c02edad4fb", "0xbe7f0a5ad9d8a587", "0xdf5800c17c536d30", "0x45fa521d488f8f02", "0x1c8fcd91dda6e9a0", "0x16398d339021ba60", "0xb3a68ae709e287d6", "0x9ce04cc7ecfa98ed", "0x211fd826e0bcd371", "0x7b052275e7b617c4", "0xc0d5ce3e0ac097ef", "0x2702c8d5904b810d", "0x5f19e46b20c97118", "0xe67d3d106ed855bf", "0x47711b9d320143c9", "0x63b287f88d36166d", "0x3dc23c751bfc665a", "0xd9bf9211a6a5622d", "0xbdf23443773081e", "0x22502a24d39449a2", "0xb8efb38f6f79c472", "0xdba902f68907c67d", "0x7492ec5897c81e5c", "0x6a6f2681c867d883", "0x8944210cd4a196ca", "0xac19904159b93388", "0xc6e9fc9ba21fbd07", "0xa69ee2a3f67a2002", "0x67ed03dfaf5bc2a", "0x526db2befd21f151", "0xc3440aacfb1eb14e", "0xa954d1869eab06db", "0xa010b3a91dbef36f", "0x8038873bd9f2900", "0xeae0e86e16c7afc", "0xed984011707bd92f", "0xbee5a62bfe35027", "0xc0f919a7d61c1f6a", "0x150e3be85b0fd26f", "0xcc78efff6d2baf36", "0x163e109718060488", "0x75983a37baab29a1", "0xdaeeb2c78f311121", "0x59cc987e17ab9eb7", "0x9a988e1029f053e5", "0xc13b814406b801af", "0x6ac10a3181555549", "0x3f560aa2d8e22b1f", "0xcf56697044f988da", "0x3c2a420ee791ef64", "0x4c636294b07d2f81", "0x83f17dc652069ad5", "0xe4fa52c05377f808", "0x967cefef3d53e7b2", "0x45138ee10938644e", "0xeba45ba082c0ca45", "0xf52db45bdc5a9376", "0x8d2a6834b7332c06", "0xf767a887b7a1bae9", "0x48054988efacc10", "0x8e3b5ac1524448c1", "0x5a6facac0867ae43", "0xf92f911f5cc24b4a", "0x1f258b231f857815", "0xd49dbd3e505cd2cf", "0x3bedc1164c4978fe", "0x6591b0ca42fecbcf", "0xb62bb205dc7415fa", "0x15b75ece182a9053", "0xd74af5ed6b50441e", "0x2fca8b2c73973fa6", "0xdbbf11f884c4a84f", "0x5413e383b10973ea", "0x686d6aa720f53383", "0x2c8df5a45917eaef", "0x5fc80cb6cf109a47", "0xd8a71e6a2fbd660c", "0xb498fcb3bb2a023e", "0x4b54a7ebcdb61df8", "0x330db44760f099cd", "0x48f66f2d6177535c", "0xff616ed4ba40c8bb", "0x2595ab804e6ae567", "0xbc947589a11b4e9c", "0x218c159c671151d4", "0x9de11ec09248f0a5", "0xe9945b75ad7ac094", "0x6fa217b2cae3a4e4", "0x3e289f60b49ec5b0", "0xf4df3626d774867f", "0xc0bd3b5a67a4b182", "0x105bdc99b786417e", "0x125047714b032a26", "0x2672307ad7f07b1a", "0xeb61dcc999053126", "0x6775fa3408ec0c19", "0xdb4a4120ef4cad0d", "0xa46241a0c097e197", "0x1799c553f5c8c516", "0x98111d466be4e25e", "0xccb25253fa11067", "0xf5f5cc069000bd39", "0xd549dfd64c5b7d4e", "0xa23d3ec85762b1a0", "0x7bc48aa25cb018fe", "0xe7d677478f3ee033", "0xd12f40849deae694", "0xd085f95d2328c2a6", "0x5e209af06e59890c", "0x47820dbdc43091d2", "0x72462d372de76d38", "0x57ab98d7289681c5", "0x3ca3bd6cf7235890", "0xe729a5269f788722", "0xb4a0e401cdb43924", "0x91e40a293cd8d771", "0xd73aae1e313e9b9d", "0xf88e0c04723c437b", "0xc969269dabd4d495", "0x8011fee6eff6aa08", "0xe64006eb9f920fd7", "0x60c64fb5d1c258e9", "0x2e9b18501e34e54", "0x92c4d542c3a670cf", "0xfa7523b91829d73e", "0xa94e52914330b465", "0x565ddbeed25eb8f6", "0xc6af868ba5faaf1d", "0x843659348fea4cec", "0x6cf42847ecb5975", "0xcd656e23818e3aa4", "0x5e65396bf90ebfd0", "0xc841b9ddd8cb7edb", "0xea0fd509999f773b", "0xe9350122ca98c72d", "0x3ca4b7ca06a1d825", "0x286f3419a578ab5f", "0x90f84fb3b4f5f5b0", "0x77b3e34bf5129078", "0x3d53d388a63c4713", "0x65788bc05b023d03", "0x4966b3062157917f", "0xb793d983473854e1", "0x4dd973e77f5db81a", "0xd5100cf9a1eb9623", "0xebd5a19096bb1c4e", "0x5b8349bbdb417fee", "0x90e5c8f024e73b93", "0x7ac0f03de57e7751", "0x31881fdd5db90a03", "0x4c72bf7eec4ba6fe", "0x457f0ddada3ade8", "0x24a812647ff2d804", "0x8bb6a060e90ec1b7", "0x755ee5c8f0a82bc4", "0x1b3d6f14895d7221", "0xc0acc0852c65d7c", "0x7608a851d83930e9", "0x46d27e1503c981f6", "0x151e44426ba62aa3", "0x35c8c6e8a5c86c8d", "0x721b06f110f19311", "0xbfc59c424a0b726", "0x317cc55907b97307", "0x7f27760c5819fa6f", "0x7e82176372b396d", "0x68566cd8c8ff6705", "0x6efe09a4b2408854", "0x94c7ae6fe51fa25d", "0x96ac9b555b807ccc", "0x2e13eecb08db6e97", "0xfa5c28a75cb3da", "0xe46f3c6c49dbe005", "0xa34ef15a19032f81", "0xd598caf928c14220", "0x62589225e3dd8119", "0x9de479b514f040b6", "0xd94817e609405f4c", "0x8dbe8b2738f2165c", "0xc3b0d8a546233c2c", "0x800b679d02fb55f9", "0xb9d684076c6ff9ae", "0xfa740d9511bcebba", "0x16bc365aeeda7dca", "0x58965b36e8c0a1bf", "0x70420f96584cc0af", "0x5fe31b3d78dc78fa", "0xabc69b21d6a25e83", "0x646db97c595ef846", "0xc064b0d08d716e24", "0xe70fc98fa9602dd9", "0x18c25c14976c206b", "0xe3d9c17e8da8a601", "0x7218ff526db7a868", "0xee6d0dd6ce7b9e4a", "0xecf96481e6ae02d8", "0x7abb578d18257a34", "0x750f41c4f0c9fcb8", "0x8d2d3051b1ce0846", "0xbbbbc4cae9278281", "0x70a760046b6abb7", "0x18b818fc08f19bdf", "0xff07987616bb409f", "0xa2352801818717df", "0x362e6dee7267038c", "0x9cb85020766ff57e", "0xb50abc44a1e224a2", "0x1dbe85f3b10bb044", "0x3be555a43e5b6069", "0x80335029b017c42f", "0xdf7128457f2453c3", "0xf38f4ddbf9dccd14", "0x812dd8023cb4dfe8", "0x8e0fce28698a0d7d", "0x503323965cd3cc1f", "0x65fd897d5a472f2a", "0x41e071371a617080", "0x3f2e7090bba3d03e", "0x110142095f0d0afa", "0xc9b44f41280a7e49", "0x4a20b19ae05933d", "0xcd34d46a8d8c2655", "0x998afb085cdee0ee", "0xb19f9e8527eb16fc", "0xed4823f9ee88e68d", "0x990b395c467c8c4c", "0xe1595214813487fb", "0xa1edc340960e521", "0x6a6b5702fe1dc429", "0x8492615d5e2b353c", "0xf105461a95a50161", "0x40de97c950dbf75", "0x6efae23fd04bdb7c", "0x653dda9538d066b1", "0x40fd2f85067fed04", "0x48ca3649509d715c", "0xbd5d382a6b4b2d75", "0x8a7ee584521404a0", "0xf1562802305878c7", "0x44db14536d85e0f7", "0x9c3ac716b8ba340a", "0x8789e3fde26eb41b", "0xfa851ac070b9b3f0", "0xfdb5e6de8bc806a8", "0xa5d395a6c907b5ea", "0x5d67513f69e5bf90", "0x5a4289b60dd19f8b", "0xfd2995268b731f2a", "0x353227e2f9727070", "0x896ae92393ebc99b", "0xd4a9f3ac061b679c", "0x8769fc3cb09a91a0", "0xa0b2de28594ca6d2", "0x6b2abc181328c95b", "0x51f92ba0be8a580c", "0x7d013cbfcdb86e90", "0x1592c21053c02a4", "0x58c36e9d8263ba6f", "0xfd9fd15fa086a293", "0x3049782d6805fe3d", "0x20ec12a6b2949af8", "0xbb320305ca9ce993", "0x371f10df16466d82", "0xadeef60e70845ad8", "0x61845fda175272bb", "0xc6546b145b37dcd7", "0xb80b3d230f0fef61", "0xaa273105e89e796", "0x4d5e4e8d7f764222", "0x46c6a62ee567526c", "0x753774258b815e7f", "0xf7bbcbe306ac644c", "0x386948d90a3f5d1a", "0xaef085dd0e31e106", "0x50a8647ef8adcfb0", "0x1d333b3e43dbf596", "0xfd636176cff01a2c", "0x183847ef0de2a85", "0xeeadcbdf062f6258", "0xbe81045b26583c4", "0xe56d3cb75584b858", "0xa85b35ef7481bb17", "0xdee2d69cb3a48b20", "0x77275c051b78bc6d", "0x2867a6c4b8f71ec0", "0x9e9b4cb27c093de6", "0xcf41d4a8c3c172b", "0xce71500a43650480", "0x61c92683e24f7fc6", "0xb52a776e31305549", "0xeb38b5a1db741a7d", "0x40b47101f1b062ca", "0x511ac90d473ac118", "0xecd99c540ab33620", "0x8b96a0ddd04f032b", "0x4908c368b56035f8", "0xc57306086aefb912", "0xc93485d2b29efefe", "0xa880b88f007b188c", "0x77871d419d3df0d9", "0x70bdcb4455eef756", "0x727810d29604de75", "0xd5a178d0617acdfb", "0xd9f6d5b13cbc67ad", "0x90b5b325c8f9865e", "0x80badeb4f0ade3f6", "0xbf94b0a0d8d96c1d", "0x1acb5bce98bd96f2", "0x181c03d64a675e81", "0x643dd77fa76a9b6d", "0xee6d721106ae6329", "0xe40416df2d7ea7e4", "0xc17e59fa2337623a", "0xd093b604e19e435", "0x5541215366c35f67", "0xdc0f20a7b33bb9bd", "0x14ba97bbf200bbaa", "0xf706c676b78b8600", "0xfd564488e3aaa3bb", "0xb1cfb2c92f1e73a9", "0xb6e5a50b17431629", "0x2207ee9a320f29fd", "0xac5706c264b3f7be", "0xf4ecc80a978e4560", "0xb4f728e1869797a1", "0x9bd717fc08fcd8cc", "0xcf806d01d36fd2e", "0x277560123b5174ef", "0x37a737241dfdf582", "0x2ae1a0f0b28f6d8a", "0x260866d753b59ffc", "0x84601e410ce59d32", "0xb727c5ea3988a648", "0xee69dcd22d5e5266", "0x86f6839a608e1901", "0x985207d3b269d41d", "0x8178edfcd5a7e99", "0xb5c88c046fc0088e", "0x8c2f1106a7f4f24d", "0xcece03839ab6e6cc", "0xbafc64b4f09877cc", "0xacf95035723bf56c", "0x2992cd01844a42b3", "0x921c96deeb6e70b", "0xf3f5035fbc3ac74b", "0xd60b46734cdbfdda", "0x40c9787d54a11a28", "0xffd1c9872ef3a47d", "0x8441c665b8617a9c", "0x6493c0dce1a925cc", "0xb338e03907ec34c0", "0x7a547324137dd9be", "0xfc4d4a937aa6fa5f", "0xc885d26dedb11112", "0xe05f3c36900590b3", "0x78ec90301f1e81d9", "0x135d37ae412ab88d", "0x280f455dd17d60ce", "0xb0eaa16a55a8c132", "0x464fde6aca605eb2", "0x2288c69da48f41c2", "0x1ff3ff0f24c26c3d", "0xdec481efca3083db", "0x921ade92b98e5b1f", "0xfbecf9d7915f159e", "0x416fb227bbce9d81", "0xfc362d47ba63cf59", "0x2b242538ca1a9478", "0x61d11509573cade8", "0xb355bb9143618eb7", "0xd13b03250f500604", "0xbfd82a1d18621d4a", "0x9ebd5924cbdf0727", "0xe90667f921f1d40b", "0x55cea72313339004", "0x387a668e13224b10", "0xdd499cc22d6a79e7", "0x9336719bae221ca0", "0x9c5a3af191fe1cb9", "0x8bb64ce8a00c1e4b", "0x9a192ccf1b3e3f4d", "0x6f793206b1af4a37", "0x23779b11ea9e9c0e", "0x4e834e5cc8b4544f", "0xd2ca0deb01ab57f1", "0x3cb37ab169e7e49b", "0x9e8dccda973e3f5c", "0x1b3ff3d4460a02ff", "0xe059d08c2ff26e42", "0xfaf446578031d602", "0x3c6307c7f3bdf66f", "0xf6aaffb7014f41a4", "0xb0aa0e7e30887ddf", "0x3ceebf8623dc0df2", "0x1921529bf3aae3e7", "0xd758a36da5812325", "0xd33b08bf73dbc3c6", "0x312c39963a76906a", "0xab342b4cfb9f9dfb", "0x2f42951f0ff413dc", "0xeba8e4cccdc2f4c7", "0xac79376540c344d7", "0x32c83f42f51f2f6d", "0x12c0a8f1125e09b8", "0xefb9e91492c1d302", "0x94f5da5bb9b3800c", "0x846891274205e31b", "0x20f5df40225c0335", "0xff0c105d20247ed2", "0x300c4481d005e63", "0x23e43498127c25b3", "0x43dbd2c475f98e27", "0xe05e13f8fbe7c2d0", "0x4e98ec7ade7da057", "0x42b8063f62154a85", "0xfac7bd1e06b9836e", "0x5f0006748c520412", "0x2df4003fa52263e3", "0x5b8ec674597d061c", "0xedf26ef10aacf28a", "0x33acb14f41309131", "0x8f1f69d8051403dc", "0x6ca446f0df1125e0", "0x8cc109fd69735a45", "0xef36d8d9186dc4f0", "0xb8a095e81e1f0c11", "0xb613e968d74e1693", "0x5f21862bddeff634", "0x62dc80ed1dffde28", "0x9ec9b216b92a45a9", "0xc285f566c7e106fa", "0xf4a59eeca73a989e", "0x800002c428a4a1c0", "0xe5a9d568f0bf3f36", "0x1c1eed6339ef6646", "0x607075a09cd6b4fb", "0x816bdff300fa8f66", "0x53ed0cca5565cc9e", "0xf9abed77ffb6843d", "0x1608d8f46f890e3d", "0x4d40ab2b6b559642", "0x9f1874712165b445", "0xcc5269969dd06a7a", "0x3e87b38025e75b20", "0x7ec859a14e44743f", "0x53df5af5b049b209", "0x601cb51803f3831e", "0x5842d8d77683125c", "0x7ef6b36f61443db8", "0x83d962b1caa28e2b", "0x437d520ae0437a3", "0xec047c9db1d66537", "0x31103375e60c7d62", "0xcbc5a4fef1b4a201", "0xa992019048dca4b8", "0xe61a833016ab9e59", "0x334496e819221ace", "0x5811af2de078694c", "0x12391444dbae9786", "0x9d98dc99e25ac014", "0xc171d5bd2f5f4a2c", "0xdc0e80bce96edf29", "0x3b69287346a8b647", "0x4e4afb265551a23a", "0x623d70222c2ca74f", "0xe4e66ba91ab58be5", "0x9a538e8ec7cbb6c", "0xe896b6340fd54b83", "0xef6ba9d148a64e3b", "0x92d10cead0b8819e", "0x3f3955dc03eec77b", "0xaee9edfd9993c514", "0xc58ee432bff5cce0", "0x50dfb5d4d6671f4e", "0xa78f1eef57fefbe2", "0x7b4d39fda9399214", "0x3414467d2107bf55", "0xf82d2582b14617e6", "0xe8dfb72e7794b8ec", "0x46156cc25dbe8948", "0xaca2731a337ddde1", "0xfa2179f5ea5258de", "0x648ff4737ad4f222", "0x146e0f0915da0274", "0x1d9770f5df9d05fc", "0x8ef0b5082876e090", "0x3af5a5d8ce2ef8bf", "0x9078f05108fe02cf", "0xade2da2e9f87ec00", "0x107d2987db7fa31c", "0x56a73c193d5a050b", "0x3b521f4ddf22aebc", "0xbd26d64fe8be2455", "0x93ce0ea501b61518", "0xef0b3ca414e1ca6c", "0xf2f2801bd1861cd5", "0xe919a22648be289c", "0x15f34e15993988b1", "0xccd963fe4ac0754", "0xbd1e37b91ec0f524", "0x78c44acb05289c8f", "0x21449040e1d36b69", "0x81cb9e8d7f364385", "0xcdc8273040ab39ee", "0x181a0149718ae127", "0xdb9dfd5069c82420", "0x68719c9fbf7e3701", "0xdffc1ea278801a3a", "0x4cf0ad5441adb644", "0x629e92a22563cb4b", "0x4c8dbd7859b309c9", "0x13dc1661de70e222", "0x5d55d77df8de8a88", "0xf2ff3d6e27f3e904", "0xde0a824e4b92b99a", "0xb6ff417f5dbf2bf6", "0xe38f0a27515e0fef", "0xd1dd975ba6f4b3d1", "0x9275dedfca7c2082", "0x17177133c21ab1a", "0x18289d7db6b07ee8", "0xb4f0dd0130f5e6f", "0x30f4a222a4cc2312", "0xd5de74c7f5689b6e", "0x6c08b09388907de5", "0x62fc71fcfe9447eb", "0x2c93ef2eb2ee0ec6", "0xdfa410c4ddb31f5b", "0x3fb95f604c7d41a0", "0x7cfcf121cae5242c", "0xb98b3cefe9f96c4c", "0x422923b8206575b7", "0x7e42c0ca2439ca0c", "0x8da6cd996fe5b598", "0x304155ab65ef2211", "0xab2583c2b7913f16", "0x8476c90671fedd61", "0xe78e83e9100158ff", "0xdbc35ea335159034", "0xfd1286d99b68e2a8", "0x766823c50942fe19", "0x8f8739312cfa640f", "0xa0f3cb3f4ea48b37", "0xc26ff2596027ee8f", "0xa2493ece91ea88b7", "0x14dd40b82a4d0e14", "0xb451eea66aad5aeb", "0xedd9792d5794efba", "0x41bcc00217d12819", "0x18efdc9328a41f30", "0xc0ade1fe05d1a561", "0x71a1d9c5e434fe86", "0x13867e6a8cb6ab5e", "0x95b6f23a97df8ec0", "0x656d771c2dbe1611", "0x15acf5553706684f", "0xce132447bd7ccf8b", "0x198b45c1952bd6fc", "0x18138476c6486933", "0xdc0ef2a4eeec0228", "0xc6e7c7a0d40d9835", "0x63b31ded8519b25c", "0x162370dfafed7cc5", "0xe983554caf6d18dc", "0xf0343b597a0a8c5d", "0x21b7e734f1688b14", "0x5383695a54baa8d7", "0x3c84cd390cd6bdf2", "0xed6f1397434c72cd", "0xeaf97eb74c5c3d1c", "0xd7cd935af0e7420a", "0x8edf95db7b3d30aa", "0x717262c1f85c2ef1", "0xe7e655e54c575481", "0x2ce3388d65c3f269", "0xae3c983366b0348e", "0x1e4e526cf3b4999f", "0x701313d2023966f1", "0x416b4b50ad43b9a6", "0x825e81c174f76de3", "0xb8c7e23ba497b533", "0x5f6a3b786f2d2bb3", "0xcb4260be937bb97f", "0x12b816a127ce9c04", "0xd40bf10d2f37fb98", "0x9b0ac2822e6900fe", "0x67df4e076d8bfd32", "0xd31f878d37919d2f", "0xa979ae46a2112a08", "0x9220da2ef99b29e2", "0xef838906d6f65da2", "0x2f9f59d2771554e6", "0x7b92ae023d2a4799", "0x1fa2ca0c3f5530d0", "0x8f7bc1c13ea0b0", "0x4f1bda9fe3ff2153", "0xa505fe499d3c5938", "0x8371de0926c9772e", "0x2d4cd18222378a6d", "0x62d62fee7583221c", "0xd6d0f8cc7081f49c", "0xddf2a43ec5eca23f", "0x6bd91883b16edf5a", "0xd3c81f9c3718403f", "0xad48ef147d6a0db4", "0xa1a2960aa25033c", "0xdb41f69e2db79ba8", "0xdec42ef899170982", "0xca302c815945bd20", "0xf6f23bca48bd5700", "0xe24d1b55e161f20c", "0xa42ecd46a8847d29", "0xaae1c2ab354314cb", "0x15e7124e9c80b1b5", "0x3d177aec11a9d861", "0x1d99ace1f301f33b", "0xd650cb794b284d66", "0x9a18d83f24beb95c", "0xf2edbab30d8afeb5", "0xdfb79282a88122f8", "0xfdefb63332b711b3", "0xfa0ad1c2b2b207d7", "0xedf3221276589bf0", "0x300b8b728c69a39d", "0x54214f7cc233b4ca", "0xcd1d650afc151b00", "0xd7ad64740c00edfa", "0x414e40bc2fffbaf4", "0x4d4eee547abdd7d3", "0x295b8542341e836c", "0x650ad8a1906738e7", "0x61ec89b08cefc37b", "0x64ebe8a8c6480c7", "0xd7d4262e941400fd", "0xa0b86cac67e92171", "0xf85dd00d09b58297", "0xce2b4641a4bdca07", "0x1397cfc27cfd02ef", "0x47096f86ca9488e6", "0xe4d4358c17581b19", "0xda8f16da27caccd9", "0xd7dbc6623eb427a1", "0x808fd9c74d74524f", "0x1f3bda701a6262b6", "0x80a215f67bf3a67f", "0x8d317c7294be1c8e", "0xd4ef75e91ea0f24", "0x4fe19303da00068a", "0x58c813cb9ee3ad98", "0xe8f1e01cb95c6e80", "0x17b475867f057fbd", "0x4b86bb2250a58c5f", "0x9d02bc9cac320298", "0x1c345266faa6b8a0", "0xc85ab8075dc69144", "0xb2b1c994e59648f0", "0xf4cf4454bd726f9b", "0x208f067818fb1720", "0xff6d4a2c7f2ebda0", "0x1588209fa0d28c64", "0x2bd61f59d2b7f531", "0x66a404504c27ad0b", "0x5b64ead2215c69ee", "0x64bad81f75b6b50d", "0xe61e7187ef83ebc1", "0xc6ab6e1ca2fe8dbf", "0x8f47b0fc5b0730cf", "0x5209f206f653a2c2", "0x168ecea166437de2", "0x83d0f0865757529e", "0x36a74d15a84cbe84", "0xa15077829d19c299", "0x533f03866f03bb61", "0xa2b15f1ca15a0eed", "0x9ea4f4011f6d6563", "0x9f113b02d23be5f3", "0xaded316b25bed18c", "0xa7d46b1e466f4fd4", "0x2a4879961d39e8dc", "0xe81868f3eb800a71", "0x3c4599e47cc7a1ea", "0x7749f6d6393b1488", "0x9aa629ece963c333", "0xe542ddbd10648d45", "0x4c12bfda5ae79f24", "0x6c07c7fe742d7fc1", "0xc5893246a9efab7e", "0x9231ae12d027e780", "0xa24d86a7f79dfe2b", "0xc9882eb6a9a91416", "0xe65c6ddf6de11e27", "0x85df0840e9ce4c1", "0xa85283882ef34871", "0x22e663c70e5697c6", "0x12df81d436b71c25", "0x63fcf80ea1a3405f", "0x3c5fc9776f1fab4c", "0xfa1ce33f6368e19e", "0xc6a6b2a89ea1220", "0x8becc39eef4a03b", "0xd1a78bb5a58f9963", "0x44014363495bf68", "0xc596d7b30e4ec176", "0x85d2083b99e6a92e", "0xe8e86a6466556acd", "0xb32bf6aff795e9e3", "0x62b148aed16dce55", "0x53422ccabf199273", "0x10dd47d7ee9d495b", "0x467b176f0a766e24", "0x880ce79386782a48", "0x936c67de9d20c43c", "0x7d0d9a7e41b90d3", "0x7ea6ae7c2687164d", "0x9efa95be1159185", "0x9177d89b27e9ab1f", "0x53bd75cdb2248ed7", "0x91ffbcc48cf5a3f9", "0x90194e6ceb0095b8", "0x4ac6739fda431c91", "0xf476722908778b0d", "0xc1c262f0980096ee", "0x9e1911d079f155a3", "0xa29aea3b70065179", "0xf51f860624ca857", "0x6b5d2c19f3277b98", "0x9944c92007dc2f0f", "0x1b920d6ba357b012", "0x5aa776352f92374d", "0xf617365f6060684d", "0x5dc11118a31b31cf", "0x4b2cd0ebc54011ad", "0xc35c044844556b6c", "0x17c81c1cd26ee575", "0x675674dc5d8a38cf", "0xea42a439dd2d793c", "0x4a06d6116628b183", "0x3697d58a3a375e9b", "0x245a39ee42c05d4e", "0x528507dc371993de", "0x4602d70bd52449a8", "0x225fc99854a1d8a3", "0x6cb9a7a7298c41f3", "0x2e293452ee97f99b", "0xf1ab3c97b595bd33", "0x48c1b37adc4cf9e6", "0xa8dd8ed569016eaa", "0xdf0549e7e4e7ec53", "0xcbf715c06b00cc3b", "0x4d6fc60359307608", "0x3dc1a70f1e4e9ee7", "0x97f08bc9c1a3c568", "0xf2534be0f0158f2f", "0x98442ccc816e4abb", "0xeff0662ed1618988", "0xcb3ae50f6a2cca33", "0xe3459b455fa4ee1c", "0x7958832a344bbfaf", "0x743874b89e3a896f", "0x143449f2a76dcb06", "0xa3e1b97894a1d843", "0x70f0d2563dcda6df", "0x9641a5b455863fac", "0x3ff3f6a5b7754c71", "0xb78431053a7b1c8d", "0xa8158b55bbb22e94", "0x9b67fe8d8fe85f3f", "0xf38f6f632eaa0d90", "0x918c2c0a1e5730d3", "0xc0412a51a8b894e5", "0x1985476cc42eb676", "0xa85d444e7ed7aa3b", "0xd134c28ca64a3a87", "0xde27fa1c68cbdfb1", "0xe208fbe9ace041f0", "0x86140d4842e8fdec", "0xb8073c42ad7f1345", "0xadb8904a03659ed8", "0x4e85b19d8331810", "0xebed25a75dab9226", "0x8587c10f4e459d01", "0xd8f2915fd8153462", "0x2288b6609ef527af", "0x1dfd1ccf0aa74aff", "0xae599daedf926c1f", "0x848fe603d3c7b86d", "0xc591cdafa60c172d", "0x930d4ea1bb211e63", "0xfc6706464d7772f", "0x8a6c63124b29abec", "0x9213a01abaf49c76", "0xac1bc35155c94759", "0xfe26de7cb4a3a1ee", "0xab560431b2b15d8", "0x8ca114a071bbb0c5", "0x3eb32e4d9f726f9a", "0x59fe1f6510f2829d", "0x561102263943e0d4", "0xba56c9443b86fd3c", "0x89ed5d218588aaeb", "0xd63312bbc3601e33", "0xed88f12d0a58deb6", "0xf19375056359a000", "0x8ebd88516a4c9a1b", "0xd18793b87184cda6", "0x2dcea46024fb95ba", "0x1cb24a97e425ec5c", "0x25bce2b9ee5f8877", "0xcb6afdadefe05780", "0x6fdce1b3ba2ed641", "0xfd0ab873600d8ddf", "0x784d9735c020389", "0x7cfbe02548cd5804", "0xe83c23414d46301f", "0xcbc82e8a562368d8", "0xc4eff439796c764d", "0xbb3de5d212ab0478", "0xedbc748506dfac4c", "0xaba13153ae30bac5", "0x3540ba91db3e45f8", "0xeedbbfa9f4905f66", "0x772168d3ef14918a", "0xa11800e2f611082e", "0x91025589fd2632dd", "0xe9fee26831ce0d30", "0x1a2d5cc7a1bc8433", "0xf1bc8bdce0aa6129", "0xd5d56d26c8238834", "0xc2ea6d08cc467eeb", "0x364c5d96cc614b31", "0xf40d4016f1a7357f", "0x6fa466d5df4f99af", "0x9f24f35b021d773a", "0xa3b828aa0ae2a4f4", "0xcc62b4aec82aa6bd", "0x79869067ccd5cef9", "0x50dbaf8a9ccbe178", "0xcc8010cd8117a7d0", "0xccd70df1c01953ce", "0xfd28c7c65086eb88", "0x47a2799fb586537e", "0x4e7a65312438290c", "0x8b328ee1c1da62e", "0x1aab10820afb037c", "0x5b3ebca288645326", "0x1b0d36c21911d91e", "0x4fbd416a58bbb075", "0x63e6e8510136a8d8", "0xa11d847aa26e9b68", "0xadb17a6de035d2a2", "0x37c0f2643a24e317", "0x71fdaaf27eb054c4", "0xb412f4d48a00f546", "0x3a089beeabe6679", "0x4372d625fbfcf5f6", "0x83185d00b9ab88cb", "0x1ecd440c1dd80786", "0xe8a214163b5bcbf8", "0x441de11235c0c8da", "0xdc323ffa8e68e7ed", "0xe83f66161b7fbc58", "0x6e45203ca4a8bbf8", "0x2c109ef29894e42b", "0xf2b84737faf9e4c9", "0x775dbee261efd21e", "0xd0b389b501313e40", "0xb2205688a716deaf", "0xb847c3cbd31d0dad", "0x912e29282c8514d0", "0xd2d284bc994de911", "0x124dd09736fff52", "0x8d61108036a4b448", "0xbfdcb8cc99a6e6e8", "0x80b76199b069515e", "0xf9ab9e319e11ee83", "0xa5d9bcbf6bb36581", "0x19b236db09352cd8", "0x2a7146dff50f40da", "0xaade7a09e0f842d3", "0xe7cafef5e58fad55", "0x4016f0b2976bf54b", "0x860ab7ce434c2724", "0x4c3083f62ddf3360", "0x56986fb8a360b13f", "0x40667522822852e8", "0xda6f08183281c6c3", "0x9e025a81f02c4075", "0x6955c24621f44abe", "0x6f5670941e5a0284", "0xd077ae35c527339a", "0x1d133a7a2f1b996", "0x64b3b48118276118", "0x8c62eb26158e30f6", "0x127d482fc7fc4c06", "0x98dba893f932e687", "0x9bbc389a8129d474", "0x79ace019397334a4", "0x6ad1ece569c34ef8", "0x2d0989a42f455f4", "0xa19447e69272b177", "0xc11cbb539884d66", "0xe405fbf48e6196d8", "0x8b43198e07845d9a", "0x9f3b4f2a3ff0eacb", "0xc40b235e846bfa1d", "0xc913ca8b3d8a94e2", "0xf23d8695e840c244", "0xa9a52ec7f93035fe", "0xcaafda061266e2ee", "0x99f12938c73e0631", "0xfdcda19320ea2feb", "0xd9be2287117877c4", "0xecaca835e8f0e0a6", "0x5dda661b75015488", "0xf72cb2ef6f3d47a4", "0xfdcde152cb4480df", "0xf030b4e969624b4c", "0x44b16300d89c6aa8", "0x8e9f94d07f96671a", "0x6545db6dc1aa9d71", "0xe975bd0259d036d8", "0x8917b692f236938b", "0x7e6ee2fed00c071c", "0x6d4cb6a802bdbeb6", "0xb90182bfbfadddc4", "0xfa4e7768a1079c0e", "0x941e41bf24965381", "0xf5c249ddc6fe28fb", "0x94a7496e1f13668d", "0xa0fa51b311c3eb7b", "0xa094c5eeda9fa21d", "0xd5e84bac929dea41", "0xd398c97ace52dca2", "0x2ea2aa3c21f6e180", "0x881cffb05f236875", "0x625b320a798906ea", "0xc7d799450af201de", "0xf87adb00455eef8c", "0x17ff9774848878ca", "0x6ab2105e32909451", "0x87a75ad7c7408fbf", "0xa0798dbf1fa7fa2", "0xb5fa7b0ec7a699d3", "0xe5e7d604762488e8", "0xba4a445ea2dad13f", "0x6ebd3c6df3a486ef", "0x6fab5325765ca59b", "0x85d500d3b0e218ca", "0x2e6b43e0c6fe6437", "0x8d8195e72c51959d", "0xc99c138795ead12e", "0x734d3a82de99303a", "0xef751a425991d8d", "0x68ddf57e92fda1f3", "0x52edf4fca34d0841", "0xda6b03fef29e0ab4", "0xc7e67c8f2147946a", "0x9d0ae5eb255485b2", "0x52a5490e3978d42e", "0x2f41990e58887a50", "0x4c7c3378e9d317f", "0xa5c2fa8f0100deb6", "0x2f1ff4c0b9600040", "0x4bd5d484eb54bf7a", "0xfe233316e628d3b0", "0x887e6e4661dcc4e", "0x431a33724e91a13e", "0x40a2644f0dfb89a0", "0xdeb37e070986ee1", "0xfc49f50990839180", "0x9efb493c616fc36e", "0x1ec6a12fdac03bd9", "0xdca1033f4f40ecbb", "0xc567ceee66db8eca", "0x2e1a536703ab7382", "0x43d11f4a26d4c745", "0x7f85472183e7cd09", "0x76a330d15a04d56c", "0x38529585f76eb845", "0xf1e6dc3419e2174f", "0x53f70918c700adc9", "0x929efc164114e420", "0x639c805c2bf6ec5f", "0x60fc9e081b8a6dbd", "0xc92f458023704fb9", "0x41abafefda7e2086", "0x999454a7c0cadfa3", "0xd5633a509220fb2", "0x2153d675c2868a0f", "0x63ccacf846fcb66e", "0xb18899a14b066b92", "0x7a53c4c6573b8ae6", "0xf873cfc19c3289e5", "0xbf33111e2a1e55f", "0x82bb87f0019a02a", "0x1334e4ced17f1e26", "0xf57945fcb662897c", "0x3fc4c85c15637d9", "0xe53cd9f0fff1b4bf", "0x8ea15b5be26f66e1", "0xfbc2b10d816faae0", "0x3e8c1099605a530c", "0x76112992e50b6d92", "0x8247d9155fd90e5e", "0x6596895cd8b01c0c", "0xbda417426f46d8cd", "0xd6b1371566f84ab3", "0xd78acddd189b75", "0xe80f13478b814c70", "0x760702595e4de470", "0x9957024150dbe2f7", "0xac9e017c9c8588b3", "0x2237a4cf4d2884a9", "0x869dc2609f3e839e", "0xb24189dd4f08d2be", "0xedafaba9e5de199a", "0xc50ba0fb0f2867b9", "0xd7390834e303a751", "0xc8968589c3a67f98", "0xf29c94fc593df978", "0xf72badd14fdfc3ea", "0xef698dd3a3d0c7d", "0xe530076c4228d737", "0x9f71b09c603b5e9b", "0x9f5fc878670f2385", "0xf3c8929b61b320fa", "0x11dccb551da23ecb", "0x56fdcd84877d2b3f", "0xf028d9a5238f5c07", "0xfceaf513831209c", "0xbb6783be0307cb4d", "0x648d61f7ea583de5", "0x4be25d53e9c9cddb", "0x708aced3d1f929d6", "0x62bdfe471efb57da", "0x8f32b698365c565c", "0xbb76888da32336d", "0x5850411db691008e", "0xc15d52b0048dc899", "0xc681b2b9de6ecc31", "0x53b9486f45bc0916", "0xd48d38d0ba03b3c", "0x22a98342f8fd7c95", "0xa96bd7dff30fb8e8", "0x24bd7e5d56fc5405", "0x6cc87e590a7bb165", "0x43877c91b702fe50", "0x37850686637e0fe2", "0x73cf576aa51ac914", "0x89e4e7ab1683b966", "0x4c14fd43c5f52c47", "0x210c8a6c0d381905", "0xacab2d5edebab145", "0x2a222109c096ee06", "0xa429aad1e665f1d7", "0xea3a12511439e18a", "0x1a7f5de541580b72", "0xa9725ab0467923c6", "0x543797f742231d62", "0x11a89b1cebf70518", "0x9cc9da49461cd975", "0x37ea4aad32f77b56", "0xa7f951eb3111c282", "0x9e5b0c2f5d154438", "0x19f9115f8b7cacfc", "0xf53e00d96e18295a", "0xd41f94389f46bcf6", "0x6155c974da21f6c3", "0xb34384ee422490f", "0x308a5b958762a3a8", "0x9e856d8f048bd25c", "0xbd817b6a8d239943", "0x6ff854101a7fb3c6", "0xdc5cf79a72b61cb6", "0xe80455e88e41379", "0x1154f145087c3f32", "0xc27f8102f337b5d5", "0x7ee6848fe4772954", "0x2e50955fbf241222", "0x98e4ab9932ee9961", "0xfff451589e3dd62", "0x5ae7ac2df55e3d6a", "0x1edb787c92a35eb6", "0x732f2d9bf89d3823", "0xdcb94565e98c62e4", "0x72c9dd1337488498", "0xf092b465d3fc594", "0x510aaf7de9ece578", "0x34bb8ba9ae0095fe", "0x3457593510c82d4b", "0xe61f9bdcb3e13d89", "0xcfa07b2057370cfc", "0x3a0c3a842b5a3695", "0x462b64b2e776fab5", "0xba3112e5fdb41e81", "0x17d6066c89735449", "0x7640eb2674f48fcd", "0xf790284f0c8d4897", "0x827b726dc10dcc74", "0x2e7c35946498d4cb", "0x6540fc98ad80f360", "0x6d981c165f040869", "0xc849e307a8349c0", "0xb443cb44c11fd229", "0xac43bce0cb2fa45d", "0x4d747d36ec21132d", "0x2ceb7f88a52e8b43", "0x33f019ad3f9eadc1", "0xd66963b46ee47360", "0x8b01116321307a1", "0xac1618565b2d071c", "0x5e63e2182568773c", "0xada1e99003771f2", "0xe6110f2cfc921f19", "0x90da956365f5ea16", "0x83c521a6103af540", "0x53aec682b91b0357", "0x282222f7e7b72fb3", "0xab322433b7eed2ff", "0x82c24bb7411188c7", "0xc0b8b8cd2b54ca65", "0x423add26ae4e1b8f", "0xd880bb2fb3cc4e15", "0x77a024bed38e2568", "0x5c9c2c29075c0299", "0x21fe5c9d0c18425", "0x419175a6a4fe6894", "0x5035b002e14f6172", "0xc89c784717bde813", "0xa176385dd9ad00bc", "0xa38f3520bc5b4037", "0x3f8ed4819210004d", "0xe6913f2d5cfe6594", "0xd6c3fd1b284a5065", "0x25f1e226e246ecfa", "0xb02a8de9c0289b24", "0x56298092ca3c7066", "0x40faacc862bb3c8b", "0xf6b2fb7d4e37271d", "0x83091fa3de9f0b16", "0xc2fe94a16fd6c0b9", "0x44fce29b872f2acc", "0x152d78c5b9ec4d11", "0x670bbbf447acaf97", "0xda85569f94ce93d9", "0xf770b65f18aacdbe", "0x6344db0af4ed0f8d", "0xa59c2deeb3d15cb5", "0x9c1b8cb0632d945b", "0x96dd4aa096710028", "0x83867a2c0c1ca3f9", "0x6bb715ac2f736223", "0xcc2e2a375f742b51", "0x18645dab28f42034", "0x1a99c2dab4967aa3", "0x89e72b825640412f", "0x16dcc9f12ea5f354", "0x9cb614ebe31e2014", "0x36f1877612b5f86b", "0x23c5370d843dad32", "0xd703f0818b2acb19", "0xbcf0d1c1565e04af", "0x212f9dc0c8b21b9f", "0xcdc39b3ba99f26aa", "0xf52e8c195ed04d9f", "0x754cc5e51d632658", "0x7193457c365e9c03", "0x36586f4fc54de3bc", "0x2087838417de8c8c", "0xb98d00dec7ebdfd1", "0xe2f7b221f69495d4", "0x629962aaa608cc41", "0x309ac40cf85ff979", "0x2a90f67767d14ba3", "0xb526023d30bd5425", "0x976c6148cfbd2cfe", "0x341c1bbb678a0f3a", "0xddcd617b60b93d70", "0xa5a50c0ad6ca2d8", "0xab443879730c90de", "0xc96efd1f96c81074", "0x8a0751a82fd424fe", "0xc1555e310ed1a0a", "0x6f62e23e5378e655", "0x7aa4c65c3a9cdace", "0x44342f669e18fc57", "0x40d4fb2d07e7fed1", "0xb0b4766455cbcca0", "0x7f929a3c4fd6837f", "0xa36000d66ed00804", "0xe34af91259614b4e", "0xaae78fb5bfa0d45c", "0x4788a94e078e3af8", "0x8e0d6e30c31c0929", "0x1b90bcbc8aa295d8", "0x3f3b72b350713ac0", "0x48959d7fe5a2dded", "0x81ee2747649c6afc", "0xf32e182fef68d964", "0xb768354f51514b9b", "0x73e4428321a1b444", "0xf21a60bd5e427df6", "0x8b6e32d3a5451c28", "0x263e092dd9bf5b86", "0x52b2fd6301033345", "0x2048d80e818f86ec", "0x83dc44a6f5f471a1", "0x548238051bb664cf", "0x1ff50adb5c6171b7", "0x87119d7963ea0b49", "0x86680b9236cc96ca", "0x996b0af6a1e27f0c", "0xd1f14a62a0675d04", "0xbc932481e9145f56", "0x61a6f3fb53840f9f", "0xf98d81c78a584053", "0x26c2eee88b14e0db", "0xb13acff8c866f2b1", "0xbbf01587a92db631", "0xb1d920509507c252", "0x1215de485f84f59b", "0xd74deb9e9adc1f5", "0x45bdf96e031e9000", "0xadaa4a4a04767f51", "0x93901cf3f3c1df9b", "0x69a5f9932d515534", "0xcf462c98082427cc", "0xfc0d52eee13a9629", "0x40a8a1fa74f5b975", "0x9d976af37a666bd2", "0x1348e4f1cbccd98b", "0xc06c27147316c141", "0x5135226f52d0e5be", "0xb66ea5cb0d5ec0", "0xeaf28fee41a7e06f", "0xb079f445368b1bb7", "0x8c1ee39c5f16aeaa", "0x346045781cc921fb", "0x3991e801d7c6f490", "0x943c99ffc8713185", "0xf6fd49162c0136c1", "0x98b97645f054f338", "0x7aa0e2acdb391e25", "0xfc5796a109066583", "0xd36ea4d22ca18d21", "0x2efdac24648c4626", "0x528205a0fa386e22", "0x9792e80f7cf84d7b", "0x875a3e22b043d53d", "0xdf1303ce2452aab7", "0x35e16f46feaf4f08", "0x5476045b351e643b", "0x39291b1a1cd47f05", "0x62673d6230c3be84", "0xc997279cabe5668c", "0x4c5b9dd13676d88f", "0xc4ca8c0287931338", "0x42d4f75a234ab45d", "0xadf1093959628f1d", "0xcf512a1f90b977d2", "0x42bd9e34ee708a1a", "0xb42588d5e324e85d", "0xa86bce4765623298", "0x6cae9ca157477f5e", "0x702fe23524e15c06", "0x133315981bf7ed8e", "0x965dcff9a883940a", "0x591bf5e689976355", "0x1d6dbd4486bd93b", "0x3b66704d2fe0cfea", "0xced88fe0c5e00a2e", "0xafbde11aaefa1ecf", "0x29ce7436ee25ba9e", "0x9cae1924061c1489", "0xe8a1152d64a3d3d6", "0x3332f83090799ff0", "0xf5a7ffd731a7e40", "0x4f69fdb39717659f", "0xa27493803f5a4462", "0x4e4bb190588bce1e", "0xb0c9e69009a33213", "0x2ba084a0f270b69a", "0xfe221fe4730487bb", "0x73216df0e33825c5", "0x27890e5d640856cc", "0x2a408642d44e0298", "0x4a64315d30e500ef", "0x289af293d69199be", "0xef138cb465be5c38", "0xa14441f3e80bcb7a", "0x9dd1dd9b096e6d33", "0xcaa46995c8318707", "0xd843c7fd1ae13801", "0xd6132d68d5a0ae9a", "0xb0fb30ba724fa9a1", "0x4c8ae128e928da30", "0x63267ed2cccc7529", "0x639a1e0ecff34314", "0x1924f74b075469c5", "0x6d1099db2c2cfeef", "0xd847139fae6944a", "0x6d139f10faab6a79", "0xe3fa0f929d6854f4", "0x8ba2237c64a54eab", "0x74c73cbbe1f932e3", "0x7828058962eee832", "0xa7905181988ea80", "0x7c87cb740cc4ec21", "0xd94ce92b176b1b53", "0x40910432d523b2f5", "0x485a42a2c887070d", "0xbbaf1f4658544761", "0x8b0108ba37bb909f", "0xaeffe91b8e5a324d", "0xfb63264eaf7a406e", "0x780d996b7c221aa", "0x6a220a9488b5efe3", "0x5bb7595721f104c4", "0x7ab52351fc4e5f4f", "0xe10406167b5728b3", "0x587392e8b56d7277", "0xf6772467e1c107bf", "0x4102fd9015821610", "0x16816029184188a5", "0x8bed82e8f411e9e1", "0x6342ee9ad61d1861", "0xf4801ffcf7e2eaca", "0x6b70dc5aae1a682b", "0xbd45c07cb958fa4", "0x4d98013d41127b0f", "0xe0f9df2c33b13e00", "0x2794476233595fc6", "0xd7f29dccf6f067a9", "0xc8f2c898bdb6c08e", "0x16e99dc9ebcb48ae", "0x7c64cf9ab4cc65b0", "0x49c8a4112b9a6394", "0x9d43ee9ebaeb7af4", "0xd983e93bb77b035a", "0xa1c854e246f462da", "0xd61b15c5c8671504", "0xa31b945f91686c36", "0xef5dcbff07c5065a", "0xf16b1a1d33a3e0ab", "0xe5a04ef08b8ee300", "0x4c2863ff144ddf93", "0xc5fc8d87daa0849b", "0xd0d8894a52ee94f7", "0x818f055064d063a9", "0xe29e59a2ed31c7d0", "0x4336be7560a9609", "0x31afd07b447baed5", "0xc33dcf9ff19326d8", "0x116c4dd38e662112", "0xddd2d34250f4ac78", "0x54244f74155c86a2", "0xc561cd19d110c28d", "0x7e34ab340286e148", "0x4db14bf111ea5465", "0x853a07c9dd07d6ca", "0xaeb68adcbf49bebc", "0x632187ecfa811b38", "0x315f740b165bd560", "0xd95b866c18f3c91c", "0x6ab315f201136a4a", "0xf91e02666cc28ed2", "0x84205c8ae76c2de0", "0xc360e7c39ef07955", "0x12e1e6bf85319483", "0x72900ebc95d0f590", "0x8f013e30d877e66b", "0xe88f60fb75f66455", "0x4951c26a41957fbb", "0x5b7f1ce7425e04b6", "0x8bc626d77b683a49", "0x6071069d23b70228", "0xe321d85dd9ee4b25", "0xeb74fe70ad70e983", "0xc253d17f69c716cc", "0xa6a544cc334efcf1", "0xd31f7ec49b66ed9b", "0xffd62cbf0adba808", "0x100a0440292dc290", "0x9de99667f5046b29", "0xc8e0281fd208f9f", "0xec035f5e1dd278", "0xf0e33778c5192c14", "0x4629566f02a4755f", "0x69479e6126a4da87", "0xe4bfc57cd2625b3f", "0x3dc5b67849033d97", "0x6ab226d2826ab8b0", "0x5538d5e742d6b44b", "0x5ca6c4a9cac32e20", "0xc0ab87b7adad804c", "0x9aaf29c8567d814c", "0x379fe97f9bb9c989", "0x970f23dfe30b5677", "0x1a2deeed6662b8fb", "0x54f4eb6f358d08d0", "0xb776933b5f107298", "0x88d201dbaabfce71", "0xde5e53c0892d3184", "0x207e4c789636bc2b", "0x69c11b911c6e1fce", "0x3fd81123338a595c", "0xe1f0262f8c0256f7", "0xe06da3e26d7ebe4d", "0xd3459c8c9a3ce8a8", "0x4dca28cc36086022", "0x3ae040e37f42ea95", "0xbb187f70ca710f21", "0x818a7e476f64422a", "0xd1773bec95d46900", "0xacd8aa0adcaa7036", "0x6b5eef656d22f31b", "0xf5c35a8582c8dc3d", "0xba7cfccd61c75724", "0xe401a0ff5ac4d2e6", "0xa1554de8ba675da4", "0xa43ddf2d59c8e597", "0x277c29d2002683ab", "0xb57422252c3127d8", "0x436ce8a2143f4e8a", "0x745704beb09ddc59", "0x36cad6cbe60640cf", "0xe14be45a3bcf618f", "0xb29a3aefc3b34afd", "0xfa6e4508b08b31c6", "0xcc51425e32872f8f", "0xfe5d7357bece57bc", "0x833ab9741fb4c125", "0x839dfceee99ece53", "0xff720cc318e40a94", "0x7333efc9569873e3", "0x6219a4d34000014b", "0xf7a1980cca0829b2", "0x7a75a0013f6ac3a0", "0x4263027e10a7cb7e", "0x72d24fd8470fbd2e", "0xbd684c07a924e401", "0x410ae621ed463de", "0x97ef91d26150c60b", "0x8340dac45f57631f", "0x4083556438a77ddb", "0xc249419c8c64392e", "0x62bdc5db87f9111c", "0x9b013a7d88cf8410", "0xc90938e4a47e03b0", "0x49e679bcec7a405b", "0xf933c401acc7e091", "0x1bb9d256131956c0", "0xa81a91f277cfe530", "0xab82de826fb1b057", "0x2731a250920849c2", "0x6c6458034711e5cf", "0x655ce5f028eb02ee", "0x39d8fce706623a37", "0x7af74597c5b3735c", "0x93b44f118d437aad", "0x88cfd3744ee72439", "0xa8122173f1e34f16", "0xad886000882edaed", "0xe96c2becdf1359cd", "0xf5e87fb098f73815", "0x3ae4947189a37b79", "0x812b6290246eaa15", "0x522a9569927d6a45", "0x7a07280842f98ac5", "0x4ec438df655a9f1", "0xb304159752fa5177", "0x31189b4548fa3d29", "0x5f36e553422b3491", "0x616d974be2f8425c", "0x2ba8f501e65ede8c", "0x54a9c52df6431c51", "0x4e925ecf3ed54af", "0x67f7f78e4d50ff04", "0x7bf599c546e0d881", "0xabddbd41b7fbbafe", "0x5f5a660b88ee07ed", "0xaa89e03d5b282ebe", "0x9faf1a0550cac650", "0x4569c7c063feb69", "0x920d99ff4c5ff041", "0x1f8ddb71982b012", "0x9835c0eeae5291c5", "0x25e7028c31f2a461", "0xb8862b182a0be27c", "0xa4533f809b58b1eb", "0xbbb3a17518801516", "0x6cd05e26ded221bb", "0x72a832e822380211", "0xf9dc566269950904", "0xe0ba506adf74885c", "0x39d66b1630d2b0d6", "0xb7f6bd1c10adaa1a", "0x1e341d949b721362", "0x17e5676ca0dc8599", "0xf1dba27857413e30", "0x26a9c3bf2d2cbefb", "0x77b8373c14840c2", "0xe1723af8dc65fd38", "0x96625e618e20cf0b", "0x3c360076a67b708b", "0x4bfef362d326b962", "0xcbaf5b632983bf87", "0x9ff6358e81eef3ff", "0x353c09d9cf01bc3", "0xc6e65bc3f029f35e", "0x184974f16294efa0", "0x36d94cef009f599b", "0xcd08e1d12416ca33", "0x862e9c32a70efdfd", "0x966d17d2bb8c7bf", "0x99923b3415d13b51", "0x1f361bfea247f42f", "0xb3778fa3251645a5", "0xc71db61ada9612d9", "0x7ce51458782d2781", "0xd27c5906611e2069", "0x2f52a88489881dd3", "0xc08b971a6e817589", "0x58495e6b8952726", "0xee70914232940cb", "0x33e0b5dd5715aa83", "0x35269e3f670d04de", "0x86c2b9f6331d840f", "0x6e7513295418dc5c", "0x9424f4c156360ca6", "0x65674a1757ea8248", "0xdf4c3f5894ef00be", "0x85c639115fc73527", "0xd0b551ca1309747c", "0xa2c2157997c35919", "0xc43d0743b84ffe4b", "0xb532c39105f3b349", "0x81cc17baa5600aa1", "0xccaa6462c05934b5", "0x695ed27d354a5f78", "0x9b6b083ecd6f83f5", "0x4462c7e1a68b17a5", "0x9863031a194484b6", "0x59a0ee6b34b52959", "0x168f0b34ad1b070e", "0x4c4cb775f83f6e0b", "0x51012f3b6e134a45", "0x65c4dd6db6d41318", "0x571198a2b50fbdac", "0x98dd8e0342ec014", "0xe8c0cc118878834", "0x42b3fdeed609fbf", "0x8f99bb6850cef6a1", "0x6baac3b20160097c", "0x69c539b4de17ec13", "0xaf78bf1067f3a225", "0x4e1d9f182be865b4", "0x6d58457ddd3ed246", "0xbc39d2b9413f4fd0", "0x940dc8795a982afe", "0xebadff9b4b25b4e2", "0xfb1f6765b78932a6", "0xa3db422fc2b81391", "0x8289b691bd9727b", "0x4b4e51bbfd579315", "0xc88bd26d054b5fe6", "0x2887984e0bee017d", "0x73dbf0cacf29338", "0x8c72c540705645b3", "0x841d0ff0f053838c", "0xd4edb469edf92701", "0x57c732a0f3d4da1b", "0x1b82e59d9311210f", "0x2577ca858438a960", "0x3af6b0eff9dc6e81", "0x4d412866b3bc02ec", "0x693e6aa8cd92c4bd", "0x57c8bdfe6430a44f", "0x7041d55af07c4230", "0x8cad43af44e17fdd", "0xf5ce0129bd7c0457", "0xe1bbdf399243173a", "0x1d3bb60aef7195dd", "0xe6ee5fff310e5ac2", "0xa8b310c77cb0a6dd", "0xec65a402103b4e92", "0x3d1d485518ee5310", "0xc7b4fa9779c1eea", "0x8868199063a178c0", "0xa74dae1923591378", "0xb04a040f711545e1", "0xa4c8027e43aea4bc", "0x24a7afd89a94f118", "0xd708192da26da359", "0xbe46b0984cdd1d2e", "0x6d4455611ba39f51", "0x94ea72990d577f23", "0x821ca7df81f9b1c3", "0xfe8395075c054e17", "0x315212e22bf447b7", "0xe2ae467133d10b91", "0x4aa19903e45f0963", "0xec1878c953ed8010", "0xcd96e19d4482cb8d", "0x17674dc3aa165224", "0x91eece42635e4363", "0x5f4dba11e728488c", "0xb9960a6caa61f2c0", "0x39f2c3312c866bda", "0x2bbd639e36be6692", "0x380f4c72f38c13d8", "0x663851293fef4dcd", "0xc77476cba7825796", "0x15d3c039e9949837", "0x378feff608e82ab3", "0xf0b71287662c666c", "0xddeeeb13b7afcbd7", "0x670184fb3e135c86", "0x2afe9b7c10d2046d", "0xaf8d54baac0aafc9", "0xda7fcd16ff624063", "0x59dc8ed899a6b4c8", "0xc1468b56687d7923", "0x5bff9e1f3bdbeaf6", "0x4e22f15d76074ceb", "0xe3ca455ff4adaf93", "0xd69d7fab758ff979", "0xe5e845b59039412b", "0xdc94d53ee2559929", "0xfca5f9a6d1fe4b06", "0xbd7cf87d5d37e36a", "0xa4e98c25a87da17b", "0x7a10947e74240883", "0x28335bd3fc24e99f", "0x1ce21ae6fcaf402f", "0xd70e08165e1622d", "0xe66fce0c85b612e0", "0x72726a67dadcb999", "0xf5a18bdfef2ae7bb", "0xb8bd3921257a4c15", "0x670a15ea354417e2", "0xb18849f183956b40", "0x211c845c97e93719", "0x94f5d325da0e59db", "0xd0fe2a0f147c6689", "0x4262bf3b0c7e693", "0x43245b59cfdc6092", "0x11e5641a1a21f780", "0x92bd3809622d8f65", "0x5a80d4d00d831dcb", "0xcd2334f0a7e88dda", "0x1dfa51ea4a982fbe", "0x4c446b5787cd2c67", "0xe4dd689b3b5b5dc7", "0x6023dd2a46b2db3b", "0xb9385d7337996105", "0x19f92c74c463c6b3", "0x9eb1d8eac5982a7b", "0x1f84253b5501e0a6", "0xe6d5d3f949533b95", "0x883f9170fad9235e", "0xd9a4f0b1f75f2fdb", "0x3819f9d0ed95e79", "0x3a0ca0e22b2025d", "0xad6a08251804f9d", "0xc765810b3b283fb5", "0x267b42ac12eb24f1", "0xb79d4904df5f18a6", "0x5ac4ffe87bc602e5", "0xecc0506af9f2491f", "0xda7172d9f9280de8", "0xc20bcced9baafaac", "0x507ac9d74b7a73ed", "0x9c9169f3d52a88a8", "0xce577f0fb2abdded", "0x13163f14f3f60682", "0x2352eaca170089d8", "0xe04c87ae4ba769ab", "0xb80ed111209f93c1", "0x64b193edfe8b8021", "0x8f90dba4514ff5d2", "0xf49a1d711ed1037", "0xd22954fb5ffd56b8", "0x47df0bcf7f69c1ed", "0x15ba2d5774eea28d", "0x5b110d9aa8e24eb3", "0xf4844760b9c7a92b", "0xd0f193d6ed3a25be", "0xb1091e94b2d55381", "0xc2e7fefbab068df", "0xcf44df685217b572", "0x6099f769640c14c3", "0x9ea089d8390652dc", "0x171d39982d02813c", "0xbaaef916464cb550", "0x8884b84b2366b2a8", "0xb4eb3a51a44dc2e9", "0x6cf8bbea9d43c0d7", "0xef7cd56ecfc66cc3", "0xbd438be5729b6084", "0x443d99e0398017b3", "0x58fb281aa8082313", "0x2049666c32887976", "0x3335006d581efcd6", "0xf51b50116ac97886", "0xc8b079cabd36c98b", "0x67203cf60ac3220d", "0xe823c2a50eee7e32", "0x46f86a25355cf8e1", "0xaee9ee87a5046f7f", "0x8bbc3517f7da94ae", "0x6d120908253bca27", "0xeb83343f925659d5", "0xf14c8287587441ad", "0x541ab9e4eae3197b", "0x382d0889a21a8d11", "0x9469bd84d5854c17", "0xa655dc0ae2c4f314", "0xff25891ce7559476", "0x36b5b6e76d7d0eb4", "0x99bd9ae90069be5c", "0x17a65f9229f29895", "0xdd35583d4f70b99b", "0xc0c019bdbf27e2d1", "0x981ae620c126b555", "0x34c80e75e5c79588", "0x3aba83226517c3ae", "0x703a0be4fdc228ab", "0x3172fdf3e025e42", "0x742792cc8a3004f5", "0x4e82e1b072ffcb31", "0x3e5d59d0b39b535b", "0x69f3ae11eb83fb71", "0xd794fd3f877f50a6", "0xd631f435cd1ba069", "0xa42cf9f5eadea99e", "0x16cbbcbff588b9d7", "0xd4664e3bcccb3937", "0xb14d73cb6d0b9f56", "0x18575f7addfd0b54", "0xde3cd8f2d1fd3113", "0xc7e4c243234c69f7", "0x111d96384afbbbe5", "0xc50313a374e9621e", "0xf53d39f14fdbf30a", "0xe52b06f170434e3c", "0xcbf21c11b8a80b84", "0x58cce9a8d568c95e", "0xd4737788806d0226", "0x705d088bdec9fda0", "0xc5bdd846e0611ec0", "0xa7ddc2192284237d", "0x1f057827ab00b09e", "0x93d6fdd965b51c5", "0xd390d96d69a6fd43", "0x41b8d1b3a6805c6a", "0x6ab0221ed2d63d4f", "0xb4941f3d0054ec20", "0x2a56b51cef914f25", "0x7d76f6b956b6af8c", "0xdf6b48f8a41f3f47", "0x36bd0273a1448832", "0x43d8ef668aa675b8", "0x91ec413465245648", "0xdbcd6c2113f57063", "0xe5d8e38733566731", "0x2497567ed231edc5", "0x95304b4837561366", "0xa1fb4b87b22db2eb", "0xcff7a24facfe9523", "0x5fe73cfded02f9ce", "0xece13fb7f7dcdfbe", "0xb0b8ab3227ff3b2d", "0x987d9bf4f37b6b36", "0x2a18403581b6da3e", "0x5f5a9b3540916ec9", "0xbee7469515bed5a0", "0x7d8b7e419d7973d2", "0xdc43d2e3db55b79e", "0x9ae270363489a31e", "0xa1e5831ba65b9eb", "0x265a1f232d8c23b6", "0x81d627b13f27121e", "0x3e891b249f14b893", "0xdcd4c566622016c0", "0xda6d338416efa89", "0x647225775bbd6e0b", "0x8f39aa0984b4322e", "0x19d54958337ce6aa", "0x2f075a5ba77eb76c", "0xd1c877f7d287bd33", "0x878186c232e109f6", "0xd105502f748171f3", "0x716ca5e4930f9276", "0x3dbdacda21691769", "0x54e830e63a675995", "0x59118070f51c76f8", "0x7026240ecbb38d89", "0xbaed6e924005fa29", "0xa1218914fa674dc6", "0x255502da97ecf99", "0x9ae982760884888f", "0x49e78a9c1c455d3c", "0x85fe6efe0db8024a", "0xf450a66239859af", "0x8a0d09f9bf36164f", "0xb73b48d1779b748a", "0x79f2c97e82317577", "0xb1e449a35ced5a9f", "0x5c64cb2d8daa5e84", "0xf403175dd41e5984", "0x4f36b4b504c22fde", "0xa490985ed5f60571", "0x47679f5179564117", "0xeeb7bc8566bc81d8", "0xf0b60fde8032662e", "0xd101bff31c41a45b", "0x766a89b549158652", "0x94c9897a4313a5fa", "0xb8fbd56a88d6e35f", "0x7892781384436108", "0x468a24a7d2bfe639", "0x68f717dc82a9ee14", "0xe238d434800084d9", "0xb9b1a0c3b46686b6", "0x4fe3fa29d4471a24", "0xced8e471427c4e0b", "0x5cb300e86dd071d1", "0x650bfc45b443028a", "0x8a12eeb831151c0f", "0xf763fc7154371baf", "0x2403ec4b519b16db", "0xa4e15140a29e6280", "0xe6a901997113e1a8", "0x6da2059388562dc3", "0x8ddcb012793380ad", "0x3e2acde03ceee0fc", "0x11ba87d136a16af0", "0x983cf7603f53b8a1", "0x4e6ea69bf96973a9", "0x14382f03b26c61a4", "0xed3876500ea03340", "0xec829801f69ac7ae", "0x8fce940f987c7fde", "0x4d681f9520bbe564", "0xc33f714239ede282", "0x1a070cc988832479", "0xf17078bb5c03e852", "0x30641c43d8663ce9", "0x4796ba8f926b86dc", "0x22e5a40646d4d5f", "0xfe1bda53d18ba9c6", "0xfe0c114b51c1e617", "0x2d3160bb1a198d3d", "0x2cca0bf41ca9c497", "0xd4c4569ad9ab13c4", "0xf266eb02218ea25d", "0x9411fdf27c5e0cd5", "0x23c0514d7b33b26f", "0xef1b39279909f8ac", "0xe83f87423c916b65", "0xebb584224a12d58d", "0x34cc20568ccad897", "0xebf16ed3c2fdb3f", "0x171f8d73e8295f06", "0x594a187719d2ae73", "0x6da6872b0d8ff30f", "0x6de205a9584322b", "0x61ed3e6be203bbfa", "0x6d612db9ef7e6c36", "0x84751437d6147111", "0xd7e161d546bdbc53", "0x1cca445c092da2c", "0x9f30c5713e38fe47", "0xf17f42def561fb9d", "0xcad692f36f047fbb", "0x2f9c2591c476a585", "0xf6d2ce6f45b04588", "0x8de56aa524a80fdd", "0xfd250c76526f6a5e", "0x71e26ffae72fdf42", "0x82d4dc18781656c5", "0x270e2a99f6a7ce24", "0xef824b0daea98fb9", "0x4e4a3316c6592d55", "0xd840fef9e65c9f63", "0x8c2c141e617b0f2c", "0x4b1079a59b4d53b5", "0xfaf4b6d441e6c7b2", "0xc30a6992873eb2d", "0xc454b1581fa30191", "0x6f7738639741654d", "0x326c5b4d91c6a301", "0x2be2776e662ecb5a", "0x903ff2ba7d58f349", "0x765fbbb550ce4448", "0x85e9c3c7fa20bfcf", "0x11fff2611625e678", "0x384f0d79b3d3023b", "0xa05a1887ddf9c9d1", "0xbd9865168a806d34", "0xe8d85b20ec899cd6", "0xf990e052f92d97c0", "0x29f75c91da9b2f24", "0x5b19e3bba58d163d", "0xa1d5e0ced121caf4", "0x69c94503a9bbd2c0", "0xfdfcd991e2f84725", "0x9530de6d4a63d0e0", "0x4e417da78e667a61", "0x1ac31def26fd86a7", "0x4f29555159f589f1", "0x5f9fc43adafac4bb", "0xcd1d5b1d1952295b", "0x686ad4f4b41de6d0", "0xa494e40d5f2a795b", "0x8391a0ec6d6da601", "0xada1b3a070b1539b", "0xf727fa2bf5511a10", "0xb30c9827f86a7e7a", "0xec8bd0b23850d340", "0xa09646910254d52d", "0x37a53e8f4c7aaa18", "0x1d17616c31aa6b0b", "0xed24d678a2f6291d", "0x686773879f1ddace", "0x9f84d3e3764621a1", "0xbdebfc64bc2b152c", "0x6fb08926dbfe8cc2", "0x848130934d755256", "0x2a023c47cf718a1f", "0x1232a67d52adc479", "0xd70738678e48d436", "0x652b72cb9f9d13bf", "0xa5420a431a0053d2", "0xfd04e0e50420db23", "0x73b90551171f9aee", "0x1edab84479475c2d", "0x1accb100c8a718a9", "0x590a7da6a83098bc", "0xa084239e9cecef6", "0xcc92838d675da7b8", "0x70221eaf2eb2f165", "0xe1cb459574ff85a1", "0x701c65d9619658d2", "0x3fbd80db48036578", "0xc236be9dabb51de4", "0xe8da6784fa7e334f", "0x4a1cc5e724b0038b", "0x9edba1a6eab917f1", "0xb64b2728962d94f0", "0x433b171a198913b3", "0x19ce121b30d8d87f", "0x4dfb84ac6481219c", "0x7cafb9495ffaae59", "0xbed4bf6b3520920", "0xf6b38853197f5043", "0x591271b33e0eb1b4", "0x202ec9eaa0f8bbf9", "0x669cc2c1139227db", "0x46351dc3fbb1ebcc", "0x583d4f45cbefac3d", "0xa16557fef29d55", "0x80bafb976ba299f8", "0xa74009ec86ccba9a", "0x468ee6b71843360f", "0x6ff7634366acf010", "0x14173c42de15a326", "0xa18e232ab400d72b", "0xc66d2a34fa0225d3", "0x25d8475887df05a", "0xa9d8fad3294d50c3", "0x7895343baef681a6", "0xadfc58e970904dc9", "0x595e881deab8cd4f", "0xd43266e9c1abed60", "0xf05f4ecf1c6290ad", "0xf8e2616aec28dc82", "0xec4f43f863aa9e95", "0x972caac995f7bb4b", "0x4d2eed6accd87d6d", "0x6da2f464939c645f", "0xe213c60331ba6696", "0x15d42b759f2c83f8", "0x7972b2ab00e972c2", "0xed9e4bcf7cca5eba", "0x7731c46d95ed5e2d", "0xbc5358892087002a", "0xc82cca64481e6e70", "0x225eec198e8b4094", "0xe372fc4733178006", "0x5292610406c1069e", "0x42abec7ab546efe9", "0x91522213f35f2d63", "0xc52efeb5b2940bca", "0xf28943aa7863b54e", "0x44f6968ac08a5e6d", "0x5d564654b7d0d91", "0x141d6d9f5405f027", "0x25461f4c2b0554bd", "0x7dfbbc08379c6a88", "0x77df75e28f66939f", "0x46009b62b0c98008", "0x629cc8c41c2478d0", "0xd33f266242d2a5ca", "0x4e0ff96aa828cce2", "0xf47e8625a148281", "0x6727b03e5065ef7d", "0xa015f596b6e94ad", "0x27d2b29c74650a54", "0x468acca3830bec60", "0xf35b19ddba1f9742", "0x5274db6567b5b6ba", "0xa5887bb0301cfa26", "0xd450bae989f4b9ce", "0x8b0a0d4a0ae3dedf", "0xe86ddfbc295f71b2", "0x835e0b5ae12db2e5", "0x237f0180fda4657d", "0x600d67eb27aec59f", "0xdeb0735a1bebafb9", "0x90e42c6bfe71245c", "0x5741259d53bd15bf", "0xa511b5e1ec78dab1", "0x2a9d958a222b879b", "0xbd6cedaff18f5db1", "0xb7af81781d07d3dc", "0x183df23a2327a2", "0x30e7196a6f12dc53", "0x8ca7b68f8f94646a", "0x46068b024f57f885", "0x24c2027d742815b5", "0x96a5db93b74a69fa", "0x3dc6fa9f5b746567", "0xe18d264802029a27", "0xbd8debb928bd59f4", "0x26af2958f24f2a33", "0x97e470e9ea9bba33", "0xe4db6f5d1734250", "0x21f0e2701afb33dd", "0x6c115917eb5b60e6", "0xa32b06c08a2810c2", "0xbfda04c4dda6e78a", "0x52cf1e39264bee20", "0xd42c86b969071718", "0x885edc1b8483a141", "0x30fab88442c0738d", "0x766a83ab8740529f", "0x1b3328fb33188264", "0x57152b81a382a3bc", "0x727785b69b225a60", "0xa14869b2a5483c68", "0x8cc58ed4a555f4db", "0xf81f08c82ec5e9bb", "0x5a5596a43d1f518f", "0x707ec1f13f9d2d84", "0xa83955edce560528", "0x6b09683c18de8d75", "0xb5667e380c918929", "0xd01f7301f1fe4a29", "0xf86e234af326cd99", "0xb8dcb25b85c3e01b", "0xb16cd6d9217f954e", "0xc4f2ddebad5ed34", "0xfe5909ceb92827c2", "0xd5246064662a9f5e", "0x5debf3a2ac9796bb", "0x8d026f940c5903f", "0x5aa8e7adc627e90e", "0x75966e8a2b2e9cf7", "0xda941c736e8a1514", "0x333749a2cd922845", "0x2c239b1c92ed1d55", "0x664bffe8873a21", "0xd680dccfa685d397", "0xc044ee9e3f95dfcf", "0xed4d1600c3619ae6", "0xdfa230353fe4e119", "0xf7e87a16ae1dc705", "0xdee4304c10e46a4b", "0x57eae9140c268975", "0xc6a908fcfecb611e", "0xc69ed83113f0b3fd", "0x87ef7cb9f1f29a6a", "0x385ad93b1779e2aa", "0x5a3b346db2e13f94", "0x8526a98a099f8a33", "0xde4a729474224ee", "0xc74caa3db3e87d0d", "0xa5cf4211ddb0e528", "0x332b53b90c4c65e", "0xb130452a510f37ed", "0x469971c9333d20d9", "0x96e972ef0f5682af", "0xccf63601a3073720", "0x6eee9c1ebb7c6a24", "0xeb01af39197561b0", "0xb8ad598e25a79e", "0xef115bb7aba25fa6", "0xc21c3a40fc01b5a8", "0x24cb2ef99db714af", "0xf36cd03c3912114f", "0x7e5203c36291df0", "0x5703ef6eb3b9c5ae", "0x1311af6ad881ee6a", "0xe8a89b6b58245acf", "0x45765dda2fcd7227", "0xa45882992426e7d7", "0x569539ec7f37eb40", "0x3f333c61d5fee8d5", "0xcc1c5220cab31cb0", "0x88b07d7e38a98a86", "0xc0d09a8d9f7391fb", "0xb3eb72214eff82cf", "0x7190daf73767a43a", "0x3ef67c4f9ffd6c0b", "0x947ac79892aa17e9", "0xd5d274eaa0c9a379", "0x9942b5fe498390c8", "0x1d5c301be34e1b5c", "0xc027167c7d11d6c9", "0x96f948572a49d0eb", "0xa48442b7fa0a0069", "0x1b7651f57021511a", "0x66021b5206284526", "0x46d538f281c3c6e", "0xf981c362b008e857", "0xa4a424f38c48d24d", "0x474e6a9790b15c45", "0xfb2c3c1e5799bb50", "0xac111e11b149b746", "0x9ed11fabaddea4b6", "0x9d38bf9a5bf0bec7", "0x114002f692fd9b71", "0xce5454fa1b05be9a", "0x44a95a27ab09b53f", "0x92ad78f572ee6e1f", "0x4593e63b77be53ec", "0xc977ac0d79172fd8", "0x6d4ec1e2aaa0389e", "0x71212c0c5dcb955e", "0xaf726070c1452b5d", "0xe6a9bac6a2a6518", "0x9ae6513a9161b95e", "0x23af5848a18a03cf", "0xcbabfe1baeb997dc", "0xe3397b463fa3d4ab", "0xf134c3fdfbcf6fc5", "0x59665ecb3ed6fb29", "0x915e0cb3d3eb25ed", "0x33baaaf5cc7e1b5a", "0xfc9fffeb64f4fb4e", "0x58d9da1a08453335", "0x34c960b3a02b3dc0", "0x88db1ca1b702238f", "0x362aca8d8cbd07eb", "0x89b3beb4b4cd9b3c", "0x65318e73176449c1", "0xa0e43e9144b1a3e7", "0x3b52cd1636727576", "0x29cadef11001d6f0", "0xde45ce53f091529c", "0x4b6e83818c46e1b5", "0x56f9db44065cc176", "0x8bae8a4ddebede99", "0xe0bfe81b249e6aa3", "0x4825a68782939a61", "0xdc8a3486d5dfb321", "0xf87837ddd6e9e27d", "0x7a34e83e175128f5", "0xba2cff714f98f62e", "0xb677c9e0c5eb9736", "0x1e745f4ffa753f91", "0xb0165ff621a462bf", "0x28e11f8f33eea630", "0xfa81c16f8c0e4792", "0x1d3c609a7f9bbbeb", "0x54d52fed1e16cc7c", "0x77ab926625449588", "0x8b227b4ffaca8dde", "0x2c70380daa85fd49", "0xa9c1ec49889c42a9", "0xf899f635ed5bb64f", "0x35d24b9931d74890", "0xd10684013fd3ceaf", "0xc706ae44c8538898", "0x2946c6d31cd5a599", "0x65f52e6d63a2d876", "0x1f37d33140d9b91", "0xd5791c0946ff0438", "0x5a5ca3c26a6eb5cb", "0x958314ee0d9ae521", "0x123c3a05c22af8ac", "0x685fa165c0f332f1", "0xe3fa428ba020807", "0x7ca1fe18969e4bf6", "0xb9dcdf985a4d8ae0", "0x59d0ea0bd006bb77", "0xd24dbe7c2c41cf7", "0xd308637edd9be052", "0xaa877dacc47679be", "0xdb287fd16573880a", "0xeb9f8bfa8dfef9f1", "0x4d0a5bba382a7802", "0x48c319e03483c234", "0xa18489399cd652af", "0xd5af30ec4526a5b6", "0x7b307f255be62cb", "0x49c8c8b1dd62799a", "0xb1dcb88860291bab", "0x22826b30e31b0886", "0xe6f1b50e84bdcd34", "0xf30d623b51793427", "0x66a258b4574a8744", "0x917a9da0844ed5d8", "0x875cc1db1db0c087", "0xd5ede4998c286c85", "0xd92aadb7e19a33d1", "0x7c44c0ada447cdae", "0x852232fa2b849d44", "0xf0614b463d322805", "0xff03769543f4ce2a", "0x2ff86b15f9417748", "0xf0eedabb60b2e22e", "0xd19ba0f06fdc172e", "0x5b1bf1fb6b6948cb", "0xf6fbbd0dd13b7e2", "0x77920274518af3e4", "0xc084aa0594f62218", "0xf716202cfc77015f", "0xfa17d901461e08d2", "0x7e2c70d86cc49d7b", "0x991ae3b8e5623f77", "0xf3633241c52e7dc9", "0x481a7d6167f909d0", "0x21c099c9c79e573d", "0xe39650a06a983903", "0xa45014ab865a1c19", "0xe14756c1c41d697c", "0xeb4a8b22435014db", "0x16c8c40bf9d12c52", "0x48dc7440c79ef17c", "0x1edf80eaabb13a63", "0xecd5beea146ccfab", "0x11cafce0b1fa47d9", "0x3e04dabf40ae6a54", "0x72523db58e686eb0", "0x5b624db24b0e6a73", "0x185ce4df414181d9", "0x75821dba5659fb39", "0x41122d531be2a12c", "0xdf6554667a7dc21f", "0x6d38dc9c0dd59645", "0x1c0d9265583b4898", "0x6068314afb6d4ba0", "0xbd5239073d1586ed", "0xd5072741367ed6e1", "0x6899a55f65fd8ec7", "0x3f27541f0e3307f6", "0x89dcfcc09371ecbc", "0xf399425620a789f6", "0x293965cc785cfd91", "0x453b837fcb6c7840", "0xec0fa12b278d51fb", "0xe3e8e3c9987bd73", "0xcd4854535b8e5859", "0x7a16db221b366086", "0x2431a8ee91245c3c", "0x89a5b2bcbc625dfd", "0x932f3609a1998628", "0x1b76091b26738bbe", "0x9a742991b1b3817e", "0x814cfa4477df9f50", "0xa03288de34fb6971", "0x723f8b5c3f7c8b2a", "0x67d6d1af35843de7", "0x8d4eed2cbb7873bd", "0x9de08402732bcac4", "0xc83c6f4002ca0e00", "0x7ce908d0b744e9a", "0xa6973aa642518bf2", "0x159851e0ee8fa25c", "0x3371d5c860cdfa7b", "0x38f7c5a022b4c45", "0x6537f2ca2be22fb2", "0xdc4010c8576e3677", "0x536159185378fbeb", "0xf2e2e108394f1119", "0x55ae0c8c8055de01", "0xf4bdf4a120e9070e", "0x4e356b45f0ee41d9", "0xd223bc929305d0f5", "0xa01881ae6be7a3e8", "0x103f2b1bb1f6863f", "0x7bedda1b9d93bee9", "0x9ebdf68843099335", "0x2246bb4c6daefd57", "0xc3854a46636dd980", "0xf89cb642d715dd27", "0xd4741a95583fdb8", "0x293cf1699f080e24", "0x9cba7f6ebac29882", "0xb59ec0be9ae7f412", "0x2e78d5ce7a8c0c97", "0x3131066bacbc30f9", "0x83e1f27e80e794f1", "0x88547b68c4b5b6d0", "0x2af16039749b5e7c", "0x1f69778c9e6cdde3", "0x6e7b49e5ad2dfb82", "0xc7f357ec4a4f2364", "0x90ad65b471b6554d", "0x36ab615a662bde8e", "0xc88822a01f39d779", "0xd414d26af35a32bd", "0xa504ceca58a9359d", "0x3beca584e4dcaf3e", "0xcfae9cd0bbc9e91", "0x76026e4039d5525a", "0x4bfc1888f12674c", "0x4dccbb899233d3f7", "0x5989328b8187ca95", "0x488d3a9bcd15de5f", "0x6cf56e8c5c410a06", "0xda3bae587e060010", "0x1942336fc155f155", "0x21e5b929977df7f9", "0x9c4f3b46d6bdde8f", "0xdc67f1172d82f523", "0x2ea74e3bcd22f10", "0xa0e580f455c5c4dc", "0x9ce2a56f8f9d4672", "0xa717c3740f48fcbf", "0x9f114d53a105d15a", "0x38d19770d6f7c336", "0xbcf36a5d45afca09", "0x54be609c6587d4da", "0x32c87321a466f968", "0x2aafd89abe79c715", "0x2b479fba8e38dbf0", "0xf8184157f20be688", "0xf848930c9c0f5deb", "0x39d20273d9bf6966", "0xd137cc98e222a6e3", "0x661e13b83433e3d2", "0xebb97684c355a89f", "0xeeabb927908e25a2", "0x62344975613be55c", "0x17ae65102ac40fd7", "0xed543a27ae101481", "0xc7d29a8c939e0c52", "0x5cfdb597a0ca1a37", "0x823af1c7fcc766c8", "0x5e5aaee999a9d9f6", "0xa0d8616e3e374a55", "0x312a439650ae569a", "0x6cee8b34af9b3931", "0x7f29fbc54cb3ecb9", "0x734749037d2e3173", "0x78c840fcf134417f", "0xadbd53028644ac32", "0x2d18e53783e104d1", "0x52df1abcbe108281", "0x3c1b27587419bf5b", "0x3d55c2f0f52819ff", "0x1f11b13900b152fa", "0xc95748c81fb57d36", "0xda0cad2fedff5a13", "0x2da639f3af2a6759", "0x8188a3bfa7e3cd4b", "0x76e686ff1fcaf4fa", "0x89ddbfa925f97652", "0xe2bad403bd652b7d", "0x45dbad8c761fdb54", "0x55061194ae7ee126", "0x720632294937c357", "0xff2d7c5204812c7a", "0xd556aef3d499cef2", "0xe668452438889ee", "0x3f49042022d7cc46", "0x6d4f3cb77788217e", "0x42538dea865dd3e9", "0x1b4f957e850e4724", "0xc025286c4e82e96b", "0xe5721d2ea65322d7", "0xc2bc1ef16832e97", "0x778a4f1fae8f3b38", "0x1847f441b3b16675", "0xd4e9b51571f5e0bd", "0x9c6e6660a6e25098", "0x2be6d212d9487690", "0xfec299eb349be0c7", "0x6f8ac872de397aff", "0x97f58521a2b4f680", "0x354923fc80cfe22d", "0xb7a6deeec524f266", "0x3e56902df2fc3f1b", "0x4c3ae7194b4bb702", "0xe135cd761ced18d3", "0xfefd09bfcfe552e5", "0xcfc8446e40067100", "0x3e9e2765bb17bcb8", "0x9a2f9c0b60f190fc", "0xc2e7b4d50fa35e8a", "0x4522f25e0a057b0c", "0x9d6a1fc1260a5081", "0x5d45e98ddf13862f", "0xf6820a5ae39a190", "0x7697ae56198e0db4", "0xfa9296c680e8e2b5", "0xac7e955b28c50727", "0xf1700b7dca2a25ff", "0x74e5c8dd9974834b", "0x52afb1437fe595fc", "0x5ba7eff968eb8288", "0x6519043988799eb6", "0x2b04543be2fa04c8", "0xde1a7bb46d2fe2a", "0x4bba2d8db17e39e8", "0xd63ff5e9052b84fa", "0x80e8cd37a4e07618", "0xd6a77f76dcf84de2", "0xaa76722907845489", "0x56eb76c682f60d9c", "0xd7bfa377f9907113", "0x2ffbcd57d88836e5", "0xbd82b40f252a91aa", "0x5105eac93df4440a", "0x2a9bda66d07f51a7", "0xeb9cb007ef729db6", "0x4a5f7a876c35b0a0", "0x49a0395c23d19687", "0x55a46713b602b1d9", "0xe3202412c4184100", "0x7a0ff331fcbff04d", "0x865b75a067b9d806", "0xba8f56f6ea680ca5", "0x17ee4a5ec217b843", "0x10278874a1ceef1a", "0xc94bcc9414c244a3", "0x236cc31a3b8fee7", "0xa343747e01502a80", "0xeb31de77181b77ac", "0x829c0dd5f28fa8a", "0x324ecb7f77bf8a34", "0xe9463872db8052d8", "0xa60ec16bdb33433a", "0xd01032b9f1222898", "0x5aedfe7d08eef6dc", "0x54665e62a8464a37", "0x2f90725beb679b11", "0x7c8b40495b8c34e2", "0xc1f4cabc431220f4", "0xe1fe6d18d0b28731", "0xa229635b5474fd64", "0x4746d8b96d830fdc", "0x62881f1014e00986", "0x1afff5262aea9c53", "0xa5af0551f8fb01f6", "0xc0403cbffd44f8ac", "0x684cd7fb76540f91", "0x7f6af6ad871a768e", "0x55f8905f3ab92065", "0x7658a084085c6580", "0x92491cd90805d7a3", "0x8a6a9217964bebdd", "0x724eadd2c7a3eb1c", "0x7ad205be2575a9bc", "0x79832bbe7119edc3", "0xf1e371193187dbfe", "0x2ba3ce2f655f33b3", "0x2b2f1c94870de9eb", "0xba6160a320439db8", "0x98031c305e12a31f", "0x2d7df6220d5fab4f", "0x34c51f54c9a1ebce", "0xa9418c3976d6f55d", "0x3937679cb20a45d5", "0x36d0d216074a7487", "0xc19afc60a3b4bf2b", "0xa073a49809793ff3", "0xb45dc4568a768325", "0xa32cf459ab83b689", "0x3162d3bec4ba32a2", "0x4804e0c346d374e9", "0x4a86dfd379880be4", "0x1638f886ae8913a2", "0x8e76370ecb111d99", "0xd47a752220951a7e", "0x430968c914bef4db", "0x5c915347f73cc310", "0xf6d7e2348b6d001a", "0xfa830f61a0e5be42", "0xf5f02411d85c7d4b", "0x560e35a207f378ea", "0xcdc91f79c2c7ba7e", "0x3693248857550707", "0x721aaf83b9103b7e", "0x61eedb78074360ae", "0xe17ae657e86f7538", "0xf36a0b7c7b1b3ac2", "0x17d273c56bc358d3", "0xa39db99ab226f007", "0xdc5c560e9b9fe573", "0xa0c915dbd3db504e", "0x1c467c4077361826", "0xa3663a15a872e00f", "0x43d0de296d25df63", "0x4725ad2dfbdcdda0", "0x46819a8535157e19", "0x2f049670928749", "0xe664b0d1bde56106", "0x9904e9c756bfe4a3", "0xa8c9eb6997b650d6", "0x655cc62c89c70b90", "0xe3d1ac26e2e0f3e8", "0xf960f4d7aac37a80", "0xbf2216e180d344a", "0x9e056aeeab0231b1", "0xb46780f23d7bebd5", "0x33fcf8a8d58ad7c8", "0x40d68ab7a624eb5f", "0xe14269b5137bc62c", "0x907c67ae46295a35", "0x67ab6ea479329a7f", "0x1590c1a0f5eac488", "0x7987b04906a0a7de", "0x7804af7a40b3653b", "0xd3b7d960e456af55", "0x53a53ea60780a16", "0x7a761dd548d20c23", "0x8983df3fee6cdd1c", "0x18bb2ee7c6d440c6", "0xacd36d2ef7cdf255", "0x39884a1fc23411dc", "0x37ee17694eaa11e2", "0xd25d34b9e1728454", "0xd73f5c36e4144298", "0xfc0a6b7d0b98566", "0xe8657174be63bc39", "0x7eb48e127e42523e", "0xb4402f4d3f6f6561", "0xd39e55344598b7cc", "0xee28157f7e74ecde", "0xfc3bcb002ea479c5", "0x5c81d7e006d6bb0b", "0xde8ed41aeb0ba5a0", "0xac35bea4d242c6e9", "0x982ea46cfd437c1f", "0xac5252e00c6376fe", "0x644c6ee020028b10", "0x3d5ce07865166", "0x7aa618f22a9c4759", "0x141e199d3793823b", "0x943762f683be1cf", "0x3f15cac6c8fe2f56", "0xe9fa347925553b43", "0xc81c222eda97d46e", "0xae41b686f4855de1", "0x7261d5023be47a5b", "0xbe4c5a36e11c516e", "0x5f54e53bfb4e514", "0x8cfab1dfdf92fa58", "0x183abf99cbe9b703", "0xf90ae956141f4a88", "0x62d7981732c5d138", "0x121e04f898ff8a95", "0x791583ce9308e6c4", "0xaa79a8f1d3934f17", "0x66740526643a5c53", "0x6fa229e4ce8bb999", "0x7bb1d01ca0369269", "0x8f98aa1d843a3805", "0x1e96893a14db2178", "0x8830ea074e410287", "0xcaed155237c97714", "0xa5a81c2bb006802", "0x30b843873418453a", "0xd74d281ffd08f89e", "0x4a172c66cd68c7c7", "0x8dabd1b587a15be4", "0xfd24a17a41ae7e7d", "0xc7778b1ee3b2d212", "0x32752c853e1cbecf", "0xcfccbfe3d236753b", "0x50de0f6fa5184dbb", "0xec83afd939d9b8c3", "0xfd466dd0dc8421ff", "0x18ba13af7cef4ff2", "0x576eee6f98b2a72f", "0x2b452f73616784b6", "0x7f1c3beb667caaac", "0x43f1582eb67791f4", "0xbbee33eea363349a", "0x5c56ac36bcd321c5", "0x3dbaae4d2e19d109", "0xa930648dd6cd1dba", "0x344814a39b14b371", "0xb375bad390481740", "0x751e4c7ceae368f9", "0xa851f76736164688", "0x1f50014a4d345acd", "0xd138064389c29b80", "0x92ce540f0ed19a50", "0x978164c788c43c5e", "0x50050719311be1bd", "0xddb8a54210526533", "0xe160c043b7ead441", "0x79ccbb88e2ecc25b", "0x333cb1b46514efd7", "0x1812a15489641355", "0xbe30d6476ec86ba6", "0xe1d7152fd00de6dd", "0xfdbc0e6cb4699db7", "0x54f87a491a4ebfc7", "0xbc95c7d1914e958c", "0x7cf60bcf24da926b", "0xcc0b0240b9f91d7b", "0xc095684c841c6efa", "0xa38e56f6665110fa", "0x263e5137dfb79e69", "0x6d8add55aa17e69f", "0x721395dde455bbf9", "0x96884cdd0844243f", "0x971e3a7f531a2938", "0x9bf8954d54b8183e", "0x8c4af3f501910863", "0xf697f55077fb097", "0x5a739132cdaaa014", "0x1f9b9d860208fdc4", "0x273c2649f6388da6", "0xd81a3f0862bd97c1", "0x1c9454382f8af5fa", "0x62a9d41ad0f8d79d", "0xf2d694cf655270eb", "0xfa8351eb89a7d8ab", "0xec0344542d562f22", "0x9cc6cee2cbf38c94", "0xdd95c98297889c2d", "0xc272c517236f738e", "0xfebd9f3b6459dba9", "0xb41b02939259c34c", "0x8a233fa21d9754e3", "0xe17032ab523b476f", "0xc9addec653cb6d14", "0x30d88afd5e80792a", "0x8bd312e790b5957f", "0x99e5eb7d2fe9c86a", "0xe7814a28610d5f25", "0xf7d42e71c28a10a7", "0xd7943fb4c71d156d", "0x403cebb9aae04c9c", "0x33628c933e8a52ae", "0x17ba79d7e1c598e", "0x7069791106bc6e18", "0x27cfa196c8dc26fc", "0x969db90bfeb7ddcb", "0xea96e7d14cb343c8", "0x73084b273729593b", "0xa4c4eb22ddb0b6e7", "0x7c50a6ef49272228", "0x99836c28ad2c275", "0xd9553bc87dde79ab", "0x4cd8d6c536a87c59", "0xa5af348650f3538b", "0xf144d675f1f9dcb2", "0x6d9b681ec6e98c7", "0x36da3c3287672180", "0xe74dc66cbbbf1de1", "0x701c602164deb942", "0xb313a45eb757acba", "0x9bee5c0e63edb2b9", "0xd77d152c210874b", "0x2a032c5c883fa6c6", "0x21ec3c36c354c4db", "0x126e4ee043ad5141", "0x9048542d8861156b", "0x9b60c6e2447159c4", "0xbcd4f1559772d563", "0x4219a6038f0acdd7", "0x42544c6772be3585", "0xe2eeef7ce92b1266", "0x8f38e8d1aceba05a", "0x887f2e573c44e6b7", "0x234182ce267baa02", "0xaa1c85519b5bcfda", "0x9eee26469f0b69c7", "0x24921be78e064066", "0xb6d8e14ae0f185b7", "0x187aaa25ace6934b", "0x856c18d2f65dfe56", "0xeeffa0b35d5fa5e", "0xac6bc4b0d3686e0d", "0x905f9ebf33a2e6ef", "0x909ab740ef335e59", "0x22ffd021c44921a1", "0x3134931260de7247", "0x961e5a17dea85fa7", "0x5fbd435f818a098c", "0x6e76bccc6311d44f", "0x7b1fb22f8eac9b10", "0xbb795a4641cd5d4", "0x9016dc80a332419f", "0x1fcf836604002987", "0x1b83aa912ac0c39a", "0xcccf84d3fae32529", "0x8def04f6bb57aa8e", "0xe7d6997a65e728c9", "0xa07ef581893b050d", "0x817cf4cb2e7fd49e", "0x99ad705c2e0a4271", "0x517b8aa9495435d0", "0xd0a7a6a968d84027", "0xcd09cc2a5bc241b8", "0x38377779d149dcb6", "0x4982886400bf1fa9", "0xda5454d615e8b0b", "0x2a8b5fbf70d226e0", "0xf6727e9ebd341043", "0x963225883e9a09d0", "0x2032f816b131da03", "0x997e6efe92d041ea", "0x9a75172f9035fbbc", "0xd76d698315e4c9d9", "0x39d87ed33a796a7e", "0x4e71b84e774b749e", "0x2665fc8f22afb675", "0xf424c21d0a0762c5", "0xa1fe93d4e7cb7b4a", "0x13c24fcb952defe9", "0x67e4033f15f6f219", "0x9f36b4df1c90f3de", "0x16941d6a2f24ee50", "0xfd4887273ce67cbf", "0xdd359836f9ca6998", "0xeb98970de16b5464", "0x1238e397a5f3f0fa", "0xd624629d66ad1ad4", "0x7a04d53515ac2b2e", "0xa45b8ac15739afb3", "0x79b5787228f5a9bc", "0xe47a5d2127c4bf73", "0x24ab3f1d702fda84", "0xd316f43315789772", "0x2769a8e25386d1e8", "0x59b90cb81799196e", "0x3c79471015b8ebe6", "0x48267377b5932d9a", "0x56fb9cd9cbc33c64", "0x82b3253dcaa6d446", "0xdeb194b58df92d1", "0x2373219c0fdf9209", "0xbdcdfd862f82deb1", "0xaa038b69ec8fa642", "0x68b146f497e32a75", "0xf2451988cd94a24b", "0x26fa930862d6a55a", "0xe8c7097221976e54", "0xec98ca46faedff38", "0x1d3e2612cd066ac7", "0x53d8fd69f0210fe5", "0x78ca7fea8de82f79", "0x65a928fd60bbc843", "0xd6549ca2d9fccc8b", "0x8b7b16f35425e909", "0xc8748127ea60d74c", "0x8e967fe147f22d8d", "0x67b91cd64d0b0807", "0x27445c710965f9aa", "0xf70f3e7ca747bf94", "0x2b4bd5d1444ae050", "0xd1f3041a961d2edd", "0x19eb04005c8586ab", "0x94a47a8c3279447b", "0x5b4f6acce1c36ad5", "0xe091d60eb589e666", "0x638db2d2c8d814b3", "0x6bfc2fe2dba9cc43", "0xa84dacc2c676a78a", "0xe2ea17d9534fe95c", "0x5e2fa6197efcdc61", "0xd92c5f4643249ef7", "0x2a0e31d0b14c0495", "0xdc332c2b9095024", "0x14b7be9788242e29", "0xac9e1b331f0527ff", "0x3a802438b1694f52", "0x8ee7f5c5563c2b21", "0x20212f8b635ab64c", "0x8f72b9878351cb62", "0x4ad14a72be69ce55", "0x7344b5a36386bf92", "0x7aae6e7350b59a21", "0xfa790b2f392e004c", "0x8578b2759aff2620", "0xe0d0f6b979cbc164", "0x8bfaa57f71dcf694", "0x49cb9fbf32f91f67", "0xa7a1b5ce81b41beb", "0xfa411a00cca81292", "0x3289400aad94d4c1", "0x492d78920b97ff9", "0xbb276ada52870dd3", "0x98e6acc2ecdd29a1", "0xaf1b78b1e18ca875", "0x2ffdaaaa9ae8e48", "0x9bb5832201e4bece", "0x58bdcef8f16f4391", "0x43dbebd659497b33", "0x297ac209f68e1f2f", "0x9695faa1b93d964a", "0x96f6471273504e15", "0xcdf93f1d122b6d21", "0xe8746e331793bd66", "0x5d66a6f1680fdd4f", "0xeaf913bda65a43a4", "0xa7196cdaeb63910b", "0xd7495e9fd902934c", "0x7b701b3b3426c1be", "0xfcae39c9fb3c0a56", "0x198645126218b64d", "0x204984d0acb44262", "0x671c0382935b410f", "0xd84ab4e3dcd6a1aa", "0xc696d24dc5201fbb", "0xac758b03149193d4", "0x1ab4ed5efc168cd6", "0x2ddef90538724928", "0xd3a969e99003e430", "0x85eea2050cf8e515", "0x6de5b77ed0d9dc61", "0xe59f34ff513b0307", "0xe076516bc8e7f27a", "0x8c914e1d4bd6a7f9", "0xd6847910e842c0ab", "0x92c02c8e2dfd551f", "0xd3dece9d72c81847", "0xd9aa9437e471fd13", "0xf02cc2426d433189", "0x25fe68acaf9358d5", "0xe97880034fd8c1af", "0x7dc152e8ca660d83", "0xf008fd14256f96e7", "0x26b38a3cc73f839b", "0xb69d83db1d23bb67", "0x70702fc39dafe1db", "0x2f514f2b5597b059", "0xedfda9d8032943b3", "0x1d90f912c95242d6", "0xbaece9d164695735", "0x3af351799273760", "0x37f08268a43b5e6a", "0xe3db66114cc6d1ed", "0x22c07daee23568c7", "0x73b546d52ccbd0e9", "0x8f37e383ea9d14b4", "0xe46f0c93972a4680", "0x8ed90d6024611196", "0xf825ad2ea4cd8647", "0xd1ea0afcbe0556e2", "0x69b11985c2105df2", "0xfff0d583244017f8", "0x9f9eff6f8b1e510f", "0xaf1b2a07ddc9322d", "0x6e98e293e0c77ffa", "0x44ffb6b7780317e8", "0x6b3aa069df2914b9", "0xf707e207e6deedff", "0xe830d3f8b56a4959", "0xb663928c6ff23a04", "0x1934b053ec98c1fa", "0x7bb69c91754d7b4e", "0x8dd32c2c70f584ff", "0x22022c0e4bb13a65", "0x5411c6d73f35677c", "0xbf669ed7cd30f66c", "0x739858679344362c", "0x82d88fbd7a435152", "0x8f2b444fa1acf8ec", "0xf5a2fe6d94f48c22", "0x4a12dc98d3c7a0b8", "0x34295d7dc26bbe6a", "0x50664485e37aaf0b", "0x5439d19f0f7fc5e", "0xfbc8fe2a8f338de7", "0x5d3a95c4459d9950", "0x12639243e2875605", "0x62cbb0f78848bcf8", "0xa8163da6f04abc4b", "0x49ecfab645e3c5bc", "0x87f99e27aa1cb50a", "0xc91c5ddb8fd4de02", "0xe812be9fdac19eac", "0x1719f10cc196defc", "0x6acde31cef94f50", "0x8124830396f45d78", "0xbd166d492b2cc7a9", "0xf9f8654c3b9aaad4", "0xa7433f1c599c0dd2", "0xbefd9eb071e3fa33", "0x35ec0034581e30c1", "0x547c0d84213dda03", "0x11a7cfd55f0a014", "0x6f02f8e0b905189", "0xab4f087c169db2d7", "0x2c895f00f6ffe7c7", "0xe4ee2e4f4cabc00d", "0x2352d40d72119cf8", "0x73d2a3d2653a770b", "0xab94f34c2a1bf23d", "0x258455f7451b588a", "0x9515322c6592f0b5", "0xc844d67050922f02", "0x2f7a3f384d3f8aac", "0x2040f2a4f4fc3065", "0x21f27d1f677270e1", "0x398181b89250bb5b", "0xb0967da905d00b3a", "0xe828ad6bc0adfa89", "0x47efb236323c3f88", "0xe981842d02a5ba5b", "0xe01e1d2cb49f7f11", "0x478a87cfd9bd45d3", "0x1103588e0a2972eb", "0xab9ed53de10a6ec5", "0x8c44456da09aed1b", "0x43a09c0038827a3b", "0x3a459bf6cd54dc14", "0xe92dccc8019d0c50", "0xc98b038818860ae0", "0x968975b6d44fb9ac", "0x85204af9fb099b29", "0xd3ca2e8c7da896be", "0x83f2e5a449956988", "0x303db9e4ad091f96", "0xaf5b26e1bd74cae3", "0xdcedb90c5655b17b", "0x8f2580b9cf1c89c8", "0xeb6e33de2d9240f3", "0xda4372bc70a7eb38", "0x16a3844450b6eece", "0xb0722b6acc556079", "0xaabb189a523b319", "0xb5bb59016ca20a94", "0x3b94e6a015b05efa", "0x9b34a28d2240cca3", "0x5fd6e44997ec1b7e", "0x4e689244f22f68f9", "0xc6064bda93cc759b", "0x7c8cfe163a823901", "0x7212aaec144efd3b", "0x82584966e97b1aad", "0x9c95a36446b41125", "0xcb90e6e7a8a30446", "0x93406ebc3fb89e0a", "0x205562516e3d177", "0x1c0ae2ab3864d7a7", "0xd766a088ed6e2442", "0xb6815805f99039a9", "0xa5404b4fc8af54bd", "0x1304f5faf34ce92e", "0xed89085f720f44bc", "0xbf28023d4f0626cc", "0x892a58909fd0e2f0", "0x1864de276b630889", "0xc0d10567171308a5", "0xeb0ff01d485abd67", "0x950d2af24a2ca5f", "0x6ae94bbd6f92fa52", "0xe3adebf47609dd9c", "0x8d48d35306bc3f09", "0x27d451cbce994638", "0x864d79d88643138b", "0xb66dbd062d85d371", "0x3f0fc6aed977bf22", "0xe59ed5459b5df6be", "0x7b6b1eddd2894b6a", "0x69d04a103a00e9b7", "0x206b0fae08688616", "0x512e3750f73455e7", "0x95b4f8bc1fab4de6", "0xf1da882d7be96e35", "0xe8e88c4f9be61238", "0xa80844040ca0c67f", "0x1e4f7eefe0946c31", "0xfae2ed45707243e", "0x3600957afdc3c343", "0x61173a036611a0b1", "0xed91d05f4e011dcd", "0xc13097206961199e", "0x3f86b3b8110d497", "0xdf3f0496fb8570cd", "0x952293e0b1df05a3", "0x4db069702ad0090e", "0xa73e4c700fae52a2", "0x947d58cca1076bf9", "0x76bfa119dcab9fa6", "0x67815f2aa180b647", "0x6747a0d06eb1ffcb", "0xb9da3059ac712ffb", "0x3a8d6830b035ec93", "0xedb99a0f27de7e20", "0x703e1d252de3b3d5", "0x6e57de364dadec0d", "0x3310b391bc006390", "0x76fe9ecb091cceda", "0xd25cd2b4677daf1e", "0x4de31a62c221dc05", "0x3a8cdb69024ace82", "0xc582a8557c117c8a", "0xcf97b706d6424185", "0xeaefb109b0b5234b", "0xa5cd0668dc360512", "0x29c28f74111975ac", "0xa4e670cbcae9d278", "0xc522ed1a98de77a7", "0x371661dcde90ab7b", "0xc0e2b2951c505de9", "0x4924d76c08e7f78e", "0xa1a3e94162d24ea9", "0x92390bcf60486052", "0x5edb10eed3790912", "0x560608dbbb21202e", "0xf11fb909476ca710", "0xe745b21fbb335049", "0x99f560718b704eb3", "0x68d16f58507183bf", "0x613361e3437dffd4", "0x63158badc2cd1dcd", "0xd2be3527f197fb00", "0x437cc635325a908", "0xc41d7f5fcf69d98", "0x79b2a6e6aac60f5b", "0xaa283614611e3904", "0x5e26f19d58f29746", "0xca724b7d17ab290f", "0xb79c733383b2e836", "0x5389b1d190a507cf", "0xaf951336375a66c4", "0x771e15f34b76b5b3", "0x879af1815d07e94e", "0xd3f3fbec80920050", "0xa4f417c9101626de", "0x9df933a96c2336b1", "0x7a12b6116cdfe7f7", "0x1cf31c0cd7f7b642", "0xfdadedeb907d2954", "0xea2748e71ab79c2f", "0xde4b69f5d9e1d926", "0x6fb145a0df87c7c2", "0x284db24708593d85", "0xcf8c2cebbf66a372", "0x6f645b93d8da283e", "0x3c73b183eb560924", "0xf4d9b33f9e86f101", "0x7f154a452c918e8a", "0x91ed0ff2b4ec3f7", "0xde8af22ec7ce1250", "0x65a2e59790de969e", "0xc9abb048ec582ad4", "0x2a21d2e4135932a1", "0x4ce84ae4e8606fca", "0x4707fcf0553e7cf4", "0x86f4a8ed8b31278e", "0xd31827a27b9c9ebc", "0x586773e0207cbb6c", "0xbe81d46fd9c493ef", "0xdadc8580ec00b709", "0x76b96c085df37b27", "0x314b3c7a45d05921", "0x682df0189beb7313", "0xc523b20a2204c5a2", "0xc95fbd37684e726", "0xa6d896ee4ed8519a", "0xf47783851a7e8a3c", "0x744db4501c6ded8a", "0xa70e2817788587c3", "0x2f0bca7e181e7267", "0x252e8b9e886b77fb", "0xfc347cf41bdb68c4", "0x3eeb4063c6ac32f8", "0xe22b516eb2c89cee", "0x54ffb368b1305868", "0x928162eefced053d", "0x130c6b91a3faa0c", "0x247cd666b8db482d", "0xcf2f208f0634fb51", "0x5db115c05999d3ec", "0x226cecf802ee326d", "0xb7a7a365930d8e7", "0x13e57202c7aee720", "0x438dc4efed0428cf", "0x8fbea9f59cb95d4b", "0x560e29ca842f97bf", "0x79127060abbeb45", "0x8d461c3e6bed3b34", "0x858ce42102dc5ecc", "0x6d98a4c5c43b613a", "0x34ec88c09b36f402", "0x8d83ebb535fa16c2", "0xdc90648d7edd5985", "0x674c7ccdf5b1cfe7", "0xd916a91e5b4d5f03", "0xc9743cd1b33911bf", "0x7f75bab681ecc3a4", "0x688bbf1c9f4a1dfc", "0x1b09676d3c17c7d6", "0x27ba871cb10a4cf6", "0xce0a79db52a83289", "0xa90cd2af25c05c3c", "0x1df4e1d43728514d", "0x2b137bd5329626ce", "0x7ce6da2ad5b59fda", "0x60ee3473d7821ac", "0xe30e84b6782709cb", "0xfc3709fad1e74291", "0x15bf5a3817d9e5af", "0xeab12d0aed8d7cc8", "0xaeb5cc0f7d06d1cd", "0x7b8f3ee03b017771", "0x6d94565185552218", "0xf2628087f8e45c92", "0x895ca92788ebf603", "0xb28237c94d306760", "0xa53aa17a2dd0d800", "0x1c3c78e16c99c26d", "0x54a2ddf5fb377100", "0x44da7f3c02cd489f", "0x6ca91017a25a35f5", "0x33f0759d0eb6e24f", "0xc18d61372b7e0dee"}
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
['MOD_FILENAME']    = 'ShipSeedsLoader_death.pak',
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