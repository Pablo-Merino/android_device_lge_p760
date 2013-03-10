## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := P760

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/p760/full_p760.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p760
PRODUCT_NAME := cm_p760
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-P760
PRODUCT_MANUFACTURER := LGE

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=p760 BUILD_FINGERPRINT="lge/p760/p760:4.2.2/IMM76D/47E63EA8:user/release-keys" PRIVATE_BUILD_DESC="p760-user 4.2.2 IMM76D 47E63EA5 release-keys"

