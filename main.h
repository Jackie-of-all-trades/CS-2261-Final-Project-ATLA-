
#define FRAMEDELAY 4
#define NUMLEVELS 6
typedef enum {START, INSTRUCTS, WORLDMAP, GAME, PAUSE, LOSE, WIN} STATE;
typedef enum {MSTART, RESUME, CONTROLS, QUIT}MENU;
typedef enum {LEVEL1, LEVEL2, LEVEL3, LEVEL4, LEVEL5, LEVEL6}MAP;
unsigned short oldButtons;
unsigned short buttons;


    //Prototypes
        void setup();
        void update();
        void draw();


        void initMap();

        void manageGame();
            //State Management Prototypes
                void setStart();
                void setGame();
                void setWorldMap();
                void setPause();
                void setLose();
                void setWin();
                void setInstructs();
            //SMP end
    //Prototypes end
