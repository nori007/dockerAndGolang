FROM  golang:1.8
MAINTAINER nori007 <nori007.naver.com>


ARG PROJECT_TARGET=dockerAndGolang
RUN cd /go/src
RUN git clone https://github.com/nori007/$PROJECT_TARGET

RUN cd /go/src/$PROJECT_TARGET
RUN go build .

ENTRYPOINT /go/src/$PROJECT_TARGET

EXPOSE 6800
CMD [$PROJECT_TARGET]