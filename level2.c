#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"
#include "level2.h"
#include "print.h"
#include "level1.h"
#include "img/colMapL2.h"
    #define MAPHEIGHT 512 // Height of wide BG
    #define MAPWIDTH  256// Width of wide BG
    #define MAPHEIGHTXL 1024
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



        if(BUTTON_HELD(BUTTON_UP)){
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
        
        if(BUTTON_HELD(BUTTON_DOWN)){ 
            playerL2.isAnimating = 1;
            if(colorAt(leftX, bottomY + playerL2.yVel) && colorAt(rightX, bottomY + playerL2.yVel)) {  
                playerL2.y += playerL2.yVel;
            }else if((playerL2.y + 1) > 512){
                playerL2.y += playerL2.yVel;
            }
            playerL2.direction = DOWNL2;
        }

        if(BUTTON_HELD(BUTTON_LEFT)){
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

        if(BUTTON_HELD(BUTTON_RIGHT)){
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

        if(BUTTON_HELD(BUTTON_A)){
            if(playerL2.timeUntilNextFire < 1){
                playerL2.timeUntilNextFire = 45;
            }else if(playerL2.timeUntilNextFire < 15){
                playerL2.timeUntilNextFire--;
            }else if(playerL2.timeUntilNextFire < 30){
                BG_PALETTE[3] = 0x2efc;
                BG_PALETTE[11] = 0x2efc;
                playerL2.timeUntilNextFire--;
            }else{
                BG_PALETTE[3] = 0x292F;
                BG_PALETTE[11] = 0x6B5A;
                playerL2.timeUntilNextFire--;
            }
        }else{
            BG_PALETTE[3] = 0x2efc;
            BG_PALETTE[11] = 0x2efc;
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
        shadowOAM[playerL2.oamIndex].attr0 = ATTR0_Y((playerL2.y - vOffL2)) | ATTR0_SQUARE | ATTR0_REGULAR;
        shadowOAM[playerL2.oamIndex].attr1 = ATTR1_X(playerL2.x) | ATTR1_SMALL;
        shadowOAM[playerL2.oamIndex].attr2 = ATTR2_TILEID((playerL2.currentFrame*2) + 12, playerL2.direction*2) | ATTR2_PALROW(0);
    }

    void updatelevel2(){
        REG_DISPCTL = MODE(0) | BG_ENABLE(0)| SPRITE_ENABLE;
        updatePlayerL2();
        showLives();
        if(BUTTON_HELD(BUTTON_LSHOULDER) && BUTTON_HELD(BUTTON_RSHOULDER)){
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
        if (hOffL2 + 240 > MAPWIDTH) {
            hOffL2 = MAPWIDTH - 240;
        }
        if (vOffL2 < 0){ 
            vOffL2 = 0;
        }
        if (vOffL2 + 16 > MAPHEIGHTXL - 160){
            vOffL2 = MAPHEIGHTXL - 160;
        }

        REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(12 + (vOffL2 / 256)) | BG_4BPP | BG_SIZE_TALL;
        REG_BG0HOFF = hOffL2;
        REG_BG0VOFF = vOffL2 % 256;
       
     
    }
 
    void showTraps(){
        for(int i = 0; i < 51; i++){
            SCREENBLOCK[12].tilemap[index1[i]] = (482);
            SCREENBLOCK[12].tilemap[index2[i]] = (483);
            SCREENBLOCK[12].tilemap[index3[i]] = (509);
            SCREENBLOCK[12].tilemap[index4[i]] = (510);
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
                    SCREENBLOCK[12].tilemap[index1[j]] = (482);
                    SCREENBLOCK[12].tilemap[index2[j]] = (483);
                    SCREENBLOCK[12].tilemap[index3[j]] = (509);
                    SCREENBLOCK[12].tilemap[index4[j]] = (510);
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
                shadowOAM[i].attr0 = ATTR0_Y(0) | ATTR0_SQUARE | ATTR0_REGULAR;
                shadowOAM[i].attr1 = ATTR1_X(176 + (16* i)) | ATTR1_SMALL;
                shadowOAM[i].attr2 = ATTR2_TILEID(12, 0) | ATTR2_PALROW(0);
            }else{
                shadowOAM[i].attr0 = ATTR0_HIDE;
            }
        }
    }
inline unsigned char colorAt(int x, int y) { 
    return colMapL2Bitmap[(x + (y*256))]; 
}