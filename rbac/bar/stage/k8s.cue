package kube

roleBinding: admin: {
	apiVersion: "rbac.authorization.k8s.io/v1"
	kind:       "RoleBinding"
	metadata: name: "admin"
	subjects: [{
		kind:     "Group"
		name:     "<objectId>"
		apiGroup: "rbac.authorization.k8s.io"
	}]
	roleRef: {
		kind: "ClusterRole"
		name: "admin"
	}
}
