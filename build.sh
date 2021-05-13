cp -v 0006-iconv-add-it-to-pkg-config.patch packages/mingw-w64-gnutls || exit 1
cd packages || exit 1
git apply --ignore-space-change --ignore-whitespace '../mingw-w64-gnutls.patch' || exit 1
cd mingw-w64-gnutls || exit 1
dos2unix PKGBUILD || exit 1
MINGW_ARCH=mingw64 makepkg-mingw -sLf --nosign --noconfirm --skippgpcheck --noprogressbar --skipchecksums || exit 1
