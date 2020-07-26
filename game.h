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

#define NUMWINTER 2
#define NUMHONEYS 2
#define NUMFIREBALLS 10
#define NUMWINTERBALLS 10
#define NUMWINTERBALLS2 10
#define NUMHONEYSBALLS 10
#define NUMHONEYSBALLS2 10
#define NUMJACKBALLS 20
#define NUMHEARTS 5
#define UFIREBALL 1
#define JACKLEFT 1
#define JACKRIGHT 1

extern int hOff;
extern int vOff;
extern int cinLives;
extern int bossStage;
extern int seed;
extern int frames;
extern int useUF;
extern int bossHealth;

extern FIREBALL fireballs[NUMFIREBALLS];
extern WINTERBALL winterballs[NUMWINTERBALLS];
extern WINTERBALL winterballs2[NUMWINTERBALLS];
extern HONEYSBALL honeysballs[NUMHONEYSBALLS];
extern HONEYSBALL honeysballs2[NUMHONEYSBALLS];
extern JACKBALL jackballs[NUMJACKBALLS];

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

//Sound
void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int loops);
void playSoundB( const unsigned char* sound, int length, int frequency, int loops);
void muteSound();
void unmuteSound();
void stopSound();

void setupInterrupts();
void interruptHandler();
