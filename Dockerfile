FROM ubuntu:20.04

USER root

ENV TZ=Europe/Minsk
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update -y 
RUN apt install -y build-essential gdb


RUN apt-get update && apt-get install -y software-properties-common gcc && \
    add-apt-repository -y ppa:deadsnakes/ppa

RUN apt-get update && apt-get install -y python3.6 python3-distutils python3-pip python3-apt


# WORKDIR /util_sink
# COPY util_sink/ .
# RUN make

# #dependency
# WORKDIR /lora_gateway
# COPY lora_gateway/ .
# RUN make


# WORKDIR /lora_pkt_fwd
# COPY lora_pkt_fwd/ .


# CCache installation
# RUN apt install -y ccache
# ENV PATH="/usr/lib/ccache:${PATH}"

# RUN mkdir /arm-gcc && \
#     cd /arm-gcc && \
#     wget "$ARM_GCC_URL" && \
#     tar xjf gcc-arm-none-eabi-10.3-2021.07-x86_64-linux.tar.bz2 && \
#     cd /bin && \
#     ln -s /arm-gcc/gcc-arm-none-eabi-10.3-2021.07/bin/* .



# RUN apt install -y software-properties-common
# RUN add-apt-repository ppa:deadsnakes/ppa -y
# RUN apt update -y 
# RUN apt install -y python3.8
# RUN apt install -y python3-pip
# RUN pip3 install --upgrade protobuf grpcio-tools

# FROM alpine:3.14

# USER root


# ENV ARM_GCC_URL="https://developer.arm.com/-/media/Files/downloads/gnu-rm/10.3-2021.07/gcc-arm-none-eabi-10.3-2021.07-x86_64-linux.tar.bz2"

# RUN mkdir /arm-gcc && \
#     cd /arm-gcc && \
#     wget "$ARM_GCC_URL" && \
#     tar xjf gcc-arm-none-eabi-10.3-2021.07-x86_64-linux.tar.bz2 && \
#     cd /bin && \
#     ln -s /arm-gcc/gcc-arm-none-eabi-10.3-2021.07/bin/* .




# RUN apk update && apk add cmake make alpine-sdk


