NDK_TOOLCHAIN_VERSION := clang
APP_STL := c++_static

# Enable c++17 extensions in source code
APP_CPPFLAGS += -std=c++17 -fexceptions -frtti

APP_CPPFLAGS += -DANDROID -D__ANDROID__ -DUSE_UPNP
ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
APP_CPPFLAGS += -DANDROID_ARM7A
endif

BOOST_PATH    = $(NDK_MODULE_PATH)/boost
OPENSSL_PATH  = $(NDK_MODULE_PATH)/openssl

GOSTCOIND_SRC_PATH = $(NDK_MODULE_PATH)/gostcoind
