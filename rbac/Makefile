PROJECT?=
PROJECTDIR=./${PROJECT}
NS_PREFIX=prod stage qa dev

bootstrap-ns:
	@kubectl create namespace ${PROJECT}-dev
	@kubectl create namespace ${PROJECT}-qa
	@kubectl create namespace ${PROJECT}-stage
	@kubectl create namespace ${PROJECT}-prod

clean-ns:
	@kubectl delete namespace ${PROJECT}-dev
	@kubectl delete namespace ${PROJECT}-qa
	@kubectl delete namespace ${PROJECT}-stage
	@kubectl delete namespace ${PROJECT}-prod

bootstrap-rb:
	@find ${PROJECTDIR} -type d -exec cue cmd dumpy {} \;

create-rb:
	@$(MAKE) bootstrap-rb | kubectl apply -f -

test:
	@$(foreach i, $(NS_PREFIX), echo "get pod in ns $(PROJECT)-$(i): " && kubectl auth can-i get pod -n $(PROJECT)-$(i);)
	@$(foreach i, $(NS_PREFIX), echo "create pod in ns $(PROJECT)-$(i): " && kubectl auth can-i create pod -n $(PROJECT)-$(i);)
	@$(foreach i, $(NS_PREFIX), echo "get secret in ns $(PROJECT)-$(i): " && kubectl auth can-i get secret -n $(PROJECT)-$(i);)
	@$(foreach i, $(NS_PREFIX), echo "get rolebinding in ns $(PROJECT)-$(i): " && kubectl auth can-i get rolebinding -n $(PROJECT)-$(i);)
	@$(foreach i, $(NS_PREFIX), echo "get roles in ns $(PROJECT)-$(i): " && kubectl auth can-i get roles -n $(PROJECT)-$(i);)

.PHONY: .bootstrap-ns .bootstrap-rb
