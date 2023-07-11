FROM quay.io/toolbx-images/archlinux-toolbox:latest
RUN pacman -Syu --needed --noconfirm  \
  neofetch \
  htop \
  neovim \
  vscodium-bin \
  ghc \
  guile2.2 \
  rustup \
  ffmpeg \
  cataclysm-dda \
  cataclysm-dda-tiles \
  && pacman -Scc --noconfirm
