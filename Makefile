run: build deploy run-client
build:
	cargo build-bpf --manifest-path=./Cargo.toml --bpf-out-dir=dist/program
deploy:
	solana program deploy dist/program/solana_helloworld.so
run-client:
	./node_modules/.bin/ts-node client/main.ts