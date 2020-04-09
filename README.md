Dockerfile for Terraform on Azure
=================================

## Build

```bash
docker built -t terraform-az .
```

## Invocation
```bash
### az cli
docker run --rm -ti -v "$PWD:/workspace" -v "$HOME/.azure:/root/.azure" --entrypoint az -w /workspace terraform-az

### Terraform
docker run --rm -ti -v "$PWD:/workspace" -v "$HOME/.azure:/root/.azure" -w /workspace terraform-az
```

### Example aliases
```
alias tf='docker run --rm -ti -v "$PWD:/workspace" -v "$HOME/.azure:/root/.azure" -w /workspace terraform-az'
alias az='docker run --rm -ti -v "$PWD:/workspace" -v "$HOME/.azure:/root/.azure" --entrypoint az -w /workspace terraform-az'
```
