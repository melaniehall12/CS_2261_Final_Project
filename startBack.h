
//{{BLOCK(startBack)

//======================================================================
//
//	startBack, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 463 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 14816 + 4096 = 19424
//
//	Time-stamp: 2017-12-02, 22:27:29
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARTBACK_H
#define GRIT_STARTBACK_H

#define startBackTilesLen 14816
extern const unsigned short startBackTiles[7408];

#define startBackMapLen 4096
extern const unsigned short startBackMap[2048];

#define startBackPalLen 512
extern const unsigned short startBackPal[256];

#endif // GRIT_STARTBACK_H

//}}BLOCK(startBack)
