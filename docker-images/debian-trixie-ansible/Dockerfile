FROM pprometey/debian-trixie-base:latest

USER developer
WORKDIR /home/developer

ENV PATH="/home/developer/.venv/bin:$PATH"

RUN python3 -m venv ~/.venv && \
    ~/.venv/bin/pip install --upgrade pip ansible && \
    echo "source ~/.venv/bin/activate" >> ~/.bashrc && \
    echo "alias ll='ls -lpa'" >> ~/.bashrc