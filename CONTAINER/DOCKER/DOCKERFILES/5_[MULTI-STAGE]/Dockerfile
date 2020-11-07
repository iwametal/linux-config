FROM golang AS building

WORKDIR /app
ADD . /app

RUN go build -o meu_go_exe

FROM alpine

WORKDIR /diretorio_go
COPY --from=building /app/meu_go_exe /diretorio_go

ENTRYPOINT ./meu_go_exe
