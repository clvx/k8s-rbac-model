package kube

<<<<<<< HEAD:rbac/k8s.cue
roleBinding: [ID=_]: {
	apiVersion: "rbac.authorization.k8s.io/v1"
	kind:       "RoleBinding"
	metadata: {
        name: string
        namespace: "\( #Project )-\( #Namespace)"
    }
	subjects: [{
		kind:     "Group"
		name:     string
		apiGroup: "rbac.authorization.k8s.io"
	}]
	roleRef: {
		kind:     "ClusterRole"
		name:     string
		apiGroup: "rbac.authorization.k8s.io"
	}
}

clusterRoleBinding: [ID=_]: {
	apiVersion: "rbac.authorization.k8s.io/v1"
	kind:       "ClusterRoleBinding"
	metadata: name: string
	subjects: [{
		kind:     "Group"
		name:     string
		apiGroup: "rbac.authorization.k8s.io"
	}]
	roleRef: {
		kind:     "ClusterRole"
		name:     string
		apiGroup: "rbac.authorization.k8s.io"
	}

}

#Project: string
#Namespace: string
=======
namespace: [ID=_]: {
	apiVersion: "v1"
	kind:       "Namespace"
	metadata: name: ID //Concatanate name ID-dev, ID-qa, ID-stage, ID-prod
}

//clusterRoleBinding: [ID=_]: {
//	apiVersion: "rbac.authorization.k8s.io/v1"
//	kind:       "ClusterRoleBinding"
//	metadata: name: ID
//	subjects: [{
//		kind:      "ServiceAccount"
//		name:      string
//		namespace: string
//	}]
//	roleRef: {
//		kind:     "ClusterRole"
//		name:     string
//		apiGroup: "rbac.authorization.k8s.io"
//	}
//}
//
//roleBinding: [ID=_]: {
//	apiVersion: "rbac.authorization.k8s.io/v1"
//	kind:       "RoleBinding"
//	metadata: {
//		name:      ID
//		namespace: string
//	}
//	subjects: [{
//		kind: "ServiceAccount"
//		name: string
//	}]
//	roleRef: {
//		kind:     "ClusterRole"
//		name:     string
//		apiGroup: "rbac.authorization.k8s.io"
//	}
//}
//
//serviceAccount: [ID=_]: {
//	apiVersion: "v1"
//	kind:       "ServiceAccount"
//	metadata: {
//        name: ID
//        namespace: string
//    }
//}
>>>>>>> master:rbac/rbac.cue
