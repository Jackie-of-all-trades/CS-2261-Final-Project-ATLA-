#ifndef LEVEL1_H
#define LEVEL1_H
    #define OPPCOUNT 7
    #define FIREPOOL 15
    #define AIRSUPPLY 15

    //Blockade Runner
        // state prototypes
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
        //end prototypes

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

    //
#endif