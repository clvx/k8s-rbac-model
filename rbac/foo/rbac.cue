package rbac

namespace: "foo-dev": {
	apiVersion: "v1"
	kind:       "Namespace"
	metadata: name: "foo-dev"
}
namespace: "foo-prod": {
	apiVersion: "v1"
	kind:       "Namespace"
	metadata: name: "foo-prod"
}
namespace: "foo-qa": {
	apiVersion: "v1"
	kind:       "Namespace"
	metadata: name: "foo-qa"
}
namespace: "foo-stage": {
	apiVersion: "v1"
	kind:       "Namespace"
	metadata: name: "foo-stage"
}
//roleBinding: reader: {
//	apiVersion: "rbac.authorization.k8s.io/v1"
//	kind:       "RoleBinding"
//	metadata: {
//		name:      "reader"
//		namespace: "foo-dev"
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
//		namespace: "foo-qa"
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
//		namespace: "foo-dev"
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
//		namespace: "foo-dev"
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
//		namespace: "foo-qa"
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
//		namespace: "foo-stage"
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
//		namespace: "foo-prod"
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
//		namespace: "foo-prod"
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
//		namespace: "foo-dev"
//	}
//}
//serviceAccount: "sa-reader": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-reader"
//		namespace: "foo-dev"
//	}
//}
//serviceAccount: "sa-dev": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-dev"
//		namespace: "foo-dev"
//	}
//}
//serviceAccount: "sa-cluster-admin": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-cluster-admin"
//		namespace: "foo-dev"
//	}
//}
//serviceAccount: "sa-admin": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-admin"
//		namespace: "foo-qa"
//	}
//}
//serviceAccount: "sa-reader": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-reader"
//		namespace: "foo-qa"
//	}
//}
//serviceAccount: "sa-dev": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-dev"
//		namespace: "foo-qa"
//	}
//}
//serviceAccount: "sa-cluster-admin": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-cluster-admin"
//		namespace: "foo-qa"
//	}
//}
//serviceAccount: "sa-admin": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-admin"
//		namespace: "foo-stage"
//	}
//}
//serviceAccount: "sa-reader": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-reader"
//		namespace: "foo-stage"
//	}
//}
//serviceAccount: "sa-dev": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-dev"
//		namespace: "foo-stage"
//	}
//}
//serviceAccount: "sa-cluster-admin": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-cluster-admin"
//		namespace: "foo-stage"
//	}
//}
//serviceAccount: "sa-admin": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-admin"
//		namespace: "foo-prod"
//	}
//}
//serviceAccount: "sa-reader": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-reader"
//		namespace: "foo-prod"
//	}
//}
//serviceAccount: "sa-dev": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-dev"
//		namespace: "foo-prod"
//	}
//}
//serviceAccount: "sa-cluster-admin": {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//		name:      "sa-cluster-admin"
//		namespace: "foo-prod"
//	}
//}
