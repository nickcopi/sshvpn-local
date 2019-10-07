FROM debian:latest

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get -y install ssh && apt-get -y install net-tools && apt-get -y install iptables

RUN mkdir /root/.ssh

COPY key.pem /root/.ssh/key.pem

RUN chmod 600 /root/.ssh/key.pem

RUN ./tunmake.sh

CMD ["./init.sh"]
