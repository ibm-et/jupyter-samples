FROM andrewosh/binder-base

USER root

RUN curl -sL https://deb.nodesource.com/setup_0.12 | bash - && \
    apt-get install -y nodejs && \
    npm install -g bower

USER main

COPY requirements.txt /tmp/requirements.txt
RUN cd /tmp && pip install -r requirements.txt
