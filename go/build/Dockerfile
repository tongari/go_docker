# goのイメージ
FROM golang:latest
# アップデート
RUN apt update \
  && apt install -y vim
# go module
ENV GO111MODULE on
# appディレクトリの作成
RUN mkdir /go/src/app
# ワーキングディレクトリの設定
WORKDIR /go/src/app
# ホストのファイルをコンテナの作業ディレクトリに移行
ADD . /go/src/app

# install go tools
RUN go get github.com/nsf/gocode \
  github.com/go-delve/delve/cmd/dlv \
  golang.org/x/lint/golint \
  golang.org/x/tools/gopls
