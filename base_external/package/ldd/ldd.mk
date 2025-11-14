################################################################################
#
# LDD
#
################################################################################

LDD_VERSION = ce538d4c4d82659e5c307ac06d67638e66b43b5e
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-Coreyboy1820.git

LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = scull misc-modules

$(eval $(kernel-module))
$(eval $(generic-package))