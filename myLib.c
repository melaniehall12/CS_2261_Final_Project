#include "myLib.h"

unsigned short *videoBuffer = (unsigned short *)0x6000000;

DMA *dma = (DMA *)0x40000B0;

void setPixel3(int row, int col, unsigned short color) {
    videoBuffer[OFFSET(row, col, SCREENWIDTH)] = color;
}

void setPixel4(int row, int col, unsigned char colorIndex) {
    unsigned short pixelData = videoBuffer[OFFSET(row, col, SCREENWIDTH)/2];
    if (col & 1) {
        pixelData &= 0x00FF;
        pixelData |= (colorIndex << 8);
    } else {
        pixelData &= 0xFF00;
        pixelData |= colorIndex;
    }
    videoBuffer[OFFSET(row, col, SCREENWIDTH)/2] = pixelData;
}

void drawRect3(int row, int col, int height, int width, volatile unsigned short color) {
    for(int r = 0; r < height; r++) {
        DMANow(3, &color, &videoBuffer[OFFSET(row+r, col, SCREENWIDTH)], DMA_SOURCE_FIXED | width);
    }
}

void drawRect4(int row, int col, int height, int width, volatile unsigned char colorIndex) {
    volatile unsigned short pixelData = colorIndex | (colorIndex<<8);
    for (int r = 0; r < height; r++) {
        if (col & 1) {
            if (width & 1) {  // Odd col, odd width
                setPixel4(row + r, col, colorIndex);
                if (width > 1) {
                    DMANow(3, &pixelData, &videoBuffer[OFFSET(r+row, col+1, SCREENWIDTH)/2], DMA_SOURCE_FIXED | width/2);
                }
            } else {  // Odd col, even width
                setPixel4(row + r, col, colorIndex);
                if (width > 2) {
                    DMANow(3, &pixelData, &videoBuffer[OFFSET(r+row, col+1, SCREENWIDTH)/2], DMA_SOURCE_FIXED | (width/2-1));
                }
                setPixel4(row + r, col+width-1, colorIndex);
            }
        } else {
            if (width & 1) {  // Even col, odd width
                if (width > 1) {
                    DMANow(3, &pixelData, &videoBuffer[OFFSET(r+row, col, SCREENWIDTH)/2], DMA_SOURCE_FIXED | width/2);
                }
                setPixel4(row + r, col+width-1, colorIndex);
            } else {  // Even col, even width
                DMANow(3, &pixelData, &videoBuffer[OFFSET(r+row, col, SCREENWIDTH)/2], DMA_SOURCE_FIXED | width/2);
            }
        }
    }
}

void fillScreen3(volatile unsigned short color) {
    DMANow(3, &color, videoBuffer, DMA_SOURCE_FIXED | (SCREENWIDTH * SCREENHEIGHT));
}

void fillScreen4(volatile unsigned char colorIndex) {
    volatile unsigned short pixelData = colorIndex | (colorIndex<<8);
    DMANow(3, &pixelData, videoBuffer, DMA_SOURCE_FIXED | (SCREENWIDTH * SCREENHEIGHT / 2));
}

void drawImage3(int row, int col, int height, int width, const unsigned short *image) {
    for(int r = 0; r < height; r++) {
        DMANow(3, &image[OFFSET(r, 0, width)], &videoBuffer[OFFSET(row+r, col, SCREENWIDTH)], width);
    }
}

void drawImage4(int row, int col, int height, int width, const unsigned short *image) {
    for(int r = 0; r < height; r++) {
        DMANow(3, &image[OFFSET(r, 0, width)/2], &videoBuffer[OFFSET(row+r, col, SCREENWIDTH)/2], width/2);
    }
}

void drawFullscreenImage3(const unsigned short *image) {
    DMANow(3, image, videoBuffer, SCREENWIDTH * SCREENHEIGHT);
}

void drawFullscreenImage4(const unsigned short *image) {
    DMANow(3, image, videoBuffer, SCREENWIDTH * SCREENHEIGHT / 2);
}

void waitForVBlank() {
    while(SCANLINECOUNTER > 160);
    while(SCANLINECOUNTER < 160);
}

void flipPage() {
    if (REG_DISPCTL & DISP_BACKBUFFER) {
        videoBuffer = BACKBUFFER;
    } else {
        videoBuffer = FRONTBUFFER;
    }
    REG_DISPCTL ^= DISP_BACKBUFFER;
}

void loadPalette(const unsigned short *palette) {
    DMANow(3, palette, PALETTE, 256);
}

void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt) {
    dma[channel].cnt = 0;
    dma[channel].src = src;
    dma[channel].dst = dst;
    dma[channel].cnt = cnt | DMA_ON;
}

int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB) {
    return rowA < rowB + heightB - 1 && rowA + heightA - 1 > rowB
        && colA < colB + widthB - 1 && colA + widthA - 1 > colB;
}

void hideSprites() {
    for(int x = 0; x < 128; x++) {
        shadowOAM[x].attr0 = ATTR0_HIDE;
    }  
}