# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 35 "main.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int row, int col, unsigned short color);
void drawRect3(int row, int col, int height, int width, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int row, int col, unsigned char colorIndex);
void drawRect4(int row, int col, int height, int width, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();
void loadPalette(const unsigned short * palette);





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 158 "myLib.h"
void hideSprites();






typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
} ANISPRITE;
# 227 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 238 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 278 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 365 "myLib.h"
int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB);
# 36 "main.c" 2
# 1 "game.h" 1
typedef struct {
 int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
    int timer;
    int uTimer;
    int lives;
} CIN;

typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int width;
    int height;
    int index;
    int active;
} HEART;

typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int width;
    int height;
    int index;
    int active;
} READY;

typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int width;
    int height;
    int index;
    int active;
} ROCK;

typedef struct {
 int worldRow;
 int worldCol;
    int screenRow;
    int screenCol;
 int rdel;
 int cdel;
 int width;
 int height;
 int active;
 int timer;
 int index;
    int aniState;
} FIREBALL;

typedef struct {
 int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int index;
    int active;
    int health;
    int timer;
    int sTimer;
} WINTER;

typedef struct {
 int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int health;
    int index;
    int active;
    int timer;
} HONEYS;

typedef struct {
 int screenRow;
 int screenCol;
 int worldRow;
 int worldCol;
 int rdel;
 int cdel;
 int width;
 int height;
 int active;
    int index;
    int timer;
    int aniState;
} WINTERBALL;

typedef struct {
 int screenRow;
 int screenCol;
 int worldRow;
 int worldCol;
 int rdel;
 int cdel;
 int width;
 int height;
 int active;
    int index;
    int timer;
    int aniState;
} HONEYSBALL;

typedef struct {
 int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int width;
    int height;
    int timer;
    int bTimer;
    int index;
} JACK;

typedef struct {
 int screenRow;
 int screenCol;
 int worldRow;
 int worldCol;
 int rdel;
 int cdel;
 int width;
 int height;
 int active;
    int timer;
    int aniState;
    int index;
} JACKBALL;

typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vbCount;
} SOUND;
# 191 "game.h"
extern int hOff;
extern int vOff;
extern int cinLives;
extern int bossStage;
extern int seed;
extern int frames;
extern int useUF;
extern int bossHealth;

extern FIREBALL fireballs[10];
extern WINTERBALL winterballs[10];
extern WINTERBALL winterballs2[10];
extern HONEYSBALL honeysballs[10];
extern HONEYSBALL honeysballs2[10];
extern JACKBALL jackballs[20];

void initGame();
void updateGame();
void drawGame();

void initHearts();
void drawHeart1();
void updateHeart2();
void drawHeart2();
void updateHeart3();
void drawHeart3();
void updateHeart4();
void drawHeart4();
void updateHeart5();
void drawHeart5();

void initHearts2();
void updateHeart1s();
void drawHeart1s();
void updateHeart2s();
void drawHeart2s();
void updateHeart3s();
void drawHeart3s();
void updateHeart4s();
void drawHeart4s();
void updateHeart5s();
void drawHeart5s();

void initReadyU();
void launchReadyU();
void updateReadyU();
void drawReadyU();

void initReadyU2();
void launchReadyU2();
void updateReadyU2();
void drawReadyU2();

void initRock();
void updateRock();
void drawRock();

void initCin();
void updateCin();
void moveCin();
void drawCin();

void initFireball();
void releaseFireball();
void updateFireball();
void drawFireball();

void initFireball2();
void releaseFireball2();
void updateFireball2();
void drawFireball2();

void initUFireball();
void releaseUFireball();
void updateUFireball();
void drawUFireball();

void initUFireball2();
void releaseUFireball2();
void updateUFireball2();
void drawUFireball2();

void initWinter1();
void updateWinter1();
void drawWinter1();
void moveWinter1();

void initWinter2();
void updateWinter2();
void drawWinter2();
void moveWinter2();

void initWinterball();
void releaseWinterball();
void updateWinterball();
void drawWinterball();

void initWinterball2();
void releaseWinterball2();
void updateWinterball2();
void drawWinterball2();

void initWinterball2();
void releaseWinterball2();
void updateWinterball2();
void drawWinterball2();

void initHoneys1();
void updateHoneys1();
void drawHoneys1();
void moveHoneys1();

void initHoneys2();
void updateHoneys2();
void drawHoneys2();
void moveHoneys2();

void initHoneysball();
void releaseHoneysball();
void updateHoneysball();
void drawHoneysball();

void initHoneysball2();
void releaseHoneysball2();
void updateHoneysball2();
void drawHoneysball2();

void initGame2();
void updateGame2();
void drawGame2();

void initCin2();
void updateCin2();
void drawCin2();
void moveCin2();

void initJack();
void updateJack();
void drawJack();
void initJack2();
void updateJack2();
void drawJack2();

void initJackball();
void releaseJackball();
void updateJackball();
void drawJackball();


void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int loops);
void playSoundB( const unsigned char* sound, int length, int frequency, int loops);
void muteSound();
void unmuteSound();
void stopSound();

void setupInterrupts();
void interruptHandler();
# 37 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 38 "main.c" 2
# 1 "spritesheet2.h" 1
# 21 "spritesheet2.h"
extern const unsigned short spritesheet2Tiles[16384];


extern const unsigned short spritesheet2Pal[256];
# 39 "main.c" 2
# 1 "splash.h" 1
# 22 "splash.h"
extern const unsigned short splashTiles[1760];


extern const unsigned short splashMap[1024];


extern const unsigned short splashPal[256];
# 40 "main.c" 2
# 1 "instruct.h" 1
# 22 "instruct.h"
extern const unsigned short instructTiles[32];


extern const unsigned short instructMap[1024];


extern const unsigned short instructPal[256];
# 41 "main.c" 2
# 1 "pause.h" 1
# 22 "pause.h"
extern const unsigned short pauseTiles[960];


extern const unsigned short pauseMap[1024];


extern const unsigned short pausePal[256];
# 42 "main.c" 2
# 1 "win.h" 1
# 22 "win.h"
extern const unsigned short winTiles[64];


extern const unsigned short winMap[1024];


extern const unsigned short winPal[256];
# 43 "main.c" 2
# 1 "lose.h" 1
# 22 "lose.h"
extern const unsigned short loseTiles[112];


extern const unsigned short loseMap[1024];


extern const unsigned short losePal[256];
# 44 "main.c" 2
# 1 "gamebg.h" 1
# 22 "gamebg.h"
extern const unsigned short gamebgTiles[848];


extern const unsigned short gamebgMap[1024];


extern const unsigned short gamebgPal[256];
# 45 "main.c" 2
# 1 "text.h" 1

void drawChar3(int row, int col, char ch, unsigned short color);
void drawString3(int row, int col, char *str, unsigned short color);


void drawChar4(int row, int col, char ch, unsigned char colorIndex);
void drawString4(int row, int col, char *str, unsigned char colorIndex);
# 46 "main.c" 2
# 1 "bossbg.h" 1
# 22 "bossbg.h"
extern const unsigned short bossbgTiles[688];


extern const unsigned short bossbgMap[1024];


extern const unsigned short bossbgPal[256];
# 47 "main.c" 2
# 1 "TitleSong.h" 1
# 20 "TitleSong.h"
extern const unsigned char TitleSong[1999872];
# 48 "main.c" 2
# 1 "GameSong.h" 1
# 20 "GameSong.h"
extern const unsigned char GameSong[2742336];
# 49 "main.c" 2
# 1 "GameSong2.h" 1
# 20 "GameSong2.h"
extern const unsigned char GameSong2[4393152];
# 50 "main.c" 2
# 1 "startBack.h" 1
# 22 "startBack.h"
extern const unsigned short startBackTiles[7408];


extern const unsigned short startBackMap[2048];


extern const unsigned short startBackPal[256];
# 51 "main.c" 2
# 1 "startBack2.h" 1
# 22 "startBack2.h"
extern const unsigned short startBack2Tiles[10400];


extern const unsigned short startBack2Map[2048];


extern const unsigned short startBack2Pal[256];
# 52 "main.c" 2
# 1 "fireSound.h" 1
# 20 "fireSound.h"
extern const unsigned char fireSound[24608];
# 53 "main.c" 2
# 1 "WinSong.h" 1
# 20 "WinSong.h"
extern const unsigned char WinSong[1410624];
# 54 "main.c" 2
# 1 "LoseSong.h" 1
# 20 "LoseSong.h"
extern const unsigned char LoseSong[2156255];
# 55 "main.c" 2

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
        buttons = (*(volatile unsigned short *)0x04000130);
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
    *(volatile u16 *)0x04000084 = (1<<7);
    *(volatile u16*)0x04000082 = (1<<1) |
                     (1<<2) |
                     (3<<8) |
                     (0<<10) |
                     (1<<11) |
                     (1<<3) |
                     (3<<12) |
                     (1<<14) |
                     (1<<15);
    *(u16*)0x04000080 = 0;
}

void playSoundA( const unsigned char* sound, int length, int frequency, int loops) {
        dma[1].cnt = 0;
        int ticks = (16777216)/frequency;
        DMANow(1, sound, (u16*)0x040000A0, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

        *(volatile unsigned short*)0x4000102 = 0;
        *(volatile unsigned short*)0x4000100 = -ticks;
        *(volatile unsigned short*)0x4000102 = (1<<7);

        soundA.data = sound;
        soundA.length = length;
        soundA.frequency = frequency;
        soundA.loops = loops;
        soundA.isPlaying = 1;
        soundA.duration = (((59.727) * soundA.length) / soundA.frequency);
        soundA.vbCount = 0;
}

void playSoundB( const unsigned char* sound, int length, int frequency, int loops) {
        dma[2].cnt = 0;
        int ticks = (16777216)/frequency;
        DMANow(2, sound, (u16*)0x040000A4, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

        *(volatile unsigned short*)0x4000106 = 0;
        *(volatile unsigned short*)0x4000104 = -ticks;
        *(volatile unsigned short*)0x4000106 = (1<<7);

        soundB.data = sound;
        soundB.length = length;
        soundB.frequency = frequency;
        soundB.loops = 0;
        soundB.isPlaying = 1;
        soundB.duration = (((59.727) * soundB.length) / soundB.frequency);
        soundB.vbCount = 0;
}

void pauseSound() {
    soundA.isPlaying = 0;
    soundB.isPlaying = 0;
    *(volatile unsigned short*)0x4000102 = 0;
    *(volatile unsigned short*)0x4000106 = 0;
}

void unpauseSound() {
    soundA.isPlaying = 1;
    soundB.isPlaying = 1;
    *(volatile unsigned short*)0x4000102 = (1<<7);
    *(volatile unsigned short*)0x4000106 = (1<<7);
}

void stopSound() {
    soundA.isPlaying = 0;
    soundB.isPlaying = 0;
    dma[1].cnt = 0;
    dma[2].cnt = 0;
    *(volatile unsigned short*)0x4000102 = 0;
    *(volatile unsigned short*)0x4000106 = 0;
}

void setupInterrupts() {
    *(unsigned short*)0x4000208 = 0;
    *(unsigned int*)0x3007FFC = (unsigned int)interruptHandler;

    *(unsigned short*)0x4000200 |= 1 << 0;
    *(unsigned short*)0x4000004 |= 1 << 3;
    *(unsigned short*)0x4000208 = 1;
}

void interruptHandler() {
    *(unsigned short*)0x4000208 = 0;
    if(*(volatile unsigned short*)0x4000202 & 1 << 0)
    {
        if(soundA.isPlaying) {
            soundA.vbCount++;
            if (soundA.vbCount > soundA.duration) {
                if (soundA.loops) {
                    playSoundA(soundA.data, soundA.length, soundA.frequency, soundA.loops);
                } else {
                    soundA.isPlaying = 0;
                    dma[1].cnt = 0;
                    *(volatile unsigned short*)0x4000102 = 0;
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
                    *(volatile unsigned short*)0x4000106 = 0;
                }
            }
        }
        *(volatile unsigned short*)0x4000202 = 1 << 0;
    }
    *(unsigned short*)0x4000208 = 1;
}

void initialize() {
    setupSounds();
    setupInterrupts();
    goToSplash();
}

void goToSplash() {
    (*(unsigned short *)0x4000000) = 0 | (1<<10) | (1<<9) | (1<<8);
    (*(volatile unsigned short*)0x400000C) = (1<<14) | ((2)<<2) | ((27)<<8);
    (*(volatile unsigned short*)0x400000A) = (1<<14) | ((0)<<2) | ((30)<<8);
    (*(volatile unsigned short*)0x4000008) = (0<<14) | ((1)<<2) | ((29)<<8);
    loadPalette(startBack2Pal);

    DMANow(3, startBack2Tiles, &((charblock *)0x6000000)[2], 20800/2);
    DMANow(3, startBack2Map, &((screenblock *)0x6000000)[27], 4096/2);

    DMANow(3, startBackTiles, &((charblock *)0x6000000)[0], 14816/2);
    DMANow(3, startBackMap, &((screenblock *)0x6000000)[30], 4096/2);

    DMANow(3, splashTiles, &((charblock *)0x6000000)[1], 3520/2);
    DMANow(3, splashMap, &((screenblock *)0x6000000)[29], 2048/2);

    playSoundA(TitleSong,1999872,11025, 1);

    hOff = 0;
    vOff = 0;
    state = START;
}

void start() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToPrelude();
    }
    (*(volatile unsigned short *)0x04000018) = hOff++/4;
    (*(volatile unsigned short *)0x04000014) = hOff++/2;
    (*(volatile unsigned short *)0x04000012) = vOff;
}


void goToPrelude() {
    (*(unsigned short *)0x4000000) = 3 | (1<<10);
    fillScreen3(((0) | (0)<<5 | (0)<<10));

    drawString3(10, 92, "-Prelude-", ((31) | (31)<<5 | (31)<<10));
    drawString3(25, 10, "Become Cin A. Mon, a renowned Whiskey", ((31) | (31)<<5 | (31)<<10));
    drawString3(35, 23, "Warrior with the power to shoot", ((31) | (31)<<5 | (31)<<10));
    drawString3(45, 10, "fireballs. Use Cin's fireball powers", ((31) | (31)<<5 | (31)<<10));
    drawString3(55, 10, "to battle the forces of the infamous", ((31) | (31)<<5 | (31)<<10));
    drawString3(65, 15, "Jack Daniels who wishes to destroy", ((31) | (31)<<5 | (31)<<10));
    drawString3(75, 10, "every Whiskey Warrior so he can reign", ((31) | (31)<<5 | (31)<<10));
    drawString3(85, 28, "supreme as \"The Whiskey Lord.\"", ((31) | (31)<<5 | (31)<<10));
    drawString3(95, 7, "Fight through his army of Winter Jacks", ((31) | (31)<<5 | (31)<<10));
    drawString3(105, 7, "and Tennessee Honeys to finally put an", ((31) | (31)<<5 | (31)<<10));
    drawString3(115, 31, "end to the evil Jack Daniels.", ((31) | (31)<<5 | (31)<<10));

    drawString3(135, 43, "Press \'Start\' to Continue.", ((31) | (31)<<5 | (31)<<10));

    waitForVBlank();
    state = PRELUDE;
}

void prelude() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToInstruct();
    }
}

void goToInstruct() {
    (*(unsigned short *)0x4000000) = 3 | (1<<10);
    fillScreen3(((0) | (0)<<5 | (0)<<10));

    drawString3(10, 80, "-How To Play-", ((31) | (31)<<5 | (31)<<10));
    drawString3(25, 20, "Press \'A\' to shoot fireballs. Cin", ((31) | (31)<<5 | (31)<<10));
    drawString3(35, 25, "has an \'Ultimate Fireball\' that", ((31) | (31)<<5 | (31)<<10));
    drawString3(45, 19, "can only be used when you see the", ((31) | (31)<<5 | (31)<<10));
    drawString3(55, 9, "words \'Ultimate Ready\' on the screen.", ((31) | (31)<<5 | (31)<<10));
    drawString3(65, 3, "This is a one hit kill for Winter Jacks", ((31) | (31)<<5 | (31)<<10));
    drawString3(75, 15, "and Tennessee Honeys. Press \'B\' to", ((31) | (31)<<5 | (31)<<10));
    drawString3(85, 29, "use the \'Ultimate\'. Dodge the", ((31) | (31)<<5 | (31)<<10));
    drawString3(95, 18, "enemies' attacks or Cin will lose", ((31) | (31)<<5 | (31)<<10));
    drawString3(105, 15, "a life. If Cin loses all his lives,", ((31) | (31)<<5 | (31)<<10));
    drawString3(115, 18, "you lose. Defeat Jack and you win!", ((31) | (31)<<5 | (31)<<10));
    drawString3(130, 57, "Become the Greatest...", ((31) | (31)<<5 | (31)<<10));

    drawString3(145, 20, "Press \'Start\' to Begin Your Quest", ((31) | (31)<<5 | (31)<<10));

    waitForVBlank();
    state = INSTRUCT;
}

void instruct() {
    seed++;
 if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToGame();
        srand(seed);
        initGame();
    }
}

void goToGame() {
 loadPalette(gamebgPal);
    DMANow(3, gamebgTiles, &((charblock *)0x6000000)[0], 1696/2);
    DMANow(3, gamebgMap, &((screenblock *)0x6000000)[31], 2048/2);

    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 256);
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768/2);

    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);
    (*(volatile unsigned short*)0x4000008) = (0<<14) | ((0)<<2) | ((31)<<8) | 1;

    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    playSoundA(GameSong, 2742336, 11025, 1);

    state = GAME;
}

void game() {
    updateGame();
    waitForVBlank();
    drawGame();

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
     goToPause();
    }
    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
        playSoundB(fireSound, 24608, 11025, 0);
    }
    if (bossStage == 1) {
        state = TRANSITION;
    }
    if (cinLives == 0) {
        stopSound();
        goToLose();
    }

    (*(volatile unsigned short *)0x04000012) = vOff;
    (*(volatile unsigned short *)0x04000010) = hOff;
}

void transition() {
    goToGame2();
    initGame2();
}

void goToGame2() {
    loadPalette(bossbgPal);
    DMANow(3, bossbgTiles, &((charblock *)0x6000000)[0], 1376/2);
    DMANow(3, bossbgMap, &((screenblock *)0x6000000)[31], 2048/2);

    DMANow(3, spritesheet2Pal, ((unsigned short *)0x5000200), 256);
    DMANow(3, spritesheet2Tiles, &((charblock *)0x6000000)[4], 32768/2);

    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);
    (*(volatile unsigned short*)0x4000008) = (0<<14) | ((0)<<2) | ((31)<<8) | 1;

    playSoundA(GameSong2, 4393152, 11025, 1);

    state = GAME2;
}

void game2() {
    updateGame2();
    waitForVBlank();
    drawGame2();

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToPause2();
    }
    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
        playSoundB(fireSound, 24608, 11025, 0);
    }
    if (bossHealth == 0) {
        stopSound();
        goToWin();
    }
    if (cinLives == 0) {
        stopSound();
        goToLose();
    }

    (*(volatile unsigned short *)0x04000012) = vOff;
    (*(volatile unsigned short *)0x04000010) = hOff;
}

void goToPause() {
    (*(unsigned short *)0x4000000) |= (1<<9);
    *(unsigned short*)0x4000050 = (1 << 1) | (1 << 8) | (1 << 12) | (1 << 6);
    *(unsigned short*)0x4000052 = (8) | ((8) << 8);
    DMANow(3, pauseTiles, &((charblock *)0x6000000)[1], 1920/2);
    DMANow(3, pauseMap, &((screenblock *)0x6000000)[30], 2048/2);

    (*(volatile unsigned short*)0x400000A) = (0<<14) | ((1)<<2) | ((30)<<8) | 0;

    pauseSound();

    (*(volatile unsigned short *)0x04000016) = 0;
    (*(volatile unsigned short *)0x04000014) = 0;

    state = PAUSE;
}

void pause() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        unpauseSound();
        goToGame();
    } else if((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        stopSound();
        goToSplash();
    }
}

void goToPause2() {
    (*(unsigned short *)0x4000000) |= (1<<9);
    *(unsigned short*)0x4000050 = (1 << 1) | (1 << 8) | (1 << 12) | (1 << 6);
    *(unsigned short*)0x4000052 = (8) | ((8) << 8);
    DMANow(3, pauseTiles, &((charblock *)0x6000000)[1], 1920/2);
    DMANow(3, pauseMap, &((screenblock *)0x6000000)[30], 2048/2);

    (*(volatile unsigned short*)0x400000A) = (0<<14) | ((1)<<2) | ((30)<<8) | 0;

    pauseSound();

    (*(volatile unsigned short *)0x04000016) = 0;
    (*(volatile unsigned short *)0x04000014) = 0;

    state = PAUSE2;
}

void pause2() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        unpauseSound();
        goToGame2();
    } else if((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        stopSound();
        goToSplash();
    }
}

void goToWin() {
    waitForVBlank();
    loadPalette(winPal);
    DMANow(3, winTiles, &((charblock *)0x6000000)[0], 128/2);
    DMANow(3, winMap, &((screenblock *)0x6000000)[31], 2048/2);
    (*(unsigned short *)0x4000000) = 0 | (1<<10);
    (*(volatile unsigned short*)0x400000C) = (0<<14) | ((0)<<2) | ((31)<<8);

    playSoundA(WinSong, 1410624, 11025, 1);

    hOff = 0;
    vOff = 0;

    state = WIN;
}

void win() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        stopSound();
        goToSplash();
    }

    (*(volatile unsigned short *)0x0400001A) = 0;
    (*(volatile unsigned short *)0x04000018) = 0;
}

void goToLose() {
    waitForVBlank();
    loadPalette(losePal);
    DMANow(3, loseTiles, &((charblock *)0x6000000)[0], 224/2);
    DMANow(3, loseMap, &((screenblock *)0x6000000)[31], 2048/2);
    (*(unsigned short *)0x4000000) = 0 | (1<<10);
    (*(volatile unsigned short*)0x400000C) = (0<<14) | ((0)<<2) | ((31)<<8);

    playSoundA(LoseSong, 2156255, 11025, 1);

    hOff = 0;
    vOff = 0;

    state = LOSE;
}

void lose() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        stopSound();
     goToSplash();
    }

    (*(volatile unsigned short *)0x0400001A) = 0;
    (*(volatile unsigned short *)0x04000018) = 0;
}
