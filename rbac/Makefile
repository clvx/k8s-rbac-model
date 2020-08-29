PROJECT?=
PROJECTDIR=./${PROJECT}
bootstrap-ns:
	kubectl create namespace ${PROJECT}-dev
	kubectl create namespace ${PROJECT}-qa
	kubectl create namespace ${PROJECT}-stage
	kubectl create namespace ${PROJECT}-prod

bootstrap-rb:
	find ${PROJECTDIR} -type d -exec cue cmd dumpy {} \;

.PHONY: .bootstrap-ns .bootstrap-rb
