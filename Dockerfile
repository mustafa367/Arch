FROM quay.io/toolbx-images/archlinux-toolbox:latest
RUN sudo pacman -Syu --needed --noconfirm 
  vim \
  && pacman -Scc --noconfirm
