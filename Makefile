
SRC	= people

ifeq ($(DISTRO),DEBIAN)
	TARGET	= /usr/share/games/fortunes/
else ifeq ($(DISTRO),FEDORA)
	TARGET	= /usr/share/games/fortune/
else
	TARGET	= /usr/share/games/fortune/
endif

all:		anarchism.dat

anarchism.dat:	anarchism
		@strfile anarchism

anarchism:	people/*
		@cat $(SRC)/* > anarchism

clean:;		rm -f anarchism.dat anarchism

install:	all
		cp anarchism $(TARGET)
		cp anarchism.dat $(TARGET)

uninstall:;	rm $(TARGET)/anarchism
		rm $(TARGET)/anarchism.dat
