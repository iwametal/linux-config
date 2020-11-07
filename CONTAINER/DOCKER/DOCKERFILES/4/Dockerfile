FROM golang

WORKDIR /app
ADD . /app

RUN go build -o meu_go_exe
ENTRYPOINT ./meu_go_exe
