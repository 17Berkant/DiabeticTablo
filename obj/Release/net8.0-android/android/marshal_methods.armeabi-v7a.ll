; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [170 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [340 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 131
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 130
	i32 42639949, ; 2: System.Threading.Thread => 0x28aa24d => 156
	i32 66541672, ; 3: System.Diagnostics.StackTrace => 0x3f75868 => 115
	i32 67008169, ; 4: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 5: Microsoft.Maui.Graphics.dll => 0x44bb714 => 54
	i32 117431740, ; 6: System.Runtime.InteropServices => 0x6ffddbc => 143
	i32 122350210, ; 7: System.Threading.Channels.dll => 0x74aea82 => 154
	i32 142721839, ; 8: System.Net.WebHeaderCollection => 0x881c32f => 137
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 76
	i32 172961045, ; 10: Syncfusion.Maui.Core.dll => 0xa4f2d15 => 60
	i32 182336117, ; 11: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 94
	i32 195452805, ; 12: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 13: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 14: System.ComponentModel => 0xc38ff48 => 110
	i32 209399409, ; 15: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 74
	i32 230752869, ; 16: Microsoft.CSharp.dll => 0xdc10265 => 101
	i32 257818971, ; 17: Syncfusion.Pdf.NET.dll => 0xf5e015b => 70
	i32 258215456, ; 18: Syncfusion.Maui.PdfToImageConverter.dll => 0xf640e20 => 64
	i32 280992041, ; 19: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 20: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 21: Xamarin.AndroidX.Activity.dll => 0x13031348 => 71
	i32 336156722, ; 22: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 23: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 83
	i32 356389973, ; 24: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 367780167, ; 25: System.IO.Pipes => 0x15ebe147 => 122
	i32 375677976, ; 26: System.Net.ServicePoint.dll => 0x16646418 => 135
	i32 376991480, ; 27: en-US/Syncfusion.Maui.Buttons.resources.dll => 0x16786ef8 => 34
	i32 379916513, ; 28: System.Threading.Thread.dll => 0x16a510e1 => 156
	i32 385762202, ; 29: System.Memory.dll => 0x16fe439a => 126
	i32 392610295, ; 30: System.Threading.ThreadPool.dll => 0x1766c1f7 => 157
	i32 395744057, ; 31: _Microsoft.Android.Resource.Designer => 0x17969339 => 36
	i32 435591531, ; 32: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 33: System.Collections => 0x1a61054f => 107
	i32 450948140, ; 34: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 82
	i32 456227837, ; 35: System.Web.HttpUtility.dll => 0x1b317bfd => 159
	i32 456681651, ; 36: Syncfusion.Maui.GridCommon.dll => 0x1b3868b3 => 62
	i32 465846621, ; 37: mscorlib => 0x1bc4415d => 164
	i32 469710990, ; 38: System.dll => 0x1bff388e => 163
	i32 498788369, ; 39: System.ObjectModel => 0x1dbae811 => 139
	i32 500358224, ; 40: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 41: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 42: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 48
	i32 525008092, ; 43: SkiaSharp.dll => 0x1f4afcdc => 56
	i32 530272170, ; 44: System.Linq.Queryable => 0x1f9b4faa => 124
	i32 539058512, ; 45: Microsoft.Extensions.Logging => 0x20216150 => 45
	i32 592146354, ; 46: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 596073311, ; 47: DiabeticTablo.dll => 0x23875b5f => 100
	i32 597488923, ; 48: CommunityToolkit.Maui => 0x239cf51b => 38
	i32 619197891, ; 49: BitMiracle.LibTiff.NET => 0x24e835c3 => 37
	i32 627609679, ; 50: Xamarin.AndroidX.CustomView => 0x2568904f => 80
	i32 627931235, ; 51: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 52: System.Text.Encodings.Web.dll => 0x27787397 => 151
	i32 672442732, ; 53: System.Collections.Concurrent => 0x2814a96c => 103
	i32 676419328, ; 54: en-US\Syncfusion.Maui.Buttons.resources => 0x28515700 => 34
	i32 683518922, ; 55: System.Net.Security => 0x28bdabca => 134
	i32 688181140, ; 56: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 690569205, ; 57: System.Xml.Linq.dll => 0x29293ff5 => 160
	i32 706645707, ; 58: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 59: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 60: System.Runtime.Loader.dll => 0x2b15ed29 => 144
	i32 759454413, ; 61: System.Net.Requests => 0x2d445acd => 133
	i32 762598435, ; 62: System.IO.Pipes.dll => 0x2d745423 => 122
	i32 772835674, ; 63: QuestPDF.dll => 0x2e10895a => 55
	i32 775507847, ; 64: System.IO.Compression => 0x2e394f87 => 121
	i32 777317022, ; 65: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 66: Microsoft.Extensions.Options => 0x2f0980eb => 47
	i32 804715423, ; 67: System.Data.Common => 0x2ff6fb9f => 112
	i32 823281589, ; 68: System.Private.Uri.dll => 0x311247b5 => 140
	i32 830298997, ; 69: System.IO.Compression.Brotli => 0x317d5b75 => 120
	i32 878954865, ; 70: System.Net.Http.Json => 0x3463c971 => 127
	i32 884721263, ; 71: en-US\Syncfusion.Maui.PdfViewer.resources => 0x34bbc66f => 35
	i32 904024072, ; 72: System.ComponentModel.Primitives.dll => 0x35e25008 => 108
	i32 906948815, ; 73: QuestPDF => 0x360ef0cf => 55
	i32 908505502, ; 74: Syncfusion.Maui.SignaturePad => 0x3626b19e => 66
	i32 926902833, ; 75: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 967690846, ; 76: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 83
	i32 975874589, ; 77: System.Xml.XDocument => 0x3a2aaa1d => 162
	i32 992768348, ; 78: System.Collections.dll => 0x3b2c715c => 107
	i32 1012816738, ; 79: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 93
	i32 1019214401, ; 80: System.Drawing => 0x3cbffa41 => 118
	i32 1028951442, ; 81: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 44
	i32 1029334545, ; 82: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 83: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 72
	i32 1036536393, ; 84: System.Drawing.Primitives.dll => 0x3dc84a49 => 117
	i32 1044663988, ; 85: System.Linq.Expressions.dll => 0x3e444eb4 => 123
	i32 1052210849, ; 86: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 85
	i32 1082857460, ; 87: System.ComponentModel.TypeConverter => 0x408b17f4 => 109
	i32 1084122840, ; 88: Xamarin.Kotlin.StdLib => 0x409e66d8 => 98
	i32 1098259244, ; 89: System => 0x41761b2c => 163
	i32 1118262833, ; 90: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 91: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1175781585, ; 92: en-US/Syncfusion.Maui.PdfViewer.resources.dll => 0x461500d1 => 35
	i32 1176943841, ; 93: Syncfusion.Maui.TabView => 0x4626bce1 => 68
	i32 1178241025, ; 94: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 90
	i32 1203215381, ; 95: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1208641965, ; 96: System.Diagnostics.Process => 0x480a69ad => 114
	i32 1234928153, ; 97: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1246475894, ; 98: Syncfusion.Maui.PdfViewer.dll => 0x4a4bb676 => 65
	i32 1260983243, ; 99: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 100: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 81
	i32 1324164729, ; 101: System.Linq => 0x4eed2679 => 125
	i32 1373134921, ; 102: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 103: Xamarin.AndroidX.SavedState => 0x52114ed3 => 93
	i32 1406073936, ; 104: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 77
	i32 1408764838, ; 105: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 146
	i32 1430672901, ; 106: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1452070440, ; 107: System.Formats.Asn1.dll => 0x568cd628 => 119
	i32 1458022317, ; 108: System.Net.Security.dll => 0x56e7a7ad => 134
	i32 1461004990, ; 109: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 110: System.Collections.Immutable.dll => 0x5718a9ef => 104
	i32 1462112819, ; 111: System.IO.Compression.dll => 0x57261233 => 121
	i32 1469204771, ; 112: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 73
	i32 1470490898, ; 113: Microsoft.Extensions.Primitives => 0x57a5e912 => 48
	i32 1479771757, ; 114: System.Collections.Immutable => 0x5833866d => 104
	i32 1480492111, ; 115: System.IO.Compression.Brotli.dll => 0x583e844f => 120
	i32 1487239319, ; 116: Microsoft.Win32.Primitives => 0x58a57897 => 102
	i32 1493001747, ; 117: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 118: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1537889881, ; 119: Syncfusion.Maui.Buttons.dll => 0x5baa5659 => 59
	i32 1543031311, ; 120: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 153
	i32 1551623176, ; 121: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1596911864, ; 122: Syncfusion.Maui.Buttons => 0x5f2ef0f8 => 59
	i32 1616563424, ; 123: Syncfusion.Pdf.Imaging.NET => 0x605acce0 => 69
	i32 1622152042, ; 124: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 87
	i32 1624863272, ; 125: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 96
	i32 1634654947, ; 126: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 39
	i32 1636350590, ; 127: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 79
	i32 1639515021, ; 128: System.Net.Http.dll => 0x61b9038d => 128
	i32 1639986890, ; 129: System.Text.RegularExpressions => 0x61c036ca => 153
	i32 1657153582, ; 130: System.Runtime => 0x62c6282e => 147
	i32 1658251792, ; 131: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 97
	i32 1677501392, ; 132: System.Net.Primitives.dll => 0x63fca3d0 => 132
	i32 1677521517, ; 133: Syncfusion.Pdf.Imaging.NET.dll => 0x63fcf26d => 69
	i32 1679769178, ; 134: System.Security.Cryptography => 0x641f3e5a => 148
	i32 1729485958, ; 135: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 75
	i32 1732996618, ; 136: Syncfusion.Maui.TabView.dll => 0x674b6e0a => 68
	i32 1736233607, ; 137: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 138: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1749607256, ; 139: Syncfusion.Pdf.NET => 0x6848e358 => 70
	i32 1750313021, ; 140: Microsoft.Win32.Primitives.dll => 0x6853a83d => 102
	i32 1763938596, ; 141: System.Diagnostics.TraceSource.dll => 0x69239124 => 116
	i32 1766324549, ; 142: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 94
	i32 1770582343, ; 143: Microsoft.Extensions.Logging.dll => 0x6988f147 => 45
	i32 1780572499, ; 144: Mono.Android.Runtime.dll => 0x6a216153 => 168
	i32 1782862114, ; 145: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 146: Xamarin.AndroidX.Fragment => 0x6a96652d => 82
	i32 1793755602, ; 147: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 148: Xamarin.AndroidX.Loader => 0x6bcd3296 => 87
	i32 1813058853, ; 149: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 98
	i32 1813201214, ; 150: Xamarin.Google.Android.Material => 0x6c13413e => 97
	i32 1818569960, ; 151: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 91
	i32 1824175904, ; 152: System.Text.Encoding.Extensions => 0x6cbab720 => 150
	i32 1824722060, ; 153: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 146
	i32 1828688058, ; 154: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 46
	i32 1842015223, ; 155: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 156: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 157: System.Linq.Expressions => 0x6ec71a65 => 123
	i32 1870466325, ; 158: Syncfusion.Maui.SignaturePad.dll => 0x6f7d0d15 => 66
	i32 1875935024, ; 159: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1910275211, ; 160: System.Collections.NonGeneric.dll => 0x71dc7c8b => 105
	i32 1939592360, ; 161: System.Private.Xml.Linq => 0x739bd4a8 => 141
	i32 1968388702, ; 162: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 41
	i32 2003115576, ; 163: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 164: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 85
	i32 2025202353, ; 165: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 166: System.Private.Xml => 0x79eb68ee => 142
	i32 2055257422, ; 167: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 84
	i32 2066184531, ; 168: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 169: System.Diagnostics.TraceSource => 0x7b6f419e => 116
	i32 2079903147, ; 170: System.Runtime.dll => 0x7bf8cdab => 147
	i32 2090596640, ; 171: System.Numerics.Vectors => 0x7c9bf920 => 138
	i32 2127167465, ; 172: System.Console => 0x7ec9ffe9 => 111
	i32 2134827680, ; 173: Syncfusion.Maui.Sliders.dll => 0x7f3ee2a0 => 67
	i32 2142473426, ; 174: System.Collections.Specialized => 0x7fb38cd2 => 106
	i32 2159891885, ; 175: Microsoft.Maui => 0x80bd55ad => 52
	i32 2169148018, ; 176: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 177: Microsoft.Extensions.Options.dll => 0x820d22b3 => 47
	i32 2192057212, ; 178: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 46
	i32 2193016926, ; 179: System.ObjectModel.dll => 0x82b6c85e => 139
	i32 2201107256, ; 180: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 99
	i32 2201231467, ; 181: System.Net.Http => 0x8334206b => 128
	i32 2207618523, ; 182: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2222056684, ; 183: System.Threading.Tasks.Parallel => 0x8471e4ec => 155
	i32 2266799131, ; 184: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 42
	i32 2270573516, ; 185: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 186: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 92
	i32 2295906218, ; 187: System.Net.Sockets => 0x88d8bfaa => 136
	i32 2298471582, ; 188: System.Net.Mail => 0x88ffe49e => 129
	i32 2303942373, ; 189: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 190: System.Private.CoreLib.dll => 0x896b7878 => 166
	i32 2320631194, ; 191: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 155
	i32 2353062107, ; 192: System.Net.Primitives => 0x8c40e0db => 132
	i32 2354730003, ; 193: Syncfusion.Licensing => 0x8c5a5413 => 58
	i32 2368005991, ; 194: System.Xml.ReaderWriter.dll => 0x8d24e767 => 161
	i32 2371007202, ; 195: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 41
	i32 2395872292, ; 196: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 197: System.Web.HttpUtility => 0x8f24faee => 159
	i32 2427813419, ; 198: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 199: System.Console.dll => 0x912896e5 => 111
	i32 2458678730, ; 200: System.Net.Sockets.dll => 0x928c75ca => 136
	i32 2471841756, ; 201: netstandard.dll => 0x93554fdc => 165
	i32 2475788418, ; 202: Java.Interop.dll => 0x93918882 => 167
	i32 2480646305, ; 203: Microsoft.Maui.Controls => 0x93dba8a1 => 50
	i32 2484371297, ; 204: System.Net.ServicePoint => 0x94147f61 => 135
	i32 2550873716, ; 205: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 206: Microsoft.CSharp => 0x98ba5a04 => 101
	i32 2570120770, ; 207: System.Text.Encodings.Web => 0x9930ee42 => 151
	i32 2585220780, ; 208: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 150
	i32 2589602615, ; 209: System.Threading.ThreadPool => 0x9a5a3337 => 157
	i32 2593496499, ; 210: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 211: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 99
	i32 2617129537, ; 212: System.Private.Xml.dll => 0x9bfe3a41 => 142
	i32 2620871830, ; 213: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 79
	i32 2626831493, ; 214: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 215: System.Runtime.Loader => 0x9ec4cf01 => 144
	i32 2664396074, ; 216: System.Xml.XDocument.dll => 0x9ecf752a => 162
	i32 2665622720, ; 217: System.Drawing.Primitives => 0x9ee22cc0 => 117
	i32 2676780864, ; 218: System.Data.Common.dll => 0x9f8c6f40 => 112
	i32 2703293517, ; 219: DiabeticTablo => 0xa120fc4d => 100
	i32 2724373263, ; 220: System.Runtime.Numerics.dll => 0xa262a30f => 145
	i32 2732626843, ; 221: Xamarin.AndroidX.Activity => 0xa2e0939b => 71
	i32 2735172069, ; 222: System.Threading.Channels => 0xa30769e5 => 154
	i32 2737747696, ; 223: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 73
	i32 2743368605, ; 224: Syncfusion.Maui.DataSource => 0xa3847b9d => 61
	i32 2752995522, ; 225: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 226: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 51
	i32 2764765095, ; 227: Microsoft.Maui.dll => 0xa4caf7a7 => 52
	i32 2765824710, ; 228: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 149
	i32 2778768386, ; 229: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 95
	i32 2785988530, ; 230: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 231: Microsoft.Maui.Graphics => 0xa7008e0b => 54
	i32 2806116107, ; 232: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2808576844, ; 233: FmgLib.MauiMarkup => 0xa7677b4c => 40
	i32 2810250172, ; 234: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 77
	i32 2831556043, ; 235: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2842426040, ; 236: Syncfusion.Maui.Sliders => 0xa96bfab8 => 67
	i32 2853208004, ; 237: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 95
	i32 2861189240, ; 238: Microsoft.Maui.Essentials => 0xaa8a4878 => 53
	i32 2868488919, ; 239: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 39
	i32 2868557005, ; 240: Syncfusion.Licensing.dll => 0xaafab4cd => 58
	i32 2905242038, ; 241: mscorlib.dll => 0xad2a79b6 => 164
	i32 2909740682, ; 242: System.Private.CoreLib => 0xad6f1e8a => 166
	i32 2916838712, ; 243: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 96
	i32 2919462931, ; 244: System.Numerics.Vectors.dll => 0xae037813 => 138
	i32 2940926066, ; 245: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 115
	i32 2959614098, ; 246: System.ComponentModel.dll => 0xb0682092 => 110
	i32 2977488003, ; 247: FmgLib.MauiMarkup.dll => 0xb178dc83 => 40
	i32 2978675010, ; 248: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 81
	i32 3001463412, ; 249: Syncfusion.Maui.PdfViewer => 0xb2e6b274 => 65
	i32 3038032645, ; 250: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 36
	i32 3057625584, ; 251: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 88
	i32 3059408633, ; 252: Mono.Android.Runtime => 0xb65adef9 => 168
	i32 3059793426, ; 253: System.ComponentModel.Primitives => 0xb660be12 => 108
	i32 3077302341, ; 254: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3078489293, ; 255: BitMiracle.LibTiff.NET.dll => 0xb77e04cd => 37
	i32 3103600923, ; 256: System.Formats.Asn1 => 0xb8fd311b => 119
	i32 3140633799, ; 257: Syncfusion.Maui.ListView => 0xbb3244c7 => 63
	i32 3147228406, ; 258: Syncfusion.Maui.Core => 0xbb96e4f6 => 60
	i32 3170039328, ; 259: Syncfusion.Maui.ListView.dll => 0xbcf2f620 => 63
	i32 3178803400, ; 260: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 89
	i32 3220365878, ; 261: System.Threading => 0xbff2e236 => 158
	i32 3224776939, ; 262: Syncfusion.Maui.PdfToImageConverter => 0xc03630eb => 64
	i32 3258312781, ; 263: Xamarin.AndroidX.CardView => 0xc235e84d => 75
	i32 3265493905, ; 264: System.Linq.Queryable.dll => 0xc2a37b91 => 124
	i32 3305363605, ; 265: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 266: System.Net.Requests.dll => 0xc5b097e4 => 133
	i32 3317135071, ; 267: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 80
	i32 3340387945, ; 268: SkiaSharp => 0xc71a4669 => 56
	i32 3346324047, ; 269: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 90
	i32 3357674450, ; 270: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 271: System.Text.Json => 0xc82afec1 => 152
	i32 3362522851, ; 272: Xamarin.AndroidX.Core => 0xc86c06e3 => 78
	i32 3366347497, ; 273: Java.Interop => 0xc8a662e9 => 167
	i32 3374999561, ; 274: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 92
	i32 3381016424, ; 275: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3381934622, ; 276: Syncfusion.Maui.GridCommon => 0xc9943a1e => 62
	i32 3428513518, ; 277: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 43
	i32 3430777524, ; 278: netstandard => 0xcc7d82b4 => 165
	i32 3452344032, ; 279: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 49
	i32 3463511458, ; 280: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 281: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 109
	i32 3476120550, ; 282: Mono.Android => 0xcf3163e6 => 169
	i32 3479583265, ; 283: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 284: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 285: System.Text.Json.dll => 0xcfbaacae => 152
	i32 3509114376, ; 286: System.Xml.Linq => 0xd128d608 => 160
	i32 3558305335, ; 287: Syncfusion.Maui.DataSource.dll => 0xd4176e37 => 61
	i32 3580758918, ; 288: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 289: System.Linq.dll => 0xd715a361 => 125
	i32 3632281949, ; 290: Syncfusion.Compression.NET.dll => 0xd880395d => 57
	i32 3641597786, ; 291: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 84
	i32 3643446276, ; 292: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 293: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 89
	i32 3657292374, ; 294: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 42
	i32 3660523487, ; 295: System.Net.NetworkInformation => 0xda2f27df => 131
	i32 3672681054, ; 296: Mono.Android.dll => 0xdae8aa5e => 169
	i32 3682565725, ; 297: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 74
	i32 3697841164, ; 298: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3710506397, ; 299: Syncfusion.Compression.NET => 0xdd29d59d => 57
	i32 3724971120, ; 300: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 88
	i32 3732100267, ; 301: System.Net.NameResolution => 0xde7354ab => 130
	i32 3737834244, ; 302: System.Net.Http.Json.dll => 0xdecad304 => 127
	i32 3748608112, ; 303: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 113
	i32 3786282454, ; 304: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 76
	i32 3792276235, ; 305: System.Collections.NonGeneric => 0xe2098b0b => 105
	i32 3800979733, ; 306: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 49
	i32 3802395368, ; 307: System.Collections.Specialized.dll => 0xe2a3f2e8 => 106
	i32 3817368567, ; 308: CommunityToolkit.Maui.dll => 0xe3886bf7 => 38
	i32 3823082795, ; 309: System.Security.Cryptography.dll => 0xe3df9d2b => 148
	i32 3841636137, ; 310: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 44
	i32 3844307129, ; 311: System.Net.Mail.dll => 0xe52378b9 => 129
	i32 3849253459, ; 312: System.Runtime.InteropServices.dll => 0xe56ef253 => 143
	i32 3885497537, ; 313: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 137
	i32 3889960447, ; 314: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 315: System.Collections.Concurrent.dll => 0xe839deed => 103
	i32 3896760992, ; 316: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 78
	i32 3928044579, ; 317: System.Xml.ReaderWriter => 0xea213423 => 161
	i32 3931092270, ; 318: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 91
	i32 3953953790, ; 319: System.Text.Encoding.CodePages => 0xebac8bfe => 149
	i32 3955647286, ; 320: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 72
	i32 3980434154, ; 321: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 322: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4003436829, ; 323: System.Diagnostics.Process.dll => 0xee9f991d => 114
	i32 4025784931, ; 324: System.Memory => 0xeff49a63 => 126
	i32 4046471985, ; 325: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 51
	i32 4068434129, ; 326: System.Private.Xml.Linq.dll => 0xf27f60d1 => 141
	i32 4073602200, ; 327: System.Threading.dll => 0xf2ce3c98 => 158
	i32 4094352644, ; 328: Microsoft.Maui.Essentials.dll => 0xf40add04 => 53
	i32 4099507663, ; 329: System.Drawing.dll => 0xf45985cf => 118
	i32 4100113165, ; 330: System.Private.Uri => 0xf462c30d => 140
	i32 4102112229, ; 331: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 332: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 333: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 43
	i32 4150914736, ; 334: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4182413190, ; 335: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 86
	i32 4213026141, ; 336: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 113
	i32 4271975918, ; 337: Microsoft.Maui.Controls.dll => 0xfea12dee => 50
	i32 4274976490, ; 338: System.Runtime.Numerics => 0xfecef6ea => 145
	i32 4292120959 ; 339: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 86
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [340 x i32] [
	i32 131, ; 0
	i32 130, ; 1
	i32 156, ; 2
	i32 115, ; 3
	i32 33, ; 4
	i32 54, ; 5
	i32 143, ; 6
	i32 154, ; 7
	i32 137, ; 8
	i32 76, ; 9
	i32 60, ; 10
	i32 94, ; 11
	i32 30, ; 12
	i32 31, ; 13
	i32 110, ; 14
	i32 74, ; 15
	i32 101, ; 16
	i32 70, ; 17
	i32 64, ; 18
	i32 2, ; 19
	i32 30, ; 20
	i32 71, ; 21
	i32 15, ; 22
	i32 83, ; 23
	i32 14, ; 24
	i32 122, ; 25
	i32 135, ; 26
	i32 34, ; 27
	i32 156, ; 28
	i32 126, ; 29
	i32 157, ; 30
	i32 36, ; 31
	i32 26, ; 32
	i32 107, ; 33
	i32 82, ; 34
	i32 159, ; 35
	i32 62, ; 36
	i32 164, ; 37
	i32 163, ; 38
	i32 139, ; 39
	i32 13, ; 40
	i32 7, ; 41
	i32 48, ; 42
	i32 56, ; 43
	i32 124, ; 44
	i32 45, ; 45
	i32 21, ; 46
	i32 100, ; 47
	i32 38, ; 48
	i32 37, ; 49
	i32 80, ; 50
	i32 19, ; 51
	i32 151, ; 52
	i32 103, ; 53
	i32 34, ; 54
	i32 134, ; 55
	i32 1, ; 56
	i32 160, ; 57
	i32 16, ; 58
	i32 4, ; 59
	i32 144, ; 60
	i32 133, ; 61
	i32 122, ; 62
	i32 55, ; 63
	i32 121, ; 64
	i32 25, ; 65
	i32 47, ; 66
	i32 112, ; 67
	i32 140, ; 68
	i32 120, ; 69
	i32 127, ; 70
	i32 35, ; 71
	i32 108, ; 72
	i32 55, ; 73
	i32 66, ; 74
	i32 28, ; 75
	i32 83, ; 76
	i32 162, ; 77
	i32 107, ; 78
	i32 93, ; 79
	i32 118, ; 80
	i32 44, ; 81
	i32 3, ; 82
	i32 72, ; 83
	i32 117, ; 84
	i32 123, ; 85
	i32 85, ; 86
	i32 109, ; 87
	i32 98, ; 88
	i32 163, ; 89
	i32 16, ; 90
	i32 22, ; 91
	i32 35, ; 92
	i32 68, ; 93
	i32 90, ; 94
	i32 20, ; 95
	i32 114, ; 96
	i32 18, ; 97
	i32 65, ; 98
	i32 2, ; 99
	i32 81, ; 100
	i32 125, ; 101
	i32 32, ; 102
	i32 93, ; 103
	i32 77, ; 104
	i32 146, ; 105
	i32 0, ; 106
	i32 119, ; 107
	i32 134, ; 108
	i32 6, ; 109
	i32 104, ; 110
	i32 121, ; 111
	i32 73, ; 112
	i32 48, ; 113
	i32 104, ; 114
	i32 120, ; 115
	i32 102, ; 116
	i32 10, ; 117
	i32 5, ; 118
	i32 59, ; 119
	i32 153, ; 120
	i32 25, ; 121
	i32 59, ; 122
	i32 69, ; 123
	i32 87, ; 124
	i32 96, ; 125
	i32 39, ; 126
	i32 79, ; 127
	i32 128, ; 128
	i32 153, ; 129
	i32 147, ; 130
	i32 97, ; 131
	i32 132, ; 132
	i32 69, ; 133
	i32 148, ; 134
	i32 75, ; 135
	i32 68, ; 136
	i32 23, ; 137
	i32 1, ; 138
	i32 70, ; 139
	i32 102, ; 140
	i32 116, ; 141
	i32 94, ; 142
	i32 45, ; 143
	i32 168, ; 144
	i32 17, ; 145
	i32 82, ; 146
	i32 9, ; 147
	i32 87, ; 148
	i32 98, ; 149
	i32 97, ; 150
	i32 91, ; 151
	i32 150, ; 152
	i32 146, ; 153
	i32 46, ; 154
	i32 29, ; 155
	i32 26, ; 156
	i32 123, ; 157
	i32 66, ; 158
	i32 8, ; 159
	i32 105, ; 160
	i32 141, ; 161
	i32 41, ; 162
	i32 5, ; 163
	i32 85, ; 164
	i32 0, ; 165
	i32 142, ; 166
	i32 84, ; 167
	i32 4, ; 168
	i32 116, ; 169
	i32 147, ; 170
	i32 138, ; 171
	i32 111, ; 172
	i32 67, ; 173
	i32 106, ; 174
	i32 52, ; 175
	i32 12, ; 176
	i32 47, ; 177
	i32 46, ; 178
	i32 139, ; 179
	i32 99, ; 180
	i32 128, ; 181
	i32 14, ; 182
	i32 155, ; 183
	i32 42, ; 184
	i32 8, ; 185
	i32 92, ; 186
	i32 136, ; 187
	i32 129, ; 188
	i32 18, ; 189
	i32 166, ; 190
	i32 155, ; 191
	i32 132, ; 192
	i32 58, ; 193
	i32 161, ; 194
	i32 41, ; 195
	i32 13, ; 196
	i32 159, ; 197
	i32 10, ; 198
	i32 111, ; 199
	i32 136, ; 200
	i32 165, ; 201
	i32 167, ; 202
	i32 50, ; 203
	i32 135, ; 204
	i32 11, ; 205
	i32 101, ; 206
	i32 151, ; 207
	i32 150, ; 208
	i32 157, ; 209
	i32 20, ; 210
	i32 99, ; 211
	i32 142, ; 212
	i32 79, ; 213
	i32 15, ; 214
	i32 144, ; 215
	i32 162, ; 216
	i32 117, ; 217
	i32 112, ; 218
	i32 100, ; 219
	i32 145, ; 220
	i32 71, ; 221
	i32 154, ; 222
	i32 73, ; 223
	i32 61, ; 224
	i32 21, ; 225
	i32 51, ; 226
	i32 52, ; 227
	i32 149, ; 228
	i32 95, ; 229
	i32 27, ; 230
	i32 54, ; 231
	i32 6, ; 232
	i32 40, ; 233
	i32 77, ; 234
	i32 19, ; 235
	i32 67, ; 236
	i32 95, ; 237
	i32 53, ; 238
	i32 39, ; 239
	i32 58, ; 240
	i32 164, ; 241
	i32 166, ; 242
	i32 96, ; 243
	i32 138, ; 244
	i32 115, ; 245
	i32 110, ; 246
	i32 40, ; 247
	i32 81, ; 248
	i32 65, ; 249
	i32 36, ; 250
	i32 88, ; 251
	i32 168, ; 252
	i32 108, ; 253
	i32 12, ; 254
	i32 37, ; 255
	i32 119, ; 256
	i32 63, ; 257
	i32 60, ; 258
	i32 63, ; 259
	i32 89, ; 260
	i32 158, ; 261
	i32 64, ; 262
	i32 75, ; 263
	i32 124, ; 264
	i32 7, ; 265
	i32 133, ; 266
	i32 80, ; 267
	i32 56, ; 268
	i32 90, ; 269
	i32 24, ; 270
	i32 152, ; 271
	i32 78, ; 272
	i32 167, ; 273
	i32 92, ; 274
	i32 3, ; 275
	i32 62, ; 276
	i32 43, ; 277
	i32 165, ; 278
	i32 49, ; 279
	i32 11, ; 280
	i32 109, ; 281
	i32 169, ; 282
	i32 24, ; 283
	i32 23, ; 284
	i32 152, ; 285
	i32 160, ; 286
	i32 61, ; 287
	i32 31, ; 288
	i32 125, ; 289
	i32 57, ; 290
	i32 84, ; 291
	i32 28, ; 292
	i32 89, ; 293
	i32 42, ; 294
	i32 131, ; 295
	i32 169, ; 296
	i32 74, ; 297
	i32 33, ; 298
	i32 57, ; 299
	i32 88, ; 300
	i32 130, ; 301
	i32 127, ; 302
	i32 113, ; 303
	i32 76, ; 304
	i32 105, ; 305
	i32 49, ; 306
	i32 106, ; 307
	i32 38, ; 308
	i32 148, ; 309
	i32 44, ; 310
	i32 129, ; 311
	i32 143, ; 312
	i32 137, ; 313
	i32 32, ; 314
	i32 103, ; 315
	i32 78, ; 316
	i32 161, ; 317
	i32 91, ; 318
	i32 149, ; 319
	i32 72, ; 320
	i32 27, ; 321
	i32 9, ; 322
	i32 114, ; 323
	i32 126, ; 324
	i32 51, ; 325
	i32 141, ; 326
	i32 158, ; 327
	i32 53, ; 328
	i32 118, ; 329
	i32 140, ; 330
	i32 22, ; 331
	i32 17, ; 332
	i32 43, ; 333
	i32 29, ; 334
	i32 86, ; 335
	i32 113, ; 336
	i32 50, ; 337
	i32 145, ; 338
	i32 86 ; 339
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
