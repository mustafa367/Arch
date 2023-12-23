FROM quay.io/toolbx-images/archlinux-toolbox:latest
RUN pacman -Syu --needed --noconfirm  \
  neofetch \
  htop \
  neovim \
  code \
  texlive-meta \
  ghc \
  ghcup-hs-bin \
  guile2.2 \
  rustup \
  python \
  python-pip \
  ffmpeg \
  && pacman -Scc --noconfirm
