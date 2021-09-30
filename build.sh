#!/bin/bash

GOOS=linux
GOARCH=amd64
VERSION=$(cat VERSION)

mkdir -pv ./bin/ssh_exporter-1.2.1.$GOOS-$GOARCH
env GOOS=$GOOS GOARCH=$GOARCH go build -o ./bin/ssh_exporter-1.2.1.$GOOS-$GOARCH
cd bin
tar -czvf ../build/ssh_exporter-1.2.1.$GOOS-$GOARCH.tar.gz ssh_exporter-1.2.1.$GOOS-$GOARCH
cd ../
