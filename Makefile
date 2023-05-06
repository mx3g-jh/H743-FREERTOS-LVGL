##########################################################################################################################
# File automatically-generated by tool: [projectgenerator] version: [3.19.2] date: [Sat May 06 17:13:38 CST 2023] 
##########################################################################################################################

# ------------------------------------------------
# Generic Makefile (based on gcc)
#
# ChangeLog :
#	2017-02-10 - Several enhancements + project update mode
#   2015-07-22 - first version
# ------------------------------------------------

######################################
# target
######################################
TARGET = LCD

######################################
# openocd
######################################
#Use The Tool By Openocd Download the Project
OPENOCD := openocd -f /usr/local/share/openocd/scripts/interface/stlink-v2.cfg \
	-f /usr/local/share/openocd/scripts/target/stm32h7x.cfg

######################################
# building variables
######################################
# debug build?
DEBUG = 1
# optimization
OPT = -Og


#######################################
# paths
#######################################
# Build path
BUILD_DIR = build

######################################
# source
######################################
# C sources
C_SOURCES =  \
Core/Src/main.c \
Core/Src/gpio.c \
Core/Src/freertos.c \
Core/Src/spi.c \
Core/Src/stm32h7xx_it.c \
Core/Src/stm32h7xx_hal_msp.c \
Core/Src/stm32h7xx_hal_timebase_tim.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_cortex.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_rcc.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_rcc_ex.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_flash.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_flash_ex.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_gpio.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_hsem.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_dma.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_dma_ex.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_mdma.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_pwr.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_pwr_ex.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_i2c.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_i2c_ex.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_tim.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_tim_ex.c \
Drivers/lvgl/lvgl/src/core/lv_group.c \
Drivers/lvgl/lvgl/src/core/lv_refr.c \
Drivers/lvgl/lvgl/src/core/lv_obj_scroll.c \
Drivers/lvgl/lvgl/src/core/lv_obj_style_gen.c \
Drivers/lvgl/lvgl/src/core/lv_obj_tree.c \
Drivers/lvgl/lvgl/src/core/lv_theme.c \
Drivers/lvgl/lvgl/src/core/lv_indev_scroll.c \
Drivers/lvgl/lvgl/src/core/lv_obj.c \
Drivers/lvgl/lvgl/src/core/lv_obj_draw.c \
Drivers/lvgl/lvgl/src/core/lv_obj_class.c \
Drivers/lvgl/lvgl/src/core/lv_disp.c \
Drivers/lvgl/lvgl/src/core/lv_event.c \
Drivers/lvgl/lvgl/src/core/lv_obj_style.c \
Drivers/lvgl/lvgl/src/core/lv_indev.c \
Drivers/lvgl/lvgl/src/core/lv_obj_pos.c \
Drivers/lvgl/lvgl/src/misc/lv_area.c \
Drivers/lvgl/lvgl/src/misc/lv_anim.c \
Drivers/lvgl/lvgl/src/misc/lv_color.c \
Drivers/lvgl/lvgl/src/misc/lv_txt.c \
Drivers/lvgl/lvgl/src/misc/lv_math.c \
Drivers/lvgl/lvgl/src/misc/lv_style_gen.c \
Drivers/lvgl/lvgl/src/misc/lv_log.c \
Drivers/lvgl/lvgl/src/misc/lv_anim_timeline.c \
Drivers/lvgl/lvgl/src/misc/lv_async.c \
Drivers/lvgl/lvgl/src/misc/lv_lru.c \
Drivers/lvgl/lvgl/src/misc/lv_txt_ap.c \
Drivers/lvgl/lvgl/src/misc/lv_style.c \
Drivers/lvgl/lvgl/src/misc/lv_timer.c \
Drivers/lvgl/lvgl/src/misc/lv_printf.c \
Drivers/lvgl/lvgl/src/misc/lv_utils.c \
Drivers/lvgl/lvgl/src/misc/lv_templ.c \
Drivers/lvgl/lvgl/src/misc/lv_tlsf.c \
Drivers/lvgl/lvgl/src/misc/lv_fs.c \
Drivers/lvgl/lvgl/src/misc/lv_bidi.c \
Drivers/lvgl/lvgl/src/misc/lv_mem.c \
Drivers/lvgl/lvgl/src/misc/lv_ll.c \
Drivers/lvgl/lvgl/src/misc/lv_gc.c \
Drivers/lvgl/lvgl/src/hal/lv_hal_disp.c \
Drivers/lvgl/lvgl/src/hal/lv_hal_indev.c \
Drivers/lvgl/lvgl/src/hal/lv_hal_tick.c \
Drivers/lvgl/lvgl/src/widgets/lv_dropdown.c \
Drivers/lvgl/lvgl/src/widgets/lv_table.c \
Drivers/lvgl/lvgl/src/widgets/lv_slider.c \
Drivers/lvgl/lvgl/src/widgets/lv_roller.c \
Drivers/lvgl/lvgl/src/widgets/lv_arc.c \
Drivers/lvgl/lvgl/src/widgets/lv_textarea.c \
Drivers/lvgl/lvgl/src/widgets/lv_line.c \
Drivers/lvgl/lvgl/src/widgets/lv_btn.c \
Drivers/lvgl/lvgl/src/widgets/lv_canvas.c \
Drivers/lvgl/lvgl/src/widgets/lv_img.c \
Drivers/lvgl/lvgl/src/widgets/lv_bar.c \
Drivers/lvgl/lvgl/src/widgets/lv_objx_templ.c \
Drivers/lvgl/lvgl/src/widgets/lv_btnmatrix.c \
Drivers/lvgl/lvgl/src/widgets/lv_label.c \
Drivers/lvgl/lvgl/src/widgets/lv_checkbox.c \
Drivers/lvgl/lvgl/src/widgets/lv_switch.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_26.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_34.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_8.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_18.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_16.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_32.c \
Drivers/lvgl/lvgl/src/font/lv_font_simsun_16_cjk.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_28.c \
Drivers/lvgl/lvgl/src/font/lv_font.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_36.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_44.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_30.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_24.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_28_compressed.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_42.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_22.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_40.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_46.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_10.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_48.c \
Drivers/lvgl/lvgl/src/font/lv_font_fmt_txt.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_38.c \
Drivers/lvgl/lvgl/src/font/lv_font_loader.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_14.c \
Drivers/lvgl/lvgl/src/font/lv_font_dejavu_16_persian_hebrew.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_12.c \
Drivers/lvgl/lvgl/src/font/lv_font_unscii_16.c \
Drivers/lvgl/lvgl/src/font/lv_font_unscii_8.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_20.c \
Drivers/lvgl/lvgl/src/font/lv_font_montserrat_12_subpx.c \
Drivers/lvgl/lvgl/src/extra/others/snapshot/lv_snapshot.c \
Drivers/lvgl/lvgl/src/extra/others/ime/lv_ime_pinyin.c \
Drivers/lvgl/lvgl/src/extra/others/monkey/lv_monkey.c \
Drivers/lvgl/lvgl/src/extra/others/imgfont/lv_imgfont.c \
Drivers/lvgl/lvgl/src/extra/others/gridnav/lv_gridnav.c \
Drivers/lvgl/lvgl/src/extra/others/msg/lv_msg.c \
Drivers/lvgl/lvgl/src/extra/others/fragment/lv_fragment_manager.c \
Drivers/lvgl/lvgl/src/extra/others/fragment/lv_fragment.c \
Drivers/lvgl/lvgl/src/extra/themes/mono/lv_theme_mono.c \
Drivers/lvgl/lvgl/src/extra/themes/default/lv_theme_default.c \
Drivers/lvgl/lvgl/src/extra/themes/basic/lv_theme_basic.c \
Drivers/lvgl/lvgl/src/extra/layouts/grid/lv_grid.c \
Drivers/lvgl/lvgl/src/extra/layouts/flex/lv_flex.c \
Drivers/lvgl/lvgl/src/extra/widgets/list/lv_list.c \
Drivers/lvgl/lvgl/src/extra/widgets/imgbtn/lv_imgbtn.c \
Drivers/lvgl/lvgl/src/extra/widgets/calendar/lv_calendar_header_dropdown.c \
Drivers/lvgl/lvgl/src/extra/widgets/calendar/lv_calendar_header_arrow.c \
Drivers/lvgl/lvgl/src/extra/widgets/calendar/lv_calendar.c \
Drivers/lvgl/lvgl/src/extra/widgets/win/lv_win.c \
Drivers/lvgl/lvgl/src/extra/widgets/colorwheel/lv_colorwheel.c \
Drivers/lvgl/lvgl/src/extra/widgets/tileview/lv_tileview.c \
Drivers/lvgl/lvgl/src/extra/widgets/tabview/lv_tabview.c \
Drivers/lvgl/lvgl/src/extra/widgets/span/lv_span.c \
Drivers/lvgl/lvgl/src/extra/widgets/animimg/lv_animimg.c \
Drivers/lvgl/lvgl/src/extra/widgets/keyboard/lv_keyboard.c \
Drivers/lvgl/lvgl/src/extra/widgets/meter/lv_meter.c \
Drivers/lvgl/lvgl/src/extra/widgets/spinner/lv_spinner.c \
Drivers/lvgl/lvgl/src/extra/widgets/menu/lv_menu.c \
Drivers/lvgl/lvgl/src/extra/widgets/chart/lv_chart.c \
Drivers/lvgl/lvgl/src/extra/widgets/led/lv_led.c \
Drivers/lvgl/lvgl/src/extra/widgets/msgbox/lv_msgbox.c \
Drivers/lvgl/lvgl/src/extra/widgets/spinbox/lv_spinbox.c \
Drivers/lvgl/lvgl/src/extra/libs/bmp/lv_bmp.c \
Drivers/lvgl/lvgl/src/extra/libs/sjpg/tjpgd.c \
Drivers/lvgl/lvgl/src/extra/libs/sjpg/lv_sjpg.c \
Drivers/lvgl/lvgl/src/extra/libs/gif/gifdec.c \
Drivers/lvgl/lvgl/src/extra/libs/gif/lv_gif.c \
Drivers/lvgl/lvgl/src/extra/libs/freetype/lv_freetype.c \
Drivers/lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_win32.c \
Drivers/lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_stdio.c \
Drivers/lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_fatfs.c \
Drivers/lvgl/lvgl/src/extra/libs/fsdrv/lv_fs_posix.c \
Drivers/lvgl/lvgl/src/extra/libs/ffmpeg/lv_ffmpeg.c \
Drivers/lvgl/lvgl/src/extra/libs/png/lodepng.c \
Drivers/lvgl/lvgl/src/extra/libs/png/lv_png.c \
Drivers/lvgl/lvgl/src/extra/libs/qrcode/qrcodegen.c \
Drivers/lvgl/lvgl/src/extra/libs/qrcode/lv_qrcode.c \
Drivers/lvgl/lvgl/src/extra/libs/rlottie/lv_rlottie.c \
Drivers/lvgl/lvgl/src/extra/lv_extra.c \
Drivers/lvgl/lvgl/src/draw/lv_draw.c \
Drivers/lvgl/lvgl/src/draw/swm341_dma2d/lv_gpu_swm341_dma2d.c \
Drivers/lvgl/lvgl/src/draw/lv_draw_mask.c \
Drivers/lvgl/lvgl/src/draw/lv_draw_arc.c \
Drivers/lvgl/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp.c \
Drivers/lvgl/lvgl/src/draw/nxp/pxp/lv_draw_pxp_blend.c \
Drivers/lvgl/lvgl/src/draw/nxp/pxp/lv_draw_pxp.c \
Drivers/lvgl/lvgl/src/draw/nxp/pxp/lv_gpu_nxp_pxp_osa.c \
Drivers/lvgl/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.c \
Drivers/lvgl/lvgl/src/draw/nxp/vglite/lv_vglite_buf.c \
Drivers/lvgl/lvgl/src/draw/nxp/vglite/lv_draw_vglite_blend.c \
Drivers/lvgl/lvgl/src/draw/nxp/vglite/lv_vglite_utils.c \
Drivers/lvgl/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.c \
Drivers/lvgl/lvgl/src/draw/nxp/vglite/lv_draw_vglite.c \
Drivers/lvgl/lvgl/src/draw/nxp/vglite/lv_draw_vglite_rect.c \
Drivers/lvgl/lvgl/src/draw/stm32_dma2d/lv_gpu_stm32_dma2d.c \
Drivers/lvgl/lvgl/src/draw/lv_draw_layer.c \
Drivers/lvgl/lvgl/src/draw/lv_draw_line.c \
Drivers/lvgl/lvgl/src/draw/sdl/lv_draw_sdl_texture_cache.c \
Drivers/lvgl/lvgl/src/draw/sdl/lv_draw_sdl_rect.c \
Drivers/lvgl/lvgl/src/draw/sdl/lv_draw_sdl_label.c \
Drivers/lvgl/lvgl/src/draw/sdl/lv_draw_sdl_layer.c \
Drivers/lvgl/lvgl/src/draw/sdl/lv_draw_sdl_mask.c \
Drivers/lvgl/lvgl/src/draw/sdl/lv_draw_sdl_composite.c \
Drivers/lvgl/lvgl/src/draw/sdl/lv_draw_sdl_line.c \
Drivers/lvgl/lvgl/src/draw/sdl/lv_draw_sdl_utils.c \
Drivers/lvgl/lvgl/src/draw/sdl/lv_draw_sdl_bg.c \
Drivers/lvgl/lvgl/src/draw/sdl/lv_draw_sdl_img.c \
Drivers/lvgl/lvgl/src/draw/sdl/lv_draw_sdl_stack_blur.c \
Drivers/lvgl/lvgl/src/draw/sdl/lv_draw_sdl_arc.c \
Drivers/lvgl/lvgl/src/draw/sdl/lv_draw_sdl.c \
Drivers/lvgl/lvgl/src/draw/sdl/lv_draw_sdl_polygon.c \
Drivers/lvgl/lvgl/src/draw/lv_draw_rect.c \
Drivers/lvgl/lvgl/src/draw/lv_draw_transform.c \
Drivers/lvgl/lvgl/src/draw/lv_img_buf.c \
Drivers/lvgl/lvgl/src/draw/arm2d/lv_gpu_arm2d.c \
Drivers/lvgl/lvgl/src/draw/lv_draw_img.c \
Drivers/lvgl/lvgl/src/draw/lv_draw_label.c \
Drivers/lvgl/lvgl/src/draw/lv_img_decoder.c \
Drivers/lvgl/lvgl/src/draw/lv_img_cache.c \
Drivers/lvgl/lvgl/src/draw/sw/lv_draw_sw_layer.c \
Drivers/lvgl/lvgl/src/draw/sw/lv_draw_sw_blend.c \
Drivers/lvgl/lvgl/src/draw/sw/lv_draw_sw.c \
Drivers/lvgl/lvgl/src/draw/sw/lv_draw_sw_letter.c \
Drivers/lvgl/lvgl/src/draw/sw/lv_draw_sw_transform.c \
Drivers/lvgl/lvgl/src/draw/sw/lv_draw_sw_img.c \
Drivers/lvgl/lvgl/src/draw/sw/lv_draw_sw_line.c \
Drivers/lvgl/lvgl/src/draw/sw/lv_draw_sw_arc.c \
Drivers/lvgl/lvgl/src/draw/sw/lv_draw_sw_gradient.c \
Drivers/lvgl/lvgl/src/draw/sw/lv_draw_sw_dither.c \
Drivers/lvgl/lvgl/src/draw/sw/lv_draw_sw_polygon.c \
Drivers/lvgl/lvgl/src/draw/sw/lv_draw_sw_rect.c \
Drivers/lvgl/lvgl/src/draw/lv_draw_triangle.c \
Drivers/lvgl/drivers/lv_port_indev.c \
Drivers/lvgl/drivers/lv_port_disp.c \
Drivers/lvgl/drivers/lv_port_fs.c \
Core/Src/system_stm32h7xx.c \
Middlewares/Third_Party/FreeRTOS/Source/croutine.c \
Middlewares/Third_Party/FreeRTOS/Source/event_groups.c \
Middlewares/Third_Party/FreeRTOS/Source/list.c \
Middlewares/Third_Party/FreeRTOS/Source/queue.c \
Middlewares/Third_Party/FreeRTOS/Source/stream_buffer.c \
Middlewares/Third_Party/FreeRTOS/Source/tasks.c \
Middlewares/Third_Party/FreeRTOS/Source/timers.c \
Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c \
Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c \
Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c \
Drivers/lcd/lcd_init.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_exti.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_gpio.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_dma.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_rcc.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_utils.c \
Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_spi.c \
Drivers/lcd/lcd.c

# ASM sources
ASM_SOURCES =  \
startup_stm32h743xx.s


#######################################
# binaries
#######################################
PREFIX = arm-none-eabi-
# The gcc compiler bin path can be either defined in make command via GCC_PATH variable (> make GCC_PATH=xxx)
# either it can be added to the PATH environment variable.
ifdef GCC_PATH
CC = $(GCC_PATH)/$(PREFIX)gcc
AS = $(GCC_PATH)/$(PREFIX)gcc -x assembler-with-cpp
CP = $(GCC_PATH)/$(PREFIX)objcopy
SZ = $(GCC_PATH)/$(PREFIX)size
else
CC = $(PREFIX)gcc
AS = $(PREFIX)gcc -x assembler-with-cpp
CP = $(PREFIX)objcopy
SZ = $(PREFIX)size
endif
HEX = $(CP) -O ihex
BIN = $(CP) -O binary -S
 
#######################################
# CFLAGS
#######################################
# cpu
CPU = -mcpu=cortex-m7

# fpu
FPU = -mfpu=fpv5-d16

# float-abi
FLOAT-ABI = -mfloat-abi=hard

# mcu
MCU = $(CPU) -mthumb $(FPU) $(FLOAT-ABI)

# macros for gcc
# AS defines
AS_DEFS = 

# C defines
C_DEFS =  \
-DUSE_HAL_DRIVER \
-DSTM32H743xx \
-DUSE_FULL_LL_DRIVER


# AS includes
AS_INCLUDES =  \
-ICore/Inc

# C includes
C_INCLUDES =  \
-ICore/Inc \
-IDrivers/STM32H7xx_HAL_Driver/Inc \
-IDrivers/STM32H7xx_HAL_Driver/Inc/Legacy \
-IMiddlewares/Third_Party/FreeRTOS/Source/include \
-IMiddlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 \
-IMiddlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F \
-IDrivers/CMSIS/Device/ST/STM32H7xx/Include \
-IDrivers/CMSIS/Include \
-IDrivers/lvgl \
-IDrivers/lvgl/drivers \
-IDrivers/lvgl/lvgl \
-IDrivers/lcd

# compile gcc flags
ASFLAGS = $(MCU) $(AS_DEFS) $(AS_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections

CFLAGS += $(MCU) $(C_DEFS) $(C_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections

ifeq ($(DEBUG), 1)
CFLAGS += -g -gdwarf-2
endif


# Generate dependency information
CFLAGS += -MMD -MP -MF"$(@:%.o=%.d)"


#######################################
# LDFLAGS
#######################################
# link script
LDSCRIPT = STM32H743VITx_FLASH.ld

# libraries
LIBS = -lc -lm -lnosys 
LIBDIR = 
LDFLAGS = $(MCU) -specs=nano.specs -T$(LDSCRIPT) $(LIBDIR) $(LIBS) -Wl,-Map=$(BUILD_DIR)/$(TARGET).map,--cref -Wl,--gc-sections

# default action: build all
all: $(BUILD_DIR)/$(TARGET).elf $(BUILD_DIR)/$(TARGET).hex $(BUILD_DIR)/$(TARGET).bin


#######################################
# build the application
#######################################
# list of objects
OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(C_SOURCES:.c=.o)))
vpath %.c $(sort $(dir $(C_SOURCES)))
# list of ASM program objects
OBJECTS += $(addprefix $(BUILD_DIR)/,$(notdir $(ASM_SOURCES:.s=.o)))
vpath %.s $(sort $(dir $(ASM_SOURCES)))

$(BUILD_DIR)/%.o: %.c Makefile | $(BUILD_DIR) 
	$(CC) -c $(CFLAGS) -Wa,-a,-ad,-alms=$(BUILD_DIR)/$(notdir $(<:.c=.lst)) $< -o $@

$(BUILD_DIR)/%.o: %.s Makefile | $(BUILD_DIR)
	$(AS) -c $(CFLAGS) $< -o $@

$(BUILD_DIR)/$(TARGET).elf: $(OBJECTS) Makefile
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@
	$(SZ) $@

$(BUILD_DIR)/%.hex: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(HEX) $< $@
	
$(BUILD_DIR)/%.bin: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(BIN) $< $@	
	
$(BUILD_DIR):
	mkdir $@		

#######################################
# clean up
#######################################
clean:
	-rm -fR $(BUILD_DIR)

#######################################
# target name
#######################################
bin_file:
	-rm -fR $(BUILD_DIR)
	make all
	mkdir $(BUILD_DIR)/bin
	mv $(BUILD_DIR)/$(TARGET).bin $(BUILD_DIR)/bin

#######################################
# flash
#######################################

# download your program
upload: all
	$(OPENOCD) -c init \
		-c 'reset halt' \
		-c 'flash write_image erase $(BUILD_DIR)/$(TARGET).elf' \
		-c 'reset run' \
		-c exit

#######################################
# dependencies
#######################################
-include $(wildcard $(BUILD_DIR)/*.d)

# *** EOF ***
