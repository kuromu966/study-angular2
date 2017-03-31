.PHONY: all
all:
	@echo 'make [setup|build|clean|log]'


.PHONY: clean
clean:
	-@ if [ -d ./build ]; then rm -r ./build; fi
	-@ if [ -d ./dist ]; then rm -r ./dist; fi
	-@find . -type f -name '*~' -exec rm -v {} \;


.PHONY:build
build:
	-@ if [ -d ./build ]; then rm -r ./build; fi
	-@ if [ -d ./dist ]; then rm -r ./dist; fi
	mkdir ./build
	mkdir ./dist
	cp ./src/index.html ./dist/
	npm run build


.PHONY:setup
setup:
	npm install


.PHONY:log
log :
	@git log --graph --branches --pretty=format:'%C(yellow)%h%Cred%d%Creset %s %C(black bold)%an, %ar%Creset'
