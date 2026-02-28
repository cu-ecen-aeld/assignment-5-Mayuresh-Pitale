##############################################################
#
# LDD
#
##############################################################

LDD_SITE = "git@github.com:cu-ecen-aeld/assignment-7-Mayuresh-Pitale.git"
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_VERSION = main

# This is critical: It tells Buildroot exactly which folders have the Makefiles
LDD_MODULE_SUBDIRS = scull misc-modules

$(eval $(kernel-module))
$(eval $(generic-package))
