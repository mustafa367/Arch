FROM archlinux:base-devel

ENV XDG_BIN_HOME=/usr/bin XDG_DATA_HOME=/usr/share
ENV COURSIER_BIN_DIR=/usr/bin
#ENV BOOTSTRAP_HASKELL_NONINTERACTIVE=1 GHCUP_USE_XDG_DIRS=1

RUN pacman -Syu --needed --noconfirm  \
    archlinux-keyring \
    neofetch \
    neovim \
    git-lfs \
    gcc \
    rustup \
    zig \
    python \
    python-pip \
    clojure \
    djvulibre \
    ghostscript \
    sdl2 \
    supercollider \
    sc3-plugins \
    pipewire \
    pipewire-jack \
    wireplumber \
    # nodejs \
    # jdk-openjdk \
    # racket \
    # ffmpeg \
    # guile2.2 \
    # htop \
    # code \
    # texlive-meta \
    # go \
    && pacman -Scc --noconfirm \
    # && curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org |  sh \
    # && /usr/bin/ghcup install ghc \
    # && /usr/bin/ghcup install cabal \
    # && /usr/bin/ghcup install hls \
    # && curl -fL https://github.com/coursier/coursier/releases/latest/download/cs-x86_64-pc-linux.gz | gzip -d > cs && chmod +x cs && ./cs setup --yes \
    && curl -fsSL https://code-server.dev/install.sh | sh -s -- --method standalone --prefix=/usr/local \
    && curl -fsSL --output /usr/bin/bazel https://github.com/bazelbuild/bazelisk/releases/download/v1.20.0/bazelisk-linux-amd64 \
    && rustup default stable
