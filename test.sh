cd packages/mingw-w64-gnutls
make install
cd ../../
s = `pkg-config --static --libs gnutls`
gcc test.c -o test.o -static $s
