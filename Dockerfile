FROM quay.io/toolbx-images/archlinux-toolbox:latest
RUN pacman -Syu --needed --noconfirm  \
  neofetch \
  htop \
  neovim \
  ghc \
  ghc-prof \
  ghc-doc \
  sbcl \
  && pacman -Scc --noconfirm
