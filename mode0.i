# 1 "mode0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "mode0.c"
# 1 "mode0.h" 1



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
# 5 "mode0.h" 2
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 51 "mode0.h"
void drawStringM0(int x, int y, char * str, int sb);
void drawCharM0(int x, int y, char ch, int sb);
# 2 "mode0.c" 2

void drawCharM0(int x, int y, char ch, int sb) {
    (((SB*) 0x06000000)[sb].tilemap[((y) * (32) + (x))] = (ch + 648));
}

void drawStringM0(int x, int y, char *str, int sb){
    int currChar = 0;
    while (str[currChar] != '\0') {
    drawCharM0(x, y, str[currChar]-32, sb);
    currChar++;
    x += 1;
    }
}
