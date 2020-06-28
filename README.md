# kubectl-namespace

This code performs a create if not exist kubernetes namespace

In order to clone the repository, execute the following commmand
```shell script
git clone git@github.com:nw1984/kubectl-namespace.git
```

## Usage
```shell script
$ ./namespaceCreate.sh <<new namespace name>>
```

## Output
If the namespace already exists:
```shell script
Namespace (<<namespace name>>) already exists
```

if the namespace needs to be created:
```shell script
Namespace (<<namespace name>>) not found, creating
namespace/<<namespace name>> created
```