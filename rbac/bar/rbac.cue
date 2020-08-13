package rbac

namespace: "bar-dev": {
}
namespace: "bar-prod": {
}
namespace: "bar-qa": {
}
namespace: "bar-stage": {
}
roleBinding: reader: {
	metadata: namespace: "bar"
	subjects: [{
		name: "sa-reader"
	}]
	roleRef: name: "view"
}
roleBinding: admin: {
	metadata: namespace: "bar"
	subjects: [{
		name: "sa-admin"
	}]
	roleRef: name: "admin"
}
roleBinding: reader: {
	metadata: namespace: "bar"
	subjects: [{
		name: "sa-reader"
	}]
	roleRef: name: "view"
}
roleBinding: dev: {
	metadata: namespace: "bar"
	subjects: [{
		name: "sa-dev"
	}]
	roleRef: name: "edit"
}
roleBinding: admin: {
	metadata: namespace: "bar"
	subjects: [{
		name: "sa-admin"
	}]
	roleRef: name: "admin"
}
roleBinding: admin: {
	metadata: namespace: "bar"
	subjects: [{
		name: "sa-admin"
	}]
	roleRef: name: "admin"
}
clusterRoleBinding: "cluster-admin": {
	subjects: [{
		name:      "sa-cluster-admin"
		namespace: "bar"
	}]
	roleRef: name: "cluster-admin"
}
roleBinding: reader: {
	metadata: namespace: "bar"
	subjects: [{
		name: "sa-reader"
	}]
	roleRef: name: "view"
}
roleBinding: admin: {
	metadata: namespace: "bar"
	subjects: [{
		name: "sa-admin"
	}]
	roleRef: name: "admin"
}
serviceAccount: "sa-admin": {
}
serviceAccount: "sa-reader": {
}
serviceAccount: "sa-dev": {
}
serviceAccount: "sa-cluster-admin": {
}
