
//{{BLOCK(bossbg)

//======================================================================
//
//	bossbg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 43 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1376 + 2048 = 3936
//
//	Time-stamp: 2017-11-29, 23:04:56
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short bossbgTiles[688] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x6111,0x6611,0x6611,0x6116,0x6611,0x1166,0x6666,0x1699,
	0x9966,0x6999,0x9966,0x9999,0x9966,0x6619,0x9661,0x6111,
	0x1166,0x5666,0x1111,0x5161,0x6111,0x5186,0x6166,0x5681,
	0x1166,0x5681,0x1111,0x5388,0x8116,0x3368,0x8811,0x3388,
	0x1111,0x1111,0x3356,0x8991,0x5353,0x9988,0x5555,0x6911,
	0x5555,0x6688,0x8555,0x8888,0x8555,0x6888,0x6555,0x6388,

	0x1111,0x1111,0x5666,0x6666,0x5656,0x5666,0x5556,0x5566,
	0x5558,0x5565,0x5538,0x5553,0x5538,0x5555,0x5588,0x3553,
	0x1111,0x1111,0x1111,0x8991,0x1111,0x9988,0x1116,0x6911,
	0x8663,0x6688,0x8863,0x8888,0x8863,0x6888,0x6663,0x6388,
	0x6611,0x1116,0x6611,0x8111,0x6666,0x8886,0x1666,0x6358,
	0x8811,0x3588,0x8991,0x5355,0x6996,0x5568,0x6611,0x5666,
	0x8881,0x3336,0x6888,0x3336,0x6666,0x5366,0x6666,0x3466,
	0x6663,0x3466,0x4633,0x3444,0x6635,0x5346,0x6555,0x7556,

	0x6555,0x8686,0x6555,0x8886,0x6355,0x8866,0x3355,0x8886,
	0x3355,0x6666,0x3555,0x6666,0x5777,0x6665,0x5117,0x5555,
	0x5588,0x3555,0x5588,0x3555,0x5368,0x3555,0x5336,0x3355,
	0x5336,0x3355,0x5536,0x3557,0x7755,0x5772,0x2227,0x7788,
	0x6663,0x8686,0x6663,0x8886,0x6666,0x8866,0x6666,0x8886,
	0x3333,0x6666,0x3333,0x6663,0x3335,0x6663,0x5557,0x7555,
	0x6333,0x1888,0x6333,0x8886,0x6633,0x6666,0x6643,0x6666,
	0x6643,0x3666,0x4443,0x3364,0x6435,0x5366,0x6557,0x5556,

	0x2211,0x6629,0x1111,0x6412,0x1111,0x6411,0x1111,0x4411,
	0x1111,0x4481,0x1111,0x4446,0x1111,0x8886,0x6111,0x6666,
	0x5166,0x1755,0x6664,0x7755,0x6644,0x7511,0x6646,0x5816,
	0x6666,0x5886,0x6884,0x5486,0x8866,0x5486,0x8566,0x7488,
	0x9911,0x1112,0x9999,0x1119,0x9999,0x9199,0x1999,0x1222,
	0x1192,0x2111,0x1222,0x2911,0x1122,0x9999,0x9222,0x1119,
	0x2921,0x2221,0x9992,0x2222,0x9999,0x2229,0x1999,0x2221,
	0x1192,0x2111,0x1112,0x1111,0x1221,0x1111,0x2929,0x2211,

	0x9922,0x1112,0x9999,0x1119,0x9999,0x9199,0x1999,0x1222,
	0x1192,0x2111,0x1222,0x2911,0x1122,0x9999,0x9222,0x1119,
	0x6111,0x6666,0x6111,0x5666,0x6111,0x4666,0x6111,0x4466,
	0x6611,0x6666,0x6111,0x8844,0x9111,0x6469,0x2211,0x6699,
	0x8566,0x7588,0x5666,0x1548,0x5665,0x1758,0x4545,0x1275,
	0x5454,0x2275,0x5566,0x1275,0x5888,0x1775,0x6626,0x1756,
	0x2992,0x9199,0x1999,0x9111,0x2299,0x2111,0x2229,0x1111,
	0x1222,0x1221,0x1121,0x2222,0x1222,0x1121,0x2222,0x1111,

	0x9999,0x2212,0x2999,0x1112,0x2292,0x9111,0x2112,0x9212,
	0x2111,0x1122,0x2211,0x1112,0x2111,0x1111,0x1111,0x1111,
	0x4166,0x1546,0x6664,0x7561,0x6644,0x5611,0x6646,0x5816,
	0x6666,0x5886,0x6884,0x5486,0x8866,0x5486,0x8566,0x7488,
	0x6555,0x8686,0x6555,0x8886,0x6355,0x8866,0x3355,0x8886,
	0x3355,0x6666,0x3555,0x6666,0x5111,0x6665,0x5221,0x5555,
	0x5588,0x3555,0x5588,0x3555,0x5368,0x3555,0x5336,0x3355,
	0x5336,0x3355,0x5536,0x3551,0x1155,0x5116,0x6661,0x1122,

	0x6663,0x8686,0x6663,0x8886,0x6666,0x8866,0x6666,0x8886,
	0x3333,0x6666,0x3333,0x6663,0x3335,0x6663,0x5551,0x1555,
	0x5588,0x3555,0x5588,0x3555,0x5368,0x3555,0x5336,0x3355,
	0x5336,0x3355,0x5536,0x3551,0x1155,0x5116,0x1661,0x1122,
	0x5166,0x2155,0x6664,0x1155,0x6644,0x1511,0x6646,0x5816,
	0x6666,0x5886,0x6884,0x5486,0x8866,0x5486,0x8566,0x7488,
	0x2266,0x6621,0x1666,0x6122,0x2661,0x2222,0x6622,0x1221,
	0x6212,0x2226,0x6226,0x1666,0x2165,0x6661,0x6757,0x6122,

	0x5666,0x6227,0x2666,0x1252,0x6661,0x2726,0x6212,0x2766,
	0x1222,0x7466,0x2221,0x5766,0x2126,0x5662,0x2266,0x6661,
	0x5662,0x6267,0x6666,0x1656,0x6662,0x6762,0x6212,0x6766,
	0x2122,0x7466,0x2222,0x5766,0x2216,0x5661,0x2266,0x6662,
	0x2166,0x6622,0x2666,0x6212,0x1661,0x1222,0x6622,0x2222,
	0x6212,0x2216,0x6226,0x1666,0x2165,0x6661,0x6756,0x6122,
	0x4166,0x1546,0x6664,0x7561,0x6644,0x5611,0x6646,0x5816,
	0x6666,0x5886,0x6884,0x5486,0x8866,0x5486,0x8366,0x7488,

	0x6111,0x6666,0x6111,0x3666,0x6111,0x4666,0x6111,0x4566,
	0x6111,0x5666,0x6111,0x5844,0x9111,0x6469,0x2211,0x6699,
	0x8366,0x7588,0x3666,0x1548,0x3563,0x1758,0x4543,0x1175,
	0x5434,0x2175,0x5366,0x1275,0x3585,0x1775,0x5653,0x1755,
	0x2361,0x3332,0x3999,0x5555,0x9999,0x9199,0x1999,0x1222,
	0x1192,0x2111,0x1222,0x2911,0x1122,0x9999,0x9222,0x1119,
	0x5533,0x5555,0x9355,0x2222,0x9999,0x2229,0x1999,0x2221,
	0x1192,0x2111,0x1112,0x1111,0x1221,0x1111,0x2929,0x2211,

	0x5555,0x2211,0x9999,0x5555,0x9999,0x9199,0x1999,0x1222,
	0x1192,0x2111,0x1222,0x2911,0x1122,0x9999,0x9222,0x1119,
	0x5522,0x5555,0x9955,0x2222,0x9999,0x2229,0x1999,0x2221,
	0x1192,0x2111,0x1112,0x1111,0x1221,0x1111,0x2929,0x2211,
	0x2111,0x2211,0x5555,0x2112,0x6111,0x9155,0x9911,0x5546,
	0x9212,0x4669,0x9212,0x6662,0x2111,0x6661,0x1111,0x6461,
	0x1122,0x1222,0x1111,0x1121,0x9999,0x2229,0x1999,0x2221,
	0x1195,0x2111,0x1154,0x1111,0x1546,0x1111,0x5466,0x2211,

	0x9999,0x2212,0x2999,0x1112,0x2292,0x1111,0x2112,0x1212,
	0x2111,0x1122,0x2211,0x1112,0x2111,0x1111,0x1111,0x1111,
	0x1111,0x4464,0x1111,0x4043,0x4111,0x4333,0x6111,0x3336,
	0x6111,0x3346,0x4111,0x3566,0x4111,0x5466,0x1111,0x4664,
	0x5666,0x2212,0x4666,0x1115,0x6664,0x9115,0x6435,0x9254,
	0x4353,0x1156,0x4535,0x1154,0x5555,0x1153,0x5553,0x1175,
};

const unsigned short bossbgMap[1024] __attribute__((aligned(4)))=
{
	0x1001,0x1002,0x1003,0x1004,0x1005,0x1004,0x1005,0x1004,
	0x1005,0x1004,0x1005,0x1004,0x1005,0x1004,0x1005,0x1004,
	0x1005,0x1004,0x1005,0x1004,0x1005,0x1004,0x1005,0x1004,
	0x1005,0x1004,0x1005,0x1004,0x1005,0x1004,0x1402,0x1401,
	0x1006,0x1007,0x1008,0x1009,0x100A,0x1009,0x100A,0x1009,
	0x100A,0x1009,0x100A,0x1009,0x100A,0x1009,0x100A,0x1009,
	0x100A,0x1009,0x100A,0x1009,0x100A,0x1009,0x100A,0x1009,
	0x100A,0x1009,0x100A,0x1009,0x100A,0x1009,0x100B,0x1406,

	0x100C,0x100D,0x100E,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x140D,0x140C,
	0x1011,0x1012,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1412,0x1411,

	0x100C,0x1015,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1415,0x140C,
	0x1011,0x1012,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1412,0x1411,

	0x100C,0x1015,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1415,0x140C,
	0x1011,0x1012,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1412,0x1411,

	0x100C,0x1015,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1415,0x140C,
	0x1011,0x1012,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1412,0x1411,

	0x100C,0x1015,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1001,0x1002,0x1003,0x1004,0x1005,0x1004,0x1005,0x1004,
	0x1005,0x1004,0x1005,0x1004,0x1005,0x1004,0x1402,0x1401,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1415,0x140C,
	0x1011,0x1012,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1006,0x1007,0x1016,0x1017,0x1018,0x1017,0x1018,0x1019,
	0x1018,0x1017,0x1018,0x1017,0x1018,0x1017,0x100B,0x1406,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1412,0x1411,

	0x100C,0x1015,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x100C,0x101A,0x201B,0x201C,0x201B,0x201C,0x201B,0x201C,
	0x201B,0x201C,0x201B,0x201C,0x201B,0x201C,0x140D,0x140C,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1415,0x140C,
	0x1011,0x1012,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1011,0x1012,0x201D,0x201E,0x201D,0x201E,0x201D,0x201E,
	0x201D,0x201E,0x201D,0x201E,0x201D,0x201E,0x1412,0x1411,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1412,0x1411,

	0x100C,0x1015,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x100C,0x1015,0x201B,0x201C,0x201B,0x201C,0x201B,0x201C,
	0x201B,0x201C,0x201B,0x201C,0x201B,0x201C,0x1415,0x140C,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1415,0x140C,
	0x1011,0x1012,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1011,0x1012,0x201D,0x201E,0x201D,0x201E,0x201D,0x201E,
	0x201D,0x201E,0x201D,0x201E,0x201D,0x201E,0x1412,0x1411,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1412,0x1411,

	0x100C,0x1015,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x100C,0x1015,0x201B,0x201C,0x201B,0x201C,0x201B,0x201C,
	0x201B,0x201C,0x201B,0x201C,0x201B,0x201C,0x1415,0x140C,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1415,0x140C,
	0x1011,0x1012,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1011,0x1012,0x201D,0x201E,0x201D,0x201E,0x201D,0x201E,
	0x201D,0x201E,0x201D,0x201E,0x201D,0x201E,0x1412,0x1411,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1412,0x1411,

	0x100C,0x1015,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x100C,0x101F,0x201B,0x201C,0x201B,0x201C,0x201B,0x201C,
	0x201B,0x201C,0x201B,0x201C,0x201B,0x201C,0x141F,0x140C,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1415,0x140C,
	0x1011,0x1012,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1020,0x1021,0x201D,0x201E,0x201D,0x201E,0x201D,0x201E,
	0x201D,0x201E,0x201D,0x201E,0x201D,0x201E,0x1421,0x1420,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1412,0x1411,

	0x100C,0x1015,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1022,0x1023,0x1024,0x1025,0x1024,0x1025,0x1024,0x1025,
	0x1024,0x1025,0x1024,0x1025,0x1425,0x1424,0x1423,0x1422,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1415,0x140C,
	0x1011,0x1012,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1414,0x1413,0x1414,0x1413,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1412,0x1411,

	0x100C,0x1015,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1415,0x140C,
	0x1011,0x1012,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1412,0x1411,

	0x100C,0x1015,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1415,0x140C,
	0x1011,0x1012,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1412,0x1411,

	0x100C,0x1015,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1415,0x140C,
	0x1011,0x1012,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1412,0x1411,

	0x100C,0x101F,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,
	0x1010,0x100F,0x1010,0x100F,0x1010,0x100F,0x141F,0x140C,
	0x1020,0x1021,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1421,0x1420,

	0x1022,0x1023,0x1024,0x1025,0x1024,0x1025,0x1024,0x1025,
	0x1024,0x1025,0x1024,0x1025,0x1024,0x1025,0x1026,0x1027,
	0x1010,0x100F,0x1427,0x1426,0x1425,0x1424,0x1425,0x1424,
	0x1425,0x1424,0x1425,0x1424,0x1425,0x1424,0x1423,0x1422,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,0x1013,0x1014,
	0x1013,0x1014,0x1013,0x1014,0x1013,0x1028,0x1029,0x102A,
	0x1013,0x1014,0x142A,0x1429,0x1428,0x1413,0x1414,0x1413,
	0x1414,0x1413,0x1414,0x1413,0x1414,0x1413,0x1414,0x1413,
};

const unsigned short bossbgPal[256] __attribute__((aligned(4)))=
{
	0x0000,0x0010,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x1D8F,0x29AB,0x14EA,0x192C,0x0464,0x214C,0x18E7,
	0x254C,0x29F2,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x5865,0x7CC7,0x7D8C,0x42D6,0x7EF5,0x6DEF,0x7E70,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(bossbg)