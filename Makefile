#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr

PATH_LEFTWM_GNOME = $(PREFIX)/bin/leftwm-gnome
PATH_LEFTWM_GNOME_DESKTOP = $(PREFIX)/share/applications/leftwm-gnome.desktop
PATH_LEFTWM_GNOME_SESSION = $(PREFIX)/share/gnome-session/sessions/leftwm-gnome.session
PATH_LEFTWM_GNOME_XSESSION = $(PREFIX)/share/xsessions/leftwm-gnome.desktop
PATH_GNOME_SESSION_LEFTWM = $(PREFIX)/bin/gnome-sessionleftwm-

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D session/leftwm-gnome-xsession.desktop $(PATH_LEFTWM_GNOME_XSESSION)
	$(INSTALL) -m0644 -D session/leftwm-gnome.desktop $(PATH_LEFTWM_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D session/leftwm-gnome.session $(PATH_LEFTWM_GNOME_SESSION)
	$(INSTALL) -m0755 -D session/leftwm-gnome $(PATH_LEFTWM_GNOME)
	$(INSTALL) -m0755 -D session/gnome-session-leftwm $(PATH_GNOME_SESSION_LEFTWM)



uninstall:
	rm -f $(PATH_LEFTWM_GNOME)
	rm -f $(PATH_LEFTWM_GNOME_DESKTOP)
	rm -f $(PATH_LEFTWM_GNOME_SESSION)
	rm -f $(PATH_LEFTWM_GNOME_XSESSION)
	rm -f $(PATH_GNOME_SESSION_LEFTWM)



.PHONY: all install uninstall
