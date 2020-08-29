package kube

import (
	"k8s.io/api/rbac/v1"
)

rolebinding: [string]:       v1.#RoleBinding
clusterolebinding: [string]: v1.#ClusterRoleBinding
