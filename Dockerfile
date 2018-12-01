# the dockerfile for the ssh daemon
# build me as dockerimages.fhcrc.org/labsquirrel_ssh:latest
FROM panubo/sshd

ADD labsquirrel.pub /root/.ssh/authorized_keys
ADD labsquirrel.pub /etc/authorized_keys/www-data

ENV SSH_USERS="www-data:33:33"
