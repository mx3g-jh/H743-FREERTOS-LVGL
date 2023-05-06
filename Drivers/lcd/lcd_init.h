#ifndef __LCD_INIT_H
#define __LCD_INIT_H

#include "main.h"
#include "gpio.h"

#define USE_HORIZONTAL 0  //设置横屏或者竖屏显示 0或1为竖屏 2或3为横屏


#define LCD_W 240
#define LCD_H 240



//-----------------LCD端口定义---------------- 

#define LCD_RES_Clr()  LL_GPIO_ResetOutputPin(RES_GPIO_Port,RES_Pin)//RES
#define LCD_RES_Set()  LL_GPIO_SetOutputPin(RES_GPIO_Port,RES_Pin)

#define LCD_DC_Clr()   LL_GPIO_ResetOutputPin(DC_GPIO_Port,DC_Pin)//DC
#define LCD_DC_Set()   LL_GPIO_SetOutputPin(DC_GPIO_Port,DC_Pin)

#define LCD_CS_Clr()   LL_GPIO_ResetOutputPin(CS_GPIO_Port,CS_Pin)//CS
#define LCD_CS_Set()   LL_GPIO_SetOutputPin(CS_GPIO_Port,CS_Pin)

#define LCD_BLK_Clr()  LL_GPIO_ResetOutputPin(BLK_GPIO_Port,BLK_Pin)//BLK
#define LCD_BLK_Set()  LL_GPIO_SetOutputPin(BLK_GPIO_Port,BLK_Pin)




void LCD_Writ_Bus(uint8_t dat);//模拟SPI时序
void LCD_WR_DATA8(uint8_t dat);//写入一个字节
void LCD_WR_DATA(uint16_t dat);//写入两个字节
void LCD_WR_REG(uint8_t dat);//写入一个指令
void LCD_Address_Set(uint16_t x1,uint16_t y1,uint16_t x2,uint16_t y2);//设置坐标函数
void LCD_Init(void);//LCD初始化
#endif




