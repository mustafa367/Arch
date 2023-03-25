FROM quay.io/toolbx-images/archlinux-toolbox:latest
RUN pacman -Syu --needed --noconfirm 
  vim \
  && pacman -Scc --noconfirm
