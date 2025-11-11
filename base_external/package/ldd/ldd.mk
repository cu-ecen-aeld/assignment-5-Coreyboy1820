################################################################################
#
# LDD
#
################################################################################

LDD_VERSION = cd0bc800de0a564fda9b5565506a48d384e73c2b
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-Coreyboy1820.git

LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

MODULE_SUBDIRS = scull misc-modules

define LDD_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/lib/modules/$(LINUX_VERSION_PROBED)/extra

	# Install all built kernel modules (from both subdirs)
	$(INSTALL) -m 0644 $(@D)/scull/*.ko $(TARGET_DIR)/lib/modules/$(LINUX_VERSION_PROBED)/extra/
	$(INSTALL) -m 0644 $(@D)/misc-modules/*.ko $(TARGET_DIR)/lib/modules/$(LINUX_VERSION_PROBED)/extra/
endef

$(eval $(kernel-module))
$(eval $(generic-package))
