package rbac


namespace: "bar-dev": {
	apiVersion: "v1"
	kind:       "Namespace"
	metadata: name: "bar-dev"
}
namespace: "bar-prod": {
	apiVersion: "v1"
	kind:       "Namespace"
	metadata: name: "bar-prod"
}
namespace: "bar-qa": {
	apiVersion: "v1"
	kind:       "Namespace"
	metadata: name: "bar-qa"
}
namespace: "bar-stage": {
	apiVersion: "v1"
	kind:       "Namespace"
	metadata: name: "bar-stage"
}
//roleBinding: reader: {
//	apiVersion: "rbac.authorization.k8s.io/v1"
//	kind:       "RoleBinding"
//	metadata: {
//		name:      "reader"
//		namespace: "bar-dev"
//	}
//	subjects: [{
//		kind: "ServiceAccount"
//		name: "sa-reader"
//	}]
//	roleRef: {
//		kind:     "ClusterRole"
//		name:     "view"
//		apiGroup: "rbac.authorization.k8s.io"
//	}
//}
//roleBinding: reader: {
//	apiVersion: "rbac.authorization.k8s.io/v1"
//	kind:       "RoleBinding"
//	metadata: {
//		name:      "reader"
//		namespace: "bar-qa"
//	}
//	subjects: [{
//		kind: "ServiceAccount"
//		name: "sa-reader"
//	}]
//	roleRef: {
//		kind:     "ClusterRole"
//		name:     "view"
//		apiGroup: "rbac.authorization.k8s.io"
//	}
//}
//roleBinding: dev: {
//	apiVersion: "rbac.authorization.k8s.io/v1"
//	kind:       "RoleBinding"
//	metadata: {
//		name:      "dev"
//		namespace: "bar-dev"
//	}
//	subjects: [{
//		kind: "ServiceAccount"
//		name: "sa-dev"
//	}]
//	roleRef: {
//		kind:     "ClusterRole"
//		name:     "edit"
//		apiGroup: "rbac.authorization.k8s.io"
//	}
//}
//roleBinding: admin: {
//	apiVersion: "rbac.authorization.k8s.io/v1"
//	kind:       "RoleBinding"
//	metadata: {
//		name:      "admin"
//		namespace: "bar-dev"
//	}
//	subjects: [{
//		kind: "ServiceAccount"
//		name: "sa-admin"
//	}]
//	roleRef: {
//		kind:     "ClusterRole"
//		name:     "admin"
//		apiGroup: "rbac.authorization.k8s.io"
//	}
//}
//roleBinding: admin: {
//	apiVersion: "rbac.authorization.k8s.io/v1"
//	kind:       "RoleBinding"
//	metadata: {
//		name:      "admin"
//		namespace: "bar-qa"
//	}
//	subjects: [{
//		kind: "ServiceAccount"
//		name: "sa-admin"
//	}]
//	roleRef: {
//		kind:     "ClusterRole"
//		name:     "admin"
//		apiGroup: "rbac.authorization.k8s.io"
//	}
//}
//roleBinding: admin: {
//	apiVersion: "rbac.authorization.k8s.io/v1"
//	kind:       "RoleBinding"
//	metadata: {
//		name:      "admin"
//		namespace: "bar-stage"
//	}
//	subjects: [{
//		kind: "ServiceAccount"
//		name: "sa-admin"
//	}]
//	roleRef: {
//		kind:     "ClusterRole"
//		name:     "admin"
//		apiGroup: "rbac.authorization.k8s.io"
//	}
//}
//roleBinding: admin: {
//	apiVersion: "rbac.authorization.k8s.io/v1"
//	kind:       "RoleBinding"
//	metadata: {
//		name:      "admin"
//		namespace: "bar-prod"
//	}
//	subjects: [{
//		kind: "ServiceAccount"
//		name: "sa-admin"
//	}]
//	roleRef: {
//		kind:     "ClusterRole"
//		name:     "admin"
//		apiGroup: "rbac.authorization.k8s.io"
//	}
//}
//clusterRoleBinding: "cluster-admin": {
//	apiVersion: "rbac.authorization.k8s.io/v1"
//	kind:       "ClusterRoleBinding"
//	metadata: name: "cluster-admin"
//	subjects: [{
//		kind:      "ServiceAccount"
//		name:      "sa-cluster-admin"
//		namespace: "bar-prod"
//	}]
//	roleRef: {
//		kind:     "ClusterRole"
//		name:     "cluster-admin"
//		apiGroup: "rbac.authorization.k8s.io"
//	}
//}
//serviceAccount: "sa-admin": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-admin"
//		namespace: "bar-dev"
//	}
//}
//serviceAccount: "sa-reader": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-reader"
//		namespace: "bar-dev"
//	}
//}
//serviceAccount: "sa-dev": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-dev"
//		namespace: "bar-dev"
//	}
//}
//serviceAccount: "sa-cluster-admin": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-cluster-admin"
//		namespace: "bar-dev"
//	}
//}
//serviceAccount: "sa-admin": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-admin"
//		namespace: "bar-qa"
//	}
//}
//serviceAccount: "sa-reader": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-reader"
//		namespace: "bar-qa"
//	}
//}
//serviceAccount: "sa-dev": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-dev"
//		namespace: "bar-qa"
//	}
//}
//serviceAccount: "sa-cluster-admin": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-cluster-admin"
//		namespace: "bar-qa"
//	}
//}
//serviceAccount: "sa-admin": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-admin"
//		namespace: "bar-stage"
//	}
//}
//serviceAccount: "sa-reader": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-reader"
//		namespace: "bar-stage"
//	}
//}
//serviceAccount: "sa-dev": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-dev"
//		namespace: "bar-stage"
//	}
//}
//serviceAccount: "sa-cluster-admin": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-cluster-admin"
//		namespace: "bar-stage"
//	}
//}
//serviceAccount: "sa-admin": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-admin"
//		namespace: "bar-prod"
//	}
//}
//serviceAccount: "sa-reader": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-reader"
//		namespace: "bar-prod"
//	}
//}
//serviceAccount: "sa-dev": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-dev"
//		namespace: "bar-prod"
//	}
//}
//serviceAccount: "sa-cluster-admin": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-cluster-admin"
//		namespace: "bar-prod"
//	}
//}
