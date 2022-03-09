#!/bin/bash

ROOTDIR=`git rev-parse --show-toplevel`

docker build $1 -t \
	creatempls/rpi-pico-builder \
	${ROOTDIR}
