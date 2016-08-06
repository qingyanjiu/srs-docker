FROM centos:7

RUN yum update -y

RUN yum install -y wget

RUN yum install -y unzip

RUN mkdir /opt/srs

WORKDIR /opt/srs

RUN wget http://ossrs.net/srs.release/releases/files/SRS-CentOS6-x86_64-1.0.32.zip

RUN unzip SRS-CentOS6-x86_64-1.0.32.zip

RUN /bin/sh SRS-CentOS6-x86_64-1.0.32/INSTALL

COPY ./nohup.sh ./

CMD ["/bin/sh","nohup.sh"]

