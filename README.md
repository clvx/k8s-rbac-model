# Kubernetes RBAC Model

This is a implementation of a RBAC model for a multi project multi tenant Kubernetes cluster.

## Current roles

- `cluster-admin`: Cluster role binding of the cluster role `cluster-admin`.
- `admin`: Role binding of the cluster role `admin`.
- `dev`: Role binding of the cluster role `edit`.
- `viewer`: Role binding of the cluster role `view`.
- `bot`: Role binding of a custom role.

More info: [user facing roles](https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles)

## Criteria

### Roles scope

- A `cluster-admin` role for all clusters.
    - Full privileges on the cluster.
- A `admin` role per namespace that needs full namespace management privileges.
    - Full privileges on a namespace.
- A `dev` role per namespace that needs edit privileges.
    - Edit and view access to most namespace objects including secrets, but no
    access to rolebindings and roles objects.
- A `viewer` role per namespace that needs view privileges.
    - View access to most namespace objects besides roles, rolebindings and secrets objects.
- A `bot` role per certain namespaces that needs edit privileges.
    - Limited to certain objects for automation purposes.
    - There can be more than one bot role.
    - Naming convention: `bot-[action]`
    - Implemented as service accounts or regular users.

### Projects scope

- A cluster can have one or more projects.
- A project can have one or more environments.
- Each project environment is implemented as a namespace object.
- A project can have one or more users. 
- A project can have different users including service accounts with different 
privileges for different environments.

### Environments
- `dev`: A developers playground. Unrestricted access for developers.
- `qa`: Integration environment with sanitize data. It usually requires a pipeline 
process to get things running in. `edit` privileges are usually limited.
- `stage`: Pre production environment with replicated production data. It usually 
requires a pipeline process to get things running in. Restricted to many users.
- `prod`: Production environment with customer data. Only `admins` or operators have 
access to this environment.

## Implementation

|  | Dev | QA | Stage | Prod |
|-|-|-|-|-|
| cluster-admin | x | x | x | x |
| admin | x | x | x | x |
| dev | x |  |  |  |
| viewer |  | x |  |  |
| bot |  | x | x | x |


## Cuelang


TODO: THIS COULD BE WAAAAAAAAY BETTER.

Cue is a data validation languake with awesome support for kubernetes objects. 
This project gives a glance of its capabilities.

    rbac/
    ├── bar
    │   ├── dev
    │   │   └── k8s.cue
    │   ├── k8s.cue
    │   ├── prod
    │   │   └── k8s.cue
    │   ├── qa
    │   │   └── k8s.cue
    │   └── stage
    │       └── k8s.cue
    ├── dump_tool.cue
    ├── foo
    │   ├── dev
    │   │   └── k8s.cue
    │   ├── k8s.cue
    │   ├── prod
    │   │   └── k8s.cue
    │   ├── qa
    │   │   └── k8s.cue
    │   └── stage
    │       └── k8s.cue
    ├── k8s.cue
    ├── k8s_def.cue
    └── kube_tool.cue

To generate Kubernetes objects:

    project=
    namespace=
    # For cluster role bindings
    cue cmd dumpy ./rbac/${project} > crb-${project}.yaml

    # For role bindings in a specific namespace
    cue cmd dumpy ./rbac/${project}/${namespace} > rb-${project}-{namespace}.yaml

## Usage 

To use this project, the Kubernetes cluster *NEEDS* to have the authentication modules
configured. 

### Preparing files

> Current implementation only supports Groups in `.subjects.name`.

    # switch  <object_id> in .subjects.name for each k8s.cue file with your 
    # group name.

### Executing rules

    export OUTPUT_FILE=rbac-objects.yaml
    # Creating project environments
    PROJECT=bar make bootstrap-ns

    # Generating rbac objects
    PROJECT=bar bootstrap-rb > ${OUTPUT_FILE}

    # rbac-objects needs some clean up 
    sed -i 's/^$/---/g' ${OUTPUT_FILE}

    # Deploy objects
    kubectl apply -f ${OUTPUT_FILE}

    # Running access control tests
    PROJECT=bar make test
