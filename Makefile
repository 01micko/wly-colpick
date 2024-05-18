PREFIX?=/usr/local
BINDIR=$(PREFIX)/bin
DATADIR=$(PREFIX)/share
MANDIR=$(DATADIR)/man

.PHONY: install

install:
	install -d -m 0755 $(DESTDIR)$(BINDIR)
	install -d -m 0755 $(DESTDIR)$(DATADIR)/applications
	install -d -m 0755 $(DESTDIR)$(MANDIR)/man1
	install -d -m 0755 $(DESTDIR)$(DATADIR)/icons/hicolor/scalable/apps
	install -m 0644 src/data/pick-color.desktop $(DESTDIR)$(DATADIR)/applications
	install -m 0755 src/bin/wly_colpick $(DESTDIR)$(BINDIR)
	install -m 0644 src/man/wly_colpick.1 $(DESTDIR)$(MANDIR)/man1
	install -m 0644 src/data/icons/colpick.svg $(DESTDIR)$(DATADIR)/icons/hicolor/scalable/apps
	install -m 0644 src/data/icons/colpickalt.svg $(DESTDIR)$(DATADIR)/icons/hicolor/scalable/apps
