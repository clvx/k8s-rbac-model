package kube

roleBinding: admin: {
	metadata: name: "admin"
	subjects: [{
		name: "<objectId>"
	}]
	roleRef: name: "admin"
}


#Namespace: "prod"
