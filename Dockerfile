FROM ubuntu
RUN <<EOF
apt-get update
apt install -y ansible netcat-openbsd traceroute iputils-ping iproute2 vim bash-completion tzdata
ln -fs /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime
dpkg-reconfigure -f noninteractive tzdata
ENV TZ="Asia/Ho_Chi_Minh"
echo '. /etc/bash_completion' >> /etc/bash.bashrc
  history -c
  > /root/.bash_history
EOF
