#!/bin/sh
PROJ_PATH="`dirname \"$0\"`"
PROJ_PATH="`( cd \"$PROJ_PATH\" && pwd )`"


ORG_PATH="github.com/WaimaiChaoren"
REPO_PATH="${ORG_PATH}/gcfg"

export GOPATH=${PROJ_PATH}/gopath


rm -f $GOPATH/src/${REPO_PATH}
mkdir -p $GOPATH/src/${ORG_PATH}
ln -s ${PROJ_PATH} $GOPATH/src/${REPO_PATH}


go build
go test -short
