package kube

roleBinding: admin: {
	metadata: name: "admin"
	subjects: [{
		name: "<objectId>"
	}]
	roleRef: name: "admin"
}
roleBinding: reader: {
	metadata: name: "reader"
	subjects: [{
		name: "<objectId>"
	}]
	roleRef: name: "view"
}

#Namespace: "qa"
