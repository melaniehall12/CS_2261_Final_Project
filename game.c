#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "spritesheet.h"
#include "collisionmap.h"

CIN cin;
WINTER winter1;
FIREBALL ultimate;
READY uSprite;
READY uSprite2;
ROCK rock;
WINTER winter2;
HONEYS honeys1;
HONEYS honeys2;

HEART h1;
HEART h2;
HEART h3;
HEART h4;
HEART h5;

FIREBALL fireballs[NUMFIREBALLS];
WINTERBALL winterballs[NUMWINTERBALLS];
HONEYSBALL honeysballs[NUMHONEYSBALLS];
WINTERBALL winterballs2[NUMWINTERBALLS];
HONEYSBALL honeysballs2[NUMHONEYSBALLS];

int cinLives;
int bossStage;
int vOff;
int hOff;int vOff;
int hOff;
int frames;
int useUF;

#define MAPHEIGHT 256
#define MAPWIDTH 256

enum {CINFRONT, CINBACK, CINRIGHT, CINLEFT, CINIDLE, FIREBFRONT, FIREBBACK, FIREBRIGHT, FIREBLEFT,
        WFRONT, WBACK, WRIGHT, WLEFT, WIDLE, HFRONT, HBACK, HRIGHT, HLEFT, HIDLE};

void initGame() {
    initCin();
	initFireball();
    initUFireball();
    initWinter1();
    initWinter2();
    initHoneys1();
    initHoneys2();
    initWinterball();
    initHoneysball();
    initWinterball2();
    initHoneysball2();
    initReadyU();
    initRock();
    initHearts();

	cinLives = 5;
    frames = 0;
    bossStage = 0;
    cin.uTimer = 0;
    vOff = 96;
    hOff = 8;
    useUF = 0;   
}

void updateGame() {
    updateHeart2();
    updateHeart3();
    updateHeart4();
    updateHeart5();
	updateCin();
    updateWinter1();
    updateWinter2();
    updateUFireball();
    updateHoneys1();
    updateHoneys2();
    updateReadyU();
    updateRock();
	for (int x = 0; x < NUMFIREBALLS; x++) {
		updateFireball(&fireballs[x]);
	}
    for (int y = 0; y < NUMWINTERBALLS; y++) {
        updateWinterball(&winterballs[y]);
    }
    for (int a = 0; a < NUMWINTERBALLS2; a++) {
        updateWinterball2(&winterballs2[a]);
    }
    for (int z = 0; z < NUMHONEYSBALLS; z++) {
        updateHoneysball(&honeysballs[z]);
    }
    for (int b = 0; b < NUMHONEYSBALLS2; b++) {
        updateHoneysball2(&honeysballs2[b]);
    }
    
    frames++;
}

void drawGame() {
    drawHeart1();
    drawHeart2();
    drawHeart3();
    drawHeart4();
    drawHeart5();
	drawCin();
    drawWinter1();
    drawWinter2();
    drawUFireball();
    drawHoneys1();
    drawHoneys2();
    drawReadyU();
    drawRock();
	for (int x = 0; x < NUMFIREBALLS; x++) {
		drawFireball(&fireballs[x]);
	}
    for (int y = 0; y < NUMWINTERBALLS; y++) {
        drawWinterball(&winterballs[y]);
    }
    for (int a = 0; a < NUMWINTERBALLS2; a++) {
        drawWinterball2(&winterballs2[a]);
    }
    for (int z = 0; z < NUMHONEYSBALLS; z++) {
        drawHoneysball(&honeysballs[z]);
    }
    for (int b = 0; b < NUMHONEYSBALLS2; b++) {
        drawHoneysball2(&honeysballs2[b]);
    }
}

void initHearts() {
    h1.width = 8;
    h1.height = 8;
    h1.screenCol = 3;
    h1.screenRow = 3;
    h1.index = 60;
    h1.active = 1;
   
    h2.width = 8;
    h2.height = 8;
    h2.screenCol = 13;
    h2.screenRow = 3;
    h2.index = 61;
    h2.active = 1;

    h3.width = 8;
    h3.height = 8;
    h3.screenCol = 23;
    h3.screenRow = 3;
    h3.index = 62;
    h3.active = 1;

    h4.width = 8;
    h4.height = 8;
    h4.screenCol = 33;
    h4.screenRow = 3;
    h4.index = 63;
    h4.active = 1;

    h5.width = 8;
    h5.height = 8;
    h5.screenCol = 43;
    h5.screenRow = 3;
    h5.index = 64;
    h5.active = 1;
}

void updateHeart2() {
    if (h2.active) {
        if (cinLives <= 1) {
            h2.active = 0;
        }
    } else {
        h2.active = 0;
        shadowOAM[h2.index].attr0 = ATTR0_HIDE;
    }
    // h2.screenCol = h2.worldCol - hOff;
    // h2.screenRow = h2.worldRow - vOff;        
}

void updateHeart3() {
    if (h3.active) {
        if (cinLives <= 2) {
            h3.active = 0;
        }
    } else {
        h3.active = 0;
        shadowOAM[h3.index].attr0 = ATTR0_HIDE;
    }
    // h3.screenCol = h3.worldCol - hOff;
    // h3.screenRow = h3.worldRow - vOff;            
}

void updateHeart4() {
    if (h4.active) {
        if (cinLives <= 3) {
            h4.active = 0;
        }   
    } else {
        h4.active = 0;
        shadowOAM[h4.index].attr0 = ATTR0_HIDE;
    }
    // h4.screenCol = h4.worldCol - hOff;
    // h4.screenRow = h4.worldRow - vOff;      
}

void updateHeart5() {
    if (h5.active) {
        if (cinLives <= 4) {
            h5.active = 0;        
        }
    } else {
        h5.active = 0;
        shadowOAM[h5.index].attr0 = ATTR0_HIDE;
    }
    // h5.screenCol = h5.worldCol - hOff;
    // h5.screenRow = h5.worldRow - vOff; 
}

void drawHeart1() {
    if (h1.active) {
        shadowOAM[h1.index].attr0 = (h1.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[h1.index].attr1 = (h1.screenCol & COLMASK) | ATTR1_TINY;
        shadowOAM[h1.index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 16) | ATTR2_PRIORITY(0);
    } else {
        shadowOAM[h1.index].attr0 = ATTR0_HIDE;
    }
}

void drawHeart2() {
    if (h2.active) {
        shadowOAM[h2.index].attr0 = (h2.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[h2.index].attr1 = (h2.screenCol & COLMASK) | ATTR1_TINY;
        shadowOAM[h2.index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 16) | ATTR2_PRIORITY(0);
    } else {
        shadowOAM[h2.index].attr0 = ATTR0_HIDE;    
    }
}

void drawHeart3() {
    if (h3.active) {
        shadowOAM[h3.index].attr0 = (h3.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[h3.index].attr1 = (h3.screenCol & COLMASK) | ATTR1_TINY;
        shadowOAM[h3.index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 16) | ATTR2_PRIORITY(0);
    } else {
        shadowOAM[h3.index].attr0 = ATTR0_HIDE;
    }
}

void drawHeart4() {
    if (h4.active) {
        shadowOAM[h4.index].attr0 = (h4.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[h4.index].attr1 = (h4.screenCol & COLMASK) | ATTR1_TINY;
        shadowOAM[h4.index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 16) | ATTR2_PRIORITY(0);   
    } else {
        shadowOAM[h4.index].attr0 = ATTR0_HIDE;
    }
}

void drawHeart5() {
    if (h5.active) {
        shadowOAM[h5.index].attr0 = (h5.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[h5.index].attr1 = (h5.screenCol & COLMASK) | ATTR1_TINY;
        shadowOAM[h5.index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 16) | ATTR2_PRIORITY(0);
    } else {
        shadowOAM[h5.index].attr0 = ATTR0_HIDE;
    }
}

void initReadyU() {
    uSprite.height = 25;
    uSprite.width = 64;
    uSprite.worldCol = 85;
    uSprite.worldRow = cin.worldRow - 130;
    uSprite.index = 65;
    uSprite.active = 0;

    uSprite2.height = 25;
    uSprite2.width = 28;
    uSprite2.worldCol = uSprite.worldCol + uSprite.width;
    uSprite2.worldRow = cin.worldRow - 130;
    uSprite2.index = 66;
    uSprite2.active = 0;
}

void launchReadyU() {
    if (!uSprite.active && !uSprite2.active) {
        useUF = 1;
        uSprite.active = 1;
        uSprite2.active = 1;
    }                                    
}

void updateReadyU() {
    if (cin.uTimer >= 500) {
        launchReadyU();
       
        uSprite.screenCol = uSprite.worldCol - hOff;
        uSprite.screenRow = uSprite.worldRow - vOff;

        uSprite2.screenCol = uSprite2.worldCol - hOff;
        uSprite2.screenRow = uSprite2.worldRow - vOff;

        if (BUTTON_PRESSED(BUTTON_B)) {
            cin.uTimer = 0;
        }
    } else {
        uSprite.active = 0;
        uSprite2.active = 0;
        shadowOAM[uSprite.index].attr0 = ATTR0_HIDE;
        shadowOAM[uSprite2.index].attr0 = ATTR0_HIDE;
    }
    cin.uTimer++;
}

void drawReadyU() {
    if (uSprite.active && uSprite2.active) {
        shadowOAM[uSprite.index].attr0 = (uSprite.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_WIDE;
        shadowOAM[uSprite.index].attr1 = (uSprite.screenCol & COLMASK) | ATTR1_LARGE;
        shadowOAM[uSprite.index].attr2 = ATTR2_PALROW(8) | ATTR2_TILEID(6, 16) | ATTR2_PRIORITY(0);

        shadowOAM[uSprite2.index].attr0 = (uSprite2.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[uSprite2.index].attr1 = (uSprite2.screenCol & COLMASK) | ATTR1_MEDIUM;
        shadowOAM[uSprite2.index].attr2 = ATTR2_PALROW(8) | ATTR2_TILEID(6, 24) | ATTR2_PRIORITY(0); 
    
    } else {
        uSprite.active = 0;
        uSprite2.active = 0;
        shadowOAM[uSprite.index].attr0 = ATTR0_HIDE;
        shadowOAM[uSprite2.index].attr0 = ATTR0_HIDE;
    } 
}

void initRock() {
    rock.worldRow = 6;
    rock.worldCol = 128;
    rock.width = 14; 
    rock.height = 12;
    rock.index = 67;
    rock.active = 1; 
}

void updateRock() {
    if (rock.active) {
        if (!winter1.active && !winter2.active && !honeys1.active && !honeys2.active) {
            rock.active = 0;
        }
        rock.screenCol = rock.worldCol - hOff;
        rock.screenRow = rock.worldRow - vOff;
    } else {
        rock.active = 0;
        shadowOAM[rock.index].attr0 = ATTR0_HIDE;
    }
}

void drawRock() {
    if (rock.active) {
        shadowOAM[rock.index].attr0 = (rock.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[rock.index].attr1 = (rock.screenCol & COLMASK) | ATTR1_SMALL;
        shadowOAM[rock.index].attr2 = ATTR2_PALROW(9) | ATTR2_TILEID(4, 25) | ATTR2_PRIORITY(1);    
    } else {
        rock.active = 0;
        shadowOAM[rock.index].attr0 = ATTR0_HIDE;
    }
}

void initCin() {
	cin.width = 18;
    cin.height = 24;
    cin.rdel = 1;
    cin.cdel = 1;
    cin.worldRow = 228;
    cin.worldCol = 120;
    cin.aniCounter = 0;
    cin.curFrame = 0;
    cin.numFrames = 3;
    cin.aniState = CINBACK;
}

void updateCin() {
    //DOWN
    if(BUTTON_HELD(BUTTON_DOWN) && collisionmapBitmap[OFFSET(cin.worldRow + cin.height - 1 + cin.rdel, cin.worldCol, 256)]
        && collisionmapBitmap[OFFSET(cin.worldRow + cin.height - 1 + cin.rdel, cin.worldCol + cin.width - 1, 256)] && (winter1.active && !collision(cin.worldRow,
          cin.worldCol, cin.height, cin.width, winter1.worldRow, winter1.worldCol, winter1.height, winter1.width)) && (winter2.active && !collision(cin.worldRow,
          cin.worldCol, cin.height, cin.width, winter2.worldRow, winter2.worldCol, winter2.height, winter2.width)) && (honeys1.active && !collision(cin.worldRow,
          cin.worldCol, cin.height, cin.width, honeys1.worldRow, honeys1.worldCol, honeys1.height, honeys1.width)) && (honeys2.active && !collision(cin.worldRow,
          cin.worldCol, cin.height, cin.width, honeys2.worldRow, honeys2.worldCol, honeys2.height, honeys2.width))) {
        if ((cin.screenRow == 160/2-cin.width/2) && (vOff < MAPHEIGHT - SCREENHEIGHT)) {
            vOff++;
            cin.worldRow++;
            uSprite.worldRow++;
            uSprite2.worldRow++;
        } else {
            cin.worldRow++;
        }         
    }

    if (BUTTON_HELD(BUTTON_DOWN) && collisionmapBitmap[OFFSET(cin.worldRow + cin.height - 1 + cin.rdel, cin.worldCol, 256)]
        && collisionmapBitmap[OFFSET(cin.worldRow + cin.height - 1 + cin.rdel, cin.worldCol + cin.width - 1, 256)] && (!winter1.active
            || !winter2.active || !honeys1.active || !honeys2.active)) {
            if ((cin.screenRow == 160/2-cin.width/2) && (vOff < MAPHEIGHT - SCREENHEIGHT)) {
            vOff++;
            cin.worldRow++;
            uSprite.worldRow++;
            uSprite2.worldRow++;
        } else {
            cin.worldRow++;
        }         
    }        
    
    //UP
    if(BUTTON_HELD(BUTTON_UP) && collisionmapBitmap[OFFSET(cin.worldRow - 1, cin.worldCol, 256)]
        && collisionmapBitmap[OFFSET(cin.worldRow - 1, cin.worldCol + cin.width - 1, 256)] && (winter1.active && !collision(cin.worldRow,
          cin.worldCol, cin.height, cin.width, winter1.worldRow, winter1.worldCol, winter1.height, winter1.width)) && (winter2.active && !collision(cin.worldRow,
          cin.worldCol, cin.height, cin.width, winter2.worldRow, winter2.worldCol, winter2.height, winter2.width)) && (honeys1.active && !collision(cin.worldRow,
          cin.worldCol, cin.height, cin.width, honeys1.worldRow, honeys1.worldCol, honeys1.height, honeys1.width)) && (honeys2.active && !collision(cin.worldRow,
          cin.worldCol, cin.height, cin.width, honeys2.worldRow, honeys2.worldCol, honeys2.height, honeys2.width)) && (rock.active && !collision(cin.worldRow, cin.worldCol,
          cin.height, cin.width, rock.worldRow, rock.worldCol, rock.height, rock.width))) { 
        if ((cin.screenRow == 160/2-cin.width/2) && (vOff > 0)) {
            vOff--;
            cin.worldRow--;
            uSprite.worldRow--;
            uSprite2.worldRow--;
        } else {
            cin.worldRow--;
        }          
    }

    if(BUTTON_HELD(BUTTON_UP) && collisionmapBitmap[OFFSET(cin.worldRow - 1, cin.worldCol, 256)]
        && collisionmapBitmap[OFFSET(cin.worldRow - 1, cin.worldCol + cin.width - 1, 256)] && (!winter1.active
            || !winter2.active || !honeys1.active || !honeys2.active || (!rock.active && collision(cin.worldRow, cin.worldCol,
          cin.height, cin.width, rock.worldRow, rock.worldCol, rock.height, rock.width)))) {
        if ((cin.screenRow == 160/2-cin.width/2) && (vOff > 0)) {
            vOff--;
            cin.worldRow--;
            uSprite.worldRow--;
            uSprite2.worldRow--;
        } else {
            cin.worldRow--;
        }
    }              
    
    //LEFT
    if(BUTTON_HELD(BUTTON_LEFT) && collisionmapBitmap[OFFSET(cin.worldRow, cin.worldCol - 1, 256)]
        && collisionmapBitmap[OFFSET(cin.worldRow + cin.height - 1, cin.worldCol - 1, 256)] && (winter1.active && !collision(cin.worldRow,
          cin.worldCol, cin.height, cin.width, winter1.worldRow, winter1.worldCol, winter1.height, winter1.width)) && (winter2.active && !collision(cin.worldRow,
          cin.worldCol, cin.height, cin.width, winter2.worldRow, winter2.worldCol, winter2.height, winter2.width)) && (honeys1.active && !collision(cin.worldRow,
          cin.worldCol, cin.height, cin.width, honeys1.worldRow, honeys1.worldCol, honeys1.height, honeys1.width)) && (honeys2.active && !collision(cin.worldRow,
          cin.worldCol, cin.height, cin.width, honeys2.worldRow, honeys2.worldCol, honeys2.height, honeys2.width))) {
        if ((cin.screenCol == 240/2-cin.height/2) && (hOff > 0)) {
            hOff--;
            cin.worldCol--;
            uSprite.worldCol--;
            uSprite2.worldCol--;
        } else {
            cin.worldCol--;
        }
    }

    if(BUTTON_HELD(BUTTON_LEFT) && collisionmapBitmap[OFFSET(cin.worldRow, cin.worldCol - 1, 256)]
        && collisionmapBitmap[OFFSET(cin.worldRow + cin.height - 1, cin.worldCol - 1, 256)] && (!winter1.active
            || !winter2.active || !honeys1.active || !honeys2.active)) {
        if ((cin.screenCol == 240/2-cin.height/2) && (hOff > 0)) {
            hOff--;
            cin.worldCol--;
            uSprite.worldCol--;
            uSprite2.worldCol--;
        } else {
            cin.worldCol--;
        }
    }     
    
    //RIGHT
    if(BUTTON_HELD(BUTTON_RIGHT) && collisionmapBitmap[OFFSET(cin.worldRow, cin.worldCol + cin.width - 1 + cin.cdel, 256)]
        && collisionmapBitmap[OFFSET(cin.worldRow + cin.height - 1, cin.worldCol + cin.width - 1 + cin.cdel, 256)] && (winter1.active && !collision(cin.worldRow,
          cin.worldCol, cin.height, cin.width, winter1.worldRow, winter1.worldCol, winter1.height, winter1.width)) && (winter2.active && !collision(cin.worldRow,
          cin.worldCol, cin.height, cin.width, winter2.worldRow, winter2.worldCol, winter2.height, winter2.width)) && (honeys1.active && !collision(cin.worldRow,
          cin.worldCol, cin.height, cin.width, honeys1.worldRow, honeys1.worldCol, honeys1.height, honeys1.width)) && (honeys2.active && !collision(cin.worldRow,
          cin.worldCol, cin.height, cin.width, honeys2.worldRow, honeys2.worldCol, honeys2.height, honeys2.width))) {
        if ((cin.screenCol == 240/2-cin.height/2) && (hOff < MAPWIDTH - SCREENWIDTH)) {
            hOff++;
            cin.worldCol++;
            uSprite.worldCol++;
            uSprite2.worldCol++;
        } else {
            cin.worldCol++;
        }     
    }

    if(BUTTON_HELD(BUTTON_RIGHT) && collisionmapBitmap[OFFSET(cin.worldRow, cin.worldCol + cin.width - 1 + cin.cdel, 256)]
        && collisionmapBitmap[OFFSET(cin.worldRow + cin.height - 1, cin.worldCol + cin.width - 1 + cin.cdel, 256)] && (!winter1.active
            || !winter2.active || !honeys1.active || !honeys2.active)) {
        if ((cin.screenCol == 240/2-cin.height/2) && (hOff < MAPWIDTH - SCREENWIDTH)) {
            hOff++;
            cin.worldCol++;
            uSprite.worldCol++;
            uSprite2.worldCol++;
        } else {
            cin.worldCol++;
        }
    }         

    if (cin.worldRow + cin.height/4 == 1) {
        bossStage = 1;
    }

    if (BUTTON_PRESSED(BUTTON_A) && cin.timer >= 13) {
        releaseFireball();
        cin.timer = 0;
    }
    cin.timer++;

    if (BUTTON_PRESSED(BUTTON_B) && (useUF == 1)) {
        releaseUFireball();
        cin.uTimer = 0;
        useUF = 0;
    }
    cin.uTimer++;

    for (int x = 0; x < NUMWINTERBALLS; x++) {
        if (winterballs[x].active && collision(cin.worldRow, cin.worldCol, cin.height, cin.width,
            winterballs[x].worldRow, winterballs[x].worldCol, winterballs[x].height, winterballs[x].width)) {
            winterballs[x].active = 0;
            cinLives--;
        }
    }

    for (int x = 0; x < NUMWINTERBALLS2; x++) {
        if (winterballs2[x].active && collision(cin.worldRow, cin.worldCol, cin.height, cin.width,
            winterballs2[x].worldRow, winterballs2[x].worldCol, winterballs2[x].height, winterballs2[x].width)) {
            winterballs2[x].active = 0;
            cinLives--;
        }
    }

    for (int x = 0; x < NUMHONEYSBALLS; x++) {
        if (honeysballs[x].active && collision(cin.worldRow, cin.worldCol, cin.height, cin.width,
            honeysballs[x].worldRow, honeysballs[x].worldCol, honeysballs[x].height, honeysballs[x].width)) {
            honeysballs[x].active = 0;
            cinLives--;
        }
    }

    for (int x = 0; x < NUMHONEYSBALLS2; x++) {
        if (honeysballs2[x].active && collision(cin.worldRow, cin.worldCol, cin.height, cin.width,
            honeysballs2[x].worldRow, honeysballs2[x].worldCol, honeysballs2[x].height, honeysballs2[x].width)) {
            honeysballs2[x].active = 0;
            cinLives--;
        }
    }

    cin.screenCol = cin.worldCol - hOff;
    cin.screenRow = cin.worldRow - vOff;  
    moveCin();
}

void moveCin() {
    cin.prevAniState = cin.aniState;
    cin.aniState = CINIDLE;
    if(cin.aniCounter % 15 == 0) {
        cin.curFrame = (cin.curFrame + 1) % cin.numFrames;
    }
    if(BUTTON_HELD(BUTTON_UP)) {
        cin.aniState = CINBACK;
    }
    if(BUTTON_HELD(BUTTON_DOWN)) {
        cin.aniState = CINFRONT;
    }
    if(BUTTON_HELD(BUTTON_LEFT)) {
        cin.aniState = CINLEFT;
    }
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        cin.aniState = CINRIGHT;
    }

    if (cin.aniState == CINIDLE) {
        cin.curFrame = 0;
        cin.aniState = cin.prevAniState;
    } else {
        cin.aniCounter++;
    }
}

void drawCin() {
    if (cin.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[0].attr0 = (cin.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[0].attr1 = (cin.screenCol & COLMASK) | ATTR1_MEDIUM;
        if (cin.aniState == CINFRONT) {
            if (BUTTON_PRESSED(BUTTON_A) || BUTTON_PRESSED(BUTTON_B)) {
                shadowOAM[0].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(12, 0) | ATTR2_PRIORITY(1);
            } else {
                shadowOAM[0].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(cin.curFrame * 4, cin.aniState * 4) | ATTR2_PRIORITY(1);
            }
        }        
        if (cin.aniState == CINBACK) {
            if (BUTTON_PRESSED(BUTTON_A) || BUTTON_PRESSED(BUTTON_B)) {
                shadowOAM[0].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(12, 4) | ATTR2_PRIORITY(1);
            } else {
                shadowOAM[0].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(cin.curFrame * 4, cin.aniState * 4) | ATTR2_PRIORITY(1);
            }    
        }
        if (cin.aniState == CINRIGHT) {
            if (BUTTON_PRESSED(BUTTON_A) || BUTTON_PRESSED(BUTTON_B)) {
                shadowOAM[0].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(12, 8) | ATTR2_PRIORITY(1);
            } else {
                shadowOAM[0].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(cin.curFrame * 4, cin.aniState * 4) | ATTR2_PRIORITY(1); 
            }    
        }
        if (cin.aniState == CINLEFT) {
            if (BUTTON_PRESSED(BUTTON_A) || BUTTON_PRESSED(BUTTON_B)) {
                shadowOAM[0].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(12, 12) | ATTR2_PRIORITY(1);    
            } else {
                shadowOAM[0].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(cin.curFrame * 4, cin.aniState * 4) | ATTR2_PRIORITY(1);
            }    
        }    
    }
}

void initUFireball() {
    ultimate.height = 16;
    ultimate.width = 16;
    ultimate.worldRow = -ultimate.height;
    ultimate.worldCol = 0;
    ultimate.cdel = 1;
    ultimate.rdel = 1;
    ultimate.active = 0;
    ultimate.index = 1;
}

void releaseUFireball() {
    if (!ultimate.active) {
        if(cin.aniState == CINBACK) {
            ultimate.aniState = FIREBBACK;
            ultimate.worldRow = cin.screenRow + (ultimate.height/2);
            ultimate.worldCol = cin.screenCol + (cin.width/4) + (ultimate.width/4);
        } 
        if(cin.aniState == CINFRONT) {
            ultimate.aniState = FIREBFRONT;
            ultimate.worldRow = cin.screenRow + (ultimate.height);
            ultimate.worldCol = cin.screenCol + (cin.width/4) + (ultimate.width/4);
        } 
        if(cin.aniState == CINLEFT) {
            ultimate.aniState = FIREBLEFT;
            ultimate.worldRow = cin.screenRow + (ultimate.width/2);
            ultimate.worldCol = cin.screenCol - (ultimate.width/2);
        } 
        if(cin.aniState == CINRIGHT) {
            ultimate.aniState = FIREBRIGHT;
            ultimate.worldRow = cin.screenRow + (ultimate.width/2);
            ultimate.worldCol = cin.screenCol + (cin.width/2) + (ultimate.width/2);
        }   
        ultimate.active = 1;
    }
}

void updateUFireball() {
    if (ultimate.active) {
        if (collisionmapBitmap[OFFSET(ultimate.worldRow, ultimate.worldCol + ultimate.width - 1 + ultimate.cdel, 256)]
            && collisionmapBitmap[OFFSET(ultimate.worldRow + ultimate.height - 1, ultimate.worldCol + ultimate.width - 1 + ultimate.cdel, 256)]) {
            if(ultimate.aniState == FIREBBACK) {
                ultimate.worldRow -= ultimate.rdel;
            }
            if(ultimate.aniState == FIREBFRONT) {
                ultimate.worldRow += ultimate.rdel;
            }
            if(ultimate.aniState == FIREBLEFT) {
                ultimate.worldCol -= ultimate.cdel;
            }
            if(ultimate.aniState == FIREBRIGHT) {
                ultimate.worldCol += ultimate.cdel;
            }
        } else {
            ultimate.active = 0;
            shadowOAM[ultimate.index].attr0 = ATTR0_HIDE;
        }    
    }
        
    ultimate.screenCol = ultimate.worldCol - hOff;
    ultimate.screenRow = ultimate.worldRow - vOff;          
}

void drawUFireball() {
    if (ultimate.active) {   
        shadowOAM[ultimate.index].attr0 = (ultimate.worldRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[ultimate.index].attr1 = (ultimate.worldCol & COLMASK) | ATTR1_SMALL;
        if (ultimate.aniState == FIREBFRONT) {
             if (ultimate.timer % 5 == 0) {
                 shadowOAM[ultimate.index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(0, 16) | ATTR2_PRIORITY(1);
            } else if (ultimate.timer % 7 == 0) {
                shadowOAM[ultimate.index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(2, 16) | ATTR2_PRIORITY(1);    
            } 
        }    
        if (ultimate.aniState == FIREBBACK) {
            if (ultimate.timer % 5 == 0) {
                shadowOAM[ultimate.index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(0, 18) | ATTR2_PRIORITY(1);
            } else if (ultimate.timer % 7 == 0) {
                shadowOAM[ultimate.index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(2, 18) | ATTR2_PRIORITY(1);    
            }   
        }    
        if (ultimate.aniState == FIREBRIGHT) {
            if (ultimate.timer % 5 == 0) {
                shadowOAM[ultimate.index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(0, 20) | ATTR2_PRIORITY(1);
            } else if (ultimate.timer % 7 == 0) {
                shadowOAM[ultimate.index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(2, 20) | ATTR2_PRIORITY(1);    
            }   
        }
        if (ultimate.aniState == FIREBLEFT) {
            if (ultimate.timer % 5 == 0) {
                shadowOAM[ultimate.index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(0, 22) | ATTR2_PRIORITY(1);
            } else if (ultimate.timer % 7 == 0) {
                shadowOAM[ultimate.index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(2, 22) | ATTR2_PRIORITY(1);    
            }   
        }
        ultimate.timer++;  
    } else {
        shadowOAM[ultimate.index].attr0 = ATTR0_HIDE;
    }    
}

void initFireball() {
	for (int x = 0; x < NUMFIREBALLS; x++) {
		fireballs[x].height = 14;
		fireballs[x].width = 10;
		fireballs[x].worldRow = -fireballs[x].height;
		fireballs[x].worldCol = 0;
		fireballs[x].cdel = 1;
		fireballs[x].rdel = 1;
		fireballs[x].active = 0;
        fireballs[x].index = x + 1 + UFIREBALL; 
	}
}

void releaseFireball() {
	for (int x = 0; x < NUMFIREBALLS; x++) {
		if (!fireballs[x].active) {
            if(cin.aniState == CINBACK) {
                fireballs[x].aniState = FIREBBACK;
                fireballs[x].worldRow = cin.screenRow + (fireballs[x].height/2);
                fireballs[x].worldCol = cin.screenCol + (cin.width/4) + (fireballs[x].width/4) + 2;
            } 
            if(cin.aniState == CINFRONT) {
                fireballs[x].aniState = FIREBFRONT;
                fireballs[x].worldRow = cin.screenRow + (fireballs[x].height + 4);
                fireballs[x].worldCol = cin.screenCol + (cin.width/4) + (fireballs[x].width/4) + 2;
            } 
            if(cin.aniState == CINLEFT) {
                fireballs[x].aniState = FIREBLEFT;
                fireballs[x].worldRow = cin.screenRow + (fireballs[x].width/2);
                fireballs[x].worldCol = cin.screenCol - (fireballs[x].width/3);
            } 
            if(cin.aniState == CINRIGHT) {
                fireballs[x].aniState = FIREBRIGHT;
                fireballs[x].worldRow = cin.screenRow + (fireballs[x].width/2);
                fireballs[x].worldCol = cin.screenCol + (cin.width/2) + (fireballs[x].width/2) + 2;
            }   
			fireballs[x].active = 1;
			break;
		}
	}
}

void updateFireball(FIREBALL* b) {
	if (b->active) {
		if (collisionmapBitmap[OFFSET(b->worldRow, b->worldCol + b->width - 1 + b->cdel, 256)]
            && collisionmapBitmap[OFFSET(b->worldRow + b->height - 1, b->worldCol + b->width - 1 + b->cdel, 256)]) {
            if(b->aniState == FIREBBACK) {
                b->worldRow -= b->rdel;
            }
            if(b->aniState == FIREBFRONT) {
                b->worldRow += b->rdel;
            }
            if(b->aniState == FIREBLEFT) {
                b->worldCol -= b->cdel;
            }
            if(b->aniState == FIREBRIGHT) {
                b->worldCol += b->cdel;
            }       
	    } else {
            b->active = 0;
            shadowOAM[b->index].attr0 = ATTR0_HIDE;
        }    
    }
    for (int i = 0; i < NUMFIREBALLS; i++) {
        fireballs[i].screenCol = fireballs[i].worldCol - hOff;
        fireballs[i].screenRow = fireballs[i].worldRow - vOff;
    }  
}

void drawFireball(FIREBALL* b) {
    if (b->active) {   
	    shadowOAM[b->index].attr0 = (b->worldRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
	    shadowOAM[b->index].attr1 = (b->worldCol & COLMASK) | ATTR1_SMALL;
        if (b->aniState == FIREBFRONT) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(0, 24) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(2, 24) | ATTR2_PRIORITY(1);    
            } 
        }    
        if (b->aniState == FIREBBACK) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(0, 26) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(2, 26) | ATTR2_PRIORITY(1);    
            }   
        }    
        if (b->aniState == FIREBRIGHT) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(0, 28) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(2, 28) | ATTR2_PRIORITY(1);    
            }   
        }
        if (b->aniState == FIREBLEFT) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(0, 30) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(2, 30) | ATTR2_PRIORITY(1);    
            }   
        }
        b->timer++;  
    } else {
        shadowOAM[b->index].attr0 = ATTR0_HIDE;    
    }
}

void initWinter1() {
    winter1.height = 15;
    winter1.width = 22;
    winter1.worldRow = 170;
    winter1.worldCol = 215;
    winter1.cdel = 1;
    winter1.rdel = 1;
    winter1.active = 1;
    winter1.aniCounter = 0;
    winter1.curFrame = 0;
    winter1.numFrames = 3;
    winter1.aniState = WFRONT;
    winter1.index = UFIREBALL + NUMFIREBALLS + 1;
    winter1.health = 200;   
}

void updateWinter1() {
    if (winter1.active) {
        if (winter1.worldRow - 1 > 16 && winter1.worldRow + winter1.height - 1 < 240 && winter1.worldCol - 1 > 16 && winter1.worldCol + winter1.width - 1 < 240) {
            if((winter1.aniState == WFRONT) && collisionmapBitmap[OFFSET(winter1.worldRow + winter1.height - 1 + winter1.rdel, winter1.worldCol, 256)]
                && collisionmapBitmap[OFFSET(winter1.worldRow + winter1.height - 1 + winter1.rdel, winter1.worldCol + winter1.width - 1, 256)]) {
                    winter1.worldRow++;   
            }
            if((winter1.aniState == WRIGHT) && collisionmapBitmap[OFFSET(winter1.worldRow, winter1.worldCol + winter1.width + winter1.cdel, 256)]
                && collisionmapBitmap[OFFSET(winter1.worldRow + winter1.height - 1, winter1.worldCol + winter1.width - 1 + winter1.cdel, 256)]
                && (winter1.worldCol - 1 < SCREENWIDTH - winter1.cdel)) {
                    winter1.worldCol++;
            }
            if((winter1.aniState == WLEFT) && collisionmapBitmap[OFFSET(winter1.worldRow, winter1.worldCol - winter1.cdel, 256)]
                && collisionmapBitmap[OFFSET(winter1.worldRow + winter1.height - 1, winter1.worldCol - winter1.cdel, 256)]) {
                winter1.worldCol--;
            }
            if((winter1.aniState == WBACK) && collisionmapBitmap[OFFSET(winter1.worldRow - winter1.rdel, winter1.worldCol, 256)]
                && collisionmapBitmap[OFFSET(winter1.worldRow - winter1.rdel, winter1.worldCol + winter1.width - 1, 256)]) {
                winter1.worldRow--;
            }
        }    

        for (int x = 0; x < NUMFIREBALLS; x++) {
            if (fireballs[x].active && collision(winter1.screenRow, winter1.screenCol, winter1.height, winter1.width,
                fireballs[x].worldRow, fireballs[x].worldCol, fireballs[x].height, fireballs[x].width)) {
                fireballs[x].active = 0;
                winter1.health -= 25;
            }
        }

        if (ultimate.active && collision(winter1.screenRow, winter1.screenCol, winter1.height, winter1.width,
            ultimate.worldRow, ultimate.worldCol, ultimate.height, ultimate.width)) {
            ultimate.active = 0;
            winter1.active = 0;
        }

        if (winter1.health == 0) {
            winter1.active = 0;   
        }

        if (winter1.timer % 55 == 0) {
            releaseWinterball();
            winter1.timer = 0;
        }
        winter1.timer++;     
    } else {
        winter1.active = 0;
        shadowOAM[winter1.index].attr0 = ATTR0_HIDE;
    }
    winter1.screenCol = winter1.worldCol - hOff;
    winter1.screenRow = winter1.worldRow - vOff;

    moveWinter1();   
}

void drawWinter1() {
    if (winter1.active) {
        shadowOAM[winter1.index].attr0 = (winter1.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_TALL;
        shadowOAM[winter1.index].attr1 = (winter1.screenCol & COLMASK) | ATTR1_MEDIUM;
        if (winter1.aniState == WFRONT) {
            if (winter1.timer % 55 == 0) {
                shadowOAM[winter1.index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(28, 0) | ATTR2_PRIORITY(1);    
            } else {
                shadowOAM[winter1.index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(winter2.curFrame * 4 + 16, 0) | ATTR2_PRIORITY(1);
            }
        }        
        if (winter1.aniState == WBACK) {
            if (winter1.timer % 55 == 0) {
                shadowOAM[winter1.index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(28, 2) | ATTR2_PRIORITY(1);    
            } else {
                shadowOAM[winter1.index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(winter2.curFrame * 4 + 16, 2) | ATTR2_PRIORITY(1);
            }    
        }
        if (winter1.aniState == WRIGHT) {
            if (winter1.timer % 55 == 0) {
                shadowOAM[winter1.index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(28, 4) | ATTR2_PRIORITY(1);    
            } else {
                shadowOAM[winter1.index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(winter2.curFrame * 4 + 16, 4) | ATTR2_PRIORITY(1);
            }    
        }
        if (winter1.aniState == WLEFT) {
            if (winter1.timer % 55 == 0) {
                shadowOAM[winter1.index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(28, 6) | ATTR2_PRIORITY(1);    
            } else {
                shadowOAM[winter1.index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(winter2.curFrame * 4 + 16, 6) | ATTR2_PRIORITY(1);
            }    
        }
    } else {
        shadowOAM[winter1.index].attr0 = ATTR0_HIDE;
    }
}

void moveWinter1() {
    if(winter1.aniCounter % 15 == 0) {
        winter1.curFrame = (winter1.curFrame + 1) % winter1.numFrames;
    }
    if (frames % 70 == 0) {
        int dir = rand() % 4;
        switch(dir) {
            case 0:
                winter1.aniState = WFRONT;
                break;
            case 1:
                winter1.aniState = WRIGHT;
                break;
            case 2:
                winter1.aniState = WLEFT;
                break;
            case 3:
                winter1.aniState = WBACK;
                break;
        }

    }
    if (winter1.aniState == WIDLE) {
        winter1.curFrame = 0;
        winter1.aniState = winter1.prevAniState;
    } else {
        winter1.aniCounter++;
    }
}

void initWinter2() {
    winter2.height = 15;
    winter2.width = 22;
    winter2.worldRow = 100;
    winter2.worldCol = 140;
    winter2.cdel = 1;
    winter2.rdel = 1;
    winter2.active = 1;
    winter2.aniCounter = 0;
    winter2.curFrame = 0;
    winter2.numFrames = 3;
    winter2.aniState = WFRONT;
    winter2.index = UFIREBALL + NUMFIREBALLS + NUMWINTER;
    winter2.health = 200;   
}

void updateWinter2() {
    if (winter2.active) {
        if (winter2.worldRow - 1 > 16 && winter2.worldRow + winter2.height - 1 < 240 && winter2.worldCol - 1 > 16 && winter2.worldCol + winter2.width - 1 < 240) {
            if((winter2.aniState == WFRONT) && collisionmapBitmap[OFFSET(winter2.worldRow + winter2.height - 1 + winter2.rdel, winter2.worldCol, 256)]
                && collisionmapBitmap[OFFSET(winter2.worldRow + winter2.height - 1 + winter2.rdel, winter2.worldCol + winter2.width - 1, 256)]) {
                    winter2.worldRow++;  
            }
            if((winter2.aniState == WRIGHT) && collisionmapBitmap[OFFSET(winter2.worldRow, winter2.worldCol + winter2.width + winter2.cdel, 256)]
                && collisionmapBitmap[OFFSET(winter2.worldRow + winter2.height - 1, winter2.worldCol + winter2.width - 1 + winter2.cdel, 256)]) {
                    winter2.worldCol++;
            }
            if((winter2.aniState == WLEFT) && collisionmapBitmap[OFFSET(winter2.worldRow, winter2.worldCol - winter2.cdel, 256)]
                && collisionmapBitmap[OFFSET(winter2.worldRow + winter2.height - 1, winter2.worldCol - winter2.cdel, 256)]) {
                    winter2.worldCol--;
            }
            if((winter2.aniState == WBACK) && collisionmapBitmap[OFFSET(winter2.worldRow - winter2.rdel, winter2.worldCol, 256)]
                && collisionmapBitmap[OFFSET(winter2.worldRow - winter2.rdel, winter2.worldCol + winter2.width - 1, 256)]) {
                    winter2.worldRow--;
            }   
        }    

        for (int x = 0; x < NUMFIREBALLS; x++) {
            if (fireballs[x].active && collision(winter2.screenRow, winter2.screenCol, winter2.height, winter2.width,
                fireballs[x].worldRow, fireballs[x].worldCol, fireballs[x].height, fireballs[x].width)) {
                fireballs[x].active = 0;
                winter2.health -= 25;
            }
        }

        if (ultimate.active && collision(winter2.screenRow, winter2.screenCol, winter2.height, winter2.width,
            ultimate.worldRow, ultimate.worldCol, ultimate.height, ultimate.width)) {
            ultimate.active = 0;
            winter2.active = 0;
        }

        if (winter2.health == 0) {
            winter2.active = 0;   
        }

        if (winter2.timer % 55 == 0) {
            releaseWinterball2();
            winter2.timer = 0;
        }
        winter2.timer++;       
    } else {
        winter2.active = 0;
        shadowOAM[winter1.index].attr0 = ATTR0_HIDE;
    }

    winter2.screenCol = winter2.worldCol - hOff;
    winter2.screenRow = winter2.worldRow - vOff;

    moveWinter2();  
}

void drawWinter2() {
    if (winter2.active) {
        shadowOAM[winter2.index].attr0 = (winter2.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_TALL;
        shadowOAM[winter2.index].attr1 = (winter2.screenCol & COLMASK) | ATTR1_MEDIUM;
        if (winter2.aniState == WFRONT) {
            if (winter2.timer % 55 == 0) {
                shadowOAM[winter2.index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(28, 0) | ATTR2_PRIORITY(1);    
            } else {
                shadowOAM[winter2.index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(winter2.curFrame * 4 + 16, 0) | ATTR2_PRIORITY(1);
            }
        }        
        if (winter2.aniState == WBACK) {
            if (winter2.timer % 55 == 0) {
                shadowOAM[winter2.index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(28, 2) | ATTR2_PRIORITY(1);    
            } else {
                shadowOAM[winter2.index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(winter2.curFrame * 4 + 16, 2) | ATTR2_PRIORITY(1);
            }    
        }
        if (winter2.aniState == WRIGHT) {
            if (winter2.timer % 55 == 0) {
                shadowOAM[winter2.index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(28, 4) | ATTR2_PRIORITY(1);    
            } else {
                shadowOAM[winter2.index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(winter2.curFrame * 4 + 16, 4) | ATTR2_PRIORITY(1);
            }    
        }
        if (winter2.aniState == WLEFT) {
            if (winter2.timer % 55 == 0) {
                shadowOAM[winter2.index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(28, 6) | ATTR2_PRIORITY(1);    
            } else {
                shadowOAM[winter2.index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(winter2.curFrame * 4 + 16, 6) | ATTR2_PRIORITY(1);
            }    
        }
    } else {
        shadowOAM[winter2.index].attr0 = ATTR0_HIDE;
    }
}

void moveWinter2() {
    if(winter2.aniCounter % 15 == 0) {
        winter2.curFrame = (winter2.curFrame + 1) % winter2.numFrames;
    }
    if (frames % 70 == 0) {
        int dir = rand() % 4;
        switch(dir) {
            case 0:
                winter2.aniState = WFRONT;
                break;
            case 1:
                winter2.aniState = WRIGHT;
                break;
            case 2:
                winter2.aniState = WLEFT;
                break;
            case 3:
                winter2.aniState = WBACK;
                break;
        }
    }
    if (winter2.aniState == WIDLE) {
        winter2.curFrame = 0;
        winter2.aniState = winter2.prevAniState;
    } else {
        winter2.aniCounter++;
    }
}

void initWinterball() {
    for (int x = 0; x < NUMWINTERBALLS; x++) {
        winterballs[x].height = 8;
        winterballs[x].width = 8;
        winterballs[x].worldRow = -winterballs[x].height;
        winterballs[x].worldCol = 0;
        winterballs[x].cdel = 1;
        winterballs[x].rdel = 1;
        winterballs[x].active = 0;
        winterballs[x].index = x + 1 + NUMFIREBALLS + UFIREBALL + NUMWINTER; 
    }
}

void releaseWinterball() {
    for (int x = 0; x < NUMWINTERBALLS; x++) {
        if (!winterballs[x].active) {
            if(winter1.aniState == WBACK) {
                winterballs[x].aniState = FIREBBACK;
                winterballs[x].worldRow = winter1.worldRow + (winterballs[x].height);
                winterballs[x].worldCol = winter1.worldCol + (winterballs[x].width/2);
            } 
            if(winter1.aniState == WFRONT) {
                winterballs[x].aniState = FIREBFRONT;
                winterballs[x].worldRow = winter1.worldRow + (winterballs[x].height * 2);
                winterballs[x].worldCol = winter1.worldCol + (winterballs[x].width/2);
            } 
            if(winter1.aniState == WLEFT) {
                winterballs[x].aniState = FIREBLEFT;
                winterballs[x].worldRow = winter1.worldRow + (winterballs[x].height) + (winterballs[x].height/2);
                winterballs[x].worldCol = winter1.worldCol - (winterballs[x].width);
            } 
            if(winter1.aniState == WRIGHT) {
                winterballs[x].aniState = FIREBRIGHT;
                winterballs[x].worldRow = winter1.worldRow + (winterballs[x].height) + (winterballs[x].height/2);
                winterballs[x].worldCol = winter1.worldCol + (winter1.width);
            }   
            winterballs[x].active = 1;
            break;
        }
    }
}

void updateWinterball(WINTERBALL* b) {
    if (b->active) {
        if (collisionmapBitmap[OFFSET(b->worldRow, b->worldCol + b->width - 1 + b->cdel, 256)]
            && collisionmapBitmap[OFFSET(b->worldRow + b->height - 1, b->worldCol + b->width - 1 + b->cdel, 256)]) {
            if(b->aniState == FIREBBACK) {
                b->worldRow -= b->rdel;
            }
            if(b->aniState == FIREBFRONT) {
                b->worldRow += b->rdel;
            }
            if(b->aniState == FIREBLEFT) {
                b->worldCol -= b->cdel;
            }
            if(b->aniState == FIREBRIGHT) {
                b->worldCol += b->cdel;
            }  
        } else {
            b->active = 0;
            shadowOAM[b->index].attr0 = ATTR0_HIDE;
        }    
    }

    for (int i = 0; i < NUMWINTERBALLS; i++) {
        winterballs[i].screenCol = winterballs[i].worldCol - hOff;
        winterballs[i].screenRow = winterballs[i].worldRow - vOff;
    }
}

void drawWinterball(WINTERBALL* b) {
    if (b->active) {   
        shadowOAM[b->index].attr0 = (b->screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[b->index].attr1 = (b->screenCol & COLMASK) | ATTR1_TINY;
        if (b->aniState == FIREBFRONT) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(4, 17) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(5, 17) | ATTR2_PRIORITY(1);    
            } 
        }    
        if (b->aniState == FIREBBACK) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(4, 18) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(5, 18) | ATTR2_PRIORITY(1);    
            }   
        }    
        if (b->aniState == FIREBRIGHT) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(4, 19) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(5, 19) | ATTR2_PRIORITY(1);    
            }   
        }
        if (b->aniState == FIREBLEFT) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(4, 20) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(5, 20) | ATTR2_PRIORITY(1);    
            }   
        }
        b->timer++;  
    } else {
        shadowOAM[b->index].attr0 = ATTR0_HIDE;    
    }
}

void initWinterball2() {
    for (int x = 0; x < NUMWINTERBALLS2; x++) {
        winterballs2[x].height = 8;
        winterballs2[x].width = 8;
        winterballs2[x].worldRow = -winterballs2[x].height;
        winterballs2[x].worldCol = 0;
        winterballs2[x].cdel = 1;
        winterballs2[x].rdel = 1;
        winterballs2[x].active = 0;
        winterballs2[x].index = x + 1 + UFIREBALL + NUMFIREBALLS + NUMWINTER + NUMWINTERBALLS + NUMHONEYS + NUMHONEYSBALLS; 
    }
}

void releaseWinterball2() {
    for (int x = 0; x < NUMWINTERBALLS2; x++) {
        if (!winterballs2[x].active) {
            if(winter2.aniState == WBACK) {
                winterballs2[x].aniState = FIREBBACK;
                winterballs2[x].worldRow = winter2.worldRow + (winterballs2[x].height);
                winterballs2[x].worldCol = winter2.worldCol + (winterballs2[x].width/2);
            } 
            if(winter2.aniState == WFRONT) {
                winterballs2[x].aniState = FIREBFRONT;
                winterballs2[x].worldRow = winter2.worldRow + (winterballs2[x].height * 2);
                winterballs2[x].worldCol = winter2.worldCol + (winterballs2[x].width/2);
            } 
            if(winter2.aniState == WLEFT) {
                winterballs2[x].aniState = FIREBLEFT;
                winterballs2[x].worldRow = winter2.worldRow + (winterballs2[x].height) + (winterballs2[x].height/2);
                winterballs2[x].worldCol = winter2.worldCol - (winterballs2[x].width);
            } 
            if(winter2.aniState == WRIGHT) {
                winterballs2[x].aniState = FIREBRIGHT;
                winterballs2[x].worldRow = winter2.worldRow + (winterballs2[x].height) + (winterballs2[x].height/2);
                winterballs2[x].worldCol = winter2.worldCol + (winter2.width);
            }   
            winterballs2[x].active = 1;
            break;
        }
    }
}

void updateWinterball2(WINTERBALL* b) {
    if (b->active) {
        if (collisionmapBitmap[OFFSET(b->worldRow, b->worldCol + b->width - 1 + b->cdel, 256)]
            && collisionmapBitmap[OFFSET(b->worldRow + b->height - 1, b->worldCol + b->width - 1 + b->cdel, 256)]) {
            if(b->aniState == FIREBBACK) {
                b->worldRow -= b->rdel;
            }
            if(b->aniState == FIREBFRONT) {
                b->worldRow += b->rdel;
            }
            if(b->aniState == FIREBLEFT) {
                b->worldCol -= b->cdel;
            }
            if(b->aniState == FIREBRIGHT) {
                b->worldCol += b->cdel;
            }  
        } else {
            b->active = 0;
            shadowOAM[b->index].attr0 = ATTR0_HIDE;
        }    
    }

    for (int i = 0; i < NUMWINTERBALLS2; i++) {
        winterballs2[i].screenCol = winterballs2[i].worldCol - hOff;
        winterballs2[i].screenRow = winterballs2[i].worldRow - vOff;
    }
}

void drawWinterball2(WINTERBALL* b) {
    if (b->active) {   
        shadowOAM[b->index].attr0 = (b->screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[b->index].attr1 = (b->screenCol & COLMASK) | ATTR1_TINY;
        if (b->aniState == FIREBFRONT) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(4, 17) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(5, 17) | ATTR2_PRIORITY(1);    
            } 
        }    
        if (b->aniState == FIREBBACK) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(4, 18) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(5, 18) | ATTR2_PRIORITY(1);    
            }   
        }    
        if (b->aniState == FIREBRIGHT) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(4, 19) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(5, 19) | ATTR2_PRIORITY(1);    
            }   
        }
        if (b->aniState == FIREBLEFT) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(4, 20) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(5, 20) | ATTR2_PRIORITY(1);    
            }   
        }
        b->timer++;  
    } else {
        shadowOAM[b->index].attr0 = ATTR0_HIDE;    
    }
}

void initHoneys1() {
    honeys1.height = 15;
    honeys1.width = 20;
    honeys1.worldRow = 50;
    honeys1.worldCol = 105;
    honeys1.cdel = 1;
    honeys1.rdel = 1;
    honeys1.active = 1;
    honeys1.aniCounter = 0;
    honeys1.curFrame = 0;
    honeys1.numFrames = 3;
    honeys1.aniState = HFRONT;
    honeys1.index = UFIREBALL + NUMFIREBALLS + NUMWINTER + NUMWINTERBALLS + 1;
    honeys1.health = 200;     
}

void updateHoneys1() {
    if (honeys1.active) {
        if (honeys1.worldRow - 1 > 16 && honeys1.worldRow + honeys1.height - 1 < 240 && honeys1.worldCol - 1 > 16 && honeys1.worldCol + honeys1.width - 1 < 240) {
            if((honeys1.aniState == HFRONT) && collisionmapBitmap[OFFSET(honeys1.worldRow + honeys1.height - 1 + honeys1.rdel, honeys1.worldCol, 256)]
                && collisionmapBitmap[OFFSET(honeys1.worldRow + honeys1.height - 1 + honeys1.rdel, honeys1.worldCol + honeys1.width - 1, 256)]) {
                    honeys1.worldRow++;
            }
            if((honeys1.aniState == HRIGHT) && collisionmapBitmap[OFFSET(honeys1.worldRow, honeys1.worldCol + honeys1.width + honeys1.cdel, 256)]
                && collisionmapBitmap[OFFSET(honeys1.worldRow + honeys1.height - 1, honeys1.worldCol + honeys1.width - 1 + honeys1.cdel, 256)]
                && (honeys1.worldCol - 1 < SCREENWIDTH - honeys1.cdel)) {
                    honeys1.worldCol++;
            }
            if((honeys1.aniState == HLEFT) && collisionmapBitmap[OFFSET(honeys1.worldRow, honeys1.worldCol - honeys1.cdel, 256)]
                && collisionmapBitmap[OFFSET(honeys1.worldRow + honeys1.height - 1, honeys1.worldCol - honeys1.cdel, 256)]) {
                honeys1.worldCol--;
            }
            if((honeys1.aniState == HBACK) && collisionmapBitmap[OFFSET(honeys1.worldRow - honeys1.rdel, honeys1.worldCol, 256)]
                && collisionmapBitmap[OFFSET(honeys1.worldRow - honeys1.rdel, honeys1.worldCol + honeys1.width - 1, 256)]) {
                honeys1.worldRow--;
            }
        }    

        for (int x = 0; x < NUMFIREBALLS; x++) {
            if (fireballs[x].active && collision(honeys1.screenRow, honeys1.screenCol, honeys1.height, honeys1.width,
                fireballs[x].worldRow, fireballs[x].worldCol, fireballs[x].height, fireballs[x].width)) {
                fireballs[x].active = 0;
                honeys1.health -= 25;
            }
        }

        if (ultimate.active && collision(honeys1.screenRow, honeys1.screenCol, honeys1.height, honeys1.width,
            ultimate.worldRow, ultimate.worldCol, ultimate.height, ultimate.width)) {
            ultimate.active = 0;
            honeys1.active = 0;
        }

        if (honeys1.health == 0) {
            honeys1.active = 0;   
        }

        if (honeys1.timer % 55 == 0) {
            releaseHoneysball();
            honeys1.timer = 0;
        }
        honeys1.timer++;
    } else {
        honeys1.active = 0;
        shadowOAM[honeys1.index].attr0 = ATTR0_HIDE;
    }
    honeys1.screenCol = honeys1.worldCol - hOff;
    honeys1.screenRow = honeys1.worldRow - vOff;

    moveHoneys1();    
}

void drawHoneys1() {
    if (honeys1.active) {
        shadowOAM[honeys1.index].attr0 = (honeys1.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_TALL;
        shadowOAM[honeys1.index].attr1 = (honeys1.screenCol & COLMASK) | ATTR1_MEDIUM;
        if (honeys1.aniState == HFRONT) {
            if (honeys1.timer % 55 == 0) {
                shadowOAM[honeys1.index].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(28, 8) | ATTR2_PRIORITY(1);    
            } else {
                shadowOAM[honeys1.index].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(honeys1.curFrame * 4 + 16, 8) | ATTR2_PRIORITY(1);
            }          
        }
        if (honeys1.aniState == HBACK) {
            if (honeys1.timer % 55 == 0) {
                shadowOAM[honeys1.index].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(28, 10) | ATTR2_PRIORITY(1);    
            } else {
                shadowOAM[honeys1.index].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(honeys1.curFrame * 4 + 16, 10) | ATTR2_PRIORITY(1);
            }    
        }
        if (honeys1.aniState == HRIGHT) {
            if (honeys1.timer % 55 == 0) {
                shadowOAM[honeys1.index].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(28, 12) | ATTR2_PRIORITY(1);    
            } else {
                shadowOAM[honeys1.index].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(honeys1.curFrame * 4 + 16, 12) | ATTR2_PRIORITY(1);
            }    
        }
        if (honeys1.aniState == HLEFT) {
            if (honeys1.timer % 55 == 0) {
                shadowOAM[honeys1.index].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(28, 14) | ATTR2_PRIORITY(1);    
            } else {
                shadowOAM[honeys1.index].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(honeys1.curFrame * 4 + 16, 14) | ATTR2_PRIORITY(1);
            }    
        }
    } else {
        shadowOAM[honeys1.index].attr0 = ATTR0_HIDE;
    }
}

void moveHoneys1() {
    if(honeys1.aniCounter % 15 == 0) {
        honeys1.curFrame = (honeys1.curFrame + 1) % honeys1.numFrames;
    }
    if (frames % 70 == 0) {
        int dir = rand() % 4;
        switch(dir) {
            case 0:
                honeys1.aniState = HFRONT;
                break;
            case 1:
                honeys1.aniState = HRIGHT;
                break;
            case 2:
                honeys1.aniState = HLEFT;
                break;
            case 3:
                honeys1.aniState = HBACK;
                break;
        }
    }
    if (honeys1.aniState == HIDLE) {
        honeys1.curFrame = 0;
        honeys1.aniState = honeys1.prevAniState;
    } else {
        honeys1.aniCounter++;
    }    
}

void initHoneys2() {
    honeys2.height = 15;
    honeys2.width = 20;
    honeys2.worldRow = 80;
    honeys2.worldCol = 50;
    honeys2.cdel = 1;
    honeys2.rdel = 1;
    honeys2.active = 1;
    honeys2.aniCounter = 0;
    honeys2.curFrame = 0;
    honeys2.numFrames = 3;
    honeys2.aniState = HFRONT;
    honeys2.index = UFIREBALL + NUMFIREBALLS + NUMWINTER + NUMWINTERBALLS + NUMHONEYS;
    honeys2.health = 200;     
}

void updateHoneys2() {
    if (honeys2.active) {
        if (honeys2.worldRow - 1 > 16 && honeys2.worldRow + honeys2.height - 1 < 240 && honeys2.worldCol - 1 > 16 && honeys2.worldCol + honeys2.width - 1 < 240) {
            if((honeys2.aniState == HFRONT) && collisionmapBitmap[OFFSET(honeys2.worldRow + honeys2.height - 1 + honeys2.rdel, honeys2.worldCol, 256)]
                && collisionmapBitmap[OFFSET(honeys2.worldRow + honeys2.height - 1 + honeys2.rdel, honeys2.worldCol + honeys2.width - 1, 256)]) {
                    honeys2.worldRow++;
            }
            if((honeys2.aniState == HRIGHT) && collisionmapBitmap[OFFSET(honeys2.worldRow, honeys2.worldCol + honeys2.width + honeys2.cdel, 256)]
                && collisionmapBitmap[OFFSET(honeys2.worldRow + honeys2.height - 1, honeys2.worldCol + honeys2.width - 1 + honeys2.cdel, 256)]) {
                    honeys2.worldCol++;
            }
            if((honeys2.aniState == HLEFT) && collisionmapBitmap[OFFSET(honeys2.worldRow, honeys2.worldCol - honeys2.cdel, 256)]
                && collisionmapBitmap[OFFSET(honeys2.worldRow + honeys2.height - 1, honeys2.worldCol - honeys2.cdel, 256)]) {
                honeys2.worldCol--;
            }
            if((honeys2.aniState == HBACK) && collisionmapBitmap[OFFSET(honeys2.worldRow - honeys2.rdel, honeys2.worldCol, 256)]
                && collisionmapBitmap[OFFSET(honeys2.worldRow - honeys2.rdel, honeys2.worldCol + honeys2.width - 1, 256)]) {
                honeys2.worldRow--;
            }
        }    

        for (int x = 0; x < NUMFIREBALLS; x++) {
            if (fireballs[x].active && collision(honeys2.screenRow, honeys2.screenCol, honeys2.height, honeys2.width,
                fireballs[x].worldRow, fireballs[x].worldCol, fireballs[x].height, fireballs[x].width)) {
                fireballs[x].active = 0;
                honeys2.health -= 25;
            }
        }

        if (ultimate.active && collision(honeys2.screenRow, honeys2.screenCol, honeys2.height, honeys2.width,
            ultimate.worldRow, ultimate.worldCol, ultimate.height, ultimate.width)) {
            ultimate.active = 0;
            honeys2.active = 0;
        }

        if (honeys2.health == 0) {
            honeys2.active = 0;   
        }

        if (honeys2.timer % 55 == 0) {
            releaseHoneysball2();
            honeys2.timer = 0;
        }
        honeys2.timer++; 
    } else {
        honeys2.active = 0;
        shadowOAM[honeys2.index].attr0 = ATTR0_HIDE;
    }

    honeys2.screenCol = honeys2.worldCol - hOff;
    honeys2.screenRow = honeys2.worldRow - vOff;

    moveHoneys2();   
}

void drawHoneys2() {
    if (honeys2.active) {
        shadowOAM[honeys2.index].attr0 = (honeys2.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_TALL;
        shadowOAM[honeys2.index].attr1 = (honeys2.screenCol & COLMASK) | ATTR1_MEDIUM;
        if (honeys2.aniState == HFRONT) {
            if (honeys2.timer % 55 == 0) {
                shadowOAM[honeys2.index].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(28, 8) | ATTR2_PRIORITY(1);    
            } else {
                shadowOAM[honeys2.index].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(honeys2.curFrame * 4 + 16, 8) | ATTR2_PRIORITY(1);
            }          
        }
        if (honeys2.aniState == HBACK) {
            if (honeys2.timer % 55 == 0) {
                shadowOAM[honeys2.index].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(28, 10) | ATTR2_PRIORITY(1);    
            } else {
                shadowOAM[honeys2.index].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(honeys2.curFrame * 4 + 16, 10) | ATTR2_PRIORITY(1);
            }    
        }
        if (honeys2.aniState == HRIGHT) {
            if (honeys2.timer % 55 == 0) {
                shadowOAM[honeys2.index].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(28, 12) | ATTR2_PRIORITY(1);    
            } else {
                shadowOAM[honeys2.index].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(honeys2.curFrame * 4 + 16, 12) | ATTR2_PRIORITY(1);
            }    
        }
        if (honeys2.aniState == HLEFT) {
            if (honeys2.timer % 55 == 0) {
                shadowOAM[honeys2.index].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(28, 14) | ATTR2_PRIORITY(1);    
            } else {
                shadowOAM[honeys2.index].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(honeys2.curFrame * 4 + 16, 14) | ATTR2_PRIORITY(1);
            }    
        }
    } else {
        shadowOAM[honeys2.index].attr0 = ATTR0_HIDE;
    }
}

void moveHoneys2() {
    if(honeys2.aniCounter % 15 == 0) {
        honeys2.curFrame = (honeys2.curFrame + 1) % honeys2.numFrames;
    }
    if (frames % 70 == 0) {
        int dir = rand() % 4;
        switch(dir) {
            case 0:
                honeys2.aniState = HFRONT;
                break;
            case 1:
                honeys2.aniState = HRIGHT;
                break;
            case 2:
                honeys2.aniState = HLEFT;
                break;
            case 3:
                honeys2.aniState = HBACK;
                break;
        }
    }
    if (honeys2.aniState == HIDLE) {
        honeys2.curFrame = 0;
        honeys2.aniState = honeys2.prevAniState;
    } else {
        honeys2.aniCounter++;
    }    
}

void initHoneysball() {
    for (int x = 0; x < NUMHONEYSBALLS; x++) {
        honeysballs[x].height = 8;
        honeysballs[x].width = 8;
        honeysballs[x].worldRow = -honeysballs[x].height;
        honeysballs[x].worldCol = 0;
        honeysballs[x].cdel = 1;
        honeysballs[x].rdel = 1;
        honeysballs[x].active = 0;
        honeysballs[x].index = x + 1 + UFIREBALL + NUMFIREBALLS + NUMWINTER + NUMWINTERBALLS + NUMHONEYS; 
    }
}

void releaseHoneysball() {
    for (int x = 0; x < NUMHONEYSBALLS; x++) {
        if (!honeysballs[x].active) {
            if(honeys1.aniState == HBACK) {
                honeysballs[x].aniState = FIREBBACK;
                honeysballs[x].worldRow = honeys1.worldRow + (honeysballs[x].height);
                honeysballs[x].worldCol = honeys1.worldCol + (honeysballs[x].width/2);
            } 
            if(honeys1.aniState == HFRONT) {
                honeysballs[x].aniState = FIREBFRONT;
                honeysballs[x].worldRow = honeys1.worldRow + (honeysballs[x].height * 2);
                honeysballs[x].worldCol = honeys1.worldCol + (honeysballs[x].width/2);
            } 
            if(honeys1.aniState == HLEFT) {
                honeysballs[x].aniState = FIREBLEFT;
                honeysballs[x].worldRow = honeys1.worldRow + (honeysballs[x].height) + (honeysballs[x].height/2);
                honeysballs[x].worldCol = honeys1.worldCol - (honeysballs[x].width);
            } 
            if(honeys1.aniState == HRIGHT) {
                honeysballs[x].aniState = FIREBRIGHT;
                honeysballs[x].worldRow = honeys1.worldRow + (honeysballs[x].height) + (honeysballs[x].height/2);
                honeysballs[x].worldCol = honeys1.worldCol + (honeys1.width);
            }   
            honeysballs[x].active = 1;
            break;
        }
    }
}

void updateHoneysball(HONEYSBALL* b) {
    if (b->active) {
        if (collisionmapBitmap[OFFSET(b->worldRow, b->worldCol + b->width - 1 + b->cdel, 256)]
            && collisionmapBitmap[OFFSET(b->worldRow + b->height - 1, b->worldCol + b->width - 1 + b->cdel, 256)]) {
            if(b->aniState == FIREBBACK) {
                b->worldRow -= b->rdel;
            }
            if(b->aniState == FIREBFRONT) {
                b->worldRow += b->rdel;
            }
            if(b->aniState == FIREBLEFT) {
                b->worldCol -= b->cdel;
            }
            if(b->aniState == FIREBRIGHT) {
                b->worldCol += b->cdel;
            }  
        } else {
            b->active = 0;
            shadowOAM[b->index].attr0 = ATTR0_HIDE;
        }    
    }

    for (int i = 0; i < NUMHONEYSBALLS; i++) {
        honeysballs[i].screenCol = honeysballs[i].worldCol - hOff;
        honeysballs[i].screenRow = honeysballs[i].worldRow - vOff;
    }
}

void drawHoneysball(HONEYSBALL* b) {
    if (b->active) {   
        shadowOAM[b->index].attr0 = (b->screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[b->index].attr1 = (b->screenCol & COLMASK) | ATTR1_TINY;
        if (b->aniState == FIREBFRONT) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(4, 21) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(5, 21) | ATTR2_PRIORITY(1);    
            } 
        }    
        if (b->aniState == FIREBBACK) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(4, 22) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(5, 22) | ATTR2_PRIORITY(1);    
            }   
        }    
        if (b->aniState == FIREBRIGHT) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(4, 23) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(5, 23) | ATTR2_PRIORITY(1);    
            }   
        }
        if (b->aniState == FIREBLEFT) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(4, 24) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(5, 24) | ATTR2_PRIORITY(1);    
            }   
        }
        b->timer++;  
    } else {
        shadowOAM[b->index].attr0 = ATTR0_HIDE;    
    }
}

void initHoneysball2() {
    for (int x = 0; x < NUMHONEYSBALLS2; x++) {
        honeysballs2[x].height = 8;
        honeysballs2[x].width = 8;
        honeysballs2[x].worldRow = -honeysballs2[x].height;
        honeysballs2[x].worldCol = 0;
        honeysballs2[x].cdel = 1;
        honeysballs2[x].rdel = 1;
        honeysballs2[x].active = 0;
        honeysballs2[x].index = x + 1 + UFIREBALL + NUMFIREBALLS + NUMWINTER + NUMWINTERBALLS + NUMHONEYS + NUMHONEYSBALLS + NUMWINTERBALLS2; 
    }
}

void releaseHoneysball2() {
    for (int x = 0; x < NUMHONEYSBALLS2; x++) {
        if (!honeysballs2[x].active) {
            if(honeys2.aniState == HBACK) {
                honeysballs2[x].aniState = FIREBBACK;
                honeysballs2[x].worldRow = honeys2.worldRow + (honeysballs2[x].height);
                honeysballs2[x].worldCol = honeys2.worldCol + (honeysballs2[x].width/2);
            } 
            if(honeys2.aniState == HFRONT) {
                honeysballs2[x].aniState = FIREBFRONT;
                honeysballs2[x].worldRow = honeys2.worldRow + (honeysballs2[x].height * 2);
                honeysballs2[x].worldCol = honeys2.worldCol + (honeysballs2[x].width/2);
            } 
            if(honeys2.aniState == HLEFT) {
                honeysballs2[x].aniState = FIREBLEFT;
                honeysballs2[x].worldRow = honeys2.worldRow + (honeysballs2[x].height) + (honeysballs2[x].height/2);
                honeysballs2[x].worldCol = honeys2.worldCol - (honeysballs2[x].width);
            } 
            if(honeys2.aniState == HRIGHT) {
                honeysballs2[x].aniState = FIREBRIGHT;
                honeysballs2[x].worldRow = honeys2.worldRow + (honeysballs2[x].height) + (honeysballs2[x].height/2);
                honeysballs2[x].worldCol = honeys2.worldCol + (honeys1.width);
            }   
            honeysballs2[x].active = 1;
            break;
        }
    }
}

void updateHoneysball2(HONEYSBALL* b) {
    if (b->active) {
        if (collisionmapBitmap[OFFSET(b->worldRow, b->worldCol + b->width - 1 + b->cdel, 256)]
            && collisionmapBitmap[OFFSET(b->worldRow + b->height - 1, b->worldCol + b->width - 1 + b->cdel, 256)]) {
            if(b->aniState == FIREBBACK) {
                b->worldRow -= b->rdel;
            }
            if(b->aniState == FIREBFRONT) {
                b->worldRow += b->rdel;
            }
            if(b->aniState == FIREBLEFT) {
                b->worldCol -= b->cdel;
            }
            if(b->aniState == FIREBRIGHT) {
                b->worldCol += b->cdel;
            }  
        } else {
            b->active = 0;
            shadowOAM[b->index].attr0 = ATTR0_HIDE;
        }    
    }

    for (int i = 0; i < NUMHONEYSBALLS2; i++) {
        honeysballs2[i].screenCol = honeysballs2[i].worldCol - hOff;
        honeysballs2[i].screenRow = honeysballs2[i].worldRow - vOff;
    }
}

void drawHoneysball2(HONEYSBALL* b) {
    if (b->active) {   
        shadowOAM[b->index].attr0 = (b->screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[b->index].attr1 = (b->screenCol & COLMASK) | ATTR1_TINY;
        if (b->aniState == FIREBFRONT) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(4, 21) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(5, 21) | ATTR2_PRIORITY(1);    
            } 
        }    
        if (b->aniState == FIREBBACK) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(4, 22) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(5, 22) | ATTR2_PRIORITY(1);    
            }   
        }    
        if (b->aniState == FIREBRIGHT) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(4, 23) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(5, 23) | ATTR2_PRIORITY(1);    
            }   
        }
        if (b->aniState == FIREBLEFT) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(4, 24) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(5, 24) | ATTR2_PRIORITY(1);    
            }   
        }
        b->timer++;  
    } else {
        shadowOAM[b->index].attr0 = ATTR0_HIDE;    
    }
}

