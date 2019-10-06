NAME 		:= iamucil/webrtc
TAG 		:= $$(git rev-parse HEAD)
IMG 		:= ${NAME}:${TAG}
LATEST 	:= ${NAME}:latest

build:
	@docker build -t ${IMG} .
	@docker tag ${IMG} ${IMG}
	@docker tag ${IMG} ${LATEST}

push:
	@docker push ${IMG}
	@docker push ${LATEST}
