s = `pkg-config --static --libs gnutls`
gcc test.c -o test.o -static $s
