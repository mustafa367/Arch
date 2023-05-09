FROM quay.io/toolbx-images/archlinux-toolbox:latest
RUN pacman -Syu --needed --noconfirm  \
  neofetch \
  htop \
  neovim \
  ghcup-hs-bin \
  guile2.2 \
  rustup \
  cataclysm-dda \
  cataclysm-dda-tiles \
  && pacman -Scc --noconfirm
