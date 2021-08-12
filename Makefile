.PHONY build:
	sudo apt install -y nim
	nimble install -y docopt
	nim -d:release -d:ssl c src/vitable.nim
       clean:
	rm -f src/vitable
       fullsysinst:
	make clean
	make build
	sudo cp src/vitable /usr/bin
	make clean
