; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [164 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [328 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 126
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 125
	i32 42639949, ; 2: System.Threading.Thread => 0x28aa24d => 151
	i32 66541672, ; 3: System.Diagnostics.StackTrace => 0x3f75868 => 111
	i32 67008169, ; 4: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 5: Microsoft.Maui.Graphics.dll => 0x44bb714 => 51
	i32 117431740, ; 6: System.Runtime.InteropServices => 0x6ffddbc => 138
	i32 122350210, ; 7: System.Threading.Channels.dll => 0x74aea82 => 149
	i32 142721839, ; 8: System.Net.WebHeaderCollection => 0x881c32f => 132
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 73
	i32 172961045, ; 10: Syncfusion.Maui.Core.dll => 0xa4f2d15 => 57
	i32 182336117, ; 11: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 91
	i32 195452805, ; 12: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 13: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 14: System.ComponentModel => 0xc38ff48 => 106
	i32 209399409, ; 15: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 71
	i32 230752869, ; 16: Microsoft.CSharp.dll => 0xdc10265 => 98
	i32 257818971, ; 17: Syncfusion.Pdf.NET.dll => 0xf5e015b => 67
	i32 258215456, ; 18: Syncfusion.Maui.PdfToImageConverter.dll => 0xf640e20 => 61
	i32 280992041, ; 19: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 20: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 21: Xamarin.AndroidX.Activity.dll => 0x13031348 => 68
	i32 336156722, ; 22: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 23: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 80
	i32 356389973, ; 24: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 367780167, ; 25: System.IO.Pipes => 0x15ebe147 => 118
	i32 375677976, ; 26: System.Net.ServicePoint.dll => 0x16646418 => 130
	i32 376991480, ; 27: en-US/Syncfusion.Maui.Buttons.resources.dll => 0x16786ef8 => 34
	i32 379916513, ; 28: System.Threading.Thread.dll => 0x16a510e1 => 151
	i32 385762202, ; 29: System.Memory.dll => 0x16fe439a => 122
	i32 392610295, ; 30: System.Threading.ThreadPool.dll => 0x1766c1f7 => 152
	i32 395744057, ; 31: _Microsoft.Android.Resource.Designer => 0x17969339 => 36
	i32 435591531, ; 32: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 33: System.Collections => 0x1a61054f => 103
	i32 450948140, ; 34: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 79
	i32 456681651, ; 35: Syncfusion.Maui.GridCommon.dll => 0x1b3868b3 => 59
	i32 465846621, ; 36: mscorlib => 0x1bc4415d => 158
	i32 469710990, ; 37: System.dll => 0x1bff388e => 157
	i32 498788369, ; 38: System.ObjectModel => 0x1dbae811 => 134
	i32 500358224, ; 39: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 40: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 41: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 46
	i32 525008092, ; 42: SkiaSharp.dll => 0x1f4afcdc => 53
	i32 530272170, ; 43: System.Linq.Queryable => 0x1f9b4faa => 120
	i32 539058512, ; 44: Microsoft.Extensions.Logging => 0x20216150 => 43
	i32 592146354, ; 45: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 596073311, ; 46: DiabeticTablo.dll => 0x23875b5f => 97
	i32 619197891, ; 47: BitMiracle.LibTiff.NET => 0x24e835c3 => 37
	i32 627609679, ; 48: Xamarin.AndroidX.CustomView => 0x2568904f => 77
	i32 627931235, ; 49: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 50: System.Text.Encodings.Web.dll => 0x27787397 => 146
	i32 672442732, ; 51: System.Collections.Concurrent => 0x2814a96c => 100
	i32 676419328, ; 52: en-US\Syncfusion.Maui.Buttons.resources => 0x28515700 => 34
	i32 683518922, ; 53: System.Net.Security => 0x28bdabca => 129
	i32 688181140, ; 54: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 690569205, ; 55: System.Xml.Linq.dll => 0x29293ff5 => 154
	i32 706645707, ; 56: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 57: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 58: System.Runtime.Loader.dll => 0x2b15ed29 => 139
	i32 759454413, ; 59: System.Net.Requests => 0x2d445acd => 128
	i32 762598435, ; 60: System.IO.Pipes.dll => 0x2d745423 => 118
	i32 772835674, ; 61: QuestPDF.dll => 0x2e10895a => 52
	i32 775507847, ; 62: System.IO.Compression => 0x2e394f87 => 117
	i32 777317022, ; 63: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 64: Microsoft.Extensions.Options => 0x2f0980eb => 45
	i32 804715423, ; 65: System.Data.Common => 0x2ff6fb9f => 108
	i32 823281589, ; 66: System.Private.Uri.dll => 0x311247b5 => 135
	i32 830298997, ; 67: System.IO.Compression.Brotli => 0x317d5b75 => 116
	i32 878954865, ; 68: System.Net.Http.Json => 0x3463c971 => 123
	i32 884721263, ; 69: en-US\Syncfusion.Maui.PdfViewer.resources => 0x34bbc66f => 35
	i32 904024072, ; 70: System.ComponentModel.Primitives.dll => 0x35e25008 => 104
	i32 906948815, ; 71: QuestPDF => 0x360ef0cf => 52
	i32 908505502, ; 72: Syncfusion.Maui.SignaturePad => 0x3626b19e => 63
	i32 926902833, ; 73: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 967690846, ; 74: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 80
	i32 975874589, ; 75: System.Xml.XDocument => 0x3a2aaa1d => 156
	i32 992768348, ; 76: System.Collections.dll => 0x3b2c715c => 103
	i32 1012816738, ; 77: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 90
	i32 1019214401, ; 78: System.Drawing => 0x3cbffa41 => 114
	i32 1028951442, ; 79: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 42
	i32 1029334545, ; 80: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 81: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 69
	i32 1036536393, ; 82: System.Drawing.Primitives.dll => 0x3dc84a49 => 113
	i32 1044663988, ; 83: System.Linq.Expressions.dll => 0x3e444eb4 => 119
	i32 1052210849, ; 84: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 82
	i32 1082857460, ; 85: System.ComponentModel.TypeConverter => 0x408b17f4 => 105
	i32 1084122840, ; 86: Xamarin.Kotlin.StdLib => 0x409e66d8 => 95
	i32 1098259244, ; 87: System => 0x41761b2c => 157
	i32 1118262833, ; 88: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 89: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1175781585, ; 90: en-US/Syncfusion.Maui.PdfViewer.resources.dll => 0x461500d1 => 35
	i32 1176943841, ; 91: Syncfusion.Maui.TabView => 0x4626bce1 => 65
	i32 1178241025, ; 92: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 87
	i32 1203215381, ; 93: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1208641965, ; 94: System.Diagnostics.Process => 0x480a69ad => 110
	i32 1234928153, ; 95: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1246475894, ; 96: Syncfusion.Maui.PdfViewer.dll => 0x4a4bb676 => 62
	i32 1260983243, ; 97: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 98: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 78
	i32 1324164729, ; 99: System.Linq => 0x4eed2679 => 121
	i32 1373134921, ; 100: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 101: Xamarin.AndroidX.SavedState => 0x52114ed3 => 90
	i32 1406073936, ; 102: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 74
	i32 1408764838, ; 103: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 141
	i32 1430672901, ; 104: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1452070440, ; 105: System.Formats.Asn1.dll => 0x568cd628 => 115
	i32 1458022317, ; 106: System.Net.Security.dll => 0x56e7a7ad => 129
	i32 1461004990, ; 107: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 108: System.IO.Compression.dll => 0x57261233 => 117
	i32 1469204771, ; 109: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 70
	i32 1470490898, ; 110: Microsoft.Extensions.Primitives => 0x57a5e912 => 46
	i32 1480492111, ; 111: System.IO.Compression.Brotli.dll => 0x583e844f => 116
	i32 1487239319, ; 112: Microsoft.Win32.Primitives => 0x58a57897 => 99
	i32 1493001747, ; 113: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 114: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1537889881, ; 115: Syncfusion.Maui.Buttons.dll => 0x5baa5659 => 56
	i32 1543031311, ; 116: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 148
	i32 1551623176, ; 117: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1596911864, ; 118: Syncfusion.Maui.Buttons => 0x5f2ef0f8 => 56
	i32 1616563424, ; 119: Syncfusion.Pdf.Imaging.NET => 0x605acce0 => 66
	i32 1622152042, ; 120: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 84
	i32 1624863272, ; 121: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 93
	i32 1636350590, ; 122: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 76
	i32 1639515021, ; 123: System.Net.Http.dll => 0x61b9038d => 124
	i32 1639986890, ; 124: System.Text.RegularExpressions => 0x61c036ca => 148
	i32 1657153582, ; 125: System.Runtime => 0x62c6282e => 142
	i32 1658251792, ; 126: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 94
	i32 1677501392, ; 127: System.Net.Primitives.dll => 0x63fca3d0 => 127
	i32 1677521517, ; 128: Syncfusion.Pdf.Imaging.NET.dll => 0x63fcf26d => 66
	i32 1679769178, ; 129: System.Security.Cryptography => 0x641f3e5a => 143
	i32 1729485958, ; 130: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 72
	i32 1732996618, ; 131: Syncfusion.Maui.TabView.dll => 0x674b6e0a => 65
	i32 1736233607, ; 132: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 133: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1749607256, ; 134: Syncfusion.Pdf.NET => 0x6848e358 => 67
	i32 1750313021, ; 135: Microsoft.Win32.Primitives.dll => 0x6853a83d => 99
	i32 1763938596, ; 136: System.Diagnostics.TraceSource.dll => 0x69239124 => 112
	i32 1766324549, ; 137: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 91
	i32 1770582343, ; 138: Microsoft.Extensions.Logging.dll => 0x6988f147 => 43
	i32 1780572499, ; 139: Mono.Android.Runtime.dll => 0x6a216153 => 162
	i32 1782862114, ; 140: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 141: Xamarin.AndroidX.Fragment => 0x6a96652d => 79
	i32 1793755602, ; 142: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 143: Xamarin.AndroidX.Loader => 0x6bcd3296 => 84
	i32 1813058853, ; 144: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 95
	i32 1813201214, ; 145: Xamarin.Google.Android.Material => 0x6c13413e => 94
	i32 1818569960, ; 146: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 88
	i32 1824175904, ; 147: System.Text.Encoding.Extensions => 0x6cbab720 => 145
	i32 1824722060, ; 148: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 141
	i32 1828688058, ; 149: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 44
	i32 1842015223, ; 150: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 151: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 152: System.Linq.Expressions => 0x6ec71a65 => 119
	i32 1870466325, ; 153: Syncfusion.Maui.SignaturePad.dll => 0x6f7d0d15 => 63
	i32 1875935024, ; 154: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1910275211, ; 155: System.Collections.NonGeneric.dll => 0x71dc7c8b => 101
	i32 1939592360, ; 156: System.Private.Xml.Linq => 0x739bd4a8 => 136
	i32 1968388702, ; 157: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 39
	i32 2003115576, ; 158: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 159: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 82
	i32 2025202353, ; 160: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 161: System.Private.Xml => 0x79eb68ee => 137
	i32 2055257422, ; 162: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 81
	i32 2066184531, ; 163: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 164: System.Diagnostics.TraceSource => 0x7b6f419e => 112
	i32 2079903147, ; 165: System.Runtime.dll => 0x7bf8cdab => 142
	i32 2090596640, ; 166: System.Numerics.Vectors => 0x7c9bf920 => 133
	i32 2127167465, ; 167: System.Console => 0x7ec9ffe9 => 107
	i32 2134827680, ; 168: Syncfusion.Maui.Sliders.dll => 0x7f3ee2a0 => 64
	i32 2142473426, ; 169: System.Collections.Specialized => 0x7fb38cd2 => 102
	i32 2159891885, ; 170: Microsoft.Maui => 0x80bd55ad => 49
	i32 2169148018, ; 171: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 172: Microsoft.Extensions.Options.dll => 0x820d22b3 => 45
	i32 2192057212, ; 173: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 44
	i32 2193016926, ; 174: System.ObjectModel.dll => 0x82b6c85e => 134
	i32 2201107256, ; 175: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 96
	i32 2201231467, ; 176: System.Net.Http => 0x8334206b => 124
	i32 2207618523, ; 177: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2222056684, ; 178: System.Threading.Tasks.Parallel => 0x8471e4ec => 150
	i32 2266799131, ; 179: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 40
	i32 2270573516, ; 180: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 181: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 89
	i32 2295906218, ; 182: System.Net.Sockets => 0x88d8bfaa => 131
	i32 2303942373, ; 183: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 184: System.Private.CoreLib.dll => 0x896b7878 => 160
	i32 2320631194, ; 185: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 150
	i32 2353062107, ; 186: System.Net.Primitives => 0x8c40e0db => 127
	i32 2354730003, ; 187: Syncfusion.Licensing => 0x8c5a5413 => 55
	i32 2368005991, ; 188: System.Xml.ReaderWriter.dll => 0x8d24e767 => 155
	i32 2371007202, ; 189: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 39
	i32 2395872292, ; 190: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2427813419, ; 191: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 192: System.Console.dll => 0x912896e5 => 107
	i32 2458678730, ; 193: System.Net.Sockets.dll => 0x928c75ca => 131
	i32 2471841756, ; 194: netstandard.dll => 0x93554fdc => 159
	i32 2475788418, ; 195: Java.Interop.dll => 0x93918882 => 161
	i32 2480646305, ; 196: Microsoft.Maui.Controls => 0x93dba8a1 => 47
	i32 2484371297, ; 197: System.Net.ServicePoint => 0x94147f61 => 130
	i32 2550873716, ; 198: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 199: Microsoft.CSharp => 0x98ba5a04 => 98
	i32 2570120770, ; 200: System.Text.Encodings.Web => 0x9930ee42 => 146
	i32 2585220780, ; 201: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 145
	i32 2589602615, ; 202: System.Threading.ThreadPool => 0x9a5a3337 => 152
	i32 2593496499, ; 203: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 204: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 96
	i32 2617129537, ; 205: System.Private.Xml.dll => 0x9bfe3a41 => 137
	i32 2620871830, ; 206: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 76
	i32 2626831493, ; 207: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 208: System.Runtime.Loader => 0x9ec4cf01 => 139
	i32 2664396074, ; 209: System.Xml.XDocument.dll => 0x9ecf752a => 156
	i32 2665622720, ; 210: System.Drawing.Primitives => 0x9ee22cc0 => 113
	i32 2676780864, ; 211: System.Data.Common.dll => 0x9f8c6f40 => 108
	i32 2703293517, ; 212: DiabeticTablo => 0xa120fc4d => 97
	i32 2724373263, ; 213: System.Runtime.Numerics.dll => 0xa262a30f => 140
	i32 2732626843, ; 214: Xamarin.AndroidX.Activity => 0xa2e0939b => 68
	i32 2735172069, ; 215: System.Threading.Channels => 0xa30769e5 => 149
	i32 2737747696, ; 216: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 70
	i32 2743368605, ; 217: Syncfusion.Maui.DataSource => 0xa3847b9d => 58
	i32 2752995522, ; 218: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 219: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 48
	i32 2764765095, ; 220: Microsoft.Maui.dll => 0xa4caf7a7 => 49
	i32 2765824710, ; 221: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 144
	i32 2778768386, ; 222: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 92
	i32 2785988530, ; 223: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 224: Microsoft.Maui.Graphics => 0xa7008e0b => 51
	i32 2806116107, ; 225: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2808576844, ; 226: FmgLib.MauiMarkup => 0xa7677b4c => 38
	i32 2810250172, ; 227: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 74
	i32 2831556043, ; 228: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2842426040, ; 229: Syncfusion.Maui.Sliders => 0xa96bfab8 => 64
	i32 2853208004, ; 230: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 92
	i32 2861189240, ; 231: Microsoft.Maui.Essentials => 0xaa8a4878 => 50
	i32 2868557005, ; 232: Syncfusion.Licensing.dll => 0xaafab4cd => 55
	i32 2905242038, ; 233: mscorlib.dll => 0xad2a79b6 => 158
	i32 2909740682, ; 234: System.Private.CoreLib => 0xad6f1e8a => 160
	i32 2916838712, ; 235: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 93
	i32 2919462931, ; 236: System.Numerics.Vectors.dll => 0xae037813 => 133
	i32 2940926066, ; 237: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 111
	i32 2959614098, ; 238: System.ComponentModel.dll => 0xb0682092 => 106
	i32 2977488003, ; 239: FmgLib.MauiMarkup.dll => 0xb178dc83 => 38
	i32 2978675010, ; 240: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 78
	i32 3001463412, ; 241: Syncfusion.Maui.PdfViewer => 0xb2e6b274 => 62
	i32 3038032645, ; 242: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 36
	i32 3057625584, ; 243: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 85
	i32 3059408633, ; 244: Mono.Android.Runtime => 0xb65adef9 => 162
	i32 3059793426, ; 245: System.ComponentModel.Primitives => 0xb660be12 => 104
	i32 3077302341, ; 246: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3078489293, ; 247: BitMiracle.LibTiff.NET.dll => 0xb77e04cd => 37
	i32 3103600923, ; 248: System.Formats.Asn1 => 0xb8fd311b => 115
	i32 3140633799, ; 249: Syncfusion.Maui.ListView => 0xbb3244c7 => 60
	i32 3147228406, ; 250: Syncfusion.Maui.Core => 0xbb96e4f6 => 57
	i32 3170039328, ; 251: Syncfusion.Maui.ListView.dll => 0xbcf2f620 => 60
	i32 3178803400, ; 252: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 86
	i32 3220365878, ; 253: System.Threading => 0xbff2e236 => 153
	i32 3224776939, ; 254: Syncfusion.Maui.PdfToImageConverter => 0xc03630eb => 61
	i32 3258312781, ; 255: Xamarin.AndroidX.CardView => 0xc235e84d => 72
	i32 3265493905, ; 256: System.Linq.Queryable.dll => 0xc2a37b91 => 120
	i32 3305363605, ; 257: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 258: System.Net.Requests.dll => 0xc5b097e4 => 128
	i32 3317135071, ; 259: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 77
	i32 3340387945, ; 260: SkiaSharp => 0xc71a4669 => 53
	i32 3346324047, ; 261: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 87
	i32 3357674450, ; 262: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 263: System.Text.Json => 0xc82afec1 => 147
	i32 3362522851, ; 264: Xamarin.AndroidX.Core => 0xc86c06e3 => 75
	i32 3366347497, ; 265: Java.Interop => 0xc8a662e9 => 161
	i32 3374999561, ; 266: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 89
	i32 3381016424, ; 267: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3381934622, ; 268: Syncfusion.Maui.GridCommon => 0xc9943a1e => 59
	i32 3428513518, ; 269: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 41
	i32 3430777524, ; 270: netstandard => 0xcc7d82b4 => 159
	i32 3463511458, ; 271: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 272: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 105
	i32 3476120550, ; 273: Mono.Android => 0xcf3163e6 => 163
	i32 3479583265, ; 274: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 275: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 276: System.Text.Json.dll => 0xcfbaacae => 147
	i32 3509114376, ; 277: System.Xml.Linq => 0xd128d608 => 154
	i32 3558305335, ; 278: Syncfusion.Maui.DataSource.dll => 0xd4176e37 => 58
	i32 3580758918, ; 279: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 280: System.Linq.dll => 0xd715a361 => 121
	i32 3632281949, ; 281: Syncfusion.Compression.NET.dll => 0xd880395d => 54
	i32 3641597786, ; 282: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 81
	i32 3643446276, ; 283: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 284: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 86
	i32 3657292374, ; 285: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 40
	i32 3660523487, ; 286: System.Net.NetworkInformation => 0xda2f27df => 126
	i32 3672681054, ; 287: Mono.Android.dll => 0xdae8aa5e => 163
	i32 3682565725, ; 288: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 71
	i32 3697841164, ; 289: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3710506397, ; 290: Syncfusion.Compression.NET => 0xdd29d59d => 54
	i32 3724971120, ; 291: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 85
	i32 3732100267, ; 292: System.Net.NameResolution => 0xde7354ab => 125
	i32 3737834244, ; 293: System.Net.Http.Json.dll => 0xdecad304 => 123
	i32 3748608112, ; 294: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 109
	i32 3786282454, ; 295: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 73
	i32 3792276235, ; 296: System.Collections.NonGeneric => 0xe2098b0b => 101
	i32 3802395368, ; 297: System.Collections.Specialized.dll => 0xe2a3f2e8 => 102
	i32 3823082795, ; 298: System.Security.Cryptography.dll => 0xe3df9d2b => 143
	i32 3841636137, ; 299: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 42
	i32 3849253459, ; 300: System.Runtime.InteropServices.dll => 0xe56ef253 => 138
	i32 3885497537, ; 301: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 132
	i32 3889960447, ; 302: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 303: System.Collections.Concurrent.dll => 0xe839deed => 100
	i32 3896760992, ; 304: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 75
	i32 3928044579, ; 305: System.Xml.ReaderWriter => 0xea213423 => 155
	i32 3931092270, ; 306: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 88
	i32 3953953790, ; 307: System.Text.Encoding.CodePages => 0xebac8bfe => 144
	i32 3955647286, ; 308: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 69
	i32 3980434154, ; 309: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 310: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4003436829, ; 311: System.Diagnostics.Process.dll => 0xee9f991d => 110
	i32 4025784931, ; 312: System.Memory => 0xeff49a63 => 122
	i32 4046471985, ; 313: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 48
	i32 4068434129, ; 314: System.Private.Xml.Linq.dll => 0xf27f60d1 => 136
	i32 4073602200, ; 315: System.Threading.dll => 0xf2ce3c98 => 153
	i32 4094352644, ; 316: Microsoft.Maui.Essentials.dll => 0xf40add04 => 50
	i32 4099507663, ; 317: System.Drawing.dll => 0xf45985cf => 114
	i32 4100113165, ; 318: System.Private.Uri => 0xf462c30d => 135
	i32 4102112229, ; 319: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 320: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 321: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 41
	i32 4150914736, ; 322: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4182413190, ; 323: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 83
	i32 4213026141, ; 324: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 109
	i32 4271975918, ; 325: Microsoft.Maui.Controls.dll => 0xfea12dee => 47
	i32 4274976490, ; 326: System.Runtime.Numerics => 0xfecef6ea => 140
	i32 4292120959 ; 327: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 83
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [328 x i32] [
	i32 126, ; 0
	i32 125, ; 1
	i32 151, ; 2
	i32 111, ; 3
	i32 33, ; 4
	i32 51, ; 5
	i32 138, ; 6
	i32 149, ; 7
	i32 132, ; 8
	i32 73, ; 9
	i32 57, ; 10
	i32 91, ; 11
	i32 30, ; 12
	i32 31, ; 13
	i32 106, ; 14
	i32 71, ; 15
	i32 98, ; 16
	i32 67, ; 17
	i32 61, ; 18
	i32 2, ; 19
	i32 30, ; 20
	i32 68, ; 21
	i32 15, ; 22
	i32 80, ; 23
	i32 14, ; 24
	i32 118, ; 25
	i32 130, ; 26
	i32 34, ; 27
	i32 151, ; 28
	i32 122, ; 29
	i32 152, ; 30
	i32 36, ; 31
	i32 26, ; 32
	i32 103, ; 33
	i32 79, ; 34
	i32 59, ; 35
	i32 158, ; 36
	i32 157, ; 37
	i32 134, ; 38
	i32 13, ; 39
	i32 7, ; 40
	i32 46, ; 41
	i32 53, ; 42
	i32 120, ; 43
	i32 43, ; 44
	i32 21, ; 45
	i32 97, ; 46
	i32 37, ; 47
	i32 77, ; 48
	i32 19, ; 49
	i32 146, ; 50
	i32 100, ; 51
	i32 34, ; 52
	i32 129, ; 53
	i32 1, ; 54
	i32 154, ; 55
	i32 16, ; 56
	i32 4, ; 57
	i32 139, ; 58
	i32 128, ; 59
	i32 118, ; 60
	i32 52, ; 61
	i32 117, ; 62
	i32 25, ; 63
	i32 45, ; 64
	i32 108, ; 65
	i32 135, ; 66
	i32 116, ; 67
	i32 123, ; 68
	i32 35, ; 69
	i32 104, ; 70
	i32 52, ; 71
	i32 63, ; 72
	i32 28, ; 73
	i32 80, ; 74
	i32 156, ; 75
	i32 103, ; 76
	i32 90, ; 77
	i32 114, ; 78
	i32 42, ; 79
	i32 3, ; 80
	i32 69, ; 81
	i32 113, ; 82
	i32 119, ; 83
	i32 82, ; 84
	i32 105, ; 85
	i32 95, ; 86
	i32 157, ; 87
	i32 16, ; 88
	i32 22, ; 89
	i32 35, ; 90
	i32 65, ; 91
	i32 87, ; 92
	i32 20, ; 93
	i32 110, ; 94
	i32 18, ; 95
	i32 62, ; 96
	i32 2, ; 97
	i32 78, ; 98
	i32 121, ; 99
	i32 32, ; 100
	i32 90, ; 101
	i32 74, ; 102
	i32 141, ; 103
	i32 0, ; 104
	i32 115, ; 105
	i32 129, ; 106
	i32 6, ; 107
	i32 117, ; 108
	i32 70, ; 109
	i32 46, ; 110
	i32 116, ; 111
	i32 99, ; 112
	i32 10, ; 113
	i32 5, ; 114
	i32 56, ; 115
	i32 148, ; 116
	i32 25, ; 117
	i32 56, ; 118
	i32 66, ; 119
	i32 84, ; 120
	i32 93, ; 121
	i32 76, ; 122
	i32 124, ; 123
	i32 148, ; 124
	i32 142, ; 125
	i32 94, ; 126
	i32 127, ; 127
	i32 66, ; 128
	i32 143, ; 129
	i32 72, ; 130
	i32 65, ; 131
	i32 23, ; 132
	i32 1, ; 133
	i32 67, ; 134
	i32 99, ; 135
	i32 112, ; 136
	i32 91, ; 137
	i32 43, ; 138
	i32 162, ; 139
	i32 17, ; 140
	i32 79, ; 141
	i32 9, ; 142
	i32 84, ; 143
	i32 95, ; 144
	i32 94, ; 145
	i32 88, ; 146
	i32 145, ; 147
	i32 141, ; 148
	i32 44, ; 149
	i32 29, ; 150
	i32 26, ; 151
	i32 119, ; 152
	i32 63, ; 153
	i32 8, ; 154
	i32 101, ; 155
	i32 136, ; 156
	i32 39, ; 157
	i32 5, ; 158
	i32 82, ; 159
	i32 0, ; 160
	i32 137, ; 161
	i32 81, ; 162
	i32 4, ; 163
	i32 112, ; 164
	i32 142, ; 165
	i32 133, ; 166
	i32 107, ; 167
	i32 64, ; 168
	i32 102, ; 169
	i32 49, ; 170
	i32 12, ; 171
	i32 45, ; 172
	i32 44, ; 173
	i32 134, ; 174
	i32 96, ; 175
	i32 124, ; 176
	i32 14, ; 177
	i32 150, ; 178
	i32 40, ; 179
	i32 8, ; 180
	i32 89, ; 181
	i32 131, ; 182
	i32 18, ; 183
	i32 160, ; 184
	i32 150, ; 185
	i32 127, ; 186
	i32 55, ; 187
	i32 155, ; 188
	i32 39, ; 189
	i32 13, ; 190
	i32 10, ; 191
	i32 107, ; 192
	i32 131, ; 193
	i32 159, ; 194
	i32 161, ; 195
	i32 47, ; 196
	i32 130, ; 197
	i32 11, ; 198
	i32 98, ; 199
	i32 146, ; 200
	i32 145, ; 201
	i32 152, ; 202
	i32 20, ; 203
	i32 96, ; 204
	i32 137, ; 205
	i32 76, ; 206
	i32 15, ; 207
	i32 139, ; 208
	i32 156, ; 209
	i32 113, ; 210
	i32 108, ; 211
	i32 97, ; 212
	i32 140, ; 213
	i32 68, ; 214
	i32 149, ; 215
	i32 70, ; 216
	i32 58, ; 217
	i32 21, ; 218
	i32 48, ; 219
	i32 49, ; 220
	i32 144, ; 221
	i32 92, ; 222
	i32 27, ; 223
	i32 51, ; 224
	i32 6, ; 225
	i32 38, ; 226
	i32 74, ; 227
	i32 19, ; 228
	i32 64, ; 229
	i32 92, ; 230
	i32 50, ; 231
	i32 55, ; 232
	i32 158, ; 233
	i32 160, ; 234
	i32 93, ; 235
	i32 133, ; 236
	i32 111, ; 237
	i32 106, ; 238
	i32 38, ; 239
	i32 78, ; 240
	i32 62, ; 241
	i32 36, ; 242
	i32 85, ; 243
	i32 162, ; 244
	i32 104, ; 245
	i32 12, ; 246
	i32 37, ; 247
	i32 115, ; 248
	i32 60, ; 249
	i32 57, ; 250
	i32 60, ; 251
	i32 86, ; 252
	i32 153, ; 253
	i32 61, ; 254
	i32 72, ; 255
	i32 120, ; 256
	i32 7, ; 257
	i32 128, ; 258
	i32 77, ; 259
	i32 53, ; 260
	i32 87, ; 261
	i32 24, ; 262
	i32 147, ; 263
	i32 75, ; 264
	i32 161, ; 265
	i32 89, ; 266
	i32 3, ; 267
	i32 59, ; 268
	i32 41, ; 269
	i32 159, ; 270
	i32 11, ; 271
	i32 105, ; 272
	i32 163, ; 273
	i32 24, ; 274
	i32 23, ; 275
	i32 147, ; 276
	i32 154, ; 277
	i32 58, ; 278
	i32 31, ; 279
	i32 121, ; 280
	i32 54, ; 281
	i32 81, ; 282
	i32 28, ; 283
	i32 86, ; 284
	i32 40, ; 285
	i32 126, ; 286
	i32 163, ; 287
	i32 71, ; 288
	i32 33, ; 289
	i32 54, ; 290
	i32 85, ; 291
	i32 125, ; 292
	i32 123, ; 293
	i32 109, ; 294
	i32 73, ; 295
	i32 101, ; 296
	i32 102, ; 297
	i32 143, ; 298
	i32 42, ; 299
	i32 138, ; 300
	i32 132, ; 301
	i32 32, ; 302
	i32 100, ; 303
	i32 75, ; 304
	i32 155, ; 305
	i32 88, ; 306
	i32 144, ; 307
	i32 69, ; 308
	i32 27, ; 309
	i32 9, ; 310
	i32 110, ; 311
	i32 122, ; 312
	i32 48, ; 313
	i32 136, ; 314
	i32 153, ; 315
	i32 50, ; 316
	i32 114, ; 317
	i32 135, ; 318
	i32 22, ; 319
	i32 17, ; 320
	i32 41, ; 321
	i32 29, ; 322
	i32 83, ; 323
	i32 109, ; 324
	i32 47, ; 325
	i32 140, ; 326
	i32 83 ; 327
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

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
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
