.PHONY build:
	nim c vitable.nim
       clean:
	rm vitable
       fullsysinst:
	make clean
	make build
	sudo cp vitable /usr/bin
	make clean
