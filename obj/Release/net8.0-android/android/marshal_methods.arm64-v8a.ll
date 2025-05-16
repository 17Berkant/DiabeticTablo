; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [170 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [340 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 48
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 169
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 53
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 123
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 76
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 93
	i64 545109961164950392, ; 6: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 7
	i64 750875890346172408, ; 7: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 156
	i64 799765834175365804, ; 8: System.ComponentModel.dll => 0xb1956c9f18442ac => 110
	i64 849051935479314978, ; 9: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 10
	i64 872800313462103108, ; 10: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 81
	i64 1024048084922965000, ; 11: en-US/Syncfusion.Maui.PdfViewer.resources.dll => 0xe36264ebec09c08 => 35
	i64 1120440138749646132, ; 12: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 97
	i64 1121665720830085036, ; 13: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 18
	i64 1168642086743967698, ; 14: Syncfusion.Maui.Buttons.dll => 0x1037d9c941f207d2 => 59
	i64 1236535487633115808, ; 15: Syncfusion.Maui.PdfViewer => 0x11290e797c894aa0 => 65
	i64 1268860745194512059, ; 16: System.Drawing.dll => 0x119be62002c19ebb => 118
	i64 1369545283391376210, ; 17: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 89
	i64 1476839205573959279, ; 18: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 132
	i64 1486715745332614827, ; 19: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 50
	i64 1513467482682125403, ; 20: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 168
	i64 1537168428375924959, ; 21: System.Threading.Thread.dll => 0x15551e8a954ae0df => 156
	i64 1556147632182429976, ; 22: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 16
	i64 1624659445732251991, ; 23: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 73
	i64 1628611045998245443, ; 24: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 86
	i64 1735388228521408345, ; 25: System.Net.Mail.dll => 0x181556663c69b759 => 129
	i64 1743969030606105336, ; 26: System.Memory.dll => 0x1833d297e88f2af8 => 126
	i64 1767386781656293639, ; 27: System.Private.Uri.dll => 0x188704e9f5582107 => 140
	i64 1795316252682057001, ; 28: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 72
	i64 1835311033149317475, ; 29: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 30: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 93
	i64 1875417405349196092, ; 31: System.Drawing.Primitives => 0x1a06d2319b6c713c => 117
	i64 1881198190668717030, ; 32: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 33: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 51
	i64 1959996714666907089, ; 34: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 28
	i64 1981742497975770890, ; 35: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 85
	i64 1983698669889758782, ; 36: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 2
	i64 2019660174692588140, ; 37: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 20
	i64 2102659300918482391, ; 38: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 117
	i64 2165725771938924357, ; 39: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 74
	i64 2262844636196693701, ; 40: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 81
	i64 2287834202362508563, ; 41: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 103
	i64 2302323944321350744, ; 42: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 24
	i64 2329709569556905518, ; 43: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 84
	i64 2335503487726329082, ; 44: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 151
	i64 2470498323731680442, ; 45: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 77
	i64 2497223385847772520, ; 46: System.Runtime => 0x22a7eb7046413568 => 147
	i64 2547086958574651984, ; 47: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 71
	i64 2602673633151553063, ; 48: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2624866290265602282, ; 49: mscorlib.dll => 0x246d65fbde2db8ea => 164
	i64 2632269733008246987, ; 50: System.Net.NameResolution => 0x2487b36034f808cb => 130
	i64 2656907746661064104, ; 51: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 43
	i64 2662981627730767622, ; 52: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2895129759130297543, ; 53: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 54: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 97
	i64 3289520064315143713, ; 55: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 83
	i64 3311221304742556517, ; 56: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 138
	i64 3325875462027654285, ; 57: System.Runtime.Numerics => 0x2e27e21c8958b48d => 145
	i64 3328853167529574890, ; 58: System.Net.Sockets.dll => 0x2e327651a008c1ea => 136
	i64 3344514922410554693, ; 59: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 99
	i64 3428281336151586183, ; 60: Syncfusion.Pdf.NET => 0x2f93b3b61f6ab587 => 70
	i64 3429672777697402584, ; 61: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 53
	i64 3494946837667399002, ; 62: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 41
	i64 3520784151859913863, ; 63: Syncfusion.Maui.TabView.dll => 0x30dc56883e6f6487 => 68
	i64 3522470458906976663, ; 64: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 94
	i64 3551103847008531295, ; 65: System.Private.CoreLib.dll => 0x31480e226177735f => 166
	i64 3567343442040498961, ; 66: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 67: System.Runtime.dll => 0x319037675df7e556 => 147
	i64 3638003163729360188, ; 68: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 42
	i64 3647754201059316852, ; 69: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 161
	i64 3655542548057982301, ; 70: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 41
	i64 3716579019761409177, ; 71: netstandard.dll => 0x3393f0ed5c8c5c99 => 165
	i64 3727469159507183293, ; 72: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 92
	i64 3869221888984012293, ; 73: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 45
	i64 3890352374528606784, ; 74: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 51
	i64 3933965368022646939, ; 75: System.Net.Requests => 0x369840a8bfadc09b => 133
	i64 3966267475168208030, ; 76: System.Memory => 0x370b03412596249e => 126
	i64 4050760258208440355, ; 77: en-US\Syncfusion.Maui.Buttons.resources => 0x383730fe34c8a023 => 34
	i64 4073500526318903918, ; 78: System.Private.Xml.dll => 0x3887fb25779ae26e => 142
	i64 4073631083018132676, ; 79: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 49
	i64 4120493066591692148, ; 80: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 81: System.ComponentModel => 0x39a7562737acb67e => 110
	i64 4167269041631776580, ; 82: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 157
	i64 4187479170553454871, ; 83: System.Linq.Expressions => 0x3a1cea1e912fa117 => 123
	i64 4205801962323029395, ; 84: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 109
	i64 4356591372459378815, ; 85: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 30
	i64 4373617458794931033, ; 86: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 122
	i64 4477672992252076438, ; 87: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 159
	i64 4679594760078841447, ; 88: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 0
	i64 4794310189461587505, ; 89: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 71
	i64 4795410492532947900, ; 90: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 94
	i64 4809057822547766521, ; 91: System.Drawing => 0x42bd349c3145ecf9 => 118
	i64 4814660307502931973, ; 92: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 130
	i64 4853321196694829351, ; 93: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 144
	i64 5103417709280584325, ; 94: System.Collections.Specialized => 0x46d2fb5e161b6285 => 106
	i64 5182934613077526976, ; 95: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 106
	i64 5290786973231294105, ; 96: System.Runtime.Loader => 0x496ca6b869b72699 => 144
	i64 5332349484191854038, ; 97: Syncfusion.Maui.Core.dll => 0x4a004f9a977e2dd6 => 60
	i64 5471532531798518949, ; 98: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 99: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 100: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 120
	i64 5573260873512690141, ; 101: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 148
	i64 5624830944504739400, ; 102: DiabeticTablo.dll => 0x4e0f69f140d47648 => 100
	i64 5692067934154308417, ; 103: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 96
	i64 5979151488806146654, ; 104: System.Formats.Asn1 => 0x52fa3699a489d25e => 119
	i64 6068057819846744445, ; 105: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 23
	i64 6200764641006662125, ; 106: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6222399776351216807, ; 107: System.Text.Json.dll => 0x565a67a0ffe264a7 => 152
	i64 6357457916754632952, ; 108: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 36
	i64 6401687960814735282, ; 109: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 84
	i64 6478287442656530074, ; 110: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6504860066809920875, ; 111: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 74
	i64 6548213210057960872, ; 112: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 80
	i64 6560151584539558821, ; 113: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 47
	i64 6617685658146568858, ; 114: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 149
	i64 6643574370781285801, ; 115: Syncfusion.Maui.Sliders => 0x5c32b7b0e94ecda9 => 67
	i64 6671798237668743565, ; 116: SkiaSharp => 0x5c96fd260152998d => 56
	i64 6743165466166707109, ; 117: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6777482997383978746, ; 118: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 22
	i64 6784420147581266553, ; 119: en-US/Syncfusion.Maui.Buttons.resources.dll => 0x5e271a2dc795aa79 => 34
	i64 6786606130239981554, ; 120: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 116
	i64 6814185388980153342, ; 121: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 162
	i64 6876862101832370452, ; 122: System.Xml.Linq => 0x5f6f85a57d108914 => 160
	i64 6894844156784520562, ; 123: System.Numerics.Vectors => 0x5faf683aead1ad72 => 138
	i64 6905611965205074840, ; 124: Syncfusion.Maui.PdfToImageConverter => 0x5fd5a97eaebc5398 => 64
	i64 7060896174307865760, ; 125: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 155
	i64 7083547580668757502, ; 126: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 141
	i64 7220009545223068405, ; 127: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 26
	i64 7270811800166795866, ; 128: System.Linq => 0x64e71ccf51a90a5a => 125
	i64 7316205155833392065, ; 129: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 102
	i64 7377312882064240630, ; 130: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 109
	i64 7488575175965059935, ; 131: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 160
	i64 7489048572193775167, ; 132: System.ObjectModel => 0x67ee71ff6b419e3f => 139
	i64 7526939507201682620, ; 133: Syncfusion.Maui.DataSource.dll => 0x68750f9a349c2cbc => 61
	i64 7592577537120840276, ; 134: System.Diagnostics.Process => 0x695e410af5b2aa54 => 114
	i64 7654504624184590948, ; 135: System.Net.Http => 0x6a3a4366801b8264 => 128
	i64 7694700312542370399, ; 136: System.Net.Mail => 0x6ac9112a7e2cda5f => 129
	i64 7708790323521193081, ; 137: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 17
	i64 7714652370974252055, ; 138: System.Private.CoreLib => 0x6b0ff375198b9c17 => 166
	i64 7735176074855944702, ; 139: Microsoft.CSharp => 0x6b58dda848e391fe => 101
	i64 7735352534559001595, ; 140: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 98
	i64 7836164640616011524, ; 141: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 73
	i64 7932306995570506601, ; 142: BitMiracle.LibTiff.NET => 0x6e15372f70537b69 => 37
	i64 8064050204834738623, ; 143: System.Collections.dll => 0x6fe942efa61731bf => 107
	i64 8083354569033831015, ; 144: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 83
	i64 8085230611270010360, ; 145: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 127
	i64 8087206902342787202, ; 146: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 113
	i64 8167236081217502503, ; 147: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 167
	i64 8185542183669246576, ; 148: System.Collections => 0x7198e33f4794aa70 => 107
	i64 8246048515196606205, ; 149: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 54
	i64 8264926008854159966, ; 150: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 114
	i64 8368701292315763008, ; 151: System.Security.Cryptography => 0x7423997c6fd56140 => 148
	i64 8400357532724379117, ; 152: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 91
	i64 8518412311883997971, ; 153: System.Collections.Immutable => 0x76377add7c28e313 => 104
	i64 8542321783515278838, ; 154: Syncfusion.Maui.TabView => 0x768c6c6727826df6 => 68
	i64 8563666267364444763, ; 155: System.Private.Uri => 0x76d841191140ca5b => 140
	i64 8599632406834268464, ; 156: CommunityToolkit.Maui => 0x7758081c784b4930 => 38
	i64 8614108721271900878, ; 157: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 21
	i64 8626175481042262068, ; 158: Java.Interop => 0x77b654e585b55834 => 167
	i64 8638972117149407195, ; 159: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 101
	i64 8639588376636138208, ; 160: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 90
	i64 8677882282824630478, ; 161: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 162: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 113
	i64 8941376889969657626, ; 163: System.Xml.XDocument => 0x7c1626e87187471a => 162
	i64 9018115755604203945, ; 164: FmgLib.MauiMarkup.dll => 0x7d26c87fec2459a9 => 40
	i64 9045785047181495996, ; 165: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9312692141327339315, ; 166: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 96
	i64 9324707631942237306, ; 167: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 72
	i64 9659729154652888475, ; 168: System.Text.RegularExpressions => 0x860e407c9991dd9b => 153
	i64 9667360217193089419, ; 169: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 115
	i64 9678050649315576968, ; 170: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 77
	i64 9702891218465930390, ; 171: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 105
	i64 9753271924629329360, ; 172: Syncfusion.Maui.SignaturePad.dll => 0x875a9523f15255d0 => 66
	i64 9808709177481450983, ; 173: Mono.Android.dll => 0x881f890734e555e7 => 169
	i64 9933555792566666578, ; 174: System.Linq.Queryable.dll => 0x89db145cf475c552 => 124
	i64 9956195530459977388, ; 175: Microsoft.Maui => 0x8a2b8315b36616ac => 52
	i64 9991543690424095600, ; 176: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 6
	i64 10038780035334861115, ; 177: System.Net.Http.dll => 0x8b50e941206af13b => 128
	i64 10051358222726253779, ; 178: System.Private.Xml => 0x8b7d990c97ccccd3 => 142
	i64 10066932231066380112, ; 179: QuestPDF => 0x8bb4ed86faa46750 => 55
	i64 10092835686693276772, ; 180: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 50
	i64 10105485790837105934, ; 181: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 155
	i64 10111061797727106490, ; 182: Syncfusion.Pdf.Imaging.NET => 0x8c51b522638bf5ba => 69
	i64 10143853363526200146, ; 183: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10172042533944518731, ; 184: Syncfusion.Maui.GridCommon.dll => 0x8d2a5aca73ed684b => 62
	i64 10203504704108350218, ; 185: Syncfusion.Compression.NET.dll => 0x8d9a2177c867cb0a => 57
	i64 10229024438826829339, ; 186: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 80
	i64 10236703004850800690, ; 187: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 135
	i64 10406448008575299332, ; 188: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 99
	i64 10430153318873392755, ; 189: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 78
	i64 10506226065143327199, ; 190: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10512690409504421330, ; 191: Syncfusion.Maui.GridCommon => 0x91e4943a942ab5d2 => 62
	i64 10670374202010151210, ; 192: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 102
	i64 10785150219063592792, ; 193: System.Net.Primitives => 0x95ac8cfb68830758 => 132
	i64 10822644899632537592, ; 194: System.Linq.Queryable => 0x9631c23204ca5ff8 => 124
	i64 10880838204485145808, ; 195: CommunityToolkit.Maui.dll => 0x970080b2a4d614d0 => 38
	i64 11002576679268595294, ; 196: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 46
	i64 11009005086950030778, ; 197: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 52
	i64 11103970607964515343, ; 198: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11162124722117608902, ; 199: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 95
	i64 11220793807500858938, ; 200: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 201: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 47
	i64 11340910727871153756, ; 202: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 79
	i64 11407388793792690748, ; 203: Syncfusion.Pdf.NET.dll => 0x9e4f2fab44c8fa3c => 70
	i64 11485890710487134646, ; 204: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 143
	i64 11518296021396496455, ; 205: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 206: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 95
	i64 11530571088791430846, ; 207: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 45
	i64 11597940890313164233, ; 208: netstandard => 0xa0f429ca8d1805c9 => 165
	i64 11705530742807338875, ; 209: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 9
	i64 12040886584167504988, ; 210: System.Net.ServicePoint => 0xa719d28d8e121c5c => 135
	i64 12061331003358742577, ; 211: Syncfusion.Maui.SignaturePad => 0xa76274a4d59a8831 => 66
	i64 12090555025858309472, ; 212: en-US\Syncfusion.Maui.PdfViewer.resources => 0xa7ca47bccd992d60 => 35
	i64 12145679461940342714, ; 213: System.Text.Json => 0xa88e1f1ebcb62fba => 152
	i64 12245746946636392273, ; 214: Syncfusion.Maui.Sliders.dll => 0xa9f1a1f79b962751 => 67
	i64 12269460666702402136, ; 215: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 104
	i64 12341818387765915815, ; 216: CommunityToolkit.Maui.Core.dll => 0xab46f26f152bf0a7 => 39
	i64 12451044538927396471, ; 217: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 82
	i64 12463625692235400003, ; 218: BitMiracle.LibTiff.NET.dll => 0xacf7b1882f1f8343 => 37
	i64 12466513435562512481, ; 219: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 87
	i64 12475113361194491050, ; 220: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 36
	i64 12517810545449516888, ; 221: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 116
	i64 12538491095302438457, ; 222: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 75
	i64 12550732019250633519, ; 223: System.IO.Compression => 0xae2d28465e8e1b2f => 121
	i64 12681088699309157496, ; 224: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 14
	i64 12699999919562409296, ; 225: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 115
	i64 12700543734426720211, ; 226: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 76
	i64 12708922737231849740, ; 227: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 150
	i64 12823819093633476069, ; 228: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 27
	i64 12835242264250840079, ; 229: System.IO.Pipes => 0xb21ff0d5d6c0740f => 122
	i64 12843321153144804894, ; 230: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 48
	i64 12859557719246324186, ; 231: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 137
	i64 13068258254871114833, ; 232: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 146
	i64 13131176549797933484, ; 233: FmgLib.MauiMarkup => 0xb63b4f8005a531ac => 40
	i64 13221551921002590604, ; 234: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 1
	i64 13222659110913276082, ; 235: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 15
	i64 13343850469010654401, ; 236: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 168
	i64 13381594904270902445, ; 237: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13465488254036897740, ; 238: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 98
	i64 13467053111158216594, ; 239: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 29
	i64 13492260750531519258, ; 240: Syncfusion.Maui.ListView.dll => 0xbb3e23aae460631a => 63
	i64 13540124433173649601, ; 241: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13545416393490209236, ; 242: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 13
	i64 13572454107664307259, ; 243: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 92
	i64 13717397318615465333, ; 244: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 108
	i64 13755568601956062840, ; 245: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 8
	i64 13814445057219246765, ; 246: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 11
	i64 13881769479078963060, ; 247: System.Console.dll => 0xc0a5f3cade5c6774 => 111
	i64 13959074834287824816, ; 248: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 82
	i64 13965721125420810427, ; 249: Syncfusion.Compression.NET => 0xc1d0355eb8e040bb => 57
	i64 13970307180132182141, ; 250: Syncfusion.Licensing => 0xc1e0805ccade287d => 58
	i64 14100563506285742564, ; 251: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 3
	i64 14124974489674258913, ; 252: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 75
	i64 14125464355221830302, ; 253: System.Threading.dll => 0xc407bafdbc707a9e => 158
	i64 14254574811015963973, ; 254: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 150
	i64 14288834806787933687, ; 255: Syncfusion.Maui.PdfToImageConverter.dll => 0xc64c238d20d505f7 => 64
	i64 14353329275190349375, ; 256: Syncfusion.Maui.ListView => 0xc73144edb7ef8e3f => 63
	i64 14461014870687870182, ; 257: System.Net.Requests.dll => 0xc8afd8683afdece6 => 133
	i64 14464374589798375073, ; 258: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14522721392235705434, ; 259: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 5
	i64 14538127318538747197, ; 260: Syncfusion.Licensing.dll => 0xc9c1cdc518e77d3d => 58
	i64 14551742072151931844, ; 261: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 151
	i64 14556034074661724008, ; 262: CommunityToolkit.Maui.Core => 0xca016bdea6b19f68 => 39
	i64 14622043554576106986, ; 263: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 146
	i64 14669215534098758659, ; 264: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 43
	i64 14690985099581930927, ; 265: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 159
	i64 14705122255218365489, ; 266: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14744092281598614090, ; 267: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14749128323909883815, ; 268: QuestPDF.dll => 0xccaf6e10fd4d17a7 => 55
	i64 14852515768018889994, ; 269: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 79
	i64 14892012299694389861, ; 270: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 33
	i64 14904040806490515477, ; 271: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14935719434541007538, ; 272: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 149
	i64 14954917835170835695, ; 273: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 44
	i64 14984936317414011727, ; 274: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 137
	i64 14987728460634540364, ; 275: System.IO.Compression.dll => 0xcfff1ba06622494c => 121
	i64 15015154896917945444, ; 276: System.Net.Security.dll => 0xd0608bd33642dc64 => 134
	i64 15024878362326791334, ; 277: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 127
	i64 15076659072870671916, ; 278: System.ObjectModel.dll => 0xd13b0d8c1620662c => 139
	i64 15111608613780139878, ; 279: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 280: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 120
	i64 15133485256822086103, ; 281: System.Linq.dll => 0xd204f0a9127dd9d7 => 125
	i64 15227001540531775957, ; 282: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 42
	i64 15370334346939861994, ; 283: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 78
	i64 15391712275433856905, ; 284: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 44
	i64 15527772828719725935, ; 285: System.Console => 0xd77dbb1e38cd3d6f => 111
	i64 15536481058354060254, ; 286: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15557562860424774966, ; 287: System.Net.Sockets => 0xd7e790fe7a6dc536 => 136
	i64 15582737692548360875, ; 288: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 86
	i64 15609085926864131306, ; 289: System.dll => 0xd89e9cf3334914ea => 163
	i64 15661133872274321916, ; 290: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 161
	i64 15664356999916475676, ; 291: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 4
	i64 15743187114543869802, ; 292: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 12
	i64 15745825835632158716, ; 293: Syncfusion.Maui.Core => 0xda84692c2c05e7fc => 60
	i64 15783653065526199428, ; 294: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 15847085070278954535, ; 295: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 154
	i64 15928521404965645318, ; 296: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 49
	i64 16018552496348375205, ; 297: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 131
	i64 16154507427712707110, ; 298: System => 0xe03056ea4e39aa26 => 163
	i64 16219561732052121626, ; 299: System.Net.Security => 0xe1177575db7c781a => 134
	i64 16288847719894691167, ; 300: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 301: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 46
	i64 16324796876805858114, ; 302: SkiaSharp.dll => 0xe28d5444586b6342 => 56
	i64 16454459195343277943, ; 303: System.Net.NetworkInformation => 0xe459fb756d988f77 => 131
	i64 16649148416072044166, ; 304: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 54
	i64 16655177468418176197, ; 305: Syncfusion.Pdf.Imaging.NET.dll => 0xe72313aa2427b4c5 => 69
	i64 16677317093839702854, ; 306: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 91
	i64 16833383113903931215, ; 307: mscorlib => 0xe99c30c1484d7f4f => 164
	i64 16856067890322379635, ; 308: System.Data.Common.dll => 0xe9ecc87060889373 => 112
	i64 16890310621557459193, ; 309: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 153
	i64 16942731696432749159, ; 310: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16998075588627545693, ; 311: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 89
	i64 17008137082415910100, ; 312: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 105
	i64 17031351772568316411, ; 313: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 88
	i64 17062143951396181894, ; 314: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 108
	i64 17089008752050867324, ; 315: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 32
	i64 17102494345910816168, ; 316: Syncfusion.Maui.Buttons => 0xed5843fea5240da8 => 59
	i64 17118171214553292978, ; 317: System.Threading.Channels => 0xed8ff6060fc420b2 => 154
	i64 17230721278011714856, ; 318: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 141
	i64 17260702271250283638, ; 319: System.Data.Common => 0xef8a5543bba6bc76 => 112
	i64 17342750010158924305, ; 320: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17438153253682247751, ; 321: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 25
	i64 17514990004910432069, ; 322: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17623389608345532001, ; 323: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17702523067201099846, ; 324: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 31
	i64 17704177640604968747, ; 325: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 87
	i64 17710060891934109755, ; 326: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 85
	i64 17712670374920797664, ; 327: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 143
	i64 17777860260071588075, ; 328: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 145
	i64 18025913125965088385, ; 329: System.Threading => 0xfa28e87b91334681 => 158
	i64 18069642728470617614, ; 330: Syncfusion.Maui.PdfViewer.dll => 0xfac4445310b61e0e => 65
	i64 18099568558057551825, ; 331: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 19
	i64 18121036031235206392, ; 332: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 88
	i64 18129928715865373433, ; 333: DiabeticTablo => 0xfb9a721c504f3af9 => 100
	i64 18146411883821974900, ; 334: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 119
	i64 18164061295166068260, ; 335: Syncfusion.Maui.DataSource => 0xfc13b582b8cb9624 => 61
	i64 18225059387460068507, ; 336: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 157
	i64 18245806341561545090, ; 337: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 103
	i64 18305135509493619199, ; 338: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 90
	i64 18324163916253801303 ; 339: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [340 x i32] [
	i32 48, ; 0
	i32 169, ; 1
	i32 53, ; 2
	i32 123, ; 3
	i32 76, ; 4
	i32 93, ; 5
	i32 7, ; 6
	i32 156, ; 7
	i32 110, ; 8
	i32 10, ; 9
	i32 81, ; 10
	i32 35, ; 11
	i32 97, ; 12
	i32 18, ; 13
	i32 59, ; 14
	i32 65, ; 15
	i32 118, ; 16
	i32 89, ; 17
	i32 132, ; 18
	i32 50, ; 19
	i32 168, ; 20
	i32 156, ; 21
	i32 16, ; 22
	i32 73, ; 23
	i32 86, ; 24
	i32 129, ; 25
	i32 126, ; 26
	i32 140, ; 27
	i32 72, ; 28
	i32 6, ; 29
	i32 93, ; 30
	i32 117, ; 31
	i32 28, ; 32
	i32 51, ; 33
	i32 28, ; 34
	i32 85, ; 35
	i32 2, ; 36
	i32 20, ; 37
	i32 117, ; 38
	i32 74, ; 39
	i32 81, ; 40
	i32 103, ; 41
	i32 24, ; 42
	i32 84, ; 43
	i32 151, ; 44
	i32 77, ; 45
	i32 147, ; 46
	i32 71, ; 47
	i32 27, ; 48
	i32 164, ; 49
	i32 130, ; 50
	i32 43, ; 51
	i32 2, ; 52
	i32 7, ; 53
	i32 97, ; 54
	i32 83, ; 55
	i32 138, ; 56
	i32 145, ; 57
	i32 136, ; 58
	i32 99, ; 59
	i32 70, ; 60
	i32 53, ; 61
	i32 41, ; 62
	i32 68, ; 63
	i32 94, ; 64
	i32 166, ; 65
	i32 22, ; 66
	i32 147, ; 67
	i32 42, ; 68
	i32 161, ; 69
	i32 41, ; 70
	i32 165, ; 71
	i32 92, ; 72
	i32 45, ; 73
	i32 51, ; 74
	i32 133, ; 75
	i32 126, ; 76
	i32 34, ; 77
	i32 142, ; 78
	i32 49, ; 79
	i32 33, ; 80
	i32 110, ; 81
	i32 157, ; 82
	i32 123, ; 83
	i32 109, ; 84
	i32 30, ; 85
	i32 122, ; 86
	i32 159, ; 87
	i32 0, ; 88
	i32 71, ; 89
	i32 94, ; 90
	i32 118, ; 91
	i32 130, ; 92
	i32 144, ; 93
	i32 106, ; 94
	i32 106, ; 95
	i32 144, ; 96
	i32 60, ; 97
	i32 26, ; 98
	i32 29, ; 99
	i32 120, ; 100
	i32 148, ; 101
	i32 100, ; 102
	i32 96, ; 103
	i32 119, ; 104
	i32 23, ; 105
	i32 23, ; 106
	i32 152, ; 107
	i32 36, ; 108
	i32 84, ; 109
	i32 11, ; 110
	i32 74, ; 111
	i32 80, ; 112
	i32 47, ; 113
	i32 149, ; 114
	i32 67, ; 115
	i32 56, ; 116
	i32 19, ; 117
	i32 22, ; 118
	i32 34, ; 119
	i32 116, ; 120
	i32 162, ; 121
	i32 160, ; 122
	i32 138, ; 123
	i32 64, ; 124
	i32 155, ; 125
	i32 141, ; 126
	i32 26, ; 127
	i32 125, ; 128
	i32 102, ; 129
	i32 109, ; 130
	i32 160, ; 131
	i32 139, ; 132
	i32 61, ; 133
	i32 114, ; 134
	i32 128, ; 135
	i32 129, ; 136
	i32 17, ; 137
	i32 166, ; 138
	i32 101, ; 139
	i32 98, ; 140
	i32 73, ; 141
	i32 37, ; 142
	i32 107, ; 143
	i32 83, ; 144
	i32 127, ; 145
	i32 113, ; 146
	i32 167, ; 147
	i32 107, ; 148
	i32 54, ; 149
	i32 114, ; 150
	i32 148, ; 151
	i32 91, ; 152
	i32 104, ; 153
	i32 68, ; 154
	i32 140, ; 155
	i32 38, ; 156
	i32 21, ; 157
	i32 167, ; 158
	i32 101, ; 159
	i32 90, ; 160
	i32 21, ; 161
	i32 113, ; 162
	i32 162, ; 163
	i32 40, ; 164
	i32 31, ; 165
	i32 96, ; 166
	i32 72, ; 167
	i32 153, ; 168
	i32 115, ; 169
	i32 77, ; 170
	i32 105, ; 171
	i32 66, ; 172
	i32 169, ; 173
	i32 124, ; 174
	i32 52, ; 175
	i32 6, ; 176
	i32 128, ; 177
	i32 142, ; 178
	i32 55, ; 179
	i32 50, ; 180
	i32 155, ; 181
	i32 69, ; 182
	i32 3, ; 183
	i32 62, ; 184
	i32 57, ; 185
	i32 80, ; 186
	i32 135, ; 187
	i32 99, ; 188
	i32 78, ; 189
	i32 1, ; 190
	i32 62, ; 191
	i32 102, ; 192
	i32 132, ; 193
	i32 124, ; 194
	i32 38, ; 195
	i32 46, ; 196
	i32 52, ; 197
	i32 12, ; 198
	i32 95, ; 199
	i32 15, ; 200
	i32 47, ; 201
	i32 79, ; 202
	i32 70, ; 203
	i32 143, ; 204
	i32 13, ; 205
	i32 95, ; 206
	i32 45, ; 207
	i32 165, ; 208
	i32 9, ; 209
	i32 135, ; 210
	i32 66, ; 211
	i32 35, ; 212
	i32 152, ; 213
	i32 67, ; 214
	i32 104, ; 215
	i32 39, ; 216
	i32 82, ; 217
	i32 37, ; 218
	i32 87, ; 219
	i32 36, ; 220
	i32 116, ; 221
	i32 75, ; 222
	i32 121, ; 223
	i32 14, ; 224
	i32 115, ; 225
	i32 76, ; 226
	i32 150, ; 227
	i32 27, ; 228
	i32 122, ; 229
	i32 48, ; 230
	i32 137, ; 231
	i32 146, ; 232
	i32 40, ; 233
	i32 1, ; 234
	i32 15, ; 235
	i32 168, ; 236
	i32 9, ; 237
	i32 98, ; 238
	i32 29, ; 239
	i32 63, ; 240
	i32 30, ; 241
	i32 13, ; 242
	i32 92, ; 243
	i32 108, ; 244
	i32 8, ; 245
	i32 11, ; 246
	i32 111, ; 247
	i32 82, ; 248
	i32 57, ; 249
	i32 58, ; 250
	i32 3, ; 251
	i32 75, ; 252
	i32 158, ; 253
	i32 150, ; 254
	i32 64, ; 255
	i32 63, ; 256
	i32 133, ; 257
	i32 24, ; 258
	i32 5, ; 259
	i32 58, ; 260
	i32 151, ; 261
	i32 39, ; 262
	i32 146, ; 263
	i32 43, ; 264
	i32 159, ; 265
	i32 16, ; 266
	i32 32, ; 267
	i32 55, ; 268
	i32 79, ; 269
	i32 33, ; 270
	i32 0, ; 271
	i32 149, ; 272
	i32 44, ; 273
	i32 137, ; 274
	i32 121, ; 275
	i32 134, ; 276
	i32 127, ; 277
	i32 139, ; 278
	i32 17, ; 279
	i32 120, ; 280
	i32 125, ; 281
	i32 42, ; 282
	i32 78, ; 283
	i32 44, ; 284
	i32 111, ; 285
	i32 4, ; 286
	i32 136, ; 287
	i32 86, ; 288
	i32 163, ; 289
	i32 161, ; 290
	i32 4, ; 291
	i32 12, ; 292
	i32 60, ; 293
	i32 5, ; 294
	i32 154, ; 295
	i32 49, ; 296
	i32 131, ; 297
	i32 163, ; 298
	i32 134, ; 299
	i32 18, ; 300
	i32 46, ; 301
	i32 56, ; 302
	i32 131, ; 303
	i32 54, ; 304
	i32 69, ; 305
	i32 91, ; 306
	i32 164, ; 307
	i32 112, ; 308
	i32 153, ; 309
	i32 25, ; 310
	i32 89, ; 311
	i32 105, ; 312
	i32 88, ; 313
	i32 108, ; 314
	i32 32, ; 315
	i32 59, ; 316
	i32 154, ; 317
	i32 141, ; 318
	i32 112, ; 319
	i32 10, ; 320
	i32 25, ; 321
	i32 8, ; 322
	i32 20, ; 323
	i32 31, ; 324
	i32 87, ; 325
	i32 85, ; 326
	i32 143, ; 327
	i32 145, ; 328
	i32 158, ; 329
	i32 65, ; 330
	i32 19, ; 331
	i32 88, ; 332
	i32 100, ; 333
	i32 119, ; 334
	i32 61, ; 335
	i32 157, ; 336
	i32 103, ; 337
	i32 90, ; 338
	i32 14 ; 339
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
