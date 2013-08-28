# Inherit from those products. Most specific first.
$(call inherit-product, device/samsung/codinatmo/codinatmo.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_codinatmo
PRODUCT_DEVICE := codinatmo
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SGH-T599
