package kube

clusterRoleBinding: clusteradmin: {
	metadata: name: "clusteradmin"
	subjects: [{
		name: "<objectId>"
	}]
	roleRef: name: "cluster-admin"
}
