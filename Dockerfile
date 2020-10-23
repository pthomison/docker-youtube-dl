FROM fedora:32

RUN dnf update -y

RUN dnf install youtube-dl -y
