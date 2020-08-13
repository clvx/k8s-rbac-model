package rbac

apiVersion: "rbac.authorization.k8s.io/v1"
kind:       "RoleBinding"
metadata: {
	name:      "reader"
	namespace: "foo"
}
subjects: [{
	kind: "ServiceAccount"
	name: "sa-reader"
}]
roleRef: {
	kind:     "ClusterRole"
	name:     "view"
	apiGroup: "rbac.authorization.k8s.io"
}
apiVersion: "rbac.authorization.k8s.io/v1"
kind:       "RoleBinding"
metadata: {
	name:      "admin"
	namespace: "foo"
}
subjects: [{
	kind: "ServiceAccount"
	name: "sa-admin"
}]
roleRef: {
	kind:     "ClusterRole"
	name:     "admin"
	apiGroup: "rbac.authorization.k8s.io"
}
apiVersion: "rbac.authorization.k8s.io/v1"
kind:       "RoleBinding"
metadata: {
	name:      "reader"
	namespace: "foo"
}
subjects: [{
	kind: "ServiceAccount"
	name: "sa-reader"
}]
roleRef: {
	kind:     "ClusterRole"
	name:     "view"
	apiGroup: "rbac.authorization.k8s.io"
}
apiVersion: "rbac.authorization.k8s.io/v1"
kind:       "RoleBinding"
metadata: {
	name:      "dev"
	namespace: "foo"
}
subjects: [{
	kind: "ServiceAccount"
	name: "sa-dev"
}]
roleRef: {
	kind:     "ClusterRole"
	name:     "edit"
	apiGroup: "rbac.authorization.k8s.io"
}
apiVersion: "rbac.authorization.k8s.io/v1"
kind:       "RoleBinding"
metadata: {
	name:      "admin"
	namespace: "foo"
}
subjects: [{
	kind: "ServiceAccount"
	name: "sa-admin"
}]
roleRef: {
	kind:     "ClusterRole"
	name:     "admin"
	apiGroup: "rbac.authorization.k8s.io"
}
apiVersion: "rbac.authorization.k8s.io/v1"
kind:       "RoleBinding"
metadata: {
	name:      "admin"
	namespace: "foo"
}
subjects: [{
	kind: "ServiceAccount"
	name: "sa-admin"
}]
roleRef: {
	kind:     "ClusterRole"
	name:     "admin"
	apiGroup: "rbac.authorization.k8s.io"
}
apiVersion: "rbac.authorization.k8s.io/v1"
kind:       "ClusterRoleBinding"
metadata: name: "cluster-admin"
subjects: [{
	kind:      "ServiceAccount"
	name:      "sa-cluster-admin"
	namespace: "foo"
}]
roleRef: {
	kind:     "ClusterRole"
	name:     "cluster-admin"
	apiGroup: "rbac.authorization.k8s.io"
}
apiVersion: "rbac.authorization.k8s.io/v1"
kind:       "RoleBinding"
metadata: {
	name:      "reader"
	namespace: "foo"
}
subjects: [{
	kind: "ServiceAccount"
	name: "sa-reader"
}]
roleRef: {
	kind:     "ClusterRole"
	name:     "view"
	apiGroup: "rbac.authorization.k8s.io"
}
apiVersion: "rbac.authorization.k8s.io/v1"
kind:       "RoleBinding"
metadata: {
	name:      "admin"
	namespace: "foo"
}
subjects: [{
	kind: "ServiceAccount"
	name: "sa-admin"
}]
roleRef: {
	kind:     "ClusterRole"
	name:     "admin"
	apiGroup: "rbac.authorization.k8s.io"
}
