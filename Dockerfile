FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
	git \
	build-essential \
	python3 \
	cmake \
	gcc-arm-none-eabi libnewlib-arm-none-eabi

RUN git clone https://github.com/raspberrypi/pico-sdk.git /pico-sdk
WORKDIR /pico-sdk
RUN git submodule update --init

VOLUME [ "/project" ]

ENV PICO_SDK_PATH=/pico-sdk

WORKDIR /project
