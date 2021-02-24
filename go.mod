module github.com/renproject/multichain

go 1.16

replace github.com/drand/bls12-381 => github.com/drand/bls12-381 v0.3.1

replace github.com/gogo/protobuf => github.com/gogo/protobuf v1.3.1

replace github.com/filecoin-project/filecoin-ffi => ./chain/filecoin/filecoin-ffi

replace github.com/cosmos/ledger-cosmos-go => github.com/terra-project/ledger-terra-go v0.11.1-terra

replace github.com/CosmWasm/go-cosmwasm => github.com/terra-project/go-cosmwasm v0.10.1-terra

replace github.com/keybase/go-keychain => github.com/99designs/go-keychain v0.0.0-20191008050251-8e49817e8af4

require (
	github.com/GeertJohan/go.rice v1.0.2 // indirect
	github.com/btcsuite/btcd v0.21.0-beta
	github.com/btcsuite/btcutil v1.0.2
	github.com/cosmos/cosmos-sdk v0.39.1
	github.com/daaku/go.zipexe v1.0.1 // indirect
	github.com/elastic/go-sysinfo v1.6.0 // indirect
	github.com/elastic/go-windows v1.0.1 // indirect
	github.com/ethereum/go-ethereum v1.9.25
	github.com/filecoin-project/go-address v0.0.5
	github.com/filecoin-project/go-cbor-util v0.0.0-20201016124514-d0bbec7bfcc4 // indirect
	github.com/filecoin-project/go-data-transfer v1.2.8 // indirect
	github.com/filecoin-project/go-fil-markets v1.1.8 // indirect
	github.com/filecoin-project/go-jsonrpc v0.1.4-0.20210217175800-45ea43ac2bec
	github.com/filecoin-project/go-padreader v0.0.0-20201016201355-9c5eb1faedb5 // indirect
	github.com/filecoin-project/go-state-types v0.0.0-20210119062722-4adba5aaea71
	github.com/filecoin-project/go-statemachine v0.0.0-20200925172917-aaed5359be39 // indirect
	github.com/filecoin-project/lotus v1.4.2
	github.com/filecoin-project/specs-actors/v3 v3.0.1 // indirect
	github.com/gbrlsnchs/jwt/v3 v3.0.0 // indirect
	github.com/go-ole/go-ole v1.2.5 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/google/uuid v1.2.0 // indirect
	github.com/gorilla/mux v1.8.0 // indirect
	github.com/hashicorp/errwrap v1.1.0 // indirect
	github.com/ipfs/go-block-format v0.0.3 // indirect
	github.com/ipfs/go-cid v0.0.7
	github.com/ipld/go-ipld-prime v0.7.0 // indirect
	github.com/libp2p/go-libp2p-core v0.8.4 // indirect
	github.com/magefile/mage v1.11.0 // indirect
	github.com/minio/blake2b-simd v0.0.0-20160723061019-3f5f724cb5b1
	github.com/multiformats/go-multistream v0.2.1 // indirect
	github.com/multiformats/go-varint v0.0.6
	github.com/onsi/ginkgo v1.14.0
	github.com/onsi/gomega v1.10.1
	github.com/polydawn/refmt v0.0.0-20201211092308-30ac6d18308e // indirect
	github.com/prometheus/procfs v0.6.0 // indirect
	github.com/renproject/id v0.4.2
	github.com/renproject/pack v0.2.9
	github.com/renproject/surge v1.2.6
	github.com/russross/blackfriday/v2 v2.1.0 // indirect
	github.com/shirou/gopsutil v3.21.1+incompatible // indirect
	github.com/tendermint/tendermint v0.33.8
	github.com/terra-project/core v0.4.0-rc.4
	github.com/urfave/cli/v2 v2.3.0 // indirect
	github.com/xlab/c-for-go v0.0.0-20201223145653-3ba5db515dcb // indirect
	go.opencensus.io v0.22.6 // indirect
	go.uber.org/zap v1.16.0
	golang.org/x/crypto v0.0.0-20210218145215-b8e89b74b9df
	golang.org/x/mod v0.4.1 // indirect
	golang.org/x/sys v0.0.0-20210218155724-8ebf48af031b // indirect
	golang.org/x/tools v0.1.0 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	howett.net/plist v0.0.0-20201203080718-1454fab16a06 // indirect
	modernc.org/mathutil v1.2.2 // indirect
)
