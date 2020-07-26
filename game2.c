#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "collisionmap2.h"

CIN cin;
FIREBALL ultimate;
JACK jack;
JACK jack2;
READY uSprite;
READY uSprite2;
HEART h1;
HEART h2;
HEART h3;
HEART h4;
HEART h5;
int cinLives;

FIREBALL fireballs[NUMFIREBALLS];
JACKBALL jackballs[NUMJACKBALLS];

int vOff;
int hOff;
int useUF;
int bossHealth;

#define MAPHEIGHT 256
#define MAPWIDTH 256

enum {CINFRONT, CINBACK, CINRIGHT, CINLEFT, CINIDLE, FIREBFRONT, FIREBBACK, FIREBRIGHT, FIREBLEFT};

void initGame2() {
	initCin2();
	initJack();
	initJack2();
	initFireball2();
	initUFireball2();
	initJackball();
    initReadyU2();
    initHearts2();

	useUF = 0;
    vOff = 96;
    hOff = 8;
    bossHealth = 400;
}

void updateGame2() {
	updateCin2();
	updateJack();
	updateJack2();
	updateUFireball2();
    updateReadyU2();
    updateHeart1s();
    updateHeart2s();
    updateHeart3s();
    updateHeart4s();
    updateHeart5s();
	for (int x = 0; x < NUMFIREBALLS; x++) {
		updateFireball2(&fireballs[x]);
	}
	for (int y = 0; y < NUMJACKBALLS; y++) {
		updateJackball(&jackballs[y]);
	}	
}

void drawGame2() {
	drawCin2();
	drawJack();
	drawJack2();
	drawUFireball2();
    drawReadyU2();
    drawHeart1s();
    drawHeart2s();
    drawHeart3s();
    drawHeart4s();
    drawHeart5s();
	for (int x = 0; x < NUMFIREBALLS; x++) {
		drawFireball2(&fireballs[x]);
	}
	for (int y = 0; y < NUMJACKBALLS; y++) {
		drawJackball(&jackballs[y]);
	}
}

void initHearts2() {
    h1.width = 8;
    h1.height = 8;
    h1.worldCol = 10;
    h1.worldRow = cin.screenRow + 102;
    h1.index = 60;
    h1.active = 1;
   
    h2.width = 8;
    h2.height = 8;
    h2.worldCol = 20;
    h2.worldRow = cin.screenRow + 102;
    h2.index = 61;
    h2.active = 1;

    h3.width = 8;
    h3.height = 8;
    h3.worldCol = 30;
    h3.worldRow = cin.screenRow + 102;
    h3.index = 62;
    h3.active = 1;

    h4.width = 8;
    h4.height = 8;
    h4.worldCol = 40;
    h4.worldRow = cin.screenRow + 102;
    h4.index = 63;
    h4.active = 1;

    h5.width = 8;
    h5.height = 8;
    h5.worldCol = 50;
    h5.worldRow = cin.screenRow + 102;
    h5.index = 64;
    h5.active = 1;
}

void updateHeart1s() {
    h1.screenCol = h1.worldCol - hOff;
    h1.screenRow = h1.worldRow - vOff;
}

void updateHeart2s() {
    if (h2.active) {
        if (cinLives <= 1) {
            h2.active = 0;
        }
    } else {
        h2.active = 0;
        shadowOAM[h2.index].attr0 = ATTR0_HIDE;
    }
    h2.screenCol = h2.worldCol - hOff;
    h2.screenRow = h2.worldRow - vOff;        
}

void updateHeart3s() {
    if (h3.active) {
        if (cinLives <= 2) {
            h3.active = 0;
        }
    } else {
        h3.active = 0;
        shadowOAM[h3.index].attr0 = ATTR0_HIDE;
    }
    h3.screenCol = h3.worldCol - hOff;
    h3.screenRow = h3.worldRow - vOff;            
}

void updateHeart4s() {
    if (h4.active) {
        if (cinLives <= 3) {
            h4.active = 0;
        }   
    } else {
        h4.active = 0;
        shadowOAM[h4.index].attr0 = ATTR0_HIDE;
    }
    h4.screenCol = h4.worldCol - hOff;
    h4.screenRow = h4.worldRow - vOff;      
}

void updateHeart5s() {
    if (h5.active) {
        if (cinLives <= 4) {
            h5.active = 0;        
        }
    } else {
        h5.active = 0;
        shadowOAM[h5.index].attr0 = ATTR0_HIDE;
    }
    h5.screenCol = h5.worldCol - hOff;
    h5.screenRow = h5.worldRow - vOff; 
}

void drawHeart1s() {
    if (h1.active) {
        shadowOAM[h1.index].attr0 = (h1.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[h1.index].attr1 = (h1.screenCol & COLMASK) | ATTR1_TINY;
        shadowOAM[h1.index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 16) | ATTR2_PRIORITY(0);
    } else {
        shadowOAM[h1.index].attr0 = ATTR0_HIDE;
    }
}

void drawHeart2s() {
    if (h2.active) {
        shadowOAM[h2.index].attr0 = (h2.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[h2.index].attr1 = (h2.screenCol & COLMASK) | ATTR1_TINY;
        shadowOAM[h2.index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 16) | ATTR2_PRIORITY(0);
    } else {
        shadowOAM[h2.index].attr0 = ATTR0_HIDE;    
    }
}

void drawHeart3s() {
    if (h3.active) {
        shadowOAM[h3.index].attr0 = (h3.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[h3.index].attr1 = (h3.screenCol & COLMASK) | ATTR1_TINY;
        shadowOAM[h3.index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 16) | ATTR2_PRIORITY(0);
    } else {
        shadowOAM[h3.index].attr0 = ATTR0_HIDE;
    }
}

void drawHeart4s() {
    if (h4.active) {
        shadowOAM[h4.index].attr0 = (h4.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[h4.index].attr1 = (h4.screenCol & COLMASK) | ATTR1_TINY;
        shadowOAM[h4.index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 16) | ATTR2_PRIORITY(0);   
    } else {
        shadowOAM[h4.index].attr0 = ATTR0_HIDE;
    }
}

void drawHeart5s() {
    if (h5.active) {
        shadowOAM[h5.index].attr0 = (h5.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[h5.index].attr1 = (h5.screenCol & COLMASK) | ATTR1_TINY;
        shadowOAM[h5.index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 16) | ATTR2_PRIORITY(0);
    } else {
        shadowOAM[h5.index].attr0 = ATTR0_HIDE;
    }
}

void initReadyU2() {
    uSprite.height = 25;
    uSprite.width = 64;
    uSprite.worldCol = 85;
    uSprite.worldRow = cin.worldRow - 130;
    uSprite.index = UFIREBALL + NUMFIREBALLS + JACKLEFT + JACKRIGHT + NUMJACKBALLS + 1;
    uSprite.active = 0;

    uSprite2.height = 25;
    uSprite2.width = 28;
    uSprite2.worldCol = uSprite.worldCol + uSprite.width;
    uSprite2.worldRow = cin.worldRow - 130;
    uSprite2.index = 1 + UFIREBALL + NUMFIREBALLS + JACKLEFT + JACKRIGHT + NUMJACKBALLS + 1;
    uSprite2.active = 0;
}

void launchReadyU2() {
    if (!uSprite.active && !uSprite2.active) {
        useUF = 1;
        uSprite.active = 1;
        uSprite2.active = 1;
    }                                    
}

void updateReadyU2() {
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

void drawReadyU2() {
    if (uSprite.active && uSprite2.active) {
        shadowOAM[uSprite.index].attr0 = (uSprite.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_WIDE;
        shadowOAM[uSprite.index].attr1 = (uSprite.screenCol & COLMASK) | ATTR1_LARGE;
        shadowOAM[uSprite.index].attr2 = ATTR2_PALROW(8) | ATTR2_TILEID(20, 0) | ATTR2_PRIORITY(0);

        shadowOAM[uSprite2.index].attr0 = (uSprite2.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[uSprite2.index].attr1 = (uSprite2.screenCol & COLMASK) | ATTR1_MEDIUM;
        shadowOAM[uSprite2.index].attr2 = ATTR2_PALROW(8) | ATTR2_TILEID(20, 8) | ATTR2_PRIORITY(0); 
    
    } else {
        uSprite.active = 0;
        uSprite2.active = 0;
        shadowOAM[uSprite.index].attr0 = ATTR0_HIDE;
        shadowOAM[uSprite2.index].attr0 = ATTR0_HIDE;
    } 
}

void initCin2() {
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

void updateCin2() {
	if(BUTTON_HELD(BUTTON_DOWN) && collisionmap2Bitmap[OFFSET(cin.worldRow + cin.height - 1 + cin.rdel, cin.worldCol, 256)]
        && collisionmap2Bitmap[OFFSET(cin.worldRow + cin.height - 1 + cin.rdel, cin.worldCol + cin.width - 1, 256)]) {
        if ((cin.screenRow == 160/2-cin.width/2) && (vOff < MAPHEIGHT - SCREENHEIGHT)) {
            vOff++;
            cin.worldRow++;
            h1.worldRow++;
            h2.worldRow++;
            h3.worldRow++;
            h4.worldRow++;
            h5.worldRow++;
            uSprite.worldRow++;
            uSprite2.worldRow++; 
        } else {
            cin.worldRow++;
        }          
    }
    
    if(BUTTON_HELD(BUTTON_UP) && collisionmap2Bitmap[OFFSET(cin.worldRow - 1, cin.worldCol, 256)]
        && collisionmap2Bitmap[OFFSET(cin.worldRow - 1, cin.worldCol + cin.width - 1, 256)]) {
        if ((cin.screenRow == 160/2-cin.width/2) && (vOff > 0)) {
            vOff--;
            cin.worldRow--;
            h1.worldRow--;
            h2.worldRow--;
            h3.worldRow--;
            h4.worldRow--;
            h5.worldRow--;
            uSprite.worldRow--;
            uSprite2.worldRow--;
        } else {
            cin.worldRow--;
        }          
    }
    
    if(BUTTON_HELD(BUTTON_LEFT) && collisionmap2Bitmap[OFFSET(cin.worldRow, cin.worldCol - 1, 256)]
        && collisionmap2Bitmap[OFFSET(cin.worldRow + cin.height - 1, cin.worldCol - 1, 256)]) {
        if ((cin.screenCol == 240/2-cin.height/2) && (hOff > 0)) {
            hOff--;
            cin.worldCol--;
            h1.worldCol--;
            h2.worldCol--;
            h3.worldCol--;
            h4.worldCol--;
            h5.worldCol--;
            uSprite.worldCol--;
            uSprite2.worldCol--;
        } else {
            cin.worldCol--;
        }
    }
    
    if(BUTTON_HELD(BUTTON_RIGHT) && collisionmap2Bitmap[OFFSET(cin.worldRow, cin.worldCol + cin.width - 1 + cin.cdel, 256)]
        && collisionmap2Bitmap[OFFSET(cin.worldRow + cin.height - 1, cin.worldCol + cin.width - 1 + cin.cdel, 256)]) {
        if ((cin.screenCol == 240/2-cin.height/2) && (hOff < MAPWIDTH - SCREENWIDTH)) {
            hOff++;
            cin.worldCol++;
            h1.worldCol++;
            h2.worldCol++;
            h3.worldCol++;
            h4.worldCol++;
            h5.worldCol++;
            uSprite.worldCol++;
            uSprite2.worldCol++;
        } else {
            cin.worldCol++;
        }     
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

    for (int x = 0; x < NUMJACKBALLS; x++) {
        if (jackballs[x].active && collision(cin.worldRow, cin.worldCol, cin.height, cin.width,
            jackballs[x].worldRow, jackballs[x].worldCol, jackballs[x].height, jackballs[x].width)) {
            jackballs[x].active = 0;
            cinLives -= 1;
        }
    }

    cin.screenCol = cin.worldCol - hOff;
    cin.screenRow = cin.worldRow - vOff;  
	moveCin2();
}

void moveCin2() {
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

void drawCin2() {
	if (cin.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[0].attr0 = (cin.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[0].attr1 = (cin.screenCol & COLMASK) | ATTR1_MEDIUM;
        if (cin.aniState == CINFRONT) {
            if (BUTTON_PRESSED(BUTTON_A) || (BUTTON_PRESSED(BUTTON_B) && (useUF == 1))) {
                shadowOAM[0].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(12, 0) | ATTR2_PRIORITY(1);
            } else {
                shadowOAM[0].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(cin.curFrame * 4, cin.aniState * 4) | ATTR2_PRIORITY(1);
            }
        }        
        if (cin.aniState == CINBACK) {
            if (BUTTON_PRESSED(BUTTON_A) || (BUTTON_PRESSED(BUTTON_B) && (useUF == 1))) {
                shadowOAM[0].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(12, 4) | ATTR2_PRIORITY(1);
            } else {
                shadowOAM[0].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(cin.curFrame * 4, cin.aniState * 4) | ATTR2_PRIORITY(1);
            }    
        }
        if (cin.aniState == CINRIGHT) {
            if (BUTTON_PRESSED(BUTTON_A) || (BUTTON_PRESSED(BUTTON_B) && (useUF == 1))) {
                shadowOAM[0].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(12, 8) | ATTR2_PRIORITY(1);
            } else {
                shadowOAM[0].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(cin.curFrame * 4, cin.aniState * 4) | ATTR2_PRIORITY(1); 
            }    
        }
        if (cin.aniState == CINLEFT) {
            if (BUTTON_PRESSED(BUTTON_A) || (BUTTON_PRESSED(BUTTON_B) && (useUF == 1))) {
                shadowOAM[0].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(12, 12) | ATTR2_PRIORITY(1);    
            } else {
                shadowOAM[0].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(cin.curFrame * 4, cin.aniState * 4) | ATTR2_PRIORITY(1);
            }    
        }    
    }
}

void initUFireball2() {
    ultimate.height = 16;
    ultimate.width = 16;
    ultimate.worldRow = -ultimate.height;
    ultimate.worldCol = 0;
    ultimate.cdel = 1;
    ultimate.rdel = 1;
    ultimate.active = 0;
    ultimate.index = JACKLEFT + JACKRIGHT + 1;
}

void releaseUFireball2() {
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

void updateUFireball2() {
    if (ultimate.active) {
        if (ultimate.worldRow - 1 >= 0 && ultimate.worldCol + ultimate.width - 1 <= MAPWIDTH && ultimate.worldRow + ultimate.height - 1 <= MAPHEIGHT && ultimate.worldCol - 1 >= 0) {
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
        ultimate.screenCol = ultimate.worldCol - hOff;
        ultimate.screenRow = ultimate.worldRow - vOff;    
    }
}

void drawUFireball2() {
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

void initFireball2() {
	for (int x = 0; x < NUMFIREBALLS; x++) {
		fireballs[x].height = 16;
		fireballs[x].width = 16;
		fireballs[x].worldRow = -fireballs[x].height;
		fireballs[x].worldCol = 0;
		fireballs[x].cdel = 1;
		fireballs[x].rdel = 1;
		fireballs[x].active = 0;
        fireballs[x].index = x + 1 + UFIREBALL + JACKLEFT + JACKRIGHT; 
	}
}

void releaseFireball2() {
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

void updateFireball2(FIREBALL* b) {
	if (b->active) {
		if (b->worldRow - 1 >= 0 && b->worldCol + b->width - 1 <= MAPWIDTH && b->worldRow + b->height - 1 <= MAPHEIGHT && b->worldCol - 1 >= 0) {
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

void drawFireball2(FIREBALL* b) {
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
                shadowOAM[b->index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(2, 28);    
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

void initJack() {
	jack.width = 64;
    jack.height = 47;
    jack.worldRow = 100;
    jack.worldCol = 83;
    jack.index = 1;
}

void initJack2() {
	jack2.width = 32;
    jack2.height = 47;
    jack2.worldRow = 100;
    jack2.worldCol = 83;
    jack2.index = 2;
}

void updateJack() {
	for (int x = 0; x < NUMFIREBALLS; x++) {
        if (fireballs[x].active && collision(jack.screenRow, jack.screenCol, jack.height - jack.height/3, jack.width,
            fireballs[x].worldRow, fireballs[x].worldCol, fireballs[x].height, fireballs[x].width)) {
            fireballs[x].active = 0;
            bossHealth -= 25;
        }
    }    

    if (ultimate.active && collision(jack.screenRow, jack.screenCol, jack.height - jack.height/3, jack.width,
        ultimate.worldRow, ultimate.worldCol, ultimate.height, ultimate.width)) {
        ultimate.active = 0;
        bossHealth -= 50;
    }

    if (jack.bTimer >= 15) {
        releaseJackball();
        jack.bTimer = 0;
    }
    jack.bTimer++;

    jack.screenCol = jack.worldCol - hOff;
    jack.screenRow = jack.worldRow - vOff;        
}

void updateJack2() {
	for (int x = 0; x < NUMFIREBALLS; x++) {
        if (fireballs[x].active && collision(jack2.screenRow, jack2.screenCol, jack2.height - jack2.height/3, jack2.width,
            fireballs[x].worldRow, fireballs[x].worldCol, fireballs[x].height, fireballs[x].width)) {
            fireballs[x].active = 0;
            bossHealth -= 25;
        }
    }    

    if (ultimate.active && collision(jack2.screenRow, jack2.screenCol, jack2.height, jack2.width,
        ultimate.worldRow, ultimate.worldCol, ultimate.height, ultimate.width)) {
        ultimate.active = 0;
        bossHealth -= 50;
    }

    jack2.screenCol = jack2.worldCol - hOff;
    jack2.screenRow = jack2.worldRow - vOff;       
}

void drawJack() {
    shadowOAM[jack.index].attr0 = (jack.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[jack.index].attr1 = (jack.screenCol & COLMASK) | ATTR1_LARGE;
	if (jack.timer % 50 == 0) {
		shadowOAM[jack.index].attr2 = ATTR2_PALROW(7) | ATTR2_TILEID(5, 16) | ATTR2_PRIORITY(1);
		jack.timer = 0;	
	} else if (jack.timer % 40 == 0) {
		shadowOAM[jack.index].attr2 = ATTR2_PALROW(7) | ATTR2_TILEID(13, 16) | ATTR2_PRIORITY(1);
	} else if (jack.timer % 30 == 0) {
		shadowOAM[jack.index].attr2 = ATTR2_PALROW(7) | ATTR2_TILEID(21, 16) | ATTR2_PRIORITY(1);
	} else if (jack.timer % 20 == 0) {
		shadowOAM[jack.index].attr2 = ATTR2_PALROW(7) | ATTR2_TILEID(13, 16) | ATTR2_PRIORITY(1);
	} else if (jack.timer % 10 == 0) {
		shadowOAM[jack.index].attr2 = ATTR2_PALROW(7) | ATTR2_TILEID(5, 16) | ATTR2_PRIORITY(1);
	}
	jack.timer++;				
}

void drawJack2() {
	shadowOAM[jack2.index].attr0 = (jack2.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_TALL;
    shadowOAM[jack2.index].attr1 = ((jack2.screenCol + jack.width) & COLMASK) | ATTR1_LARGE;
	if (jack2.timer % 50 == 0) {
		shadowOAM[jack2.index].attr2 = ATTR2_PALROW(7) | ATTR2_TILEID(5, 24) | ATTR2_PRIORITY(1);
		jack2.timer = 0;	
	} else if (jack2.timer % 40 == 0) {
		shadowOAM[jack2.index].attr2 = ATTR2_PALROW(7) | ATTR2_TILEID(13, 24) | ATTR2_PRIORITY(1);
	} else if (jack2.timer % 30 == 0) {
		shadowOAM[jack2.index].attr2 = ATTR2_PALROW(7) | ATTR2_TILEID(21, 24) | ATTR2_PRIORITY(1);
	} else if (jack2.timer % 20 == 0) {
		shadowOAM[jack2.index].attr2 = ATTR2_PALROW(7) | ATTR2_TILEID(13, 24) | ATTR2_PRIORITY(1);
	} else if (jack2.timer % 10 == 0) {
		shadowOAM[jack2.index].attr2 = ATTR2_PALROW(7) | ATTR2_TILEID(5, 24) | ATTR2_PRIORITY(1);
	}
	jack2.timer++;				
}

void initJackball() {
	for (int x = 0; x < NUMJACKBALLS; x++) {
		jackballs[x].height = 16;
		jackballs[x].width = 16;
		jackballs[x].worldRow = -jackballs[x].height;
		jackballs[x].worldCol = 0;
		jackballs[x].cdel = 1;
		jackballs[x].rdel = 1;
		jackballs[x].active = 0;
        jackballs[x].index = x + 1 + UFIREBALL + NUMFIREBALLS + JACKLEFT + JACKRIGHT;
	}
}

void releaseJackball() {
	for (int x = 0; x < NUMJACKBALLS; x++) {
		if (!jackballs[x].active) {
			int dir = rand() % 4;
        	switch(dir) {
            case 0:
                jackballs[x].aniState = FIREBFRONT;
                break;
            case 1:
                jackballs[x].aniState = FIREBBACK;
                break;
            case 2:
                jackballs[x].aniState = FIREBLEFT;
                break;
            case 3:
                jackballs[x].aniState = FIREBRIGHT;
                break;
            }
            
            if(jackballs[x].aniState == FIREBFRONT) {
                int r = rand() % (167 - 88) + 88;
                jackballs[x].worldRow = jack.worldRow + (jackballs[x].height);
                jackballs[x].worldCol = r;//jack.worldCol + (jack.width) - (jackballs[x].width/2);
            } 
            if(jackballs[x].aniState == FIREBBACK) {
                int r = rand() % (167 - 88) + 88;
                jackballs[x].worldRow = jack.worldRow + (jackballs[x].height/2);
                jackballs[x].worldCol = r;//jack.worldCol + (jack.width) - (jackballs[x].width/2);
            } 
            if(jackballs[x].aniState == FIREBLEFT) {
                int r = rand() % (152 - 90) + 90;
                jackballs[x].worldRow = r;//jack.worldRow + (jackballs[x].width/2);
                jackballs[x].worldCol = jack.worldCol - (jackballs[x].width/2);
            } 
            if(jackballs[x].aniState == FIREBRIGHT) {
                int r = rand() % (152 - 90) + 90;
                jackballs[x].worldRow = r;//jack.worldRow + (jackballs[x].width/2);
                jackballs[x].worldCol = jack2.worldCol + (jack2.width) + (jackballs[x].width/2);
            }   
            jackballs[x].active = 1;
			break;             
        }
	}
}

void updateJackball(JACKBALL* b) {
    if (b->active) {
        if (b->worldRow - 1 >= 0 && b->worldCol + b->width - 1 <= MAPWIDTH && b->worldRow + b->height - 1 <= MAPHEIGHT && b->worldCol - 1 >= 0) {
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

    for (int i = 0; i < NUMJACKBALLS; i++) {
        jackballs[i].screenCol = jackballs[i].worldCol - hOff;
        jackballs[i].screenRow = jackballs[i].worldRow - vOff;
    }
}

void drawJackball(JACKBALL* b) {
    if (b->active) {   
        shadowOAM[b->index].attr0 = (b->screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[b->index].attr1 = (b->screenCol & COLMASK) | ATTR1_SMALL;
        if (b->aniState == FIREBFRONT) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(16, 0) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(18, 0) | ATTR2_PRIORITY(1);    
            } 
        }    
        if (b->aniState == FIREBBACK) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(16, 2) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(18, 2) | ATTR2_PRIORITY(1);    
            }   
        }    
        if (b->aniState == FIREBRIGHT) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(16, 4) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(18, 4) | ATTR2_PRIORITY(1);    
            }   
        }
        if (b->aniState == FIREBLEFT) {
            if (b->timer % 5 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(16, 6) | ATTR2_PRIORITY(1);
            } else if (b->timer % 7 == 0) {
                shadowOAM[b->index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(18, 6) | ATTR2_PRIORITY(1);    
            }   
        }
        b->timer++;  
    } else {
        shadowOAM[b->index].attr0 = ATTR0_HIDE;    
    }
}

