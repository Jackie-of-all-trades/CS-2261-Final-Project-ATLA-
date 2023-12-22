#include "main.h"
#include "level1.h"
#include "level2.h"
#include "play.h"
#include "digitalSound.h"
#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"
#include "game.h"
#include "img/backgrounds.h"
#include "img/spritesheet.h"
// Included a read.me file
// Felt it would get to disorganized if I tried putting that much in here.

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
        buttons = REG_BUTTONS;
        manageGame();
        waitForVBlank();
        draw();
    }   
}

    void setup(){
        mgba_open();
        REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1) | BG_ENABLE(2) |SPRITE_ENABLE;
        REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(26) | BG_4BPP;
        REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_WIDE;
        REG_BG2CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(30) | BG_4BPP | BG_SIZE_WIDE;
        DMANow(3, tilesetTiles, &CHARBLOCK[0], tilesetTilesLen/2);
        DMANow(3, titlesMap, &SCREENBLOCK[26], titlesMapLen/2);
        DMANow(3, mountainsMap, &SCREENBLOCK[28], mountainsMapLen/2);
        DMANow(3, skyMap, &SCREENBLOCK[30], skyMapLen/2);
        DMANow(3, tilesetPal, BG_PALETTE, 256);
        DMANow(3, menuspritesTiles, &CHARBLOCK[4], menuspritesTilesLen/2);
        DMANow(3, menuspritesPal, SPRITE_PALETTE, menuspritesPalLen/2);
        hideSprites();
        buttons = REG_BUTTONS;
        state = START;
        wasPaused = 0;
        playTrack(start);
        state = START;
        
    }

    void initMap(){
        level = 0;
        shadowOAM[0].attr0 = ATTR0_Y(3) | ATTR0_SQUARE | ATTR0_REGULAR |ATTR0_4BPP;
        shadowOAM[0].attr1 = ATTR1_X(92) | ATTR1_SMALL;
        shadowOAM[1].attr0 = ATTR0_Y(40) | ATTR0_SQUARE | ATTR0_REGULAR |ATTR0_4BPP;
        shadowOAM[1].attr1 = ATTR1_X(138) | ATTR1_SMALL;
    
    }

    void updateMap(){
        shadowOAM[0].attr0 = ATTR0_Y(3) | ATTR0_SQUARE | ATTR0_REGULAR |ATTR0_4BPP;
        shadowOAM[0].attr1 = ATTR1_X(92) | ATTR1_SMALL;
        shadowOAM[1].attr0 = ATTR0_Y(40) | ATTR0_SQUARE | ATTR0_REGULAR |ATTR0_4BPP;
        shadowOAM[1].attr1 = ATTR1_X(138) | ATTR1_SMALL;
        for(int i=0; i < 2; i++){
            if(i < progress){
                shadowOAM[i].attr2 = ATTR2_TILEID(0,2);
            }else if(i == progress) {
                shadowOAM[i].attr2 = ATTR2_TILEID(0,4);
            }else {
                shadowOAM[i].attr2 = ATTR2_TILEID(0,6);
            }

            if(i == level){
                shadowOAM[i].attr2 |= ATTR2_PALROW(1);
            }else if(i < progress){
                shadowOAM[i].attr2 |= ATTR2_PALROW(2);
            }else if(i == progress) {
                shadowOAM[i].attr2 |= ATTR2_PALROW(3);
            }else {
                shadowOAM[i].attr2 |= ATTR2_PALROW(0);
            }
        }
    }

    //StateManagement
        void manageGame(){
            switch(state){
                case START:
                    if(BUTTON_PRESSED(BUTTON_LEFT)){
                        item=0;
                        playSoundEffect(menu);
                    }

                    if(BUTTON_PRESSED(BUTTON_RIGHT)){
                        item = 1;
                        playSoundEffect(menu);
                    }

                    shadowOAM[0].attr0 = ATTR0_Y(100) | ATTR0_WIDE | ATTR0_REGULAR;
                    shadowOAM[0].attr1 = ATTR1_X(120) | ATTR1_LARGE;
                    shadowOAM[1].attr0 = ATTR0_Y(100) | ATTR0_WIDE | ATTR0_REGULAR;
                    shadowOAM[1].attr1 = ATTR1_X(50) | ATTR1_LARGE;    
                    if(item){
                        shadowOAM[0].attr2 = ATTR2_TILEID(0,8) | ATTR2_PALROW(1);
                        shadowOAM[1].attr2 = ATTR2_TILEID(0,0) | ATTR2_PALROW(0);
                    }else{
                        shadowOAM[0].attr2 = ATTR2_TILEID(0,8) | ATTR2_PALROW(0);
                        shadowOAM[1].attr2 = ATTR2_TILEID(0,0) | ATTR2_PALROW(1);
                    
                    }
                    
                    if(BUTTON_PRESSED(BUTTON_START)){
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

                    REG_BG1HOFF = hOff;                                                    
                    REG_BG2HOFF = hOff2;
                    
                    break;

                case INSTRUCTS:
                
                    if(BUTTON_PRESSED(BUTTON_START)){
                        if(wasPaused){
                            setPause();  
                        }else{
                            setStart();
                        }
                    }

                    break;
                case WORLDMAP: 
                    if(BUTTON_PRESSED(BUTTON_UP) || BUTTON_PRESSED(BUTTON_LEFT)){
                        level-=1;
                        level%=2;
                        playSoundEffect(menu);
                    }else if(BUTTON_PRESSED(BUTTON_DOWN)|| BUTTON_PRESSED(BUTTON_RIGHT)){
                        level+=1;
                        level%=2;
                        playSoundEffect(menu);
                    }
                    
                    updateMap();
                    
                    if(BUTTON_PRESSED(BUTTON_START) && level <= progress){
                        stopSounds();
                        setGame();
                    }
                    break;
                case GAME:
                    if(BUTTON_HELD(BUTTON_SELECT)){
                        REG_DISPCTL = MODE(0) | BG_ENABLE(2);
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
                        if(BUTTON_PRESSED(BUTTON_START)){
                            stopSounds();
                            waitForVBlank();
                            // DMANow(3, cleanTiles, &CHARBLOCK[0], cleanTilesLen/2);
                            // DMANow(3, cleanTiles, &CHARBLOCK[1], cleanTilesLen/2);
                            setPause();
                        }
                        
                        draw();
                    }
                    break;
                case LOSE:
                    REG_DISPCTL = MODE(0) | BG_ENABLE(0);
                    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(19) | BG_8BPP | BG_SIZE_SMALL; 
                    hideSprites();   
                    if(BUTTON_PRESSED(BUTTON_START)){
                        stopSounds();
                        setStart();
                    }

                    if((ticks % 10) == 0){
                        if(((ticks/10) % 2) == 0){
                            BG_PALETTE[22] = BG_PALETTE[21];
                            BG_PALETTE[21] = BG_PALETTE[tearOffset+16];
                            BG_PALETTE[tearOffset + 16] = BG_PALETTE[22];
                            tearOffset = (tearOffset + 1) % 3;
                        }else{
                            BG_PALETTE[22] = BG_PALETTE[tearOffset+16];
                            BG_PALETTE[tearOffset+16] = BG_PALETTE[21];
                            BG_PALETTE[21] = BG_PALETTE[22];
                        }
                    }
                    break;
                case PAUSE:
                    wasPaused = 1; 
                    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(9) | BG_4BPP | BG_SIZE_SMALL;    
                    if(BUTTON_PRESSED(BUTTON_UP)){
                        item-=1;
                        item%=4;
                        playSoundEffect(menu);
                    }else if(BUTTON_PRESSED(BUTTON_DOWN)){
                        item+=1;
                        item%=4;
                        playSoundEffect(menu);
                    }
                    
                    for(int i = 0; i < 4; i++){
                        if(i == item){
                            shadowOAM[i].attr2 = ATTR2_TILEID(0,i*4) | ATTR2_PALROW(1);
                        }else{
                            shadowOAM[i].attr2 = ATTR2_TILEID(0,i*4) | ATTR2_PALROW(0);
                        }
                        shadowOAM[i].attr0 = ATTR0_Y(4 + (i*40)) | ATTR0_WIDE | ATTR0_REGULAR;
                        shadowOAM[i].attr1 = ATTR1_X(170) | ATTR1_LARGE;
                    }
                    if(BUTTON_PRESSED(BUTTON_START)){
                        stopSounds();
                        option[item]();
                    }
                    break;
                case WIN:
                    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(19) | BG_4BPP |BG_SIZE_SMALL;
                    REG_BG0HOFF = 0;
                    REG_BG0VOFF = 0;   
                    hideSprites();
                    if(BUTTON_PRESSED(BUTTON_START)){
                        stopSounds();
                        setStart();
                    }
                    break;
                
            }
        }
    //StateManagement end


    


    //Set State methods
        void setStart(){
            //code to set Start Background
            wasPaused = 0;
            mgba_printf("Time: %d minutes %d seconds\n", minute, second);
            hideSprites();
            waitForVBlank();
            REG_DISPCTL = MODE(0) | BG_ENABLE(0) |BG_ENABLE(1) | BG_ENABLE(2)| SPRITE_ENABLE;
            REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(26) | BG_4BPP;
            REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_WIDE;
            REG_BG2CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(30) | BG_4BPP | BG_SIZE_WIDE;
            DMANow(3, tilesetTiles, &CHARBLOCK[0], tilesetTilesLen/2);
            DMANow(3, titlesMap, &SCREENBLOCK[26], titlesMapLen/2);
            DMANow(3, mountainsMap, &SCREENBLOCK[28], mountainsMapLen/2);
            DMANow(3, skyMap, &SCREENBLOCK[30], skyMapLen/2);
            DMANow(3, tilesetPal, BG_PALETTE, 256);
            DMANow(3, menuspritesTiles, &CHARBLOCK[4], menuspritesTilesLen/2);
            DMANow(3, menuspritesPal, SPRITE_PALETTE, menuspritesPalLen/2);
            playTrack(start);
            state = START;
        }
        void setInstructs(){
            // Code to set win background
            waitForVBlank();
            REG_BG2HOFF = 0;
            REG_DISPCTL = MODE(0) | BG_ENABLE(0);
            REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(19) | BG_4BPP | BG_SIZE_SMALL;
            DMANow(3, InstructsTiles, &CHARBLOCK[0], InstructsTilesLen/2);
            DMANow(3, InstructsMap, &SCREENBLOCK[19], InstructsMapLen/2);
            DMANow(3, InstructsPal, BG_PALETTE, 256);
            state = INSTRUCTS;
        }

        void setWorldMap(){
            //Code to set level1 background
            waitForVBlank();
            mgba_printf("Time: %d minutes %d seconds\n", minute, second);
            REG_BG2HOFF = 0;
            REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
            REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(8) | BG_4BPP | BG_SIZE_SMALL;
            REG_BG0HOFF = 0;
            REG_BG0VOFF = 0;    
            DMANow(3, worldmapTiles, &CHARBLOCK[0], worldmapTilesLen/2);
            DMANow(3, worldmapMap, &SCREENBLOCK[8], worldmapMapLen/2);
            DMANow(3, worldmapPal, BG_PALETTE, 256);
            DMANow(3, mapspritesheetTiles, &CHARBLOCK[4], mapspritesheetTilesLen/2);
            DMANow(3, mapspritesheetPal, SPRITE_PALETTE, mapspritesheetPalLen/2);    
            hideSprites();
            DMANow(3, shadowOAM, OAM, 512);
            initMap();
            state = WORLDMAP;
        }

        void setPause(){
            // Code to set pause background            
            DMANow(3, pausePal, BG_PALETTE, 256);
            DMANow(3, pauseTiles, &CHARBLOCK[0], pauseTilesLen/2);
            DMANow(3, pauseMap, &SCREENBLOCK[9], pauseMapLen/2);
            REG_DISPCTL = MODE(0) | BG_ENABLE(0)|SPRITE_ENABLE;
            REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(9) | BG_4BPP | BG_SIZE_SMALL;
            DMANow(3, menuspritesTiles, &CHARBLOCK[4], menuspritesTilesLen/2);
            DMANow(3, menuspritesPal, SPRITE_PALETTE, menuspritesPalLen/2);
            REG_BG0HOFF = 0;
            REG_BG0VOFF = 0;             
            hideSprites(); 
            
            state = PAUSE; 
            playTrack(tsungi);           
        }

        void setWin(){
            // waitForVBlank();
            DMANow(3, winTiles, &CHARBLOCK[0], winTilesLen/2);
            DMANow(3, winMap, &SCREENBLOCK[19], winMapLen/2);
            DMANow(3, winPal, BG_PALETTE, 256);
            hideSprites();
            draw();
            REG_DISPCTL = MODE(0) | BG_ENABLE(0);
            REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(19) | BG_4BPP | BG_SIZE_SMALL;
            REG_BG2HOFF = 0;
            REG_BG1HOFF = 0;
            REG_BG0HOFF = 0;
            REG_BG0VOFF = 0;                          
            state = WIN;
            playTrack(endcredits);
        }
        void setLose(){
            // Code to set win background
            waitForVBlank();
            DMANow(3, loseTiles, &CHARBLOCK[0], loseTilesLen/2);
            DMANow(3, loseMap, &SCREENBLOCK[19], loseMapLen/2);
            DMANow(3, losePal, BG_PALETTE, 256);
            REG_BG1HOFF = 0;
            REG_DISPCTL = MODE(0) | BG_ENABLE(0);
            REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(19) | BG_8BPP | BG_SIZE_SMALL;
            REG_BG0HOFF = 0;
            REG_BG0VOFF = 0;
            hideSprites();
            draw();

            state = LOSE;
            playTrack(leaves);
            tearOffset = 0;
        }
//END set states 
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
        DMANow(3, shadowOAM, OAM, 512);
    }