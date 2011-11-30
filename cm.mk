# Inherit device configuration for Droid3.
$(call inherit-product, device/motorola/solana/device_solana.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
#$(call inherit-product, vendor/cm/config/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_solana
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := solana
PRODUCT_MODEL := XT862
PRODUCT_MANUFACTURER := Motorola
PRODUCT_SFX := vzw

# Release name and versioning
PRODUCT_RELEASE_NAME := Droid3

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
   BUILD_ID=5.5.1_84_D3G-55 \
   PRODUCT_NAME=${PRODUCT_DEVICE}_${PRODUCT_SFX} \
   BUILD_NUMBER=${DATE} \
   TARGET_DEVICE=cdma_solana \
   BUILD_DISPLAY_ID=5.5.1_84_D3G-55 \
   BUILD_FINGERPRINT=verizon/solana_vzw/cdma_solana:4.0.1/5.5.1_84_D3G-55/${BUILD_NUMBER}:user/release-keys \
   PRIVATE_BUILD_DESC="cdma_solana-user 4.0.1 5.5.1_84_D3G-55 "${BUILD_NUMBER}" release-keys" \
   PRODUCT_BRAND=verizon \
   BUILD_UTC_DATE= \
   TARGET_BUILD_TYPE=user \
   BUILD_VERSION_TAGS=release-keys \
   USER=hashcode \
   BUILD_HOST=hashcode-unn \
   PRODUCT_DEFAULT_LANGUAGE=en \
   PRODUCT_DEFAULT_REGION=US \

# Extra Droid3 overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/cm/overlay/solana

