package kube

clusterRoleBinding: clusteradmin: {
	apiVersion: "rbac.authorization.k8s.io/v1"
	kind:       "ClusterRoleBinding"
	metadata: name: "clusteradmin"
	subjects: [{
		kind:     "Group"
		name:     "<objectId>"
		apiGroup: "rbac.authorization.k8s.io"
	}]
	roleRef: {
		kind: "ClusterRole"
		name: "cluster-admin"
	}
}
