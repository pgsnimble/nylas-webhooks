FROM ubuntu:20.04 AS builder

RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    lsb-release

RUN curl -sL https://cli.nylas.com/download/latest/linux_amd64 | tar -xvz -C /usr/local/bin/ nylas

FROM builder AS nylas

COPY .env /mnt/
COPY authenticate.sh .
COPY webhooks.sh .

RUN chmod +x authenticate.sh
RUN chmod +x webhooks.sh

CMD ["./authenticate.sh && ./webhooks.sh"]