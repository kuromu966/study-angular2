.PHONY: all
all:
	@echo 'make [setup|build|clean|log]'


.PHONY: clean
clean:
	@find . -type f -name '*~' -exec rm -v {} \;



.PHONY:build
build:
	npm run build


.PHONY:setup
setup:
	npm install


.PHONY:log
log :
	@git log --graph --branches --pretty=format:'%C(yellow)%h%Cred%d%Creset %s %C(black bold)%an, %ar%Creset'
