#include "game.h"
#include "level1.h"
#include "level2.h"
#include "play.h"
#include "digitalSound.h"
#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"
#include "img/backgrounds.h"
#include "img/spritesheet.h"


    void (*setLevels[2]) ();
    void (*initLevels[2]) ();
    void (*maintainLevels[2]) ();
    int (*hasWon[2]) ();
    int (*hasLost[2]) ();

    void initFPtrs() {
        setLevels[0] = setLevel1;
        setLevels[1] = setLevel2;
        initLevels[0] = initLevel1;
        initLevels[1] = initLevel2;
        maintainLevels[0] = updatelevel1;
        maintainLevels[1] = updatelevel2;
        hasLost[0] = hasLostL1;
        hasLost[1] = hasLostL2;
        hasWon[0] =  hasWonL1;
        hasWon[1] =  hasWonL2;
    }

    void setLevel(int currLevel, int init) {
        if(init){
            initLevels[currLevel]();
        }
        setLevels[currLevel]();
    }

    void updateLevels(int currLevel) {
        if(currLevel < 1){
            maintainLevels[currLevel]();
        }else {
            maintainLevels[1]();
        }
    }
    
    int lossCheck(int currLevel){
        return hasLost[currLevel]();
    }
    
    int winCheck(int currLevel){
        return hasWon[currLevel]();
    }

    void setLevel1(){
        REG_BG1HOFF = 0;
        REG_BG2HOFF = 0;
        REG_DISPCTL = MODE(0) | BG_ENABLE(0)| BG_ENABLE(1)|SPRITE_ENABLE;
        REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(12) | BG_4BPP | BG_SIZE_WIDE | 2;
        REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(13) | BG_4BPP | BG_SIZE_SMALL | 1;
        REG_BG2CNT =  BG_CHARBLOCK(0) | BG_SCREENBLOCK(17) | BG_4BPP | BG_SIZE_SMALL | 1;
        DMANow(3, level2tilesTiles, &CHARBLOCK[0], level2tilesTilesLen/2);
        DMANow(3, level1mapMap, &SCREENBLOCK[12], desertmapMapLen/2);
        DMANow(3, appaHpMap, &SCREENBLOCK[13], appaHpMapLen/2);
        DMANow(3, objectiveL1Map, &SCREENBLOCK[17], objectiveL1MapLen/2);
        DMANow(3, level2tilesPal, BG_PALETTE, 256);
        DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);
        DMANow(3, spritesheetPal, SPRITE_PALETTE, spritesheetPalLen/2);
        DMANow(3, shadowOAM, OAM, 512);
    }

    void setLevel2(){
        REG_BG2HOFF = 0;
        REG_DISPCTL = MODE(0) | BG_ENABLE(0)| SPRITE_ENABLE;
        REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(12) | BG_4BPP | BG_SIZE_TALL;
        REG_BG2CNT =  BG_CHARBLOCK(0) | BG_SCREENBLOCK(17) | BG_4BPP | BG_SIZE_SMALL | 1;
        DMANow(3, level2tilesTiles, &CHARBLOCK[0], level2tilesTilesLen/2);
        DMANow(3, desertmapMap, &SCREENBLOCK[12], desertmapMapLen/2);
        DMANow(3, objectiveL2Map, &SCREENBLOCK[17], objectiveL2MapLen/2);
        DMANow(3, level2tilesPal, BG_PALETTE, 256);
        DMANow(3, level2spritesheetTiles, &CHARBLOCK[4], level2spritesheetTilesLen/2);
        DMANow(3, level2spritesheetPal, SPRITE_PALETTE, level2spritesheetPalLen/2);
        DMANow(3, shadowOAM, OAM, 512);
    }
