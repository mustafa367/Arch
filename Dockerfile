FROM quay.io/toolbx-images/archlinux-toolbox:latest
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
    && curl https://downloads.haskell.org/~ghcup/x86_64-linux-ghcup > /usr/bin/ghcup \
    && chmod +x /usr/bin/ghcup \
    && ghcup install ghc --isolate /usr/bin/ghc \
    && ghcup install cabal --isolate /usr/bin/cabal \
    && ghcup install hls --isolate /usr/bin/hls
