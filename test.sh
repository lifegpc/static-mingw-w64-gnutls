cd packages/mingw-w64-gnutls/src/build*
make install
cd ../../../../
s=`pkg-config --static --libs gnutls`
echo $s
gcc test.c -o test.o -static $s
