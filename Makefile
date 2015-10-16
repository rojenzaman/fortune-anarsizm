
SRC	= people
TARGET	= /usr/share/games/fortunes

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

