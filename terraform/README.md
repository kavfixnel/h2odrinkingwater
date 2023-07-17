# Terraform for project

This is the terraform for all the components of this project.

## Initialize the Module

To initialize, first reconstruct tfstate

```bash
tf init
tf import github_repository.h2odrinkingwater h2odrinkingwater
```

Then try it out with

```bash
tf plan
```

## DNS

Unfortunately, Namecheap (the provider used) does not provide API access with the account level I currently have.
The terraform provider needs these credentials though, so I am unable to use IaC for the DNS configuration.

## Plausible configuration

Unfortunately, Plausible also did not have a good [terraform module](https://registry.terraform.io/providers/mcalpinefree/plausible/latest/docs)
that I was able to use sucessfully. This might change in the future if the module updates.
