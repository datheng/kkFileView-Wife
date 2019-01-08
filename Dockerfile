FROM ubuntu:18.04
MAINTAINER Maosheng Wang <wms@carrotit.com>

# chinese support
RUN apt-get update && \
apt-get install -y language-pack-zh* && \
apt-get install -y chinese* && \
apt-get install -y fonts-arphic-ukai fonts-arphic-uming fonts-ipafont-mincho fonts-ipafont-gothic fonts-unfonts-core  && \
apt-get install -y ttf-wqy-microhei ttf-wqy-zenhei && \
apt-get install -y ttf-mscorefonts-installer

# Set the locale
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8

# java-with-apt-get-on-ubuntu-18-04
RUN apt-get update && \
apt-get install -y openjdk-8-jdk && \
apt-get install -y ant && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* && \
rm -rf /var/cache/oracle-jdk8-installer;
 
# Fix certificate issues, found as of 
# https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/983302
RUN apt-get update && \
apt-get install -y ca-certificates-java && \
apt-get clean && \
update-ca-certificates -f && \
rm -rf /var/lib/apt/lists/* && \
rm -rf /var/cache/oracle-jdk8-installer;

# Setup JAVA_HOME, this is useful for docker commandline
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME


# Install wget
RUN apt-get update -y && \
    apt-get install -y wget

# Install OpenOffice
RUN wget https://sourceforge.net/projects/openofficeorg.mirror/files/4.1.6/binaries/zh-CN/Apache_OpenOffice_4.1.6_Linux_x86-64_install-deb_zh-CN.tar.gz
RUN tar -xvf Apache_OpenOffice*.tar.gz
RUN dpkg -i zh-CN/DEBS/*.deb
RUN dpkg -i zh-CN/DEBS/desktop-integration/*.deb


ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS \
    filepreview_SLEEP=0 \
    JAVA_OPTS=""

# Add a filepreview user to run our application so that it doesn't need to run as root
RUN useradd -d /home/filepreview -ms /bin/bash -g root -G sudo -p filepreview filepreview
USER filepreview
WORKDIR /home/filepreview

ADD entrypoint.sh entrypoint.sh
USER root
RUN chmod 755 entrypoint.sh && chown filepreview:root entrypoint.sh

# Copy fonts
ADD fallback /usr/share/fonts/

USER filepreview
RUN mkdir -p  /home/filepreview/file-preview/convertedFile/demo/

EXPOSE  8012 8012/udp

ADD *.jar app.jar

ENTRYPOINT ["./entrypoint.sh"]
