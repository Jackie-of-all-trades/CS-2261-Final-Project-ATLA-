# 1 "play.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "play.c"

# 1 "play.h" 1



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
# 3 "play.c" 2
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
# 4 "play.c" 2
# 1 "digitalSound.h" 1



void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void pauseSounds();
void unpauseSounds();
void stopSounds();
# 49 "digitalSound.h"
typedef struct {
    const signed char* data;
    int dataLength;
    int isPlaying;
    int looping;
    int durationInVBlanks;
    int vBlankCount;
} SOUND;

extern SOUND soundA;
extern SOUND soundB;
# 5 "play.c" 2
# 1 "mp3.h" 1
extern const unsigned int appa_sampleRate;
extern const unsigned int appa_length;
extern const signed char appa_data[];

extern const unsigned int start_sampleRate;
extern const unsigned int start_length;
extern const signed char start_data[];

extern const unsigned int tsungi_sampleRate;
extern const unsigned int tsungi_length;
extern const signed char tsungi_data[];

extern const unsigned int loseSong_sampleRate;
extern const unsigned int loseSong_length;
extern const signed char loseSong_data[];

extern const unsigned int endcredits_sampleRate;
extern const unsigned int endcredits_length;
extern const signed char endcredits_data[];

extern const unsigned int menu_sampleRate;
extern const unsigned int menu_length;
extern const signed char menu_data[];
# 6 "play.c" 2

TRACK tsungi;
TRACK leaves;
TRACK start;
TRACK appa;
TRACK endcredits;
TRACK menu;

int second;
int minute;
int prevSecond;
int ticks;

void initTracks();
void setupInterrupts();
void interruptHandler();
void playTrack(TRACK track);
void playSoundEffect(TRACK track);

    void initTracks(){
        tsungi.title = "tsungi horn, by Iroh";
        tsungi.data = tsungi_data;
        tsungi.sampleRate = tsungi_sampleRate;
        tsungi.length = tsungi_length;

        leaves.title = "Leaves from the Vine";
        leaves.data = loseSong_data;
        leaves.sampleRate = loseSong_sampleRate;
        leaves.length = loseSong_length;

        start.title = "Start";
        start.data = start_data;
        start.sampleRate = start_sampleRate;
        start.length = start_length;

        appa.title = "appa";
        appa.data = appa_data;
        appa.sampleRate = appa_sampleRate;
        appa.length = appa_length;

        endcredits.title = "endcredits";
        endcredits.data = endcredits_data;
        endcredits.sampleRate = endcredits_sampleRate;
        endcredits.length = endcredits_length;

        menu.title = "menu";
        menu.data = menu_data;
        menu.sampleRate = menu_sampleRate;
        menu.length = menu_length;

        setupSounds();
    }

    void playTrack(TRACK track){
        playSoundA(track.data, track.length, 1);
    }

    void playSoundEffect(TRACK track){
        playSoundB(track.data, track.length, 0);
    }


    void setupInterrupts() {
        (*(unsigned short*) 0x04000208) = 0;
        (*(unsigned short*) 0x04000200) = (1 << 0) |(1 << ((2 % 4) + 3))|(1 << ((3 % 4) + 3));
        (*(unsigned short*) 0x04000004) = (1 << 3);
        (*(ihp*) 0x03007FFC) = &interruptHandler;
        (*(unsigned short*) 0x04000208) = 1;
        (*(volatile unsigned short*) 0x0400010A) = 0;
        (*(volatile unsigned short*) 0x04000108) = 65536-16384;
        (*(volatile unsigned short*) 0x0400010A) = (1 << 6) | (1 << 7) |(3);
        (*(volatile unsigned short*) 0x0400010E) = 0;
        (*(volatile unsigned short*) 0x0400010C) = 65536 - 60;
        (*(volatile unsigned short*) 0x0400010E) = (1 << 6) | (1 << 2) | (1 << 7);
    }

    void interruptHandler() {
        (*(unsigned short*) 0x04000208) = 0;
        if ((*(volatile unsigned short*) 0x04000202) & (1 << ((2 % 4) + 3))) {
            prevSecond = second;
            if(second > 59){
                second = 0;
            }else {
                second++;
            }
        }

        if ((*(volatile unsigned short*) 0x04000202) & (1 << ((3 % 4) + 3))) {
            if(minute > 59){
                minute = 0;
            }else {
                minute++;
            }
        }

        if ((*(volatile unsigned short*) 0x04000202) & (1 << 0)) {


            if(soundA.isPlaying){
                soundA.vBlankCount++;
                if(soundA.durationInVBlanks <= soundA.vBlankCount){
                    if(soundA.looping){
                       playSoundA(soundA.data, soundA.dataLength, soundA.looping);
                    }else{
                        soundA.isPlaying = 0;
                        dma[1].cnt = 0;
                        (*(volatile unsigned short*) 0x04000102) = (0 << 7);
                    }

                }
            }


            if(soundB.isPlaying){
                soundB.vBlankCount++;
                if(soundB.durationInVBlanks <= soundB.vBlankCount){
                    if(soundB.looping){
                        playSoundB(soundB.data, soundB.dataLength, soundB.looping);
                    }else{
                        soundB.isPlaying = 0;
                        dma[2].cnt = 0;
                        (*(volatile unsigned short*) 0x04000106) = (0 << 7);
                    }

                }
            }
            if(ticks > 100){
                ticks = 0;
            }else {
                ticks++;
            }
        }
        (*(volatile unsigned short*) 0x04000202) = (*(volatile unsigned short*) 0x04000202);
        (*(unsigned short*) 0x04000208) = 1;
    }
