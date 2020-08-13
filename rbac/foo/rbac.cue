package rbac

namespace: "foo-dev": {
}
namespace: "foo-prod": {
}
namespace: "foo-qa": {
}
namespace: "foo-stage": {
}
roleBinding: reader: {
	metadata: namespace: "foo"
	subjects: [{
		name: "sa-reader"
	}]
	roleRef: name: "view"
}
roleBinding: admin: {
	metadata: namespace: "foo"
	subjects: [{
		name: "sa-admin"
	}]
	roleRef: name: "admin"
}
roleBinding: reader: {
	metadata: namespace: "foo"
	subjects: [{
		name: "sa-reader"
	}]
	roleRef: name: "view"
}
roleBinding: dev: {
	metadata: namespace: "foo"
	subjects: [{
		name: "sa-dev"
	}]
	roleRef: name: "edit"
}
roleBinding: admin: {
	metadata: namespace: "foo"
	subjects: [{
		name: "sa-admin"
	}]
	roleRef: name: "admin"
}
roleBinding: admin: {
	metadata: namespace: "foo"
	subjects: [{
		name: "sa-admin"
	}]
	roleRef: name: "admin"
}
clusterRoleBinding: "cluster-admin": {
	subjects: [{
		name:      "sa-cluster-admin"
		namespace: "foo"
	}]
	roleRef: name: "cluster-admin"
}
roleBinding: reader: {
	metadata: namespace: "foo"
	subjects: [{
		name: "sa-reader"
	}]
	roleRef: name: "view"
}
roleBinding: admin: {
	metadata: namespace: "foo"
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
