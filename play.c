
#include "play.h"
#include "gba.h"
#include "digitalSound.h"
#include "mp3.h"

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
        REG_IME = 0;
        REG_IE = IRQ_VBLANK |IRQ_TIMER(2)|IRQ_TIMER(3);
        REG_DISPSTAT = DISPSTAT_VBLANK_IRQ;
        REG_INTERRUPT = &interruptHandler;
        REG_IME = 1;        
        REG_TM2CNT = 0;
        REG_TM2D = 65536-16384;
        REG_TM2CNT = TM_IRQ | TIMER_ON |TM_FREQ_1024;
        REG_TM3CNT = 0;
        REG_TM3D = 65536 - 60; 
        REG_TM3CNT = TM_IRQ | TM_CASCADE | TIMER_ON;
    }

    void interruptHandler() {
        REG_IME = 0;
        if (REG_IF & IRQ_TIMER(2)) {
            prevSecond = second;
            if(second > 59){
                second = 0;
            }else {
                second++;
            }
        } 

        if (REG_IF & IRQ_TIMER(3)) {        
            if(minute > 59){
                minute = 0;
            }else {
                minute++;
            }
        }

        if (REG_IF & IRQ_VBLANK) {
            //Potential linkedlist of functions to call, pop off instead of wait for vblank
            // TODO 2.0: Handle soundA
            if(soundA.isPlaying){
                soundA.vBlankCount++;
                if(soundA.durationInVBlanks <= soundA.vBlankCount){
                    if(soundA.looping){
                       playSoundA(soundA.data, soundA.dataLength, soundA.looping); 
                    }else{
                        soundA.isPlaying = 0;
                        dma[1].cnt = 0;
                        REG_TM0CNT = TIMER_OFF;
                    }

                }
            }
            
        // TODO 2.1: Handle soundB
            if(soundB.isPlaying){
                soundB.vBlankCount++;
                if(soundB.durationInVBlanks <= soundB.vBlankCount){
                    if(soundB.looping){
                        playSoundB(soundB.data, soundB.dataLength, soundB.looping); 
                    }else{
                        soundB.isPlaying = 0;
                        dma[2].cnt = 0;
                        REG_TM1CNT = TIMER_OFF;
                    }

                }
            }
            if(ticks > 100){
                ticks = 0;
            }else {
                ticks++;
            }
        }
        REG_IF = REG_IF;
        REG_IME = 1;
    }

