DESTDIR     =
PREFIX      =/usr/local
all:
clean:
install:
## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-note
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-note
endif
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp bin/note bin/p_note  $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
