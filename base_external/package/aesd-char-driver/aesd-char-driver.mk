
##############################################################
#
# aesd-char-driver
#
##############################################################
#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_CHAR_DRIVER_VERSION = 07ce3311c94c0c819468c4047a8ca031dd5dc9ed
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_CHAR_DRIVER_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-adna4700.git
AESD_CHAR_DRIVER_SITE_METHOD = git
AESD_CHAR_DRIVER_GIT_SUBMODULES = YES

#supports building and installing the misc-modules and scull components into the root filesystem.
AESD_CHAR_DRIVER_MODULE_SUBDIRS = aesd-char-driver/

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_CHAR_DRIVER_INSTALL_TARGET_CMDS

	
	
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/* $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/* $(TARGET_DIR)/usr/bin

	
endef

$(eval $(kernel-module))
$(eval $(generic-package))
