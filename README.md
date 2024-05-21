<div align='center'>
<p>
  <a href="https://github.com/PScoriae/terraform-infra/blob/main/LICENSE.md">
        <img src="https://img.shields.io/badge/license-WTFPL-brightgreen?style=for-the-badge">
  </a>
</p>
<p>
  <img src="https://s3.ap-southeast-1.amazonaws.com/pierreccesario.com-images/terraform.svg" width=300>
</p>

## Terraform IaC

</div>
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about">About</a>
    </li>
    <li><a href="#Usage">Usage</a></li>
  </ol>
</details>
<hr/>

# About

This repository is concerned with the provisioning of infrastructure for any of my personal projects using Terraform.

Currently, the cloud services used to host my projects are AWS, GCP and Cloudflare.

# Usage

This section guides you on how to setup and use this Terraform monorepo in your local machine.

Technically there's a chicken and egg situation here because using this code assumes you already have S3 and DynamoDB set up as a remote backend.
So, the instructions here just assume you already have that set up, and you're just Terraforming from another computer with a fresh install of everything.

1. First, ensure [Terraform](https://terraform.com) is installed on your dev computer.
2. Ensure the [AWS CLI](https://aws.amazon.com/cli/) is also installed on your dev computer.
3. Configure the AWS CLI to authenticate with your account. Two options:

   - Use SSO and set up an AWS Profile to access your user (recommended)
   - Run `aws configure` in your terminal to use the Terraform IAM user. (not recommended)

4. In your desired project folder, clone the repo.
5. Finally, run `terraform init` in any Terraform directory to set up the Terraform backend.
