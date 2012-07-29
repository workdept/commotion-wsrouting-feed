# Copyright (C) 2010 Commotion
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
include $(TOPDIR)/rules.mk

PKG_NAME:=libwebsockets
PKG_RELEASE:=1
PKG_VERSION:=0.0.1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=git://git.warmcat.com/libwebsockets
PKG_SOURCE_VERSION:=71e53691756fd420c409538c71b010997f06f414
PKG_SOURCE_SUBDIR:=libwebsockets
PKG_SOURCE_PROTO:=git

include $(INCLUDE_DIR)/package.mk

define Package/libwebsockets
  SECTION:=commotion-apps
  CATEGORY:=Commotion-apps
  TITLE:=C Websockets Server Library
  DEPENDS:= +zlib
  URL:=http://git.warmcat.com/cgi-bin/cgit/libwebsockets
endef

define Build/Configure
	$(call Build/Configure/Default,--with-linux-headers=$(LINUX_DIR) --datadir=/usr/share)
endef

define Package/libwebsockets/description
  C Websockets Server Library, this package only installs the library and a test application.
endef

define Package/libwebsockets/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_DIR) $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/share/libwebsockets-test-server
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/test-server/.libs/libwebsockets-test-server $(1)/usr/sbin/
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/lib/.libs/libwebsockets.so.0.0.3 $(1)/usr/lib/libwebsockets.so.0
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/test-server/test.html $(1)/usr/share/libwebsockets-test-server
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/test-server/favicon.ico $(1)/usr/share/libwebsockets-test-server
endef

$(eval $(call BuildPackage,libwebsockets))
