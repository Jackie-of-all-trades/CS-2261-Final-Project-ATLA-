// #ifndef LEVEL2_H
// #define LEVEL2_H

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
// #endif