package kube

roleBinding: [ID=_]: {
	apiVersion: "rbac.authorization.k8s.io/v1"
	kind:       "RoleBinding"
	metadata: name: string
	subjects: [{
		kind:     "Group"
		name:     string
		apiGroup: "rbac.authorization.k8s.io"
	}]
	roleRef: {
		kind:     "ClusterRole"
		name:     string
		apiGroup: "rbac.authorization.k8s.io"
	}
}

clusterRoleBinding: [ID=_]: {
	apiVersion: "rbac.authorization.k8s.io/v1"
	kind:       "ClusterRoleBinding"
	metadata: name: string
	subjects: [{
		kind:     "Group"
		name:     string
		apiGroup: "rbac.authorization.k8s.io"
	}]
	roleRef: {
		kind:     "ClusterRole"
		name:     string
		apiGroup: "rbac.authorization.k8s.io"
	}

}
