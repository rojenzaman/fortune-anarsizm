
DESTDIR	= build
SRCDIR	= people
FORTUNE_TARGET	= /usr/share/games/fortunes

all:	$(DESTDIR)/anarchism.dat

$(DESTDIR)/anarchism.dat:	$(DESTDIR)/anarchism
		@strfile $(DESTDIR)/anarchism

$(DESTDIR)/anarchism:	$(SRCDIR)/* $(DESTDIR)
		@cat $(SRCDIR)/* > $(DESTDIR)/anarchism

$(DESTDIR):
		mkdir "./${DESTDIR}"

clean:;		@echo "cleaning"
		@rm -f $(DESTDIR)/anarchism.dat $(DESTDIR)/anarchism

install:	all
		cp build/* $(FORTUNE_TARGET)

uninstall:
		rm $(FORTUNE_TARGET)/anarchism
		rm $(FORTUNE_TARGET)/anarchism.dat

