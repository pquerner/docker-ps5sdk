FROM ubuntu:22.04

ENV PS5SDK=/usr/local/ps5dev

RUN \
    apt-get -y update && \
    apt-get -y install wget nano tmux software-properties-common lsb-release build-essential ninja-build clang lldb lld curl git && \
    apt-get -y clean autoclean autoremove && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

# Cmake ppt
RUN \
    apt purge --auto-remove cmake && \
    wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null && \
    apt-add-repository 'deb https://apt.kitware.com/ubuntu/ jammy main' && \
    apt-get -y update && apt-get -y install cmake

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]