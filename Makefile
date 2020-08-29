bootstrap-bar:
	kubectl create namespace bar-dev
	kubectl create namespace bar-qa
	kubectl create namespace bar-stage
	kubectl create namespace bar-prod

bootstrap-foo:
	kubectl create namespace foo-dev
	kubectl create namespace foo-qa
	kubectl create namespace foo-stage
	kubectl create namespace foo-prod

bootstrap: bootstrap-bar bootstrap-foo

.PHONY: .bootstrap
