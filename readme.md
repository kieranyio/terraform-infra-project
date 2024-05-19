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
- Agents do not need IAM role
- To use multiple provider, set the required workspace environment variables for the alias. E.g.  `TFC_AWS_PROVIDER_AUTH_<ALIAS NAME>` and `TFC_AWS_RUN_ROLE_ARN_<ALIAS NAME>`
