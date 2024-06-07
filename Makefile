# 项目打包

SERVER := chatroot
CLIENT := chatclient

# make
build:
	go build -o $(SERVER) cmd/server/main.go
	go build -o $(CLIENT) cmd/client/main.go

# run: make clean
clean:
	rm -fr $(SERVER) $(CLIENT)

.PHONY: all clean
