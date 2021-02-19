FROM golang:1.16.0-buster

# Install dependencies
RUN apt update -y
RUN apt install -y mesa-opencl-icd ocl-icd-opencl-dev gcc git bzr jq pkg-config curl wget

# Configure go modules and go proxy
ENV GO111MODULE=on
ENV GOPROXY=https://proxy.golang.org

# Install Filecoin (version 2021-02-17)
RUN mkdir -p $(go env GOPATH)$GOPATH
RUN mkdir -p $GOPATH/src/github.com/renproject/multichain
WORKDIR $GOPATH/src/github.com/filecoin-project
RUN git clone https://github.com/filecoin-project/filecoin-ffi
WORKDIR $GOPATH/src/github.com/filecoin-project/filecoin-ffi
RUN git checkout b6e0b35fb49ed0fe
RUN make

# Install multichain
RUN mkdir -p $GOPATH/src/github.com/renproject/multichain
WORKDIR $GOPATH/src/github.com/renproject/multichain
COPY . .
RUN go build