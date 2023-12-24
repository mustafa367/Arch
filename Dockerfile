FROM quay.io/toolbx-images/archlinux-toolbox:latest
ENV GHCUP_USE_XDG_DIRS=1
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
    && curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh \
    && ~/.local/bin/ghcup install ghc \
    && ~/.local/bin/ghcup install cabal \
    && ~/.local/bin/ghcup install hls
