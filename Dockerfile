FROM golang:1.16-buster

# Install dependencies.
RUN apt update -y
RUN apt install -y mesa-opencl-icd ocl-icd-opencl-dev gcc git bzr jq pkg-config curl wget libhwloc-dev
RUN apt upgrade -y

# Install Rust.
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Configure Go modules and proxy.
ENV GO111MODULE=on
ENV GOPROXY=https://proxy.golang.org

# Install Filecoin (version 2021-02-17-b6e0b35fb49ed0fedb6a6a473b222e3b8a7d7f17).
RUN mkdir -p /renproject/multichain/chain/filecoin
WORKDIR /renproject/multichain/chain/filecoin
RUN git clone https://github.com/filecoin-project/filecoin-ffi
WORKDIR /renproject/multichain/chain/filecoin/filecoin-ffi
RUN git checkout b6e0b35fb49ed0fedb6a6a473b222e3b8a7d7f17
RUN PATH="$HOME/.cargo/bin:$PATH" RUSTFLAGS="-C target-cpu=native -g" FFI_BUILD_FROM_SOURCE=1 make clean
RUN PATH="$HOME/.cargo/bin:$PATH" RUSTFLAGS="-C target-cpu=native -g" FFI_BUILD_FROM_SOURCE=1 make all

# Copy the Multichain into the Docker guest environment.
WORKDIR /renproject/multichain
COPY go.mod go.mod
COPY go.sum go.sum
COPY . .

# Build and lint.
RUN go build ./...
RUN go vet ./...