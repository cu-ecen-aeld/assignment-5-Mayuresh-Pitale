##############################################################
#
# LDD
#
##############################################################

LDD_SITE = "https://github.com/cu-ecen-aeld/assignment-7-Mayuresh-Pitale.git"
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_VERSION = main

# This is critical: It tells Buildroot exactly which folders have the Makefiles
LDD_MODULE_SUBDIRS = scull misc-modules

define LDD_INSTALL_INIT_SYSV
	$(INSTALL) -m 0755 $(LDD_PKGDIR)/S98lddmodules $(TARGET_DIR)/etc/init.d/S98lddmodules
endef

$(eval $(kernel-module))
$(eval $(generic-package))
