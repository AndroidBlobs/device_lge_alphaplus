# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from alphaplus device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := lge
PRODUCT_DEVICE := alphaplus
PRODUCT_MANUFACTURER := lge
PRODUCT_NAME := lineage_alphaplus
PRODUCT_MODEL := LM-G820

PRODUCT_GMS_CLIENTID_BASE := android-lge
TARGET_VENDOR := lge
TARGET_VENDOR_PRODUCT_NAME := alphaplus
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="alphaplus_lao_com-user 9 PKQ1.181203.001 190742236c291 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := lge/alphaplus_lao_com/alphaplus:9/PKQ1.181203.001/190742236c291:user/release-keys
