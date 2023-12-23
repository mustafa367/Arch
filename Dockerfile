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
    && curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh \
    && /root/.ghcup/bin/ghcup install ghc \
    && /root/.ghcup/bin/ghcup install cabal \
    && /root/.ghcup/bin/ghcup install hls
ENV PATH=${PATH}:/root/.local/bin
ENV PATH=${PATH}:/root/.ghcup/bin 
