FROM 13331432720/centos_base:latest
MAINTAINER DangerGuy "13331432720@163.com"
LABEL version="1.0.0" 
WORKDIR /usr/src/

ADD https://i.iandun.com:8085/group1/M00/00/00/rBHgNluaO7mERet8AAAAAIF6666.tar.gz /usr/src/
RUN mv rBHgNluaO7mERet8AAAAAIF6666.tar.gz jdk-8u171-linux-x64.tar.gz

# RUN smbclient -c "get jdk-8u171-linux-x64.tar.gz" //172.17.224.54/share -U nobody%
RUN tar xf jdk-8u171-linux-x64.tar.gz -C /usr/local/
ENV JAVA_HOME /usr/local/jdk1.8.0_171
ENV PATH $JAVA_HOME/bin:$PATH
