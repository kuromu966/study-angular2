BUILD_DIR = ./build
DIST_DIR = ./dist
SRC_DIR = ./src

.PHONY: all
all:
	make build


.PHONY: clean
clean:
	-@ if [ -d ${BUILD_DIR} ]; then rm -r ${BUILD_DIR}; fi
	-@ if [ -d ${DIST_DIR} ]; then rm -r ${DIST_DIR}; fi
	-@find . -type f -name '*~' -exec rm -v {} \;


.PHONY:build
build:
	-@ if [ -d ${BUILD_DIR} ]; then rm -r ${BUILD_DIR}; fi
	-@ if [ -d ${DIST_DIR} ]; then rm -r ${DIST_DIR}; fi
	mkdir ${BUILD_DIR}
	mkdir ${DIST_DIR}
	cp ${SRC_DIR}/index.html ${DIST_DIR}/
	npm run build


.PHONY:setup
setup:
	npm install


.PHONY:log
log :
	@git log --graph --branches --pretty=format:'%C(yellow)%h%Cred%d%Creset %s %C(black bold)%an, %ar%Creset'
