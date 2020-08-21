FROM centos:centos7.4.1708

RUN yum update -y
RUN yum install -y gcc gcc-c++ make openssl-devel wget tar git

RUN wget https://github.com/Kitware/CMake/releases/download/v3.18.2/cmake-3.18.2.tar.gz && tar xvf cmake-3.18.2.tar.gz && cd cmake-3.18.2 && ./bootstrap --prefix=/usr && make && make install