package kube

clusterRoleBinding: clusteradmin: {
	metadata: name: "clusteradmin"
	subjects: [{
		name: "<object-id>"
	}]
	roleRef: name: "cluster-admin"
}
