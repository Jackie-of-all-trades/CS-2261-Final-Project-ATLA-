#ifndef GAME_H
#define GAME_H

void initFPtrs();
void setLevel(int currLevel, int init);
void updateLevels(int currLevel);
int lossCheck(int currLevel);
int winCheck(int currLevel);
void setLevel1();
void setLevel2();


#endif