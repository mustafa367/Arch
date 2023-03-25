FROM quay.io/toolbx-images/archlinux-toolbox:latest
RUN pacman -Syu --needed --noconfirm  \
  neofetch \ #Outputs system information
  htop \     #Outputs system resource usage
  neovim \   #Text editor
  ghc \      #Haskell
  sbcl \     #LISP
  && pacman -Scc --noconfirm
