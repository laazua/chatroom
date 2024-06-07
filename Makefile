# 项目打包
# cmd/client/main.go 中// +build client
# cmd/server/main.go 中// +build server
# 以上两个文件中的tag进行条件编译

SERVER := chatroot
CLIENT := chatclient

# make
build:
	go build -o $(SERVER) -tags=server cmd/server/main.go
	go build -o $(CLIENT) -tags=client cmd/client/main.go

# run: make clean
clean:
	rm -fr $(SERVER) $(CLIENT)

.PHONY: all clean
