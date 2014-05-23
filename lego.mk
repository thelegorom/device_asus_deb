# Bootanimation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH  := 1080

# Release name
PRODUCT_RELEASE_NAME := deb

# tablet
$(call inherit-product, vendor/lego/config/common_full_tablet_wifionly.mk)

# telephony
$(call inherit-product, vendor/lego/config/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/lego/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/asus/deb/aosp_deb.mk)

#MMS
PRODUCT_PACKAGES += \
    Mms

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := deb
PRODUCT_NAME := lego_deb
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

PRODUCT_RESTRICT_VENDOR_FILES := false

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razorg BUILD_FINGERPRINT="google/razorg/deb:4.4.2/KOT49H/937116:user/release-keys" PRIVATE_BUILD_DESC="razorg-user 4.4.2 KOT49H 937116 release-keys"
