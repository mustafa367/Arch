FROM quay.io/toolbx-images/archlinux-toolbox:latest
ENV BOOTSTRAP_HASKELL_NONINTERACTIVE=1 GHCUP_USE_XDG_DIRS=1 XDG_BIN_HOME=/usr/bin XDG_DATA_HOME=/usr/share 
RUN pacman -Syu --needed --noconfirm  \
    neofetch \
    htop \
    neovim \
    texlive-meta \
    guile2.2 \
    rustup \
    python \
    python-pip \
    go \
    racket \
    ffmpeg \
    && pacman -Scc --noconfirm \
    && curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org |  sh \
    && /usr/bin/ghcup install ghc \
    && /usr/bin/ghcup install cabal \
    && /usr/bin/ghcup install hls \
    && curl -fL https://github.com/coursier/coursier/releases/latest/download/cs-x86_64-pc-linux.gz | gzip -d > cs && chmod +x cs && ./cs setup --yes
