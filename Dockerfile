FROM golang:1.18-alpine as builder
# 设置环境变量 GO111MODULE 为 on
ENV GO111MODULE=on

RUN apk add --no-cache gcc musl-dev linux-headers git g++

ADD . /prysm
RUN cd /prysm && go build -o ./cmd/beacon-chain/beacon-chain ./cmd/beacon-chain

FROM alpine:latest
RUN apk add --no-cache gcc musl-dev linux-headers git g++
RUN apk add --no-cache ca-certificates
COPY --from=builder /prysm/cmd/beacon-chain/beacon-chain /usr/local/bin

ENTRYPOINT ["beacon-chain"]