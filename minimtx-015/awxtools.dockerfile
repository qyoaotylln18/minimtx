FROM centos:8

LABEL Maintainer="schneidermatic <markus.schneider73@gmail.com>"
LABEL Description="AWX Tools server"
LABEL CentOS="8"
LABEL OpenSSH="8.0p1"
LABEL Tini="0.19.0"
LABEL Name="AWX CLI"
LABEL VERSION="1"

ENV TINI_VERSION v0.19.0

ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini

RUN yum -y install sudo && \
    yum -y install openssh openssh-server openssh-clients && \
    yum -y install python3 && \
    yum -y install ncurses && \
    yum -y install vim && \
    yum -y install which && \
    yum -y clean all

RUN pip3 install awxkit

RUN groupadd -r sysadm -g 666
RUN useradd -g sysadm -G wheel -m -u 1000 sysadm

RUN echo "sysadm ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/user && \
    chmod 0440 /etc/sudoers.d/user

RUN rm /run/nologin

ADD ./resources/docker/scripts/boot.sh /boot.sh
RUN chmod +x /boot.sh /tini
ENTRYPOINT ["/tini", "-g", "--"]
CMD /boot.sh

EXPOSE 22