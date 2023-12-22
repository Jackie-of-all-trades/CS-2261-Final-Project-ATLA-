# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "main.h" 1



typedef enum {START, INSTRUCTS, WORLDMAP, GAME, PAUSE, LOSE, WIN} STATE;
typedef enum {MSTART, RESUME, CONTROLS, QUIT}MENU;
typedef enum {LEVEL1, LEVEL2, LEVEL3, LEVEL4, LEVEL5, LEVEL6}MAP;
unsigned short oldButtons;
unsigned short buttons;



        void setup();
        void update();
        void draw();


        void initMap();

        void manageGame();

                void setStart();
                void setGame();
                void setWorldMap();
                void setPause();
                void setLose();
                void setWin();
                void setInstructs();
# 2 "main.c" 2
# 1 "level1.h" 1
# 9 "level1.h"
            void initLevel1();
            void initPlayer();
            void initEnemies();
            void initFireball();
            void updatePlayer();
            void updateEnemies();
            void updatePlayerProjectiles();
            void updateEnemyProjectiles();
            void blast(int x,int y);
            void aiBlast(int x, int y);
            void updatelevel1();
            int hasLostL1();
            int hasWonL1();
            int status();
            void drawHealth();


        typedef struct {
            int x;
            int y;
            int xVel;
            int yVel;
            int health;
            int width;
            int height;
            int timeUntilNextFrame;
            int direction;
            int isAnimating;
            int isFiring;
            int timeUntilNextFire;
            int currentCooldown;
            int currentFrame;
            int numFrames;
            int isLost;
            unsigned char oamIndex;
        } PLAYER;

        typedef struct {
            int x;
            int y;
            int active;
            int yVel;
            int health;
            int width;
            int height;
            int timeUntilNextFrame;
            int direction;
            int isFiring;
            int timeUntilNextFire;
            int currentCooldown;
            int currentFrame;
            int numFrames;
            unsigned char oamIndex;
        } ENEMY;

        typedef struct {
            int x;
            int y;
            int active;
            int xVel;
            int health;
            int width;
            int height;
            int timeUntilNextFrame;
            int direction;
            int isAnimating;
            int currentFrame;
            int numFrames;
            unsigned char oamIndex;
        } FIREBALL;

        typedef struct {
            int x;
            int y;
            int active;
            int xVel;
            int health;
            int width;
            int height;
            int timeUntilNextFrame;
            int direction;
            int isAnimating;
            int currentFrame;
            int numFrames;
            unsigned char oamIndex;
        } AIRBLASTS;
# 3 "main.c" 2
# 1 "level2.h" 1



    typedef struct {
        int x;
        int y;
        int xVel;
        int yVel;
        int lives;
        int width;
        int height;
        int timeUntilNextFrame;
        int direction;
        int isAnimating;
        int isFiring;
        int timeUntilNextFire;
        int currentCooldown;
        int currentFrame;
        int numFrames;
        int isLost;
        unsigned char oamIndex;
    } PLAYERL2;

    void initLevel2();
    void showTraps();
    void initPlayerL2();
    void updatePlayerL2();
    void updatelevel2();
    int hasLostL2();
    int hasWonL2();
    void offSetMap();
    inline unsigned char colorAt(int x, int y);
    void showLives();
# 4 "main.c" 2
# 1 "play.h" 1



typedef struct {

    char* title;
    unsigned int sampleRate;
    unsigned int length;
    signed char* data;

} TRACK;

void initTracks();
void setupInterrupts();
void interruptHandler();
void playTrack(TRACK track);
void playSoundEffect(TRACK track);

extern TRACK tsungi;
extern TRACK leaves;
extern TRACK start;
extern TRACK appa;
extern TRACK endcredits;
extern TRACK menu;

extern int second;
extern int minute;
extern int ticks;
extern int vBlankCount;
# 5 "main.c" 2
# 1 "digitalSound.h" 1



void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void pauseSounds();
void unpauseSounds();
void stopSounds();
# 49 "digitalSound.h"
typedef struct {
    const signed char* data;
    int dataLength;
    int isPlaying;
    int looping;
    int durationInVBlanks;
    int vBlankCount;
} SOUND;

extern SOUND soundA;
extern SOUND soundB;
# 6 "main.c" 2
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef signed long long s64;
typedef unsigned long long u64;
typedef void (*ihp)(void);






extern volatile unsigned short* videoBuffer;
# 47 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 66 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;
extern DMA *dma;
# 98 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 7 "main.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 51 "mode0.h"
void drawStringM0(int x, int y, char * str, int sb);
void drawCharM0(int x, int y, char ch, int sb);
# 8 "main.c" 2
# 1 "sprites.h" 1
# 10 "sprites.h"
typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];
# 64 "sprites.h"
void hideSprites();
# 9 "main.c" 2
# 1 "print.h" 1
# 25 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 26 "print.h" 2
# 35 "print.h"

# 35 "print.h"
uint8_t mgba_open(void);
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
void mgba_close(void);
# 10 "main.c" 2
# 1 "game.h" 1



void initFPtrs();
void setLevel(int currLevel, int init);
void updateLevels(int currLevel);
int lossCheck(int currLevel);
int winCheck(int currLevel);
void setLevel1();
void setLevel2();
# 11 "main.c" 2
# 1 "img/backgrounds.h" 1
# 11 "img/backgrounds.h"
extern const unsigned short startBGMap[2048];


extern const unsigned short tilesTiles[3360];


extern const unsigned short tilesPal[256];



    extern const unsigned short worldmapMap[1024];


    extern const unsigned short worldmapTiles[4208];


    extern const unsigned short worldmapPal[256];




    extern const unsigned short loseMap[1024];


    extern const unsigned short loseTiles[18464];


    extern const unsigned short losePal[256];




    extern const unsigned short pauseTiles[6096];


    extern const unsigned short pauseMap[1024];


    extern const unsigned short pausePal[256];




    extern const unsigned short winTiles[9456];

    extern const unsigned short winMap[1024];

    extern const unsigned short winPal[256];






extern const unsigned short level1mapMap[2048];


extern const unsigned short InstructsTiles[4576];


extern const unsigned short InstructsMap[1024];


extern const unsigned short InstructsPal[256];





extern const unsigned short objectiveL1Map[1024];




extern const unsigned short objectiveL2Map[1024];





extern const unsigned short titlesMap[1024];





extern const unsigned short mountainsMap[2048];





extern const unsigned short skyMap[2048];


extern const unsigned short tilesetTiles[16384];


extern const unsigned short tilesetPal[256];





extern const unsigned short desertmapMap[4096];





extern const unsigned short appaHpMap[1024];


extern const unsigned short level2tilesTiles[12096];


extern const unsigned short cleanTiles[12096];


extern const unsigned short level2tilesPal[256];
# 12 "main.c" 2
# 1 "img/spritesheet.h" 1
# 21 "img/spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];


extern const unsigned short mapspritesheetTiles[16384];


extern const unsigned short mapspritesheetPal[256];


extern const unsigned short menuspritesTiles[16384];


extern const unsigned short menuspritesPal[256];


extern const unsigned short level2spritesheetTiles[16384];


extern const unsigned short level2spritesheetPal[256];
# 13 "main.c" 2



MENU item;
STATE state;
MAP progress;
MAP level;
void (*option[6]) ();
void (*map[6]) ();
int wasPaused;
int hOff;
int hOff2;
int vOff;
int tearOffset;
int prevTearOffset;
OBJ_ATTR shadowOAM[128];
int vBlankCount;
int time;



int main() {
    setupInterrupts();
    initTracks();
    initFPtrs();
    setup();
    option[MSTART] = &setWorldMap;
    option[RESUME] = &setGame;
    option[CONTROLS] = &setInstructs;
    option[QUIT] = &setStart;
    while(1){
        oldButtons = buttons;
        buttons = (*(volatile unsigned short*) 0x04000130);
        manageGame();
        waitForVBlank();
        draw();
    }
}

    void setup(){
        mgba_open();
        (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << (8 + (2 % 4))) |(1 << 12);
        (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((26) << 8) | (0 << 7);
        (*(volatile unsigned short*) 0x0400000A) = ((0) << 2) | ((28) << 8) | (0 << 7) | (1 << 14);
        (*(volatile unsigned short*) 0x0400000C) = ((0) << 2) | ((30) << 8) | (0 << 7) | (1 << 14);
        DMANow(3, tilesetTiles, &((CB*) 0x06000000)[0], 32768/2);
        DMANow(3, titlesMap, &((SB*) 0x06000000)[26], (2048)/2);
        DMANow(3, mountainsMap, &((SB*) 0x06000000)[28], (4096)/2);
        DMANow(3, skyMap, &((SB*) 0x06000000)[30], (4096)/2);
        DMANow(3, tilesetPal, ((unsigned short*) 0x05000000), 256);
        DMANow(3, menuspritesTiles, &((CB*) 0x06000000)[4], 32768/2);
        DMANow(3, menuspritesPal, ((u16*) 0x5000200), 512/2);
        hideSprites();
        buttons = (*(volatile unsigned short*) 0x04000130);
        state = START;
        wasPaused = 0;
        playTrack(start);
        state = START;

    }

    void initMap(){
        level = 0;
        shadowOAM[0].attr0 = ((3) & 0xFF) | (0 << 14) | (0 << 8) |(0 << 13);
        shadowOAM[0].attr1 = ((92) & 0x1FF) | (1 << 14);
        shadowOAM[1].attr0 = ((40) & 0xFF) | (0 << 14) | (0 << 8) |(0 << 13);
        shadowOAM[1].attr1 = ((138) & 0x1FF) | (1 << 14);

    }

    void updateMap(){
        shadowOAM[0].attr0 = ((3) & 0xFF) | (0 << 14) | (0 << 8) |(0 << 13);
        shadowOAM[0].attr1 = ((92) & 0x1FF) | (1 << 14);
        shadowOAM[1].attr0 = ((40) & 0xFF) | (0 << 14) | (0 << 8) |(0 << 13);
        shadowOAM[1].attr1 = ((138) & 0x1FF) | (1 << 14);
        for(int i=0; i < 2; i++){
            if(i < progress){
                shadowOAM[i].attr2 = (((2) * (32) + (0)) & 0x3FF);
            }else if(i == progress) {
                shadowOAM[i].attr2 = (((4) * (32) + (0)) & 0x3FF);
            }else {
                shadowOAM[i].attr2 = (((6) * (32) + (0)) & 0x3FF);
            }

            if(i == level){
                shadowOAM[i].attr2 |= (((1) & 0xF) << 12);
            }else if(i < progress){
                shadowOAM[i].attr2 |= (((2) & 0xF) << 12);
            }else if(i == progress) {
                shadowOAM[i].attr2 |= (((3) & 0xF) << 12);
            }else {
                shadowOAM[i].attr2 |= (((0) & 0xF) << 12);
            }
        }
    }


        void manageGame(){
            switch(state){
                case START:
                    if((((buttons) & ((1 << 5))) && (~(oldButtons) & ((1 << 5))))){
                        item=0;
                        playSoundEffect(menu);
                    }

                    if((((buttons) & ((1 << 4))) && (~(oldButtons) & ((1 << 4))))){
                        item = 1;
                        playSoundEffect(menu);
                    }

                    shadowOAM[0].attr0 = ((100) & 0xFF) | (1 << 14) | (0 << 8);
                    shadowOAM[0].attr1 = ((120) & 0x1FF) | (3 << 14);
                    shadowOAM[1].attr0 = ((100) & 0xFF) | (1 << 14) | (0 << 8);
                    shadowOAM[1].attr1 = ((50) & 0x1FF) | (3 << 14);
                    if(item){
                        shadowOAM[0].attr2 = (((8) * (32) + (0)) & 0x3FF) | (((1) & 0xF) << 12);
                        shadowOAM[1].attr2 = (((0) * (32) + (0)) & 0x3FF) | (((0) & 0xF) << 12);
                    }else{
                        shadowOAM[0].attr2 = (((8) * (32) + (0)) & 0x3FF) | (((0) & 0xF) << 12);
                        shadowOAM[1].attr2 = (((0) * (32) + (0)) & 0x3FF) | (((1) & 0xF) << 12);

                    }

                    if((((buttons) & ((1 << 3))) && (~(oldButtons) & ((1 << 3))))){
                        if(!item){
                            setWorldMap();
                        }else{
                            setInstructs();
                        }
                        stopSounds();
                    }

                    if((ticks % 5) == 0){
                        if(hOff+240 > 512){
                            hOff = 0;
                        }else{
                            hOff++;
                        }
                    }

                    if((ticks % 10) == 0){
                        if(hOff2+240 > 512){
                            hOff2 = 0;
                        }else{
                            hOff2++;
                        }
                    }

                    (*(volatile unsigned short*) 0x04000014) = hOff;
                    (*(volatile unsigned short*) 0x04000018) = hOff2;

                    break;

                case INSTRUCTS:

                    if((((buttons) & ((1 << 3))) && (~(oldButtons) & ((1 << 3))))){
                        if(wasPaused){
                            setPause();
                        }else{
                            setStart();
                        }
                    }

                    break;
                case WORLDMAP:
                    if((((buttons) & ((1 << 6))) && (~(oldButtons) & ((1 << 6)))) || (((buttons) & ((1 << 5))) && (~(oldButtons) & ((1 << 5))))){
                        level-=1;
                        level%=2;
                        playSoundEffect(menu);
                    }else if((((buttons) & ((1 << 7))) && (~(oldButtons) & ((1 << 7))))|| (((buttons) & ((1 << 4))) && (~(oldButtons) & ((1 << 4))))){
                        level+=1;
                        level%=2;
                        playSoundEffect(menu);
                    }

                    updateMap();

                    if((((buttons) & ((1 << 3))) && (~(oldButtons) & ((1 << 3)))) && level <= progress){
                        stopSounds();
                        setGame();
                    }
                    break;
                case GAME:
                    if((~(buttons) & ((1 << 2)))){
                        (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (2 % 4)));
                    }else {
                        if(winCheck(level)){
                            if(level == progress) {progress++;}
                            stopSounds();
                            if(progress > 1){
                                setWin();
                            }else {
                                setWorldMap();
                            }
                        }else if(lossCheck(level)){
                            stopSounds();
                            setLose();
                        }



                        updateLevels(level);
                        if((((buttons) & ((1 << 3))) && (~(oldButtons) & ((1 << 3))))){
                            stopSounds();
                            waitForVBlank();


                            setPause();
                        }

                        draw();
                    }
                    break;
                case LOSE:
                    (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4)));
                    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((19) << 8) | (1 << 7) | (0 << 14);
                    hideSprites();
                    if((((buttons) & ((1 << 3))) && (~(oldButtons) & ((1 << 3))))){
                        stopSounds();
                        setStart();
                    }

                    if((ticks % 10) == 0){
                        if(((ticks/10) % 2) == 0){
                            ((unsigned short*) 0x05000000)[22] = ((unsigned short*) 0x05000000)[21];
                            ((unsigned short*) 0x05000000)[21] = ((unsigned short*) 0x05000000)[tearOffset+16];
                            ((unsigned short*) 0x05000000)[tearOffset + 16] = ((unsigned short*) 0x05000000)[22];
                            tearOffset = (tearOffset + 1) % 3;
                        }else{
                            ((unsigned short*) 0x05000000)[22] = ((unsigned short*) 0x05000000)[tearOffset+16];
                            ((unsigned short*) 0x05000000)[tearOffset+16] = ((unsigned short*) 0x05000000)[21];
                            ((unsigned short*) 0x05000000)[21] = ((unsigned short*) 0x05000000)[22];
                        }
                    }
                    break;
                case PAUSE:
                    wasPaused = 1;
                    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((9) << 8) | (0 << 7) | (0 << 14);
                    if((((buttons) & ((1 << 6))) && (~(oldButtons) & ((1 << 6))))){
                        item-=1;
                        item%=4;
                        playSoundEffect(menu);
                    }else if((((buttons) & ((1 << 7))) && (~(oldButtons) & ((1 << 7))))){
                        item+=1;
                        item%=4;
                        playSoundEffect(menu);
                    }

                    for(int i = 0; i < 4; i++){
                        if(i == item){
                            shadowOAM[i].attr2 = (((i*4) * (32) + (0)) & 0x3FF) | (((1) & 0xF) << 12);
                        }else{
                            shadowOAM[i].attr2 = (((i*4) * (32) + (0)) & 0x3FF) | (((0) & 0xF) << 12);
                        }
                        shadowOAM[i].attr0 = ((4 + (i*40)) & 0xFF) | (1 << 14) | (0 << 8);
                        shadowOAM[i].attr1 = ((170) & 0x1FF) | (3 << 14);
                    }
                    if((((buttons) & ((1 << 3))) && (~(oldButtons) & ((1 << 3))))){
                        stopSounds();
                        option[item]();
                    }
                    break;
                case WIN:
                    (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((19) << 8) | (0 << 7) |(0 << 14);
                    (*(volatile unsigned short*) 0x04000010) = 0;
                    (*(volatile unsigned short*) 0x04000012) = 0;
                    hideSprites();
                    if((((buttons) & ((1 << 3))) && (~(oldButtons) & ((1 << 3))))){
                        stopSounds();
                        setStart();
                    }
                    break;

            }
        }







        void setStart(){

            wasPaused = 0;
            mgba_printf("Time: %d minutes %d seconds\n", minute, second);
            hideSprites();
            waitForVBlank();
            (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4))) |(1 << (8 + (1 % 4))) | (1 << (8 + (2 % 4)))| (1 << 12);
            (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((26) << 8) | (0 << 7);
            (*(volatile unsigned short*) 0x0400000A) = ((0) << 2) | ((28) << 8) | (0 << 7) | (1 << 14);
            (*(volatile unsigned short*) 0x0400000C) = ((0) << 2) | ((30) << 8) | (0 << 7) | (1 << 14);
            DMANow(3, tilesetTiles, &((CB*) 0x06000000)[0], 32768/2);
            DMANow(3, titlesMap, &((SB*) 0x06000000)[26], (2048)/2);
            DMANow(3, mountainsMap, &((SB*) 0x06000000)[28], (4096)/2);
            DMANow(3, skyMap, &((SB*) 0x06000000)[30], (4096)/2);
            DMANow(3, tilesetPal, ((unsigned short*) 0x05000000), 256);
            DMANow(3, menuspritesTiles, &((CB*) 0x06000000)[4], 32768/2);
            DMANow(3, menuspritesPal, ((u16*) 0x5000200), 512/2);
            playTrack(start);
            state = START;
        }
        void setInstructs(){

            waitForVBlank();
            (*(volatile unsigned short*) 0x04000018) = 0;
            (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4)));
            (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((19) << 8) | (0 << 7) | (0 << 14);
            DMANow(3, InstructsTiles, &((CB*) 0x06000000)[0], 9152/2);
            DMANow(3, InstructsMap, &((SB*) 0x06000000)[19], 2048/2);
            DMANow(3, InstructsPal, ((unsigned short*) 0x05000000), 256);
            state = INSTRUCTS;
        }

        void setWorldMap(){

            waitForVBlank();
            mgba_printf("Time: %d minutes %d seconds\n", minute, second);
            (*(volatile unsigned short*) 0x04000018) = 0;
            (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
            (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((8) << 8) | (0 << 7) | (0 << 14);
            (*(volatile unsigned short*) 0x04000010) = 0;
            (*(volatile unsigned short*) 0x04000012) = 0;
            DMANow(3, worldmapTiles, &((CB*) 0x06000000)[0], 8416/2);
            DMANow(3, worldmapMap, &((SB*) 0x06000000)[8], 2048/2);
            DMANow(3, worldmapPal, ((unsigned short*) 0x05000000), 256);
            DMANow(3, mapspritesheetTiles, &((CB*) 0x06000000)[4], 32768/2);
            DMANow(3, mapspritesheetPal, ((u16*) 0x5000200), 512/2);
            hideSprites();
            DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 512);
            initMap();
            state = WORLDMAP;
        }

        void setPause(){

            DMANow(3, pausePal, ((unsigned short*) 0x05000000), 256);
            DMANow(3, pauseTiles, &((CB*) 0x06000000)[0], 12192/2);
            DMANow(3, pauseMap, &((SB*) 0x06000000)[9], 2048/2);
            (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4)))|(1 << 12);
            (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((9) << 8) | (0 << 7) | (0 << 14);
            DMANow(3, menuspritesTiles, &((CB*) 0x06000000)[4], 32768/2);
            DMANow(3, menuspritesPal, ((u16*) 0x5000200), 512/2);
            (*(volatile unsigned short*) 0x04000010) = 0;
            (*(volatile unsigned short*) 0x04000012) = 0;
            hideSprites();

            state = PAUSE;
            playTrack(tsungi);
        }

        void setWin(){

            DMANow(3, winTiles, &((CB*) 0x06000000)[0], 18912/2);
            DMANow(3, winMap, &((SB*) 0x06000000)[19], 2048/2);
            DMANow(3, winPal, ((unsigned short*) 0x05000000), 256);
            hideSprites();
            draw();
            (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4)));
            (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((19) << 8) | (0 << 7) | (0 << 14);
            (*(volatile unsigned short*) 0x04000018) = 0;
            (*(volatile unsigned short*) 0x04000014) = 0;
            (*(volatile unsigned short*) 0x04000010) = 0;
            (*(volatile unsigned short*) 0x04000012) = 0;
            state = WIN;
            playTrack(endcredits);
        }
        void setLose(){

            waitForVBlank();
            DMANow(3, loseTiles, &((CB*) 0x06000000)[0], 36928/2);
            DMANow(3, loseMap, &((SB*) 0x06000000)[19], 2048/2);
            DMANow(3, losePal, ((unsigned short*) 0x05000000), 256);
            (*(volatile unsigned short*) 0x04000014) = 0;
            (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4)));
            (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((19) << 8) | (1 << 7) | (0 << 14);
            (*(volatile unsigned short*) 0x04000010) = 0;
            (*(volatile unsigned short*) 0x04000012) = 0;
            hideSprites();
            draw();

            state = LOSE;
            playTrack(leaves);
            tearOffset = 0;
        }

    void setGame(){
        waitForVBlank();
        hideSprites();
        if(state != PAUSE){
            setLevel(level, 1);
        }else {
            setLevel(level, 0);
        }
        state = GAME;
    }

    void draw(){
        DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 512);
    }
