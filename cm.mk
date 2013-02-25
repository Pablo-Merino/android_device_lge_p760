## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := P760

# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-540x960

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
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=p760 BUILD_FINGERPRINT="p760_open_eu/p760:4.0.4/IMM76L/P76010a.48125853:user/release-keys" PRIVATE_BUILD_DESC="p760-user 4.0.4 IMM76I 330937 release-keys"
