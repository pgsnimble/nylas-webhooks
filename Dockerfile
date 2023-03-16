FROM ubuntu:20.04 AS builder

RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    lsb-release

RUN curl -sL https://cli.nylas.com/download/latest/linux_amd64 | tar -xvz -C /usr/local/bin/ nylas

FROM builder AS nylas

WORKDIR /app

COPY init.sh .

RUN chmod +x init.sh

CMD ["sh", "init.sh"]