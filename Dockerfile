FROM quay.io/toolbx-images/archlinux-toolbox:latest
RUN pacman -Syu --needed --noconfirm  \
  neofetch \
  htop \
  neovim \
  code \
  texlive-meta \
  ghc \
  guile2.2 \
  rustup \
  ffmpeg \
  && pacman -Scc --noconfirm
