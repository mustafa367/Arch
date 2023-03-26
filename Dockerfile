FROM quay.io/toolbx-images/archlinux-toolbox:latest
RUN pacman -Syu --needed --noconfirm  \
  neofetch \
  htop \
  neovim \
  ghc \
  sbcl \
  guile2.2 \
  && pacman -Scc --noconfirm
