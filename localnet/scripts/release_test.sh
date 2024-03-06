#!/usr/bin/env bash
set -e

for i in {1..10}
do
	echo "=== START TEST NUMBER ${i} ==="
	docker run -v "$(go env GOPATH)/src/github.com/zennittians/intelchain:/go/src/github.com/zennittians/intelchain" intelchainone/localnet-test
	echo "=== END TEST NUMBER ${i} ==="
done
