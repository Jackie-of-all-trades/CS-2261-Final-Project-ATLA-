#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"
#include "level1.h"
#include "play.h"


PLAYER player;
ENEMY enemies[OPPCOUNT];
FIREBALL fire[FIREPOOL];
AIRBLASTS air[AIRSUPPLY];
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
                SCREENBLOCK[13].tilemap[65+i] = 0;
            }else{
                SCREENBLOCK[13].tilemap[65+i] = 648;
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
        for(int i = 0; i< OPPCOUNT; i++){
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
        for(int i = 0; i < FIREPOOL; i++){
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
        if(BUTTON_HELD(BUTTON_UP) ){
            player.isAnimating = 1;
            if(player.y - player.yVel < 0){
                player.y = 0;
            }else{
                player.y -= player.yVel;
            }
        }
        
        if(BUTTON_HELD(BUTTON_DOWN) ) {
            player.isAnimating = 1;
            if(player.y + player.yVel > 160){
                player.y = 0;
            }else{
                player.y += player.yVel;
            }
        }

        if(BUTTON_HELD(BUTTON_LEFT)){
            player.isAnimating = 1;
            player.direction = 0;
            if(player.x - player.xVel < 0){
                player.x = 0;
            }else{
                player.x -= player.xVel;
            }
        }

        if(BUTTON_HELD(BUTTON_RIGHT) ){
            player.isAnimating = 1;
            player.x += player.xVel;
            player.direction = 1;
        }

        if(BUTTON_HELD(BUTTON_LSHOULDER) && BUTTON_HELD(BUTTON_RSHOULDER)){
            if(player.health < 75){
                player.health = (player.health + 25);    
            }
        }

       if(BUTTON_HELD(BUTTON_A)){
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
        

        shadowOAM[player.oamIndex].attr0 = ATTR0_Y(player.y) | ATTR0_WIDE | ATTR0_REGULAR;
        shadowOAM[player.oamIndex].attr1 = ATTR1_X(player.x) | ATTR1_LARGE;
        if(player.direction){
            shadowOAM[player.oamIndex].attr1 |= ATTR1_HFLIP;
        }
        shadowOAM[player.oamIndex].attr2 = ATTR2_TILEID(0,player.currentFrame*4) | ATTR2_PALROW(0);
    }

    void updateEnemies(){
        for(int i = 0; i< OPPCOUNT; i++){
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

                         
                shadowOAM[enemies[i].oamIndex].attr0 = ATTR0_Y(enemies[i].y) | ATTR0_TALL | ATTR0_REGULAR;
                shadowOAM[enemies[i].oamIndex].attr1 = ATTR1_X(enemies[i].x) | ATTR1_MEDIUM;
                shadowOAM[enemies[i].oamIndex].attr2 = ATTR2_TILEID(8,0) | ATTR2_PALROW(3);
            }
            
        }
        
    }

    void updatePlayerProjectiles(){
        for(int i = 0; i < AIRSUPPLY; i++){
            if(air[i].active){
                air[i].x += air[i].xVel;
                if(air[i].x > 240){
                    air[i].active = 0; 
                }
                shadowOAM[air[i].oamIndex].attr0 = ATTR0_Y(air[i].y) | ATTR0_WIDE | ATTR0_REGULAR;
                shadowOAM[air[i].oamIndex].attr1 = ATTR1_X(air[i].x) | ATTR1_MEDIUM;
                shadowOAM[air[i].oamIndex].attr2 = ATTR2_TILEID(14,0) | ATTR2_PALROW(4);

                for(int j = 0; j < OPPCOUNT; j++){
                    if(enemies[j].active) {
		               if(collision(air[i].x, air[i].y, 32,16,enemies[j].x,enemies[j].y,16,32)){
                            air[i].active = 0;
                            shadowOAM[air[i].oamIndex].attr0=ATTR0_HIDE;
                            enemies[j].health-=5;
                            if(enemies[j].health <= 0){        
                                enemies[j].active = 0;
                                shadowOAM[enemies[j].oamIndex].attr0=ATTR0_HIDE;
                            }
                        
                        }
                    }
                }
            }   
        }
    }

    void updateEnemyProjectiles(){
        for(int i = 0; i < FIREPOOL; i++){
            if(fire[i].active){
                
                if(fire[i].timeUntilNextFrame < 1){
                    fire[i].timeUntilNextFrame = 10;
                    fire[i].currentFrame = (fire[i].currentFrame + 1) % fire[i].numFrames;
                }else{
                    fire[i].timeUntilNextFrame--;
                }

                fire[i].x -= fire[i].xVel;
                shadowOAM[fire[i].oamIndex].attr1 = ATTR1_X(fire[i].x - 32) | ATTR1_MEDIUM;
                shadowOAM[fire[i].oamIndex].attr2 = ATTR2_TILEID(10,(2 * fire[i].currentFrame)) | ATTR2_PALROW(1);
                shadowOAM[fire[i].oamIndex].attr0 = ATTR0_Y(fire[i].y) | ATTR0_WIDE | ATTR0_REGULAR;
                if(fire[i].x < player.x - 16 || fire[i].x < 0){
                    fire[i].active = 0;
                    shadowOAM[fire[i].oamIndex].attr0 = ATTR0_HIDE;
                }
                
                if(collision(fire[i].x, fire[i].y, 32,16, player.x,player.y,64,32)){
                    playSoundEffect(appa);
                    if(player.health > 0) {
                        player.health-=3;
        
                    }else {
                        player.isLost = 1;
                    }

                    fire[i].active = 0;
                    shadowOAM[fire[i].oamIndex].attr0 = ATTR0_HIDE;
                }
            }
                
        }
        
    }

    void updatelevel1(){
        REG_DISPCTL = MODE(0) | BG_ENABLE(0)| BG_ENABLE(1)|SPRITE_ENABLE;
        mgba_printf("Update Level 1 run: %d test %d test\n", 1,1);
        updatePlayer();
        updateEnemies();
        updatePlayerProjectiles();
        updateEnemyProjectiles();
        drawHealth();
    }

    void blast(int x,int y){
        for(int i = 0; i < AIRSUPPLY; i++){
            if(!air[i].active){
                air[i].active = 1;
                air[i].x = x;
                air[i].y = y;
                break;
            }
        }
    }

    void aiBlast(int x,int y){
        for(int i = 0; i < FIREPOOL; i++){
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
            for(int i = 0; i< OPPCOUNT; i++){
                if(enemies[i].active){
                    return 0;
                }
            }
        }
        return 1;
    }
