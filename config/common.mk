PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Disable excessive dalvik debug messages
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.debug.alloc=0

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/slim/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/slim/prebuilt/common/bin/50-slim.sh:system/addon.d/50-slim.sh \
    vendor/slim/prebuilt/common/bin/99-backup.sh:system/addon.d/99-backup.sh \
    vendor/slim/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# Signature compatibility validation
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/bin/otasigcheck.sh:install/bin/otasigcheck.sh

# SLIM-specific init file
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/etc/init.local.rc:root/init.slim.rc

# Copy latinime for gesture typing
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/etc/mkshrc:system/etc/mkshrc \
    vendor/slim/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf

PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/slim/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/slim/prebuilt/common/bin/sysinit:system/bin/sysinit

# pre installed layers theme.
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/overlays/SlimMod_AOSPCalculator.apk:system/vendor/overlay/SlimMod_AOSPCalculator.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_AOSPContacts.apk:system/vendor/overlay/SlimMod_AOSPContacts.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_AOSPDeskClock.apk:system/vendor/overlay/SlimMod_AOSPDeskClock.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_AOSPDialer.apk:system/vendor/overlay/SlimMod_AOSPDialer.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_AOSPKeyboard.apk:system/vendor/overlay/SlimMod_AOSPKeyboard.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_AOSPLauncher3.apk:system/vendor/overlay/SlimMod_AOSPLauncher3.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_AOSPMms.apk:vendor/overlay/SlimMod_AOSPMms.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_Apple_Music_Notification.apk:system/vendor/overlay/SlimMod_Apple_Music_Notification.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_CellBroadcastReceiver.apk:system/vendor/overlay/SlimMod_CellBroadcastReceiver.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_DocumentsUI.apk:system/vendor/overlay/SlimMod_DocumentsUI.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_Framework.apk:system/vendor/overlay/SlimMod_Framework.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_Google_Hangouts_Notification.apk:system/vendor/overlay/SlimMod_Google_Hangouts_Notification.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_Google_Inbox_Notification.apk:system/vendor/overlay/SlimMod_Google_Inbox_Notification.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_Google_Mail_Notification.apk:system/vendor/overlay/SlimMod_Google_Mail_Notification.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_Google_Mms_Notification.apk:system/vendor/overlay/SlimMod_Google_Mms_Notification.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_LayersManager.apk:system/vendor/overlay/SlimMod_LayersManager.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_LockcLock.apk:system/vendor/overlay/SlimMod_LockcLock.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_MediaProvider.apk:system/vendor/overlay/SlimMod_MediaProvider.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_PackageInstaller.apk:system/vendor/overlay/SlimMod_PackageInstaller.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_Phone.apk:system/vendor/overlay/SlimMod_Phone.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_Settings.apk:system/vendor/overlay/SlimMod_Settings.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_SlimOTA.apk:system/vendor/overlay/SlimMod_SlimOTA.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_SuperSU.apk:system/vendor/overlay/SlimMod_SuperSU.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_SystemUI.apk:system/vendor/overlay/SlimMod_SystemUI.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_Telecom.apk:system/vendor/overlay/SlimMod_Telecom.apk \
    vendor/slim/prebuilt/common/overlays/SlimMod_Navbar.apk:system/vendor/overlay/SlimMod_Navbar.apk


# Screen recorder package and lib
PRODUCT_PACKAGES += \
    ScreenRecorder \
    libscreenrecorder

# Embed SuperUser
SUPERUSER_EMBEDDED := true

# Required packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    Development \
    SpareParts \
    Superuser \
    su

# Optional packages
PRODUCT_PACKAGES += \
    Basic \
    LiveWallpapersPicker \
    PhaseBeam

# AudioFX
PRODUCT_PACKAGES += \
    AudioFX

# CM Hardware Abstraction Framework
PRODUCT_PACKAGES += \
    org.cyanogenmod.hardware \
    org.cyanogenmod.hardware.xml

# Extra Optional packages
PRODUCT_PACKAGES += \
    SlimCenter \
    SlimLauncher \
    AdAway \
    LayersManager \
    LatinIME \
    BluetoothExt 

#    SlimFileManager removed until updated

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

# Copy SuperSU
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/slim/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

# easy way to extend to add more packages
-include vendor/extra/product.mk

PRODUCT_PACKAGE_OVERLAYS += vendor/slim/overlay/common

# Boot animation include
ifneq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))

# determine the smaller dimension
TARGET_BOOTANIMATION_SIZE := $(shell \
  if [ $(TARGET_SCREEN_WIDTH) -lt $(TARGET_SCREEN_HEIGHT) ]; then \
    echo $(TARGET_SCREEN_WIDTH); \
  else \
    echo $(TARGET_SCREEN_HEIGHT); \
  fi )

# get a sorted list of the sizes
bootanimation_sizes := $(subst .zip,, $(shell ls vendor/slim/prebuilt/common/bootanimation))
bootanimation_sizes := $(shell echo -e $(subst $(space),'\n',$(bootanimation_sizes)) | sort -rn)

# find the appropriate size and set
define check_and_set_bootanimation
$(eval TARGET_BOOTANIMATION_NAME := $(shell \
  if [ -z "$(TARGET_BOOTANIMATION_NAME)" ]; then
    if [ $(1) -le $(TARGET_BOOTANIMATION_SIZE) ]; then \
      echo $(1); \
      exit 0; \
    fi;
  fi;
  echo $(TARGET_BOOTANIMATION_NAME); ))
endef
$(foreach size,$(bootanimation_sizes), $(call check_and_set_bootanimation,$(size)))

ifeq ($(TARGET_BOOTANIMATION_HALF_RES),true)
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/bootanimation/halfres/$(TARGET_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip
else
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/bootanimation/$(TARGET_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip
endif
endif

# Versioning System
# SlimLP first version.
PRODUCT_VERSION_MAJOR = 5.1.1
PRODUCT_VERSION_MINOR = layers
PRODUCT_VERSION_MAINTENANCE = 0.15
ifdef SLIM_BUILD_EXTRA
    SLIM_POSTFIX := -$(SLIM_BUILD_EXTRA)
endif
ifndef SLIM_BUILD_TYPE
    SLIM_BUILD_TYPE := UNOFFICIAL
    PLATFORM_VERSION_CODENAME := UNOFFICIAL
endif

ifeq ($(SLIM_BUILD_TYPE),DM)
    SLIM_POSTFIX := -$(shell date +"%Y%m%d")
endif

ifndef SLIM_POSTFIX
    SLIM_POSTFIX := -$(shell date +"%Y%m%d-%H%M")
endif

PLATFORM_VERSION_CODENAME := $(SLIM_BUILD_TYPE)

# SlimIRC
# export INCLUDE_SLIMIRC=1 for unofficial builds
ifneq ($(filter WEEKLY OFFICIAL,$(SLIM_BUILD_TYPE)),)
    INCLUDE_SLIMIRC = 1
endif

ifneq ($(INCLUDE_SLIMIRC),)
    PRODUCT_PACKAGES += SlimIRC
endif

# Chromium Prebuilt
ifeq ($(PRODUCT_PREBUILT_WEBVIEWCHROMIUM),yes)
-include prebuilts/chromium/$(TARGET_DEVICE)/chromium_prebuilt.mk
endif

# Set all versions
SLIM_VERSION := Slim-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(SLIM_BUILD_TYPE)$(SLIM_POSTFIX)
SLIM_MOD_VERSION := Slim-$(SLIM_BUILD)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(SLIM_BUILD_TYPE)$(SLIM_POSTFIX)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    slim.ota.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE) \
    ro.slim.version=$(SLIM_VERSION) \
    ro.modversion=$(SLIM_MOD_VERSION) \
    ro.slim.buildtype=$(SLIM_BUILD_TYPE)

EXTENDED_POST_PROCESS_PROPS := vendor/slim/tools/slim_process_props.py

SQUISHER_SCRIPT := vendor/slim/tools/squisher

