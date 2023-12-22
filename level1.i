# 1 "level1.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "level1.c"
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
# 2 "level1.c" 2
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
# 3 "level1.c" 2
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
# 4 "level1.c" 2
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
# 5 "level1.c" 2
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
# 6 "level1.c" 2
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
# 7 "level1.c" 2


PLAYER player;
ENEMY enemies[7];
FIREBALL fire[15];
AIRBLASTS air[15];
int fireDelay;

    void initLevel1(){
        initPlayer();
        initEnemies();
        initFireball();
        fireDelay = 15;
    }

    void drawHealth(){
        int healthBar = player.health / 10;
        for(int i = 0; i < 10; i++){
            if(i < healthBar){
                ((SB*) 0x06000000)[13].tilemap[65+i] = 0;
            }else{
                ((SB*) 0x06000000)[13].tilemap[65+i] = 648;
            }
        }
    }

    void initPlayer(){
        player.x = 24;
        player.isLost = 0;
        player.y = 12;
        player.xVel = 1;
        player.yVel = 3;
        player.width = 64;
        player.health = 100;
        player.height = 32;
        player.timeUntilNextFrame = 0;
        player.direction = 1;
        player.numFrames = 6;
        player.oamIndex = 0;
    }

    void initEnemies(){
        for(int i = 0; i< 7; i++){
            if(i % 2 == 0){
                enemies[i].x = 220;
            }else{
                enemies[i].x = 190;
            }
            enemies[i].health = 40;
            enemies[i].y = i*30;
            enemies[i].yVel = 1;
            enemies[i].width = 16;
            enemies[i].height = 32;
            enemies[i].active = 1;
            enemies[i].oamIndex = 1 + i;
        }
    }

    void initFireball(){
        for(int i = 0; i < 15; i++){
            air[i].xVel = 1;
            air[i].width = 16;
            air[i].height = 32;
            air[i].active = 0;
            air[i].oamIndex = 8 + i;
            fire[i].xVel = 1;
            fire[i].width = 16;
            fire[i].height = 32;
            fire[i].active = 0;
            fire[i].oamIndex = 38 + i;
            fire[i].currentFrame = 0;
            fire[i].numFrames = 4;
            fire[i].timeUntilNextFrame = 10;
        }
    }

    void updatePlayer(){
        player.isAnimating = 0;
        if((~(buttons) & ((1 << 6))) ){
            player.isAnimating = 1;
            if(player.y - player.yVel < 0){
                player.y = 0;
            }else{
                player.y -= player.yVel;
            }
        }

        if((~(buttons) & ((1 << 7))) ) {
            player.isAnimating = 1;
            if(player.y + player.yVel > 160){
                player.y = 0;
            }else{
                player.y += player.yVel;
            }
        }

        if((~(buttons) & ((1 << 5)))){
            player.isAnimating = 1;
            player.direction = 0;
            if(player.x - player.xVel < 0){
                player.x = 0;
            }else{
                player.x -= player.xVel;
            }
        }

        if((~(buttons) & ((1 << 4))) ){
            player.isAnimating = 1;
            player.x += player.xVel;
            player.direction = 1;
        }

        if((~(buttons) & ((1 << 9))) && (~(buttons) & ((1 << 8)))){
            if(player.health < 75){
                player.health = (player.health + 25);
            }
        }

       if((~(buttons) & ((1 << 0)))){
            if(player.timeUntilNextFire < 1){
                player.timeUntilNextFire = 15;
                blast(player.x + player.width, player.y + (player.height/2));
            }else{
                player.timeUntilNextFire--;
            }
        }

        if(player.isAnimating){
            if(player.timeUntilNextFrame < 1){
                player.timeUntilNextFrame = 10;
                player.currentFrame = (player.currentFrame + 1) % player.numFrames;
            }else{
                player.timeUntilNextFrame--;
            }
        }else{
            player.currentFrame = 0;
            player.timeUntilNextFrame = 10;
        }


        shadowOAM[player.oamIndex].attr0 = ((player.y) & 0xFF) | (1 << 14) | (0 << 8);
        shadowOAM[player.oamIndex].attr1 = ((player.x) & 0x1FF) | (3 << 14);
        if(player.direction){
            shadowOAM[player.oamIndex].attr1 |= (1 << 12);
        }
        shadowOAM[player.oamIndex].attr2 = (((player.currentFrame*4) * (32) + (0)) & 0x3FF) | (((0) & 0xF) << 12);
    }

    void updateEnemies(){
        for(int i = 0; i< 7; i++){
            if(enemies[i].active){
                enemies[i].y -= enemies[i].yVel;
                if(enemies[i].y < 0){
                    enemies[i].y = 240;
                }


                if(player.y <= enemies[i].y + 32 && player.y >= enemies[i].y){
                    if(enemies[i].timeUntilNextFire < 1){
                        enemies[i].timeUntilNextFire = 40;
                        aiBlast(enemies[i].x + enemies[i].width, enemies[i].y + (enemies[i].height/2));

                    }else{
                        enemies[i].timeUntilNextFire--;
                    }
                }

                if(collision(enemies[i].x,enemies[i].y,16,32, player.x,player.y,64,32)){
                    player.isLost = 1;
                }


                shadowOAM[enemies[i].oamIndex].attr0 = ((enemies[i].y) & 0xFF) | (2 << 14) | (0 << 8);
                shadowOAM[enemies[i].oamIndex].attr1 = ((enemies[i].x) & 0x1FF) | (2 << 14);
                shadowOAM[enemies[i].oamIndex].attr2 = (((0) * (32) + (8)) & 0x3FF) | (((3) & 0xF) << 12);
            }

        }

    }

    void updatePlayerProjectiles(){
        for(int i = 0; i < 15; i++){
            if(air[i].active){
                air[i].x += air[i].xVel;
                if(air[i].x > 240){
                    air[i].active = 0;
                }
                shadowOAM[air[i].oamIndex].attr0 = ((air[i].y) & 0xFF) | (1 << 14) | (0 << 8);
                shadowOAM[air[i].oamIndex].attr1 = ((air[i].x) & 0x1FF) | (2 << 14);
                shadowOAM[air[i].oamIndex].attr2 = (((0) * (32) + (14)) & 0x3FF) | (((4) & 0xF) << 12);

                for(int j = 0; j < 7; j++){
                    if(enemies[j].active) {
                 if(collision(air[i].x, air[i].y, 32,16,enemies[j].x,enemies[j].y,16,32)){
                            air[i].active = 0;
                            shadowOAM[air[i].oamIndex].attr0=(2 << 8);
                            enemies[j].health-=5;
                            if(enemies[j].health <= 0){
                                enemies[j].active = 0;
                                shadowOAM[enemies[j].oamIndex].attr0=(2 << 8);
                            }

                        }
                    }
                }
            }
        }
    }

    void updateEnemyProjectiles(){
        for(int i = 0; i < 15; i++){
            if(fire[i].active){

                if(fire[i].timeUntilNextFrame < 1){
                    fire[i].timeUntilNextFrame = 10;
                    fire[i].currentFrame = (fire[i].currentFrame + 1) % fire[i].numFrames;
                }else{
                    fire[i].timeUntilNextFrame--;
                }

                fire[i].x -= fire[i].xVel;
                shadowOAM[fire[i].oamIndex].attr1 = ((fire[i].x - 32) & 0x1FF) | (2 << 14);
                shadowOAM[fire[i].oamIndex].attr2 = ((((2 * fire[i].currentFrame)) * (32) + (10)) & 0x3FF) | (((1) & 0xF) << 12);
                shadowOAM[fire[i].oamIndex].attr0 = ((fire[i].y) & 0xFF) | (1 << 14) | (0 << 8);
                if(fire[i].x < player.x - 16 || fire[i].x < 0){
                    fire[i].active = 0;
                    shadowOAM[fire[i].oamIndex].attr0 = (2 << 8);
                }

                if(collision(fire[i].x, fire[i].y, 32,16, player.x,player.y,64,32)){
                    playSoundEffect(appa);
                    if(player.health > 0) {
                        player.health-=3;

                    }else {
                        player.isLost = 1;
                    }

                    fire[i].active = 0;
                    shadowOAM[fire[i].oamIndex].attr0 = (2 << 8);
                }
            }

        }

    }

    void updatelevel1(){
        (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4)))| (1 << (8 + (1 % 4)))|(1 << 12);
        mgba_printf("Update Level 1 run: %d test %d test\n", 1,1);
        updatePlayer();
        updateEnemies();
        updatePlayerProjectiles();
        updateEnemyProjectiles();
        drawHealth();
    }

    void blast(int x,int y){
        for(int i = 0; i < 15; i++){
            if(!air[i].active){
                air[i].active = 1;
                air[i].x = x;
                air[i].y = y;
                break;
            }
        }
    }

    void aiBlast(int x,int y){
        for(int i = 0; i < 15; i++){
            if(!fire[i].active){
                fire[i].active = 1;
                fire[i].x = x;
                fire[i].y = y;
                break;
            }
        }
    }



    int hasLostL1(){
        return player.isLost;
    }


    int hasWonL1(){
        if(player.x + 16 > 240){
            return 1;
        }else if(1) {
            for(int i = 0; i< 7; i++){
                if(enemies[i].active){
                    return 0;
                }
            }
        }
        return 1;
    }
