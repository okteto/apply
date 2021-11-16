# GitHub Actions for Okteto Cloud

## Automate your development workflows using Github Actions and Okteto Cloud
GitHub Actions gives you the flexibility to build an automated software development workflows. With GitHub Actions for Okteto Cloud you can create workflows to build, deploy and update your applications in [Okteto Cloud](https://cloud.okteto.com).

Get started today with a [free Okteto Cloud account](https://cloud.okteto.com)!

## Github Action for Applying Resources in Okteto Cloud

You can use this action to create or update resources in your Okteto Cloud namespace. This is equivalent to running `kubectl apply -f $manifest`.

## Inputs

### `namespace`

The Okteto namespace to use. If not specified it will use the namespace specified by the `namespace` action.

### `manifest`

Path to the Kubernetes manifest. Can be a file or a directory. It defaults to `k8s.yml`.

## Example usage

This example runs the context action, activates a namespace and creates a deployment.

```yaml
# File: .github/workflows/workflow.yml
on: [push]

name: example

jobs:

  devflow:
    runs-on: ubuntu-latest
    steps:
    - name: checkout
      uses: actions/checkout@master
      
    - uses: okteto/context@latest
      with:
        token: ${{ secrets.OKTETO_TOKEN }}
    
    - name: "Activate personal namespace"
      uses: okteto/namespace@latest
      with:
        name: cindylopez

    - name: "Create deployment"
      uses: okteto/apply@latest
      with:
        manifest: deployment.yaml
```

