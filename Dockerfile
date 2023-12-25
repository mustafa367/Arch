FROM quay.io/toolbx-images/archlinux-toolbox:latest
ENV BOOTSTRAP_HASKELL_NONINTERACTIVE=1 GHCUP_USE_XDG_DIRS=1 XDG_BIN_HOME=/usr/bin XDG_DATA_HOME=/usr/bin 
RUN pacman -Syu --needed --noconfirm  \
    neofetch \
    htop \
    neovim \
    code \
    texlive-meta \
    guile2.2 \
    rustup \
    python \
    python-pip \
    ffmpeg \
    && pacman -Scc --noconfirm \
    && curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org |  sh \
    && /usr/local/bin/ghcup install ghc \
    && /usr/local/bin/ghcup install cabal \
    && /usr/local/bin/ghcup install hls
