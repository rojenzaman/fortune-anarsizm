
SRC	= people
TARGET	= $(DESTDIR)$(shell sh distro.sh $(distro))

all:		anarchism.dat

anarchism.dat:	anarchism
		@strfile anarchism

anarchism:	$(SRC)/*
		@cat $(SRC)/* > anarchism

clean:;		rm -f anarchism.dat anarchism

install:	all
		cp anarchism $(TARGET)
		cp anarchism.dat $(TARGET)

uninstall:;	rm $(TARGET)/anarchism
		rm $(TARGET)/anarchism.dat
