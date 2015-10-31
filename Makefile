
SRC	= people
FEDORA	= /usr/share/games/fortune/
DEBIAN	= /usr/share/games/fortunes/
DISTRO	= FEDORA
TARGET	= $($(DISTRO))

all:		anarchism.dat

anarchism.dat:	anarchism
		@strfile anarchism

anarchism:;	@cat $(SRC)/* > anarchism

clean:;		@echo "cleaning"
		@rm -f anarchism.dat anarchism

install:	all
		cp anarchism $(TARGET)
		cp anarchism.dat $(TARGET)

uninstall:;	rm $(TARGET)/anarchism
		rm $(TARGET)/anarchism.dat

