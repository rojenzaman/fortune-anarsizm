
SRC	= people
TARGET	= $(shell sh distro.sh $(distro))

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
