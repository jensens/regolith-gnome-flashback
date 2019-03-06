#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)

PATH_REGOLITH_DESKTOP = $(PREFIX)/usr/share/xsessions/regolith.desktop

#
# Targets
#

all:
	@echo "Nothing to do"

install:
	$(INSTALL) -m0644 -D regolith.desktop $(PATH_REGOLITH_DESKTOP)
# Copied from https://github.com/deuill/i3-gnome-flashback
	$(INSTALL) -m0644 -D i3-gnome-flashback.session $(PREFIX)/usr/share/gnome-session/sessions/i3-gnome-flashback.session
	$(INSTALL) -m0755 -D i3-gnome-flashback-session $(PREFIX)/usr/bin/i3-gnome-flashback-session
	$(INSTALL) -m0755 -D i3-gnome-flashback $(PREFIX)/usr/bin/i3-gnome-flashback
	$(INSTALL) -m0644 -D i3-gnome-flashback.desktop $(PREFIX)/usr/share/applications/i3-gnome-flashback.desktop
	
uninstall:
	rm -f $(PATH_REGOLITH_DESKTOP)
	rm -f $(PREFIX)/usr/bin/i3-gnome-flashback $(PREFIX)/usr/bin/i3-gnome-flashback-session \
          $(PREFIX)/usr/share/gnome-session/sessions/i3-gnome-flashback.session \
	  $(PREFIX)/usr/share/applications/i3-gnome-flashback.desktop


.PHONY: all install uninstall