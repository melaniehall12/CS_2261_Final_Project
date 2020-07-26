
//{{BLOCK(splashBack)

//======================================================================
//
//	splashBack, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 921 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 29472 + 4096 = 34080
//
//	Time-stamp: 2017-11-30, 17:24:59
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SPLASHBACK_H
#define GRIT_SPLASHBACK_H

#define splashBackTilesLen 29472
extern const unsigned short splashBackTiles[14736];

#define splashBackMapLen 4096
extern const unsigned short splashBackMap[2048];

#define splashBackPalLen 512
extern const unsigned short splashBackPal[256];

#endif // GRIT_SPLASHBACK_H

//}}BLOCK(splashBack)
