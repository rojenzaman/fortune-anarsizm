
SRC=people
INSTALLDIR=`sh distro.sh $distro`

all: anarchism.dat

anarchism.dat: anarchism
	strfile anarchism

anarchism: $SRC
	cat $SRC/* > anarchism

clean:V:
	rm -f anarchism.dat anarchism

install:V: all
	cp anarchism $INSTALLDIR
	cp anarchism.dat $INSTALLDIR

uninstall:V:
	rm $INSTALLDIR/anarchism
	rm $INSTALLDIR/anarchism.dat
