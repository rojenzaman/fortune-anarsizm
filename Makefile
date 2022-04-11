
SRC	= people
TARGET	= $(DESTDIR)$(shell sh distro.sh $(distro))

all:		anarsizm.dat

anarsizm.dat:	anarsizm
		@strfile anarsizm

anarsizm:	$(SRC)/*
		@cat $(SRC)/* > anarsizm

clean:;		rm -f anarsizm.dat anarsizm

install:	all
		cp anarsizm $(TARGET)
		cp anarsizm.dat $(TARGET)

uninstall:;	rm $(TARGET)/anarsizm
		rm $(TARGET)/anarsizm.dat
