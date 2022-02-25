#!/bin/bash

set -x

export PATH=/home/hasindu/grpcshit/bin:$PATH
DIR=$(pwd)
rm -r $HOME/grpc/examples/cpp/minknow_api
rm -r $HOME/grpc/examples/protos
cp -r $HOME/Optimised-Read-Until-API/minknow_api $HOME/grpc/examples/cpp/
cp -r $HOME/Optimised-Read-Until-API/proto $HOME/grpc/examples/
cd $HOME/grpc/examples/cpp/minknow_api/cmake/build
cmake ../../
make -j
cp read_until $DIR/
cd $DIR
