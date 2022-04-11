
SRC=people
INSTALLDIR=`sh distro.sh $distro`

all: anarsizm.dat

anarsizm.dat: anarsizm
	strfile anarsizm

anarsizm: $SRC
	cat $SRC/* > anarsizm

clean:V:
	rm -f anarsizm.dat anarsizm

install:V: all
	cp anarsizm $INSTALLDIR
	cp anarsizm.dat $INSTALLDIR

uninstall:V:
	rm $INSTALLDIR/anarsizm
	rm $INSTALLDIR/anarsizm.dat
