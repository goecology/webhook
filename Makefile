ROOT:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
MUSES_SYSTEM:=github.com/goecology/muses/pkg/system
NAME:=webhook
APPPATH:=$(GOPATH)/src/github.com/goecology/webhook
APPOUT:=$(APPPATH)/bin/$(NAME)

# 执行go指令
go:
	@cd $(APPPATH) && $(APPPATH)/tool/build.sh $(NAME) $(APPOUT) $(MUSES_SYSTEM) && $(APPOUT) start --conf=conf/conf.toml
