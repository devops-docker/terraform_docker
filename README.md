# Terraform in docker
[terraform](https://www.terraform.io/intro/index.html) is a tool for building, changing, and versioning infrastructure safely and efficiently.
This is a docker image to run Terraform without install terraform binary code.

## Usage
you just need mount the plan file to the container and run terraform command.
```sh
docker run --rm -v $(pwd):/tfplan terraform_docker plan
docker run --rm -v $(pwd):/tfplan terraform_docker apply
```
