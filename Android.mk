LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-subdir-java-files)

LOCAL_PACKAGE_NAME := DeviceTest_Rk

LOCAL_JAVA_LIBRARIES := javax.obex

LOCAL_STATIC_JAVA_LIBRARIES += user_mode

LOCAL_STATIC_JAVA_LIBRARIES += apache

LOCAL_CERTIFICATE := platform
include $(BUILD_PACKAGE)

include $(CLEAR_VARS) 

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := user_mode:user_mode.jar \
								    apache:org.apache.http.legacy.jar

include $(BUILD_MULTI_PREBUILT)
