GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-15 \
	gluon-respondd \
	respondd-module-airtime \
	gluon-autoupdater \
	gluon-config-mode-core \
	gluon-config-mode-hostname \
	gluon-config-mode-autoupdater \
	gluon-config-mode-mesh-vpn \
	gluon-config-mode-geo-location \
	gluon-config-mode-contact-info \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-ebtables-source-filter \
	gluon-web-admin \
	gluon-web-autoupdater \
	gluon-web-mesh-vpn-fastd \
	gluon-web-network \
	gluon-web-wifi-config \
	gluon-radv-filterd \
	gluon-radvd \
	gluon-setup-mode \
	gluon-speedtest \
	gluon-status-page \
	iputils-ping6 \
	iwinfo \
	iptables \
	firewall \
	haveged \
	gluon-authorized-keys \
	respondd-module-wifisettings \
	ffhb-breminale \
	reghack

# Allow overriding the these variables from the command line
GLUON_RELEASE ?= $(patsubst v%,%,$(shell git -C $(GLUON_SITEDIR) describe --tags --dirty=+))
export GLUON_BRANCH ?= babel
GLUON_PRIORITY ?= 0
GLUON_DEPRECATED ?= 0
GLUON_LANGS ?= en de
GLUON_REGION ?= eu
GLUON_WLAN_MESH ?= 11s


# Debug packages
DEBUG_PACKAGES := \
	tcpdump

# x86-64
ifeq ($(GLUON_TARGET),x86-64)
GLUON_SITE_PACKAGES += \
	$(DEBUG_PACKAGES) \
	haveged
endif
