FROM quay.io/toolbx-images/archlinux-toolbox:latest
RUN pacman -Syu --needed --noconfirm  \
  neofetch \
  htop \
  neovim \
  ghc \
  sbcl \
  guile2.2 \
  rustup \
  cataclysm-dda \
  cataclysm-dda-tiles \
  && pacman -Scc --noconfirm \
  && rustup default nightly
