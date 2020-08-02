# Kubernetes RBAC Model

### TODO

[x] Implementing rbac with serviceAccounts

[ ] Implementing multi project in kustomize

[ ] Implementing multi tenant in kustomize

[ ] Write tests in terratest

This is a implementation of a RBAC model for a multi project multi tenant Kubernetes cluster.

It uses a set of accounts -**currently implemented as service accounts**- with different roles 
for different levels of access. 

## Current roles

- `cluster-admin`: Cluster role binding of the cluster role `cluster-admin`.
- `ns-admin`: Role binding of the cluster role `admin`.
- `dev`: Role binding of the cluster role `edit`.
- `reader`: Role binding of the cluster role `view`.

More info: [user facing roles](https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles)

## Criteria

- A `cluster-admin` role for all clusters.
- A `ns-admin` role per project.
- A `dev` role per `developer` namespace per project.
- A `reader` role per `developer` and `qa` namespace per project.

## Role summary

|--|prod|stage|qa|dev|cluster|
|:-:|:-:|:-:|:-:|:-:|:-:|
|cluster-admin|x|x|x|x|x|
|admin|x|x|x|x|-|
|dev|-|-|-|x|-|
|reader|-|-|x|x|-|

