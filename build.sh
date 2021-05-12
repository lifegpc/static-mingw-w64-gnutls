cd packages/mingw-w64-gnutls || return 1
git apply ../../mingw-w64-gnutls.patch || return 1
MINGW_ARCH=mingw64 makepkg-mingw -sLf || return 1
