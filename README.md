# forcepid
Forces X11 programs that are preloaded with this library to include _NET_WM_PID

# Usage
Run `make` to build the .so files, it will build a 32-bit version and a 64-bit version
Or run `sudo make install` to install them into /usr/lib32 and /usr/lib64 respectively
You can also uninstall them with `sudo make uninstall`

To use this, use `LD_PRELOAD=/usr/lib32/forcepid32.so` or `LD_PRELOAD=/usr/lib64/forcepid.so` depending on the program you wish to get a _NET_WM_PID for.

# Sources
Original code found here: https://www.mail-archive.com/devel@xfree86.org/msg05806.html
Found on: https://stackoverflow.com/questions/1131277/how-to-convert-a-x11-window-id-to-a-process-id
