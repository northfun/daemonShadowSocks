~/.profile:

export ss=$GOPATH/src/github.com/shadowsocks/shadowsocks-go

source ~/.profile

go run ssCheck.go
