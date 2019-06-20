LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := lua_static
LOCAL_MODULE_FILENAME := lua

LOCAL_CFLAGS    := -Wall -DLUA_COMPAT_ALL -DLUA_USE_LINUX

SRC := lua-5.3.3/src

LOCAL_SRC_FILES := $(SRC)/lapi.c \
                   $(SRC)/lauxlib.c \
                   $(SRC)/lbaselib.c \
                   $(SRC)/lbitlib.c \
                   $(SRC)/lcode.c \
                   $(SRC)/lcorolib.c \
                   $(SRC)/lctype.c \
                   $(SRC)/ldblib.c \
                   $(SRC)/ldebug.c \
                   $(SRC)/ldo.c \
                   $(SRC)/ldump.c \
                   $(SRC)/lfunc.c \
                   $(SRC)/lgc.c \
                   $(SRC)/linit.c \
                   $(SRC)/liolib.c \
                   $(SRC)/llex.c \
                   $(SRC)/lmathlib.c \
                   $(SRC)/lmem.c \
                   $(SRC)/loadlib.c \
                   $(SRC)/lobject.c \
                   $(SRC)/lopcodes.c \
                   $(SRC)/loslib.c \
                   $(SRC)/lparser.c \
                   $(SRC)/lstate.c \
                   $(SRC)/lstring.c \
                   $(SRC)/lstrlib.c \
                   $(SRC)/ltable.c \
                   $(SRC)/ltablib.c \
                   $(SRC)/ltm.c \
                   $(SRC)/lundump.c \
                   $(SRC)/lvm.c \
                   $(SRC)/lzio.c

#LOCAL_LDLIBS    := -Llibs/armeabi

LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(SRC)

LOCAL_EXPORT_C_INCLUDES += $(LOCAL_PATH)/$(SRC)
LOCAL_EXPORT_CFLAGS += $(LOCAL_CFLAGS)

#LOCAL_WHOLE_STATIC_LIBRARIES := libogg openal tremor
#LOCAL_EXPORT_LDLIBS     := -lOpenSLES -ldl -llog

include $(BUILD_STATIC_LIBRARY)
