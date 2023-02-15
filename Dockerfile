FROM alpine

WORKDIR /jdk

COPY jdk8u362-b09 /jdk/jdk8u362-b09
COPY jdk-11.0.18+10 /jdk/jdk-11.0.18+10
COPY jdk-17.0.6+10 /jdk/jdk-17.0.6+10
COPY runtests /jdk/runtests

COPY Sleep.java /jdk/Sleep.java

ENTRYPOINT ["/bin/sh", "/jdk/runtests"] 


