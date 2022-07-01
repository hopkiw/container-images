FROM ubuntu:jammy
COPY build.sh user.sh /
RUN chmod +rwx /build.sh /user.sh && /build.sh && rm /build.sh /user.sh
WORKDIR /home/developer
USER developer
