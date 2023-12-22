# 1 "level2.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "level2.c"
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
# 2 "level2.c" 2
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
# 3 "level2.c" 2
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
# 4 "level2.c" 2
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
# 5 "level2.c" 2
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
# 6 "level2.c" 2

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
# 8 "level2.c" 2
# 1 "img/colMapL2.h" 1
# 20 "img/colMapL2.h"
extern const unsigned char colMapL2Bitmap[262144];
# 9 "level2.c" 2



    enum {DOWNL2, LEFTL2, RIGHTL2, UPL2} directionL2;
    int hOffL2;
    int vOffL2;
    int currentSB;

    PLAYERL2 playerL2;

    int index1[51] = {
        1445 , 1525 , 1614 , 1626 , 1638 , 1665 , 1839 , 1927 , 1985 , 2010,
        2066 , 2154 , 2167 , 2180 , 2205 , 2267 , 2323 , 2411 , 2424 , 2437 ,
        2462 , 2612 , 2701 , 2713 , 2725 , 2752 , 2902 , 2926 , 3014 , 3072 ,
        3097 , 3153 , 3241 , 3254 , 3267 , 3292 , 3381 , 3470 , 3482 , 3494 ,
        3521 , 3671 , 3695 , 3783 , 3841 , 3866 , 3922 , 4010 , 4023 , 4036 ,
        4061};
    int index2[51] = {
        1446 , 1526 , 1615 , 1627 , 1639 , 1666 , 1840 , 1928 , 1986 , 2011 ,
        2067 , 2155 , 2168 , 2181 , 2206 , 2268 , 2324 , 2412 , 2425 , 2438 ,
        2463 , 2613 , 2702 , 2714 , 2726 , 2753 , 2903 , 2927 , 3015 , 3073 ,
        3098 , 3154 , 3242 , 3255 , 3268 , 3293 , 3382 , 3471 , 3483 , 3495 ,
        3522 , 3672 , 3696 , 3784 , 3842 , 3867 , 3923 , 4011 , 4024 , 4037 , 4062};

    int index3[51] ={
        1477 , 1557 , 1646 , 1658 , 1670 , 1697 , 1871 , 1959 , 2017 ,
        2042 , 2098 , 2186 , 2199 , 2212 , 2237 , 2299 , 2355 , 2443 ,
        2456 , 2469 , 2494 , 2644 , 2733 , 2745 , 2757 , 2784 , 2934 ,
        2958 , 3046 , 3104 , 3129 , 3185 , 3273 , 3286 , 3299 , 3324 ,
        3413 , 3502 , 3514 , 3526 , 3553 , 3703 , 3727 , 3815 , 3873 ,
        3898 , 3954 , 4042 , 4055 , 4068 , 4093};
    int index4[51] = {
        1478 , 1558 , 1647 , 1659 , 1671 , 1698 , 1872 , 1960 , 2018 ,
        2043 , 2099 , 2187 , 2200 , 2213 , 2238 , 2300 , 2356 , 2444 ,
        2457 , 2470 , 2495 , 2645 , 2734 , 2746 , 2758 , 2785 , 2935 ,
        2959 , 3047 , 3105 , 3130 , 3186 , 3274 , 3287 , 3300 , 3325 ,
        3414 , 3503 , 3515 , 3527 , 3554 , 3704 , 3728 , 3816 , 3874 ,
        3899 , 3955 , 4043 , 4056 , 4069 , 4094};



    void initLevel2(){
        initPlayerL2();
    }

    void initPlayerL2(){
        playerL2.x = 24;
        playerL2.y = 12;
        playerL2.xVel = 1;
        playerL2.yVel = 3;
        playerL2.width = 16;
        playerL2.lives = 3;
        playerL2.height = 16;
        playerL2.timeUntilNextFire = 45;
        playerL2.timeUntilNextFrame = 0;
        playerL2.direction = 0;
        playerL2.numFrames = 3;
        playerL2.oamIndex = 0;
    }


    void updatePlayerL2(){
        playerL2.isAnimating = 0;
        int leftX = playerL2.x;
        int rightX = playerL2.x + playerL2.width - 1;
        int topY = playerL2.y;
        int bottomY = playerL2.y + playerL2.height - 1;



        if((~(buttons) & ((1 << 6)))){
            playerL2.isAnimating = 1;
            if(colorAt(leftX, topY - playerL2.yVel) && colorAt(rightX, topY - playerL2.yVel)){
                if(playerL2.y - playerL2.yVel < 0){
                    playerL2.y = 0;
                }else{
                    playerL2.y -= playerL2.yVel;
                }
            }
            playerL2.direction = UPL2;
        }

        if((~(buttons) & ((1 << 7)))){
            playerL2.isAnimating = 1;
            if(colorAt(leftX, bottomY + playerL2.yVel) && colorAt(rightX, bottomY + playerL2.yVel)) {
                playerL2.y += playerL2.yVel;
            }else if((playerL2.y + 1) > 512){
                playerL2.y += playerL2.yVel;
            }
            playerL2.direction = DOWNL2;
        }

        if((~(buttons) & ((1 << 5)))){
            playerL2.isAnimating = 1;
            if(colorAt(leftX - playerL2.xVel, topY) && colorAt(leftX - playerL2.xVel, bottomY)){
                if(playerL2.x - playerL2.xVel < 0){
                    playerL2.x = 0;
                }else{
                    playerL2.x -= playerL2.xVel;
                }
            }
            playerL2.direction = LEFTL2;
        }

        if((~(buttons) & ((1 << 4)))){
            playerL2.isAnimating = 1;
            if(colorAt(rightX + playerL2.xVel, topY) && colorAt(rightX + playerL2.xVel, bottomY)){
                if(playerL2.x + 15 + playerL2.xVel > 256){
                    playerL2.x = 256;
                }else{
                    playerL2.x += playerL2.xVel;
                }
            }
            playerL2.direction = RIGHTL2;
        }

        if((~(buttons) & ((1 << 0)))){
            if(playerL2.timeUntilNextFire < 1){
                playerL2.timeUntilNextFire = 45;
            }else if(playerL2.timeUntilNextFire < 15){
                playerL2.timeUntilNextFire--;
            }else if(playerL2.timeUntilNextFire < 30){
                ((unsigned short*) 0x05000000)[3] = 0x2efc;
                ((unsigned short*) 0x05000000)[11] = 0x2efc;
                playerL2.timeUntilNextFire--;
            }else{
                ((unsigned short*) 0x05000000)[3] = 0x292F;
                ((unsigned short*) 0x05000000)[11] = 0x6B5A;
                playerL2.timeUntilNextFire--;
            }
        }else{
            ((unsigned short*) 0x05000000)[3] = 0x2efc;
            ((unsigned short*) 0x05000000)[11] = 0x2efc;
        }

        if(playerL2.isAnimating){
            if(playerL2.timeUntilNextFrame < 1){
                playerL2.timeUntilNextFrame = 10;
                playerL2.currentFrame = (playerL2.currentFrame + 1) % playerL2.numFrames;
            }else{
                playerL2.timeUntilNextFrame--;
            }
        }else{
            playerL2.currentFrame = 0;
            playerL2.timeUntilNextFrame = 10;
        }
        shadowOAM[playerL2.oamIndex].attr0 = (((playerL2.y - vOffL2)) & 0xFF) | (0 << 14) | (0 << 8);
        shadowOAM[playerL2.oamIndex].attr1 = ((playerL2.x) & 0x1FF) | (1 << 14);
        shadowOAM[playerL2.oamIndex].attr2 = (((playerL2.direction*2) * (32) + ((playerL2.currentFrame*2) + 12)) & 0x3FF) | (((0) & 0xF) << 12);
    }

    void updatelevel2(){
        (*(volatile unsigned short*) 0x04000000) = ((0) & 7) | (1 << (8 + (0 % 4)))| (1 << 12);
        updatePlayerL2();
        showLives();
        if((~(buttons) & ((1 << 9))) && (~(buttons) & ((1 << 8)))){
            showTraps();
        }
        offSetMap();
    }

    void offSetMap(){
        hOffL2 = (playerL2.x + 15) - 120;
        vOffL2 = (playerL2.y + 15) - 80;
        if (hOffL2 < 0) {
            hOffL2 = 0;
        }
        if (hOffL2 + 240 > 256) {
            hOffL2 = 256 - 240;
        }
        if (vOffL2 < 0){
            vOffL2 = 0;
        }
        if (vOffL2 + 16 > 1024 - 160){
            vOffL2 = 1024 - 160;
        }

        (*(volatile unsigned short*) 0x04000008) = ((0) << 2) | ((12 + (vOffL2 / 256)) << 8) | (0 << 7) | (2 << 14);
        (*(volatile unsigned short*) 0x04000010) = hOffL2;
        (*(volatile unsigned short*) 0x04000012) = vOffL2 % 256;


    }

    void showTraps(){
        for(int i = 0; i < 51; i++){
            ((SB*) 0x06000000)[12].tilemap[index1[i]] = (482);
            ((SB*) 0x06000000)[12].tilemap[index2[i]] = (483);
            ((SB*) 0x06000000)[12].tilemap[index3[i]] = (509);
            ((SB*) 0x06000000)[12].tilemap[index4[i]] = (510);
        }
    }

    int hasLostL2(){
        int corner = ((playerL2.x + 7)/ 8) + (((playerL2.y + 7) / 8) * 32);
        int trap = 0;
            for (int j = 0; j < 51; j++){
               if ((corner) == (index1[j])){
                    trap = 1;
               }
               if (corner == index2[j]){
                    trap = 1;
               }
               if (corner == index3[j]){
                    trap = 1;
               }
               if (corner == index4[j]) {
                    trap = 1;
               }
               if (trap){
                    trap = 0;
                    playerL2.lives--;
                    playerL2.x = 24;
                    playerL2.y = 12;
                    ((SB*) 0x06000000)[12].tilemap[index1[j]] = (482);
                    ((SB*) 0x06000000)[12].tilemap[index2[j]] = (483);
                    ((SB*) 0x06000000)[12].tilemap[index3[j]] = (509);
                    ((SB*) 0x06000000)[12].tilemap[index4[j]] = (510);
                    break;
                }
            }

        if(playerL2.lives < 0) {
            return 1;
        }else {
            return 0;
        }
    }

    int hasWonL2(){
        if(playerL2.y > 1024){
            return 1;
        }else{
            return 0;
        }

    }

    void showLives(){
        for(int i = 1; i < 4; i++){
            if(playerL2.lives+1 > (i)){
                shadowOAM[i].attr0 = ((0) & 0xFF) | (0 << 14) | (0 << 8);
                shadowOAM[i].attr1 = ((176 + (16* i)) & 0x1FF) | (1 << 14);
                shadowOAM[i].attr2 = (((0) * (32) + (12)) & 0x3FF) | (((0) & 0xF) << 12);
            }else{
                shadowOAM[i].attr0 = (2 << 8);
            }
        }
    }
inline unsigned char colorAt(int x, int y) {
    return colMapL2Bitmap[(x + (y*256))];
}
