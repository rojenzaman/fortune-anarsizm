
DESTDIR	= build
SRCDIR	= people
FORTUNE_TARGET	= /usr/share/games/fortunes

all:
		@if [ ! -d "./${DESTDIR}" ]; then mkdir "./${DESTDIR}"; fi
		@cat $(SRCDIR)/* > $(DESTDIR)/anarchism
		@strfile $(DESTDIR)/anarchism

clean:;		@echo "cleaning"
		@rm -f $(DESTDIR)/anarchism.dat $(DESTDIR)/anarchism

install:	all
		cp build/* $(FORTUNE_TARGET)

uninstall:
		rm $(FORTUNE_TARGET)/anarchism
		rm $(FORTUNE_TARGET)/anarchism.dat

