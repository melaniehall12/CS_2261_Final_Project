
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

#ifndef GRIT_BOSSBG_H
#define GRIT_BOSSBG_H

#define bossbgTilesLen 1376
extern const unsigned short bossbgTiles[688];

#define bossbgMapLen 2048
extern const unsigned short bossbgMap[1024];

#define bossbgPalLen 512
extern const unsigned short bossbgPal[256];

#endif // GRIT_BOSSBG_H

//}}BLOCK(bossbg)
