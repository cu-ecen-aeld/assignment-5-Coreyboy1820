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

$(eval $(kernel-module))
$(eval $(generic-package))
