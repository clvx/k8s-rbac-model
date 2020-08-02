#!/bin/bash

ROLEBINDINGS=./roleBindings
NAMESPACE=ns1

SERVICEACCOUNTS="sa-admin sa-cluster-admin sa-dev sa-admin sa-reader"

# Creating service accounts
echo -n "Creating service accounts ${SERVICEACCOUNTS}\n"
for SERVICEACCOUNT in ${SERVICEACCOUNTS}
do
    kubectl create serviceaccount ${SERVICEACCOUNT}
done

# Creating role bindings
echo -n "Creating role bindings\n"
for ROLES in $(ls ${ROLEBINDINGS})
do
    kubectl apply -f ${ROLEBINDINGS}/${ROLES}
done

# Now get the token from secret of ServiceAccount we have created before. we will use this token to authenticate user.
for SERVICEACCOUNT in ${SERVICEACCOUNTS}
do
	CONTEXT=microk8s-${SERVICEACCOUNT}
	TOKEN=$(kubectl get secrets $(kubectl get sa ${SERVICEACCOUNT} -o json | jq -r .secrets[].name) -o json | jq -r .data.token |base64 -d)
	kubectl config set-credentials ${SERVICEACCOUNT} --token=$TOKEN
	kubectl config set-context ${CONTEXT} --cluster=microk8s-cluster --user=${SERVICEACCOUNT} --namespace=${NAMESPACE}
done
