#
#  DYXS
#
#  Copyright (c) 2025 xiaoshuai. All rights reserved.
#  Channel: @cxs-dev
#  Created on: 2025/3/04
#
TARGET = iphone:clang:latest:15.0
ARCHS = arm64

#export THEOS=/Users/huami/theos
#export THEOS_PACKAGE_SCHEME=roothide

ifeq ($(SCHEME),roothide)
    export THEOS_PACKAGE_SCHEME = roothide
else ifeq ($(SCHEME),rootless)
    export THEOS_PACKAGE_SCHEME = rootless
endif

export DEBUG = 0
INSTALL_TARGET_PROCESSES = Aweme

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DYXS

DYXS_FILES = DYXS.xm DYXSSettingViewController.m CityManager.m Tweak.xm
DYXS_CFLAGS = -fobjc-arc -w
CXXFLAGS += -std=c++11
CCFLAGS += -std=c++11
DYXS_LOGOS_DEFAULT_GENERATOR = internal

export THEOS_STRICT_LOGOS=0
export ERROR_ON_WARNINGS=0
export LOGOS_DEFAULT_GENERATOR=internal

include $(THEOS_MAKE_PATH)/tweak.mk
