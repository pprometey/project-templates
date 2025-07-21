FROM rockylinux:9

ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en

USER root

RUN dnf -y install epel-release && \
    dnf -y update && \
    dnf -y install \
      glibc-langpack-en \
      sudo \
      openssh-clients \
      tree \
      wget \
      unzip \
      iputils \
      net-tools \
      telnet \
      tmux \
      gnupg2 \
      mc \
      vim \
      nano \
      less \
      git \
      python3 \
      python3-pip && \
    localedef -v -c -i en_US -f UTF-8 en_US.UTF-8 || true && \
    dnf clean all

RUN groupadd -r developer && \
    useradd -m -r -g developer developer && \
    echo "developer ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/developer && \
    chmod 440 /etc/sudoers.d/developer && \
    mkdir -p /home/developer/.ssh && \
    chown developer:developer /home/developer/.ssh && \
    chmod 700 /home/developer/.ssh && \
    chmod go-w /home/developer

USER developer
WORKDIR /home/developer
