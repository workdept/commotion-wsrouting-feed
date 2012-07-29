# Copyright (C) 2010 Commotion
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
include $(TOPDIR)/rules.mk

PKG_NAME:=ws-uv
PKG_RELEASE:=1
PKG_VERSION:=0.0.3

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/billywhizz/ws-uv.git
PKG_SOURCE_VERSION:=8d5fcc4c7797b3ff48ad819fc629ecd6314dd2de
PKG_SOURCE_SUBDIR:=ws-uv
PKG_SOURCE_PROTO:=git

include $(INCLUDE_DIR)/package.mk

define Package/ws-uv
  SECTION:=commotion-apps
  CATEGORY:=Commotion-apps
  TITLE:=Websockets using libuv
  DEPENDS:=
  URL:=https://github.com/billywhizz/ws-uv/
endef

define Build/Configure
#	git submodule init 	
#	git submodule update 
endef

#define Build/Compile
#endef

define Package/ws-uv/description
  C Websockes using libuv
endef

define Package/ws-uv/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/websock $(1)/usr/sbin/
endef

$(eval $(call BuildPackage,ws-uv))
