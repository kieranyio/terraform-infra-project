This is a POC project for the following
- Dependabot
- Terraform dynamic credentials using OIDC

Dependabot
- Enable it on Github repository setting
- Create a `.github/dependabot.yml` file

Terraform Dynamic Credentials using OIDC
https://developer.hashicorp.com/terraform/cloud-docs/workspaces/dynamic-provider-credentials/aws-configuration
- Create identity provider
- Create IAM role with proper trust relationship using the OIDC provider created above
- Set workspace environment variables - `TFC_AWS_PROVIDER_AUTH` and `TFC_AWS_RUN_ROLE_ARN`
