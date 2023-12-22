#ifndef PLAY_H
#define PLAY_H

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
#endif