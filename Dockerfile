FROM andrewosh/binder-base

USER root

RUN curl -sL https://deb.nodesource.com/setup | bash - && \
    apt-get install -y nodejs && \
    npm install -g bower

USER main

COPY requirements.txt
RUN pip install -r requirements.txt
