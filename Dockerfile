FROM  golang:1.8
MAINTAINER nori007 <nori007.naver.com>


ARG PROJECT_TARGET=dockerAndGolang
WORKDIR /go/src
RUN pwd
RUN git clone https://github.com/nori007/$PROJECT_TARGET

WORKDIR /go/src/$PROJECT_TARGET
RUN pwd
RUN go build .
RUN ls -al

# ENTRYPOINT /go/src/$PROJECT_TARGET

# EXPOSE 6800
# CMD ["./dockerAndGolang"]
CMD ["sh", "-c", "$PROJECT_TARGET"]