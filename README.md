# static-mingw-w64-gnutls
Static version of gnutls. Can dynamically linked to another project.  
## Install
Use `pacman -U "file" --overwrite "*"` to install.
### Info
p11-kit and idn2 was disabled in this version.
## Example
```bash
s=`pkg-config --static --lib gnutls`
gcc -static '<file>' $s
```
