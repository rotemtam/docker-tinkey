FROM openjdk:19-slim

ADD https://storage.googleapis.com/tinkey/tinkey-1.6.1.tar.gz .

RUN echo 156e902e212f55b6747a55f92da69a7e10bcbd00f8942bc1568c0e7caefff3e1  tinkey-1.6.1.tar.gz > sha256.txt && \
    sha256sum -c sha256.txt

RUN tar xzvf tinkey-1.6.1.tar.gz

ENTRYPOINT ["/tinkey"]