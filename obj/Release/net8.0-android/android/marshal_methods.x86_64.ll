; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [164 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [328 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 46
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 163
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 50
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 119
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 73
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 90
	i64 545109961164950392, ; 6: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 7
	i64 750875890346172408, ; 7: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 151
	i64 799765834175365804, ; 8: System.ComponentModel.dll => 0xb1956c9f18442ac => 106
	i64 849051935479314978, ; 9: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 10
	i64 872800313462103108, ; 10: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 78
	i64 1024048084922965000, ; 11: en-US/Syncfusion.Maui.PdfViewer.resources.dll => 0xe36264ebec09c08 => 35
	i64 1120440138749646132, ; 12: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 94
	i64 1121665720830085036, ; 13: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 18
	i64 1168642086743967698, ; 14: Syncfusion.Maui.Buttons.dll => 0x1037d9c941f207d2 => 56
	i64 1236535487633115808, ; 15: Syncfusion.Maui.PdfViewer => 0x11290e797c894aa0 => 62
	i64 1268860745194512059, ; 16: System.Drawing.dll => 0x119be62002c19ebb => 114
	i64 1369545283391376210, ; 17: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 86
	i64 1476839205573959279, ; 18: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 127
	i64 1486715745332614827, ; 19: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 47
	i64 1513467482682125403, ; 20: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 162
	i64 1537168428375924959, ; 21: System.Threading.Thread.dll => 0x15551e8a954ae0df => 151
	i64 1556147632182429976, ; 22: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 16
	i64 1624659445732251991, ; 23: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 70
	i64 1628611045998245443, ; 24: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 83
	i64 1743969030606105336, ; 25: System.Memory.dll => 0x1833d297e88f2af8 => 122
	i64 1767386781656293639, ; 26: System.Private.Uri.dll => 0x188704e9f5582107 => 135
	i64 1795316252682057001, ; 27: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 69
	i64 1835311033149317475, ; 28: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 29: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 90
	i64 1875417405349196092, ; 30: System.Drawing.Primitives => 0x1a06d2319b6c713c => 113
	i64 1881198190668717030, ; 31: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 32: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 48
	i64 1959996714666907089, ; 33: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 28
	i64 1981742497975770890, ; 34: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 82
	i64 1983698669889758782, ; 35: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 2
	i64 2019660174692588140, ; 36: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 20
	i64 2102659300918482391, ; 37: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 113
	i64 2165725771938924357, ; 38: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 71
	i64 2262844636196693701, ; 39: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 78
	i64 2287834202362508563, ; 40: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 100
	i64 2302323944321350744, ; 41: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 24
	i64 2329709569556905518, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 81
	i64 2335503487726329082, ; 43: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 146
	i64 2470498323731680442, ; 44: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 74
	i64 2497223385847772520, ; 45: System.Runtime => 0x22a7eb7046413568 => 142
	i64 2547086958574651984, ; 46: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 68
	i64 2602673633151553063, ; 47: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2624866290265602282, ; 48: mscorlib.dll => 0x246d65fbde2db8ea => 158
	i64 2632269733008246987, ; 49: System.Net.NameResolution => 0x2487b36034f808cb => 125
	i64 2656907746661064104, ; 50: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 41
	i64 2662981627730767622, ; 51: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2895129759130297543, ; 52: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 53: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 94
	i64 3289520064315143713, ; 54: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 80
	i64 3311221304742556517, ; 55: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 133
	i64 3325875462027654285, ; 56: System.Runtime.Numerics => 0x2e27e21c8958b48d => 140
	i64 3328853167529574890, ; 57: System.Net.Sockets.dll => 0x2e327651a008c1ea => 131
	i64 3344514922410554693, ; 58: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 96
	i64 3428281336151586183, ; 59: Syncfusion.Pdf.NET => 0x2f93b3b61f6ab587 => 67
	i64 3429672777697402584, ; 60: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 50
	i64 3494946837667399002, ; 61: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 39
	i64 3520784151859913863, ; 62: Syncfusion.Maui.TabView.dll => 0x30dc56883e6f6487 => 65
	i64 3522470458906976663, ; 63: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 91
	i64 3551103847008531295, ; 64: System.Private.CoreLib.dll => 0x31480e226177735f => 160
	i64 3567343442040498961, ; 65: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 66: System.Runtime.dll => 0x319037675df7e556 => 142
	i64 3638003163729360188, ; 67: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 40
	i64 3647754201059316852, ; 68: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 155
	i64 3655542548057982301, ; 69: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 39
	i64 3716579019761409177, ; 70: netstandard.dll => 0x3393f0ed5c8c5c99 => 159
	i64 3727469159507183293, ; 71: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 89
	i64 3869221888984012293, ; 72: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 43
	i64 3890352374528606784, ; 73: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 48
	i64 3933965368022646939, ; 74: System.Net.Requests => 0x369840a8bfadc09b => 128
	i64 3966267475168208030, ; 75: System.Memory => 0x370b03412596249e => 122
	i64 4050760258208440355, ; 76: en-US\Syncfusion.Maui.Buttons.resources => 0x383730fe34c8a023 => 34
	i64 4073500526318903918, ; 77: System.Private.Xml.dll => 0x3887fb25779ae26e => 137
	i64 4120493066591692148, ; 78: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 79: System.ComponentModel => 0x39a7562737acb67e => 106
	i64 4167269041631776580, ; 80: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 152
	i64 4187479170553454871, ; 81: System.Linq.Expressions => 0x3a1cea1e912fa117 => 119
	i64 4205801962323029395, ; 82: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 105
	i64 4356591372459378815, ; 83: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 30
	i64 4373617458794931033, ; 84: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 118
	i64 4679594760078841447, ; 85: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 0
	i64 4794310189461587505, ; 86: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 68
	i64 4795410492532947900, ; 87: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 91
	i64 4809057822547766521, ; 88: System.Drawing => 0x42bd349c3145ecf9 => 114
	i64 4814660307502931973, ; 89: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 125
	i64 4853321196694829351, ; 90: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 139
	i64 5103417709280584325, ; 91: System.Collections.Specialized => 0x46d2fb5e161b6285 => 102
	i64 5182934613077526976, ; 92: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 102
	i64 5290786973231294105, ; 93: System.Runtime.Loader => 0x496ca6b869b72699 => 139
	i64 5332349484191854038, ; 94: Syncfusion.Maui.Core.dll => 0x4a004f9a977e2dd6 => 57
	i64 5471532531798518949, ; 95: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 96: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 97: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 116
	i64 5573260873512690141, ; 98: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 143
	i64 5624830944504739400, ; 99: DiabeticTablo.dll => 0x4e0f69f140d47648 => 97
	i64 5692067934154308417, ; 100: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 93
	i64 5979151488806146654, ; 101: System.Formats.Asn1 => 0x52fa3699a489d25e => 115
	i64 6068057819846744445, ; 102: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 23
	i64 6200764641006662125, ; 103: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6222399776351216807, ; 104: System.Text.Json.dll => 0x565a67a0ffe264a7 => 147
	i64 6357457916754632952, ; 105: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 36
	i64 6401687960814735282, ; 106: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 81
	i64 6478287442656530074, ; 107: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6504860066809920875, ; 108: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 71
	i64 6548213210057960872, ; 109: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 77
	i64 6560151584539558821, ; 110: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 45
	i64 6617685658146568858, ; 111: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 144
	i64 6643574370781285801, ; 112: Syncfusion.Maui.Sliders => 0x5c32b7b0e94ecda9 => 64
	i64 6671798237668743565, ; 113: SkiaSharp => 0x5c96fd260152998d => 53
	i64 6743165466166707109, ; 114: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6777482997383978746, ; 115: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 22
	i64 6784420147581266553, ; 116: en-US/Syncfusion.Maui.Buttons.resources.dll => 0x5e271a2dc795aa79 => 34
	i64 6786606130239981554, ; 117: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 112
	i64 6814185388980153342, ; 118: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 156
	i64 6876862101832370452, ; 119: System.Xml.Linq => 0x5f6f85a57d108914 => 154
	i64 6894844156784520562, ; 120: System.Numerics.Vectors => 0x5faf683aead1ad72 => 133
	i64 6905611965205074840, ; 121: Syncfusion.Maui.PdfToImageConverter => 0x5fd5a97eaebc5398 => 61
	i64 7060896174307865760, ; 122: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 150
	i64 7083547580668757502, ; 123: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 136
	i64 7220009545223068405, ; 124: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 26
	i64 7270811800166795866, ; 125: System.Linq => 0x64e71ccf51a90a5a => 121
	i64 7316205155833392065, ; 126: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 99
	i64 7377312882064240630, ; 127: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 105
	i64 7488575175965059935, ; 128: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 154
	i64 7489048572193775167, ; 129: System.ObjectModel => 0x67ee71ff6b419e3f => 134
	i64 7526939507201682620, ; 130: Syncfusion.Maui.DataSource.dll => 0x68750f9a349c2cbc => 58
	i64 7592577537120840276, ; 131: System.Diagnostics.Process => 0x695e410af5b2aa54 => 110
	i64 7654504624184590948, ; 132: System.Net.Http => 0x6a3a4366801b8264 => 124
	i64 7708790323521193081, ; 133: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 17
	i64 7714652370974252055, ; 134: System.Private.CoreLib => 0x6b0ff375198b9c17 => 160
	i64 7735176074855944702, ; 135: Microsoft.CSharp => 0x6b58dda848e391fe => 98
	i64 7735352534559001595, ; 136: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 95
	i64 7836164640616011524, ; 137: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 70
	i64 7932306995570506601, ; 138: BitMiracle.LibTiff.NET => 0x6e15372f70537b69 => 37
	i64 8064050204834738623, ; 139: System.Collections.dll => 0x6fe942efa61731bf => 103
	i64 8083354569033831015, ; 140: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 80
	i64 8085230611270010360, ; 141: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 123
	i64 8087206902342787202, ; 142: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 109
	i64 8167236081217502503, ; 143: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 161
	i64 8185542183669246576, ; 144: System.Collections => 0x7198e33f4794aa70 => 103
	i64 8246048515196606205, ; 145: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 51
	i64 8264926008854159966, ; 146: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 110
	i64 8368701292315763008, ; 147: System.Security.Cryptography => 0x7423997c6fd56140 => 143
	i64 8400357532724379117, ; 148: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 88
	i64 8542321783515278838, ; 149: Syncfusion.Maui.TabView => 0x768c6c6727826df6 => 65
	i64 8563666267364444763, ; 150: System.Private.Uri => 0x76d841191140ca5b => 135
	i64 8614108721271900878, ; 151: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 21
	i64 8626175481042262068, ; 152: Java.Interop => 0x77b654e585b55834 => 161
	i64 8638972117149407195, ; 153: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 98
	i64 8639588376636138208, ; 154: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 87
	i64 8677882282824630478, ; 155: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 156: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 109
	i64 8941376889969657626, ; 157: System.Xml.XDocument => 0x7c1626e87187471a => 156
	i64 9018115755604203945, ; 158: FmgLib.MauiMarkup.dll => 0x7d26c87fec2459a9 => 38
	i64 9045785047181495996, ; 159: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9312692141327339315, ; 160: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 93
	i64 9324707631942237306, ; 161: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 69
	i64 9659729154652888475, ; 162: System.Text.RegularExpressions => 0x860e407c9991dd9b => 148
	i64 9667360217193089419, ; 163: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 111
	i64 9678050649315576968, ; 164: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 74
	i64 9702891218465930390, ; 165: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 101
	i64 9753271924629329360, ; 166: Syncfusion.Maui.SignaturePad.dll => 0x875a9523f15255d0 => 63
	i64 9808709177481450983, ; 167: Mono.Android.dll => 0x881f890734e555e7 => 163
	i64 9933555792566666578, ; 168: System.Linq.Queryable.dll => 0x89db145cf475c552 => 120
	i64 9956195530459977388, ; 169: Microsoft.Maui => 0x8a2b8315b36616ac => 49
	i64 9991543690424095600, ; 170: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 6
	i64 10038780035334861115, ; 171: System.Net.Http.dll => 0x8b50e941206af13b => 124
	i64 10051358222726253779, ; 172: System.Private.Xml => 0x8b7d990c97ccccd3 => 137
	i64 10066932231066380112, ; 173: QuestPDF => 0x8bb4ed86faa46750 => 52
	i64 10092835686693276772, ; 174: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 47
	i64 10105485790837105934, ; 175: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 150
	i64 10111061797727106490, ; 176: Syncfusion.Pdf.Imaging.NET => 0x8c51b522638bf5ba => 66
	i64 10143853363526200146, ; 177: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10172042533944518731, ; 178: Syncfusion.Maui.GridCommon.dll => 0x8d2a5aca73ed684b => 59
	i64 10203504704108350218, ; 179: Syncfusion.Compression.NET.dll => 0x8d9a2177c867cb0a => 54
	i64 10229024438826829339, ; 180: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 77
	i64 10236703004850800690, ; 181: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 130
	i64 10406448008575299332, ; 182: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 96
	i64 10430153318873392755, ; 183: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 75
	i64 10506226065143327199, ; 184: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10512690409504421330, ; 185: Syncfusion.Maui.GridCommon => 0x91e4943a942ab5d2 => 59
	i64 10670374202010151210, ; 186: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 99
	i64 10785150219063592792, ; 187: System.Net.Primitives => 0x95ac8cfb68830758 => 127
	i64 10822644899632537592, ; 188: System.Linq.Queryable => 0x9631c23204ca5ff8 => 120
	i64 11002576679268595294, ; 189: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 44
	i64 11009005086950030778, ; 190: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 49
	i64 11103970607964515343, ; 191: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11162124722117608902, ; 192: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 92
	i64 11220793807500858938, ; 193: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 194: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 45
	i64 11340910727871153756, ; 195: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 76
	i64 11407388793792690748, ; 196: Syncfusion.Pdf.NET.dll => 0x9e4f2fab44c8fa3c => 67
	i64 11485890710487134646, ; 197: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 138
	i64 11518296021396496455, ; 198: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 199: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 92
	i64 11530571088791430846, ; 200: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 43
	i64 11597940890313164233, ; 201: netstandard => 0xa0f429ca8d1805c9 => 159
	i64 11705530742807338875, ; 202: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 9
	i64 12040886584167504988, ; 203: System.Net.ServicePoint => 0xa719d28d8e121c5c => 130
	i64 12061331003358742577, ; 204: Syncfusion.Maui.SignaturePad => 0xa76274a4d59a8831 => 63
	i64 12090555025858309472, ; 205: en-US\Syncfusion.Maui.PdfViewer.resources => 0xa7ca47bccd992d60 => 35
	i64 12145679461940342714, ; 206: System.Text.Json => 0xa88e1f1ebcb62fba => 147
	i64 12245746946636392273, ; 207: Syncfusion.Maui.Sliders.dll => 0xa9f1a1f79b962751 => 64
	i64 12451044538927396471, ; 208: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 79
	i64 12463625692235400003, ; 209: BitMiracle.LibTiff.NET.dll => 0xacf7b1882f1f8343 => 37
	i64 12466513435562512481, ; 210: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 84
	i64 12475113361194491050, ; 211: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 36
	i64 12517810545449516888, ; 212: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 112
	i64 12538491095302438457, ; 213: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 72
	i64 12550732019250633519, ; 214: System.IO.Compression => 0xae2d28465e8e1b2f => 117
	i64 12681088699309157496, ; 215: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 14
	i64 12699999919562409296, ; 216: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 111
	i64 12700543734426720211, ; 217: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 73
	i64 12708922737231849740, ; 218: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 145
	i64 12823819093633476069, ; 219: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 27
	i64 12835242264250840079, ; 220: System.IO.Pipes => 0xb21ff0d5d6c0740f => 118
	i64 12843321153144804894, ; 221: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 46
	i64 12859557719246324186, ; 222: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 132
	i64 13068258254871114833, ; 223: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 141
	i64 13131176549797933484, ; 224: FmgLib.MauiMarkup => 0xb63b4f8005a531ac => 38
	i64 13221551921002590604, ; 225: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 1
	i64 13222659110913276082, ; 226: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 15
	i64 13343850469010654401, ; 227: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 162
	i64 13381594904270902445, ; 228: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13465488254036897740, ; 229: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 95
	i64 13467053111158216594, ; 230: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 29
	i64 13492260750531519258, ; 231: Syncfusion.Maui.ListView.dll => 0xbb3e23aae460631a => 60
	i64 13540124433173649601, ; 232: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13545416393490209236, ; 233: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 13
	i64 13572454107664307259, ; 234: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 89
	i64 13717397318615465333, ; 235: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 104
	i64 13755568601956062840, ; 236: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 8
	i64 13814445057219246765, ; 237: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 11
	i64 13881769479078963060, ; 238: System.Console.dll => 0xc0a5f3cade5c6774 => 107
	i64 13959074834287824816, ; 239: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 79
	i64 13965721125420810427, ; 240: Syncfusion.Compression.NET => 0xc1d0355eb8e040bb => 54
	i64 13970307180132182141, ; 241: Syncfusion.Licensing => 0xc1e0805ccade287d => 55
	i64 14100563506285742564, ; 242: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 3
	i64 14124974489674258913, ; 243: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 72
	i64 14125464355221830302, ; 244: System.Threading.dll => 0xc407bafdbc707a9e => 153
	i64 14254574811015963973, ; 245: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 145
	i64 14288834806787933687, ; 246: Syncfusion.Maui.PdfToImageConverter.dll => 0xc64c238d20d505f7 => 61
	i64 14353329275190349375, ; 247: Syncfusion.Maui.ListView => 0xc73144edb7ef8e3f => 60
	i64 14461014870687870182, ; 248: System.Net.Requests.dll => 0xc8afd8683afdece6 => 128
	i64 14464374589798375073, ; 249: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14522721392235705434, ; 250: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 5
	i64 14538127318538747197, ; 251: Syncfusion.Licensing.dll => 0xc9c1cdc518e77d3d => 55
	i64 14551742072151931844, ; 252: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 146
	i64 14622043554576106986, ; 253: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 141
	i64 14669215534098758659, ; 254: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 41
	i64 14705122255218365489, ; 255: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14744092281598614090, ; 256: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14749128323909883815, ; 257: QuestPDF.dll => 0xccaf6e10fd4d17a7 => 52
	i64 14852515768018889994, ; 258: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 76
	i64 14892012299694389861, ; 259: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 33
	i64 14904040806490515477, ; 260: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14935719434541007538, ; 261: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 144
	i64 14954917835170835695, ; 262: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 42
	i64 14984936317414011727, ; 263: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 132
	i64 14987728460634540364, ; 264: System.IO.Compression.dll => 0xcfff1ba06622494c => 117
	i64 15015154896917945444, ; 265: System.Net.Security.dll => 0xd0608bd33642dc64 => 129
	i64 15024878362326791334, ; 266: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 123
	i64 15076659072870671916, ; 267: System.ObjectModel.dll => 0xd13b0d8c1620662c => 134
	i64 15111608613780139878, ; 268: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 269: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 116
	i64 15133485256822086103, ; 270: System.Linq.dll => 0xd204f0a9127dd9d7 => 121
	i64 15227001540531775957, ; 271: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 40
	i64 15370334346939861994, ; 272: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 75
	i64 15391712275433856905, ; 273: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 42
	i64 15527772828719725935, ; 274: System.Console => 0xd77dbb1e38cd3d6f => 107
	i64 15536481058354060254, ; 275: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15557562860424774966, ; 276: System.Net.Sockets => 0xd7e790fe7a6dc536 => 131
	i64 15582737692548360875, ; 277: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 83
	i64 15609085926864131306, ; 278: System.dll => 0xd89e9cf3334914ea => 157
	i64 15661133872274321916, ; 279: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 155
	i64 15664356999916475676, ; 280: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 4
	i64 15743187114543869802, ; 281: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 12
	i64 15745825835632158716, ; 282: Syncfusion.Maui.Core => 0xda84692c2c05e7fc => 57
	i64 15783653065526199428, ; 283: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 15847085070278954535, ; 284: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 149
	i64 16018552496348375205, ; 285: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 126
	i64 16154507427712707110, ; 286: System => 0xe03056ea4e39aa26 => 157
	i64 16219561732052121626, ; 287: System.Net.Security => 0xe1177575db7c781a => 129
	i64 16288847719894691167, ; 288: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 289: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 44
	i64 16324796876805858114, ; 290: SkiaSharp.dll => 0xe28d5444586b6342 => 53
	i64 16454459195343277943, ; 291: System.Net.NetworkInformation => 0xe459fb756d988f77 => 126
	i64 16649148416072044166, ; 292: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 51
	i64 16655177468418176197, ; 293: Syncfusion.Pdf.Imaging.NET.dll => 0xe72313aa2427b4c5 => 66
	i64 16677317093839702854, ; 294: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 88
	i64 16833383113903931215, ; 295: mscorlib => 0xe99c30c1484d7f4f => 158
	i64 16856067890322379635, ; 296: System.Data.Common.dll => 0xe9ecc87060889373 => 108
	i64 16890310621557459193, ; 297: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 148
	i64 16942731696432749159, ; 298: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16998075588627545693, ; 299: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 86
	i64 17008137082415910100, ; 300: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 101
	i64 17031351772568316411, ; 301: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 85
	i64 17062143951396181894, ; 302: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 104
	i64 17089008752050867324, ; 303: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 32
	i64 17102494345910816168, ; 304: Syncfusion.Maui.Buttons => 0xed5843fea5240da8 => 56
	i64 17118171214553292978, ; 305: System.Threading.Channels => 0xed8ff6060fc420b2 => 149
	i64 17230721278011714856, ; 306: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 136
	i64 17260702271250283638, ; 307: System.Data.Common => 0xef8a5543bba6bc76 => 108
	i64 17342750010158924305, ; 308: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17438153253682247751, ; 309: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 25
	i64 17514990004910432069, ; 310: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17623389608345532001, ; 311: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17702523067201099846, ; 312: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 31
	i64 17704177640604968747, ; 313: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 84
	i64 17710060891934109755, ; 314: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 82
	i64 17712670374920797664, ; 315: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 138
	i64 17777860260071588075, ; 316: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 140
	i64 18025913125965088385, ; 317: System.Threading => 0xfa28e87b91334681 => 153
	i64 18069642728470617614, ; 318: Syncfusion.Maui.PdfViewer.dll => 0xfac4445310b61e0e => 62
	i64 18099568558057551825, ; 319: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 19
	i64 18121036031235206392, ; 320: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 85
	i64 18129928715865373433, ; 321: DiabeticTablo => 0xfb9a721c504f3af9 => 97
	i64 18146411883821974900, ; 322: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 115
	i64 18164061295166068260, ; 323: Syncfusion.Maui.DataSource => 0xfc13b582b8cb9624 => 58
	i64 18225059387460068507, ; 324: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 152
	i64 18245806341561545090, ; 325: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 100
	i64 18305135509493619199, ; 326: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 87
	i64 18324163916253801303 ; 327: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [328 x i32] [
	i32 46, ; 0
	i32 163, ; 1
	i32 50, ; 2
	i32 119, ; 3
	i32 73, ; 4
	i32 90, ; 5
	i32 7, ; 6
	i32 151, ; 7
	i32 106, ; 8
	i32 10, ; 9
	i32 78, ; 10
	i32 35, ; 11
	i32 94, ; 12
	i32 18, ; 13
	i32 56, ; 14
	i32 62, ; 15
	i32 114, ; 16
	i32 86, ; 17
	i32 127, ; 18
	i32 47, ; 19
	i32 162, ; 20
	i32 151, ; 21
	i32 16, ; 22
	i32 70, ; 23
	i32 83, ; 24
	i32 122, ; 25
	i32 135, ; 26
	i32 69, ; 27
	i32 6, ; 28
	i32 90, ; 29
	i32 113, ; 30
	i32 28, ; 31
	i32 48, ; 32
	i32 28, ; 33
	i32 82, ; 34
	i32 2, ; 35
	i32 20, ; 36
	i32 113, ; 37
	i32 71, ; 38
	i32 78, ; 39
	i32 100, ; 40
	i32 24, ; 41
	i32 81, ; 42
	i32 146, ; 43
	i32 74, ; 44
	i32 142, ; 45
	i32 68, ; 46
	i32 27, ; 47
	i32 158, ; 48
	i32 125, ; 49
	i32 41, ; 50
	i32 2, ; 51
	i32 7, ; 52
	i32 94, ; 53
	i32 80, ; 54
	i32 133, ; 55
	i32 140, ; 56
	i32 131, ; 57
	i32 96, ; 58
	i32 67, ; 59
	i32 50, ; 60
	i32 39, ; 61
	i32 65, ; 62
	i32 91, ; 63
	i32 160, ; 64
	i32 22, ; 65
	i32 142, ; 66
	i32 40, ; 67
	i32 155, ; 68
	i32 39, ; 69
	i32 159, ; 70
	i32 89, ; 71
	i32 43, ; 72
	i32 48, ; 73
	i32 128, ; 74
	i32 122, ; 75
	i32 34, ; 76
	i32 137, ; 77
	i32 33, ; 78
	i32 106, ; 79
	i32 152, ; 80
	i32 119, ; 81
	i32 105, ; 82
	i32 30, ; 83
	i32 118, ; 84
	i32 0, ; 85
	i32 68, ; 86
	i32 91, ; 87
	i32 114, ; 88
	i32 125, ; 89
	i32 139, ; 90
	i32 102, ; 91
	i32 102, ; 92
	i32 139, ; 93
	i32 57, ; 94
	i32 26, ; 95
	i32 29, ; 96
	i32 116, ; 97
	i32 143, ; 98
	i32 97, ; 99
	i32 93, ; 100
	i32 115, ; 101
	i32 23, ; 102
	i32 23, ; 103
	i32 147, ; 104
	i32 36, ; 105
	i32 81, ; 106
	i32 11, ; 107
	i32 71, ; 108
	i32 77, ; 109
	i32 45, ; 110
	i32 144, ; 111
	i32 64, ; 112
	i32 53, ; 113
	i32 19, ; 114
	i32 22, ; 115
	i32 34, ; 116
	i32 112, ; 117
	i32 156, ; 118
	i32 154, ; 119
	i32 133, ; 120
	i32 61, ; 121
	i32 150, ; 122
	i32 136, ; 123
	i32 26, ; 124
	i32 121, ; 125
	i32 99, ; 126
	i32 105, ; 127
	i32 154, ; 128
	i32 134, ; 129
	i32 58, ; 130
	i32 110, ; 131
	i32 124, ; 132
	i32 17, ; 133
	i32 160, ; 134
	i32 98, ; 135
	i32 95, ; 136
	i32 70, ; 137
	i32 37, ; 138
	i32 103, ; 139
	i32 80, ; 140
	i32 123, ; 141
	i32 109, ; 142
	i32 161, ; 143
	i32 103, ; 144
	i32 51, ; 145
	i32 110, ; 146
	i32 143, ; 147
	i32 88, ; 148
	i32 65, ; 149
	i32 135, ; 150
	i32 21, ; 151
	i32 161, ; 152
	i32 98, ; 153
	i32 87, ; 154
	i32 21, ; 155
	i32 109, ; 156
	i32 156, ; 157
	i32 38, ; 158
	i32 31, ; 159
	i32 93, ; 160
	i32 69, ; 161
	i32 148, ; 162
	i32 111, ; 163
	i32 74, ; 164
	i32 101, ; 165
	i32 63, ; 166
	i32 163, ; 167
	i32 120, ; 168
	i32 49, ; 169
	i32 6, ; 170
	i32 124, ; 171
	i32 137, ; 172
	i32 52, ; 173
	i32 47, ; 174
	i32 150, ; 175
	i32 66, ; 176
	i32 3, ; 177
	i32 59, ; 178
	i32 54, ; 179
	i32 77, ; 180
	i32 130, ; 181
	i32 96, ; 182
	i32 75, ; 183
	i32 1, ; 184
	i32 59, ; 185
	i32 99, ; 186
	i32 127, ; 187
	i32 120, ; 188
	i32 44, ; 189
	i32 49, ; 190
	i32 12, ; 191
	i32 92, ; 192
	i32 15, ; 193
	i32 45, ; 194
	i32 76, ; 195
	i32 67, ; 196
	i32 138, ; 197
	i32 13, ; 198
	i32 92, ; 199
	i32 43, ; 200
	i32 159, ; 201
	i32 9, ; 202
	i32 130, ; 203
	i32 63, ; 204
	i32 35, ; 205
	i32 147, ; 206
	i32 64, ; 207
	i32 79, ; 208
	i32 37, ; 209
	i32 84, ; 210
	i32 36, ; 211
	i32 112, ; 212
	i32 72, ; 213
	i32 117, ; 214
	i32 14, ; 215
	i32 111, ; 216
	i32 73, ; 217
	i32 145, ; 218
	i32 27, ; 219
	i32 118, ; 220
	i32 46, ; 221
	i32 132, ; 222
	i32 141, ; 223
	i32 38, ; 224
	i32 1, ; 225
	i32 15, ; 226
	i32 162, ; 227
	i32 9, ; 228
	i32 95, ; 229
	i32 29, ; 230
	i32 60, ; 231
	i32 30, ; 232
	i32 13, ; 233
	i32 89, ; 234
	i32 104, ; 235
	i32 8, ; 236
	i32 11, ; 237
	i32 107, ; 238
	i32 79, ; 239
	i32 54, ; 240
	i32 55, ; 241
	i32 3, ; 242
	i32 72, ; 243
	i32 153, ; 244
	i32 145, ; 245
	i32 61, ; 246
	i32 60, ; 247
	i32 128, ; 248
	i32 24, ; 249
	i32 5, ; 250
	i32 55, ; 251
	i32 146, ; 252
	i32 141, ; 253
	i32 41, ; 254
	i32 16, ; 255
	i32 32, ; 256
	i32 52, ; 257
	i32 76, ; 258
	i32 33, ; 259
	i32 0, ; 260
	i32 144, ; 261
	i32 42, ; 262
	i32 132, ; 263
	i32 117, ; 264
	i32 129, ; 265
	i32 123, ; 266
	i32 134, ; 267
	i32 17, ; 268
	i32 116, ; 269
	i32 121, ; 270
	i32 40, ; 271
	i32 75, ; 272
	i32 42, ; 273
	i32 107, ; 274
	i32 4, ; 275
	i32 131, ; 276
	i32 83, ; 277
	i32 157, ; 278
	i32 155, ; 279
	i32 4, ; 280
	i32 12, ; 281
	i32 57, ; 282
	i32 5, ; 283
	i32 149, ; 284
	i32 126, ; 285
	i32 157, ; 286
	i32 129, ; 287
	i32 18, ; 288
	i32 44, ; 289
	i32 53, ; 290
	i32 126, ; 291
	i32 51, ; 292
	i32 66, ; 293
	i32 88, ; 294
	i32 158, ; 295
	i32 108, ; 296
	i32 148, ; 297
	i32 25, ; 298
	i32 86, ; 299
	i32 101, ; 300
	i32 85, ; 301
	i32 104, ; 302
	i32 32, ; 303
	i32 56, ; 304
	i32 149, ; 305
	i32 136, ; 306
	i32 108, ; 307
	i32 10, ; 308
	i32 25, ; 309
	i32 8, ; 310
	i32 20, ; 311
	i32 31, ; 312
	i32 84, ; 313
	i32 82, ; 314
	i32 138, ; 315
	i32 140, ; 316
	i32 153, ; 317
	i32 62, ; 318
	i32 19, ; 319
	i32 85, ; 320
	i32 97, ; 321
	i32 115, ; 322
	i32 58, ; 323
	i32 152, ; 324
	i32 100, ; 325
	i32 87, ; 326
	i32 14 ; 327
], align 16

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
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
