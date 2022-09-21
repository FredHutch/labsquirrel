# the dockerfile for the ssh daemon
# build me as sc-registry.fredhutch.org/labsquirrel_ssh:latest
FROM panubo/sshd

RUN useradd -u 33 -g www-data -m -d /home/www-data www-data

ADD labsquirrel.pub /root/.ssh/authorized_keys
ADD labsquirrel.pub /etc/authorized_keys/www-data



ENV SSH_USERS="www-data:33:82"

