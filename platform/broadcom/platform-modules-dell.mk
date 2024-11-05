# Dell S6000,Z9100, S6100, Z9264F , S5232F,Z9332F Platform modules

DELL_S6000_PLATFORM_MODULE_VERSION = 1.1
DELL_Z9100_PLATFORM_MODULE_VERSION = 1.1
DELL_S6100_PLATFORM_MODULE_VERSION = 1.1
DELL_Z9264F_PLATFORM_MODULE_VERSION = 1.1
DELL_S5212F_PLATFORM_MODULE_VERSION = 1.1
DELL_S5224F_PLATFORM_MODULE_VERSION = 1.1
DELL_S5232F_PLATFORM_MODULE_VERSION = 1.1
DELL_Z9332F_PLATFORM_MODULE_VERSION = 1.1
DELL_Z9432F_PLATFORM_MODULE_VERSION = 1.1
DELL_S5248F_PLATFORM_MODULE_VERSION = 1.1
DELL_S5448F_PLATFORM_MODULE_VERSION = 1.1
DELL_S5296F_PLATFORM_MODULE_VERSION = 1.1
DELL_N3248PXE_PLATFORM_MODULE_VERSION = 1.1
DELL_N3248TE_PLATFORM_MODULE_VERSION = 1.1
DELL_E3224F_PLATFORM_MODULE_VERSION = 1.1

export DELL_S6000_PLATFORM_MODULE_VERSION
export DELL_Z9100_PLATFORM_MODULE_VERSION
export DELL_S6100_PLATFORM_MODULE_VERSION
export DELL_Z9264F_PLATFORM_MODULE_VERSION
export DELL_S5212F_PLATFORM_MODULE_VERSION
export DELL_S5224F_PLATFORM_MODULE_VERSION
export DELL_S5232F_PLATFORM_MODULE_VERSION
export DELL_Z9332F_PLATFORM_MODULE_VERSION
export DELL_Z9432F_PLATFORM_MODULE_VERSION
export DELL_S5248F_PLATFORM_MODULE_VERSION
export DELL_S5448F_PLATFORM_MODULE_VERSION
export DELL_S5296F_PLATFORM_MODULE_VERSION
export DELL_N3248PXE_PLATFORM_MODULE_VERSION
export DELL_N3248TE_PLATFORM_MODULE_VERSION
export DELL_E3224F_PLATFORM_MODULE_VERSION

DELL_Z9100_PLATFORM_MODULE = platform-modules-z9100_$(DELL_Z9100_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_Z9100_PLATFORM_MODULE)_SRC_PATH = $(PLATFORM_PATH)/sonic-platform-modules-dell
$(DELL_Z9100_PLATFORM_MODULE)_DEPENDS += $(LINUX_HEADERS) $(LINUX_HEADERS_COMMON)
$(DELL_Z9100_PLATFORM_MODULE)_PLATFORM = x86_64-dell_z9100_c2538-r0
SONIC_DPKG_DEBS += $(DELL_Z9100_PLATFORM_MODULE)

DELL_S6100_PLATFORM_MODULE = platform-modules-s6100_$(DELL_S6100_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_S6100_PLATFORM_MODULE)_PLATFORM = x86_64-dell_s6100_c2538-r0
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_S6100_PLATFORM_MODULE)))

DELL_Z9264F_PLATFORM_MODULE = platform-modules-z9264f_$(DELL_Z9264F_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_Z9264F_PLATFORM_MODULE)_PLATFORM = x86_64-dellemc_z9264f_c3538-r0
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_Z9264F_PLATFORM_MODULE)))

# Dell S6000 Platform modules
DELL_S6000_PLATFORM_MODULE = platform-modules-s6000_$(DELL_S6000_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_S6000_PLATFORM_MODULE)_PLATFORM = x86_64-dell_s6000_s1220-r0
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_S6000_PLATFORM_MODULE)))

DELL_S5212F_PLATFORM_MODULE = platform-modules-s5212f_$(DELL_S5212F_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_S5212F_PLATFORM_MODULE)_PLATFORM = x86_64-dellemc_s5212f_c3538-r0
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_S5212F_PLATFORM_MODULE)))

DELL_S5224F_PLATFORM_MODULE = platform-modules-s5224f_$(DELL_S5224F_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_S5224F_PLATFORM_MODULE)_PLATFORM = x86_64-dellemc_s5224f_c3538-r0
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_S5224F_PLATFORM_MODULE)))

DELL_S5232F_PLATFORM_MODULE = platform-modules-s5232f_$(DELL_S5232F_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_S5232F_PLATFORM_MODULE)_PLATFORM = x86_64-dellemc_s5232f_c3538-r0
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_S5232F_PLATFORM_MODULE)))

DELL_Z9332F_PLATFORM_MODULE = platform-modules-z9332f_$(DELL_Z9332F_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_Z9332F_PLATFORM_MODULE)_PLATFORM = x86_64-dellemc_z9332f_d1508-r0 
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_Z9332F_PLATFORM_MODULE)))

DELL_Z9432F_PLATFORM_MODULE = platform-modules-z9432f_$(DELL_Z9432F_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_Z9432F_PLATFORM_MODULE)_PLATFORM = x86_64-dellemc_z9432f_c3758-r0
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_Z9432F_PLATFORM_MODULE)))

DELL_S5248F_PLATFORM_MODULE = platform-modules-s5248f_$(DELL_S5248F_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_S5248F_PLATFORM_MODULE)_PLATFORM = x86_64-dellemc_s5248f_c3538-r0
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_S5248F_PLATFORM_MODULE)))

DELL_S5448F_PLATFORM_MODULE = platform-modules-s5448f_$(DELL_S5448F_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_S5448F_PLATFORM_MODULE)_PLATFORM = x86_64-dellemc_s5448f-r0
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_S5448F_PLATFORM_MODULE)))

DELL_N3248TE_PLATFORM_MODULE = platform-modules-n3248te_$(DELL_N3248TE_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_N3248TE_PLATFORM_MODULE)_PLATFORM = x86_64-dellemc_n3248te_c3338-r0
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_N3248TE_PLATFORM_MODULE)))

DELL_E3224F_PLATFORM_MODULE = platform-modules-e3224f_$(DELL_E3224F_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_E3224F_PLATFORM_MODULE)_PLATFORM = x86_64-dell_e3224f-r0
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_E3224F_PLATFORM_MODULE)))

DELL_S5296F_PLATFORM_MODULE = platform-modules-s5296f_$(DELL_S5296F_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_S5296F_PLATFORM_MODULE)_PLATFORM = x86_64-dellemc_s5296f_c3538-r0
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_S5296F_PLATFORM_MODULE)))

DELL_N3248PXE_PLATFORM_MODULE = platform-modules-n3248pxe_$(DELL_N3248PXE_PLATFORM_MODULE_VERSION)_amd64.deb
$(DELL_N3248PXE_PLATFORM_MODULE)_PLATFORM = x86_64-dellemc_n3248pxe_c3338-r0
$(eval $(call add_extra_package,$(DELL_Z9100_PLATFORM_MODULE),$(DELL_N3248PXE_PLATFORM_MODULE)))
