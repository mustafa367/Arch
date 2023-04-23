FROM quay.io/toolbx-images/archlinux-toolbox:latest
RUN pacman -Syu --needed --noconfirm  \
  neofetch \
  htop \
  neovim \
  ghc \
  sbcl \
  guile2.2 \
  cataclysm-dda \
  cataclysm-dda-tiles \
  && pacman -Scc --noconfirm
