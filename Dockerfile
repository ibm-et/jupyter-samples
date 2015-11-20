FROM andrewosh/binder-base

USER root

RUN curl -sL https://deb.nodesource.com/setup_0.12 | bash - && \
    apt-get install -y nodejs && \
    npm install -g bower

USER main

RUN pip install -r requirements.txt
RUN source activate python3 && pip install -r requirements.txt
