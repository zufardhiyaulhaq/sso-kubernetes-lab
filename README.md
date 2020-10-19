# Single Sign On with Kubernetes
This lab created for my presentation in Open Infrastructure & Cloud Native Days Indonesia 2020. This will create a demo related to SSO with keycloak and Kubernetes. This is semi-automation lab, since there is a component that hard to automate.

Requirement:
- Digital Ocean account
You must have active digital ocean account.
- Domain for keycloak (your keycloak will be access publicly, you can use subdomain)
You must have domain for keycloak to access publicly.
- Public certificate for keycloak (you can use letsencrypt)
You can generate certificate using letsencrypt, get the `fullchain.pem` & `privkey.pem`

### Setup Infrastructure
- Populate `do_token` in `variables.tfvars` with the Digital Ocean token. you can create from the [official documentation](https://www.digitalocean.com/docs/apis-clis/api/create-personal-access-token/).
- Populate `do_ssh_key` with your public ssh key
- Setup infrastructure
```
terraform init
terraform apply -var-file="variables.tfvars"
```
