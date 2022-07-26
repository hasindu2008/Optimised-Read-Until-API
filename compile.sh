#!/bin/bash

set -x
set -e

export PATH=$HOME/grpcinstall/bin:$PATH
DIR=$(pwd)
rm -rf $HOME/grpc/examples/cpp/minknow_api
rm -rf $HOME/grpc/examples/protos
cp -r $HOME/Optimised-Read-Until-API/minknow_api $HOME/grpc/examples/cpp/
cp -r $HOME/Optimised-Read-Until-API/proto $HOME/grpc/examples/
cd $HOME/grpc/examples/cpp/minknow_api/cmake/build
cmake ../../
make -j
cp read_until $DIR/
cd $DIR
