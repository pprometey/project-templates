FROM debian:trixie

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      ca-certificates sudo openssh-client tree curl wget unzip \
      iputils-ping net-tools telnet pv gnupg screen mc vim nano less git && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
      python3 python3-venv python3-pip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*