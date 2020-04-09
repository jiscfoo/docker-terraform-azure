Dockerfile for Terraform on Azure
=================================

A combined docker image based on the official `hashicorp/terraform` image with the Azure CLI tools added.

Tested on macOS but ought to work elsewhere.

Example:

```bash
az login
# To sign in, use a web browser to open the page https://microsoft.com/devicelogin and enter the code xxx to authenticate...

tf plan
...
```

## Build

```bash
docker built -t terraform-az .
```

## Invocation
```bash
### az cli
docker run --rm -ti -v "$PWD:/workspace" -v "$HOME/.azure:/root/.azure" --entrypoint az -w /workspace jiscfoo/terraform-azure

### Terraform
docker run --rm -ti -v "$PWD:/workspace" -v "$HOME/.azure:/root/.azure" -w /workspace jiscfoo/terraform-azure
```

You need to keep the `.azure` directory between invocations. You could store this in a volume, above is just an example.

### Example aliases
```
alias tf='docker run --rm -ti -v "$PWD:/workspace" -v "$HOME/.azure:/root/.azure" -w /workspace jiscfoo/terraform-azure'
alias az='docker run --rm -ti -v "$PWD:/workspace" -v "$HOME/.azure:/root/.azure" --entrypoint az -w /workspace jiscfoo/terraform-azure'
```
