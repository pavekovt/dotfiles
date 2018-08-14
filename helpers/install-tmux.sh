LE_V="2.1.8"
TMUX_V="2.7"

# DOWNLOAD SOURCES FOR LIBEVENT AND MAKE AND INSTALL
wget https://github.com/downloads/libevent/libevent/libevent-${LE_V}-stable.tar.gz
tar -xvzf libevent-${LE_V}-stable.tar.gz
cd libevent-${LE_V}-stable
./configure --prefix=/usr/local
make
sudo make install

# DOWNLOAD SOURCES FOR TMUX AND MAKE AND INSTALL
wget https://github.com/tmux/tmux/releases/download/${TMUX_V}/tmux-${TMUX_V}.tar.gz
tar -xvzf tmux-${TMUX_V}.tar.gz
cd tmux-${TMUX_V}
LDFLAGS="-L/usr/local/lib -Wl,-rpath=/usr/local/lib" ./configure --prefix=/usr/local
make
sudo make install
