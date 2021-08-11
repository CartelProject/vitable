.PHONY build:
	nim -d:release -d:ssl c src/vitable.nim
       clean:
	rm -f src/vitable
       fullsysinst:
	make clean
	make build
	sudo cp src/vitable /usr/bin
	make clean
