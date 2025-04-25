FROM archlinux:base-devel

ENV XDG_BIN_HOME=/usr/bin XDG_DATA_HOME=/usr/share
ENV COURSIER_BIN_DIR=/usr/bin
ENV BOOTSTRAP_HASKELL_NONINTERACTIVE=1 GHCUP_USE_XDG_DIRS=1

RUN pacman -Syu --needed --noconfirm  \
    archlinux-keyring \
    neofetch \
    neovim \
    git-lfs \
    # htop \
    # ffmpeg \
    # Documents
    djvulibre \
    ghostscript \
    texlive-meta \
    # Audio
    supercollider \
    sc3-plugins \
    pipewire \
    pipewire-jack \
    wireplumber \
    # Graphics
    sdl2 \
    # Programming Languages
    gcc \
    rustup \
    zig \
    # nodejs \
    pnpm \
    gradle \
    # dotnet-sdk \
    # python \
    # python-pip \
    # clojure \
    # jdk-openjdk \
    # racket \
    # guile2.2 \
    # go \
    && pacman -Scc --noconfirm \
    # Haskell Install
    && curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org |  sh \
    && /usr/bin/ghcup install ghc \
    && /usr/bin/ghcup install cabal \
    && /usr/bin/ghcup install hls \
    # Scala Install
    && curl -fL https://github.com/coursier/coursier/releases/latest/download/cs-x86_64-pc-linux.gz | gzip -d > cs && chmod +x cs && ./cs setup --yes \
    # VS Code Server Install
    && curl -fsSL https://code-server.dev/install.sh | sh -s -- --method standalone --prefix=/usr/local \
    # Bazel Install
    && curl -fsSL --output /usr/bin/bazel https://github.com/bazelbuild/bazelisk/releases/download/v1.20.0/bazelisk-linux-amd64 \
    && chmod a+x /usr/bin/bazel \
    # Rust Default Toolchain Install
    && rustup default stable
