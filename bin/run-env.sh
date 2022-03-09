#!/bin/bash

ROOTDIR=`git rev-parse --show-toplevel`
DOCKER_IMAGE_PREFIX=creatempls

if [ $OSTYPE == "msys" ] # if we're using Git bash, we need an extra little somthing
then
  WINPTY="winpty -Xallow-non-tty"
fi

$WINPTY docker run --rm -it -v "${ROOTDIR}:/project" ${DOCKER_IMAGE_PREFIX}/rpi-pico-builder
