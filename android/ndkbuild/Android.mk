LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := gostcoind
LOCAL_CPP_FEATURES := rtti exceptions
LOCAL_C_INCLUDES += $(GOSTCOIND_SRC_PATH)
LOCAL_STATIC_LIBRARIES := \
	boost_system \
	boost_filesystem \
	boost_program_options \
	boost_thread \
	boost_chrono \
	db_cxx \
	ssl \
	crypto
LOCAL_LDLIBS := -lz \
                -ldl \
                -lpthread

LOCAL_SRC_FILES := \
	$(wildcard $(GOSTCOIND_SRC_PATH)/*.cpp)

include $(BUILD_SHARED_LIBRARY)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := boost_system
LOCAL_SRC_FILES := $(BOOST_PATH)/boost-1_72_0/$(TARGET_ARCH_ABI)/lib/libboost_system.a
LOCAL_EXPORT_C_INCLUDES := $(BOOST_PATH)/boost-1_72_0/include
include $(PREBUILT_STATIC_LIBRARY)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := boost_date_time
LOCAL_SRC_FILES := $(BOOST_PATH)/boost-1_72_0/$(TARGET_ARCH_ABI)/lib/libboost_date_time.a
LOCAL_EXPORT_C_INCLUDES := $(BOOST_PATH)/boost-1_72_0/include
include $(PREBUILT_STATIC_LIBRARY)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := boost_filesystem
LOCAL_SRC_FILES := $(BOOST_PATH)/boost-1_72_0/$(TARGET_ARCH_ABI)/lib/libboost_filesystem.a
LOCAL_EXPORT_C_INCLUDES := $(BOOST_PATH)/boost-1_72_0/include
include $(PREBUILT_STATIC_LIBRARY)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := boost_program_options
LOCAL_SRC_FILES := $(BOOST_PATH)/boost-1_72_0/$(TARGET_ARCH_ABI)/lib/libboost_program_options.a
LOCAL_EXPORT_C_INCLUDES := $(BOOST_PATH)/boost-1_72_0/include
include $(PREBUILT_STATIC_LIBRARY)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := crypto
LOCAL_SRC_FILES := $(OPENSSL_PATH)/openssl-1.1.1d-clang/$(TARGET_ARCH_ABI)/lib/libcrypto.a
LOCAL_EXPORT_C_INCLUDES := $(OPENSSL_PATH)/openssl-1.1.1d-clang/include
include $(PREBUILT_STATIC_LIBRARY)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := ssl
LOCAL_SRC_FILES := $(OPENSSL_PATH)/openssl-1.1.1d-clang/$(TARGET_ARCH_ABI)/lib/libssl.a
LOCAL_EXPORT_C_INCLUDES := $(OPENSSL_PATH)/openssl-1.1.1d-clang/include
LOCAL_STATIC_LIBRARIES := crypto
include $(PREBUILT_STATIC_LIBRARY)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := miniupnpc
LOCAL_SRC_FILES := $(MINIUPNP_PATH)/miniupnpc-2.1/$(TARGET_ARCH_ABI)/lib/libminiupnpc.a
LOCAL_EXPORT_C_INCLUDES := $(MINIUPNP_PATH)/miniupnpc-2.1/include
include $(PREBUILT_STATIC_LIBRARY)
