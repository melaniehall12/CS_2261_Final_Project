/**
My game is about shooting fireballs to kill enemies
before meeting with the boss and ultimately killing him as well.
I want the player to be able to move around and shoot the enemies
(plays as a top down game) while using A or B to shoot regular
fireballs or the 'Ultimate Fireball'. Once all the smaller enemies
in the first area are killed, the rock blocking the entrance will
disappear and the player can advance to face the boss. When the boss
is beat, the player wins. They lose if they're hit five times.

The bugs I'm most aware of is the collision code for each sprite
and the collision bitmap. The sprites get stuck together when they
touch resulting in easier gameplay cause you're shooting at a still
target, but harder because the player can become stuck to the sprite
and no longer move. Some of the sprites get stuck along the bitmap
as well, not the player but the enemies. I decided to take out the
collision code since it made gameplay SUPER easy. The player can still
collide and not be able to pass through the enemies, but they can
pass through him. I also believe some of the enemies' fireballs go
past the screen and appear at the oppositeend of the map. It's just
one enemy's fireballs that are doing that though. That is all
the known bugs I'm aware of.

EXTRA CREDIT:
All my sprites/backgrounds I made myself. It took longer than I hoped so
I'm praying for some brownie points here. I included alpha blending
for my pause screen in both levels of the game (this is located in main.c
in the gotoPause functions). My AI isn't very advanced,
but they're able to switch directions after an allotted amount of time 
(I don't think that's too awesome in terms of AI but at least it's worth
a shot. It's located in game.c). For general coolness, I think the fact that I created a game off
of a brand of whiskey is pretty funny/cool. In what game do you ever get
to fight Jack Daniels?;) 
**/
#include "myLib.h"
#include "game.h"
#include "spritesheet.h"
#include "spritesheet2.h"
#include "splash.h"
#include "instruct.h"
#include "pause.h"
#include "win.h"
#include "lose.h"
#include "gamebg.h"
#include "text.h"
#include "bossbg.h"
#include "TitleSong.h"
#include "GameSong.h"
#include "GameSong2.h"
#include "startBack.h"
#include "startBack2.h"
#include "fireSound.h"
#include "WinSong.h"
#include "LoseSong.h"

void initialize();
void goToSplash();
void start();
void goToPrelude();
void prelude();
void goToInstruct();
void instruct();
void goToGame();
void game();
void transition();
void goToGame2();
void game2();
void goToPause();
void pause();
void goToPause2();
void pause2();
void goToWin();
void win();
void goToLose();
void lose();

enum {START, PRELUDE, INSTRUCT, GAME, TRANSITION, GAME2, PAUSE, PAUSE2, WIN, LOSE};
int state;

unsigned short buttons;
unsigned short oldButtons;

int seed = 0;

SOUND soundA;
SOUND soundB;

char buffer[41];

OBJ_ATTR shadowOAM[128];

int main() {
    initialize();
    while(1) {
        oldButtons = buttons;
        buttons = BUTTONS;
        switch(state) {
			case START:
                start();
                break;
            case PRELUDE:
                prelude();
                break;    
            case INSTRUCT:
                instruct();
                break;
            case GAME:
                game();
                break;
            case TRANSITION:
                transition();
                break;    
            case GAME2:
                game2();
                break;
            case PAUSE:
                pause();
                break;
            case PAUSE2:
                pause2();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
		}
	}
}

void setupSounds()
{
    REG_SOUNDCNT_X = SND_ENABLED;
    REG_SOUNDCNT_H = SND_OUTPUT_RATIO_100 | 
                     DSA_OUTPUT_RATIO_100 | 
                     DSA_OUTPUT_TO_BOTH | 
                     DSA_TIMER0 | 
                     DSA_FIFO_RESET |
                     DSB_OUTPUT_RATIO_100 | 
                     DSB_OUTPUT_TO_BOTH | 
                     DSB_TIMER1 | 
                     DSB_FIFO_RESET;
    REG_SOUNDCNT_L = 0;
}

void playSoundA( const unsigned char* sound, int length, int frequency, int loops) {
        dma[1].cnt = 0;
        int ticks = PROCESSOR_CYCLES_PER_SECOND/frequency;
        DMANow(1, sound, REG_FIFO_A, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);
    
        REG_TM0CNT = 0;
        REG_TM0D = -ticks;
        REG_TM0CNT = TIMER_ON;

        soundA.data = sound;
        soundA.length = length;
        soundA.frequency = frequency;
        soundA.loops = loops;
        soundA.isPlaying = 1;
        soundA.duration = ((VBLANK_FREQ * soundA.length) / soundA.frequency);
        soundA.vbCount = 0; 
}

void playSoundB( const unsigned char* sound, int length, int frequency, int loops) {
        dma[2].cnt = 0;
        int ticks = PROCESSOR_CYCLES_PER_SECOND/frequency;
        DMANow(2, sound, REG_FIFO_B, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

        REG_TM1CNT = 0;
        REG_TM1D = -ticks;
        REG_TM1CNT = TIMER_ON;
    
        soundB.data = sound;
        soundB.length = length;
        soundB.frequency = frequency;
        soundB.loops = 0;
        soundB.isPlaying = 1;
        soundB.duration = ((VBLANK_FREQ * soundB.length) / soundB.frequency);
        soundB.vbCount = 0; 
}

void pauseSound() {
    soundA.isPlaying = 0;
    soundB.isPlaying = 0;
    REG_TM0CNT = 0;
    REG_TM1CNT = 0;
}

void unpauseSound() {
    soundA.isPlaying = 1;
    soundB.isPlaying = 1;
    REG_TM0CNT = TIMER_ON;
    REG_TM1CNT = TIMER_ON;
}

void stopSound() {
    soundA.isPlaying = 0;
    soundB.isPlaying = 0;
    dma[1].cnt = 0;
    dma[2].cnt = 0;
    REG_TM0CNT = 0;
    REG_TM1CNT = 0;
}

void setupInterrupts() {
    REG_IME = 0;
    REG_INTERRUPT = (unsigned int)interruptHandler;
    
    REG_IE |= INT_VBLANK;
    REG_DISPSTAT |= INT_VBLANK_ENABLE;
    REG_IME = 1;
}

void interruptHandler() {
    REG_IME = 0;
    if(REG_IF & INT_VBLANK)
    {
        if(soundA.isPlaying) {
            soundA.vbCount++;
            if (soundA.vbCount > soundA.duration) {
                if (soundA.loops) {
                    playSoundA(soundA.data, soundA.length, soundA.frequency, soundA.loops);
                } else {
                    soundA.isPlaying = 0;
                    dma[1].cnt = 0;
                    REG_TM0CNT = 0;
                }
            }
        }

        if(soundB.isPlaying) {
            soundB.vbCount++;
            if (soundB.vbCount > soundB.duration) {
                if (soundB.loops) {
                    playSoundB(soundB.data, soundB.length, soundB.frequency, soundB.loops);
                } else {
                    soundB.isPlaying = 0;
                    dma[2].cnt = 0;
                    REG_TM1CNT = 0;
                }
            }
        }
        REG_IF = INT_VBLANK; 
    }
    REG_IME = 1;
}

void initialize() {
    setupSounds();
    setupInterrupts();
    goToSplash();
}

void goToSplash() {
    REG_DISPCTL = MODE0 | BG2_ENABLE | BG1_ENABLE | BG0_ENABLE;
    REG_BG2CNT = BG_SIZE_WIDE | BG_CHARBLOCK(2) | BG_SCREENBLOCK(27);
    REG_BG1CNT = BG_SIZE_WIDE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(30);
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);
    loadPalette(startBack2Pal);

    DMANow(3, startBack2Tiles, &CHARBLOCK[2], startBack2TilesLen/2);  
    DMANow(3, startBack2Map, &SCREENBLOCK[27], startBack2MapLen/2);

    DMANow(3, startBackTiles, &CHARBLOCK[0], startBackTilesLen/2);  
    DMANow(3, startBackMap, &SCREENBLOCK[30], startBackMapLen/2);

    DMANow(3, splashTiles, &CHARBLOCK[1], splashTilesLen/2);  
    DMANow(3, splashMap, &SCREENBLOCK[29], splashMapLen/2);

    playSoundA(TitleSong,TITLESONGLEN,TITLESONGFREQ, 1);

    hOff = 0;
    vOff = 0;
    state = START;
}

void start() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPrelude();
    }
    REG_BG2HOFF = hOff++/4;
    REG_BG1HOFF = hOff++/2;
    REG_BG0VOFF = vOff;
}


void goToPrelude() {
    REG_DISPCTL = MODE3 | BG2_ENABLE;
    fillScreen3(BLACK);

    drawString3(10, 92, "-Prelude-", WHITE);
    drawString3(25, 10, "Become Cin A. Mon, a renowned Whiskey", WHITE);
    drawString3(35, 23, "Warrior with the power to shoot", WHITE);
    drawString3(45, 10, "fireballs. Use Cin's fireball powers", WHITE);
    drawString3(55, 10, "to battle the forces of the infamous", WHITE);
    drawString3(65, 15, "Jack Daniels who wishes to destroy", WHITE);
    drawString3(75, 10, "every Whiskey Warrior so he can reign", WHITE);
    drawString3(85, 28, "supreme as \"The Whiskey Lord.\"", WHITE);
    drawString3(95, 7, "Fight through his army of Winter Jacks", WHITE);
    drawString3(105, 7, "and Tennessee Honeys to finally put an", WHITE);
    drawString3(115, 31, "end to the evil Jack Daniels.", WHITE);

    drawString3(135, 43, "Press \'Start\' to Continue.", WHITE);
    
    waitForVBlank();
    state = PRELUDE;
}

void prelude() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToInstruct();
    }
}

void goToInstruct() {
    REG_DISPCTL = MODE3 | BG2_ENABLE;
    fillScreen3(BLACK);

    drawString3(10, 80, "-How To Play-", WHITE);
    drawString3(25, 20, "Press \'A\' to shoot fireballs. Cin", WHITE);
    drawString3(35, 25, "has an \'Ultimate Fireball\' that", WHITE);
    drawString3(45, 19, "can only be used when you see the", WHITE);
    drawString3(55, 9, "words \'Ultimate Ready\' on the screen.", WHITE);
    drawString3(65, 3, "This is a one hit kill for Winter Jacks", WHITE);
    drawString3(75, 15, "and Tennessee Honeys. Press \'B\' to", WHITE);
    drawString3(85, 29, "use the \'Ultimate\'. Dodge the", WHITE);
    drawString3(95, 18, "enemies' attacks or Cin will lose", WHITE);
    drawString3(105, 15, "a life. If Cin loses all his lives,", WHITE);
    drawString3(115, 18, "you lose. Defeat Jack and you win!", WHITE);
    drawString3(130, 57, "Become the Greatest...", WHITE);

    drawString3(145, 20, "Press \'Start\' to Begin Your Quest", WHITE);

    waitForVBlank();
    state = INSTRUCT;
}

void instruct() {
    seed++;
	if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
        srand(seed);
        initGame();
    }
}

void goToGame() {
	loadPalette(gamebgPal);
    DMANow(3, gamebgTiles, &CHARBLOCK[0], gamebgTilesLen/2);  
    DMANow(3, gamebgMap, &SCREENBLOCK[31], gamebgMapLen/2);

    DMANow(3, spritesheetPal, SPRITEPALETTE, 256);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | 1;

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);

    playSoundA(GameSong, GAMESONGLEN, GAMESONGFREQ, 1);

    state = GAME;
}

void game() {
    updateGame();
    waitForVBlank();
    drawGame();

    DMANow(3, shadowOAM, OAM, 128*4);

    if (BUTTON_PRESSED(BUTTON_START)) {
    	goToPause();		
    }
    if (BUTTON_PRESSED(BUTTON_A)) {
        playSoundB(fireSound, FIRESOUNDLEN, FIRESOUNDFREQ, 0);
    }
    if (bossStage == 1) {
        state = TRANSITION;
    }
    if (cinLives == 0) {
        stopSound();
        goToLose();
    }

    REG_BG0VOFF = vOff;
    REG_BG0HOFF = hOff;    
}

void transition() {
    goToGame2();
    initGame2();
}

void goToGame2() {
    loadPalette(bossbgPal);
    DMANow(3, bossbgTiles, &CHARBLOCK[0], bossbgTilesLen/2);  
    DMANow(3, bossbgMap, &SCREENBLOCK[31], bossbgMapLen/2);

    DMANow(3, spritesheet2Pal, SPRITEPALETTE, 256);
    DMANow(3, spritesheet2Tiles, &CHARBLOCK[4], spritesheet2TilesLen/2);

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | 1;

    playSoundA(GameSong2, GAMESONG2LEN, GAMESONG2FREQ, 1);

    state = GAME2;    
}

void game2() {
    updateGame2();
    waitForVBlank();
    drawGame2();

    DMANow(3, shadowOAM, OAM, 128*4);

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause2();        
    }
    if (BUTTON_PRESSED(BUTTON_A)) {
        playSoundB(fireSound, FIRESOUNDLEN, FIRESOUNDFREQ, 0);
    }
    if (bossHealth == 0) {
        stopSound();
        goToWin();    
    }
    if (cinLives == 0) {
        stopSound();
        goToLose();
    }

    REG_BG0VOFF = vOff;
    REG_BG0HOFF = hOff;
}

void goToPause() {
    REG_DISPCTL |= BG1_ENABLE;
    REG_BLDMOD = BG1_A | BG0_B | OBJ_B | NORMAL_TRANS;
    REG_COLEV = WEIGHTOFA(8) | WEIGHTOFB(8);
    DMANow(3, pauseTiles, &CHARBLOCK[1], pauseTilesLen/2);
    DMANow(3, pauseMap, &SCREENBLOCK[30], pauseMapLen/2);
    
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | 0;

    pauseSound();

    REG_BG1VOFF = 0;
    REG_BG1HOFF = 0;

    state = PAUSE;
}

void pause() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        unpauseSound();
        goToGame();
    } else if(BUTTON_PRESSED(BUTTON_SELECT)) {
        stopSound();
        goToSplash();
    }
}

void goToPause2() {
    REG_DISPCTL |= BG1_ENABLE;
    REG_BLDMOD = BG1_A | BG0_B | OBJ_B | NORMAL_TRANS;
    REG_COLEV = WEIGHTOFA(8) | WEIGHTOFB(8);
    DMANow(3, pauseTiles, &CHARBLOCK[1], pauseTilesLen/2);
    DMANow(3, pauseMap, &SCREENBLOCK[30], pauseMapLen/2);
    
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | 0;

    pauseSound();

    REG_BG1VOFF = 0;
    REG_BG1HOFF = 0;

    state = PAUSE2;
}

void pause2() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        unpauseSound();
        goToGame2();
    } else if(BUTTON_PRESSED(BUTTON_SELECT)) {
        stopSound();
        goToSplash();
    }
}

void goToWin() {
    waitForVBlank();
    loadPalette(winPal);
    DMANow(3, winTiles, &CHARBLOCK[0], winTilesLen/2);
    DMANow(3, winMap, &SCREENBLOCK[31], winMapLen/2);
    REG_DISPCTL = MODE0 | BG2_ENABLE;
    REG_BG2CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    playSoundA(WinSong, WINSONGLEN, WINSONGFREQ, 1);

    hOff = 0;
    vOff = 0;
   
    state = WIN;
}

void win() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSound();
        goToSplash();
    }

    REG_BG2VOFF = 0;
    REG_BG2HOFF = 0;
}

void goToLose() {
    waitForVBlank();
    loadPalette(losePal);
    DMANow(3, loseTiles, &CHARBLOCK[0], loseTilesLen/2);
    DMANow(3, loseMap, &SCREENBLOCK[31], loseMapLen/2);
    REG_DISPCTL = MODE0 | BG2_ENABLE;
    REG_BG2CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    playSoundA(LoseSong, LOSESONGLEN, LOSESONGFREQ, 1);

    hOff = 0;
    vOff = 0;

    state = LOSE;
}

void lose() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSound();
    	goToSplash();	
    }

    REG_BG2VOFF = 0;
    REG_BG2HOFF = 0;    
}

