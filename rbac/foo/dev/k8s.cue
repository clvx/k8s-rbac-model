package kube

roleBinding: dev: {
	metadata: name: "dev"
	subjects: [{
		name: "<objectId>"
	}]
	roleRef: name: "edit"
}
roleBinding: admin: {
	metadata: name: "admin"
	subjects: [{
		name: "<objectId>"
	}]
	roleRef: name: "admin"
}
