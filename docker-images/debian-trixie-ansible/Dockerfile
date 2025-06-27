FROM pprometey/debian-trixie-base:latest

RUN apt-get update && apt-get install -y locales && \
    sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen en_US.UTF-8 && \
    update-locale LANG=en_US.UTF-8

RUN groupadd -r developer && useradd -m -r -g developer developer \
    && echo "developer ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/developer \
    && chmod 440 /etc/sudoers.d/developer && \
    mkdir -p /home/developer/.ssh && \
    chown developer:developer /home/developer/.ssh && \
    chmod 700 /home/developer/.ssh \
    && chmod go-w /home/developer

USER developer
WORKDIR /home/developer

ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

RUN python3 -m venv ~/.venv && \
    ~/.venv/bin/pip install --upgrade pip ansible && \
    echo "source ~/.venv/bin/activate" >> ~/.bashrc && \
    echo "alias ll='ls -lpa'" >> ~/.bashrc

ENV PATH="/home/developer/.venv/bin:$PATH"