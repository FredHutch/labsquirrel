# the dockerfile for the ssh daemon
# build me as sc-registry.fredhutch.org/labsquirrel_ssh:latest
FROM panubo/sshd


RUN delgroup www-data || true
RUN deluser www-data || true
RUN rm -rf /home/www-data /var/spool/mail/www-data

RUN groupadd -g 3333 www-data

RUN useradd -u 3333 -g www-data -m -d /home/www-data www-data

ADD labsquirrel.pub /root/.ssh/authorized_keys
ADD labsquirrel.pub /etc/authorized_keys/www-data

RUN echo "www-data:$(date)" | chpasswd


ENV SSH_USERS="www-data:3333:3333"