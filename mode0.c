#include "mode0.h"

void drawCharM0(int x, int y, char ch, int sb) {
    setTile(x, y, ch + 648, sb);
}

void drawStringM0(int x, int y, char *str, int sb){
    int currChar = 0;
    while (str[currChar] != '\0') {
    drawCharM0(x, y, str[currChar]-32, sb);
    currChar++;
    x += 1;
    }
}