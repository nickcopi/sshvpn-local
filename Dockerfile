FROM debian:latest

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get -y install ssh && apt-get install net-tools

RUN mkdir /root/.ssh

COPY key.pem /root/.ssh/key.pem

RUN chmod 600 /root/.ssh/key.pem

RUN ./tunmake.sh
#RUN apt-get update && apt-get install -y net-tools && apt-get install -y openssh-server && apt-get install -y curl

#COPY sshd_config /etc/ssh/sshd_config

#COPY 90-tap0.netdev /etc/systemd/network

#RUN printf "%s\n%s" temp temp | passwd root

#EXPOSE 1194 22

#RUN ./tunmake.sh

CMD ["./init.sh"]
