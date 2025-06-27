FROM debian:trixie

ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      locales ca-certificates sudo openssh-client tree curl wget unzip \
      iputils-ping net-tools telnet pv gnupg screen mc vim nano less git \
      python3 python3-venv python3-pip && \
    sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen en_US.UTF-8 && \
    update-locale LANG=en_US.UTF-8 && \
    groupadd -r developer && \
    useradd -m -r -g developer developer && \
    echo "developer ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/developer && \
    chmod 440 /etc/sudoers.d/developer && \
    mkdir -p /home/developer/.ssh && \
    chown developer:developer /home/developer/.ssh && \
    chmod 700 /home/developer/.ssh && \
    chmod go-w /home/developer && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER developer
WORKDIR /home/developer