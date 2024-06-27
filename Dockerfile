FROM quay.io/toolbx-images/archlinux-toolbox:latest
ENV XDG_BIN_HOME=/usr/bin XDG_DATA_HOME=/usr/share COURSIER_BIN_DIR=/usr/bin
RUN pacman -Syu --needed --noconfirm  \
    neovim \
    code \
    ffmpeg \
    rustup \
    go \
    # jdk-openjdk \
    python \
    python-pip \
    texlive-meta \
    && pacman -Scc --noconfirm \
    && curl -fL https://github.com/coursier/coursier/releases/latest/download/cs-x86_64-pc-linux.gz | gzip -d > cs && chmod +x cs && ./cs setup --yes
