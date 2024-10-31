.PHONY: build

build:
	mkdir -p build
	g++ main.cpp -luring -o build/main
