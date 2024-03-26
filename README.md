<div align='center'>
<p>
  <a href="https://github.com/PScoriae/terraform-infra/blob/main/LICENSE.md">
        <img src="https://img.shields.io/badge/license-WTFPL-brightgreen?style=for-the-badge">
  </a>
  <a href="https://linkedin.com/in/pierreccesario">
    <img src="https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555">
  </a>
</p>
<p>
  <img src="./docs/terraform.svg" width=300>
</p>

## Terraform IaC

</div>
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about">About</a>
    </li>
    <li><a href="#installation">Installation</a></li>
  </ol>
</details>
<hr/>

# About

This repository is concerned with the provisioning of infrastructure for any of my personal projects using Terraform IaC. Currently, the cloud services used to host my projects are AWS and Cloudflare.

# Installation

This section guides you on how to setup this repo for your own use.

1. First, ensure [Terraform](https://terraform.com) is installed on your dev computer.
2. Ensure the [AWS CLI](https://aws.amazon.com/cli/) is also installed on your dev computer.
3. In the AWS console, create an IAM User for Terraform to use.
4. Run `aws configure` in your terminal to configure the AWS CLI to use said IAM User. This is how Terraform will gain access to your AWS account.
5. In your desired project folder, clone the project with the following command:

   ```bash
   git clone https://github.com/PScoriae/infra
   ```

6. Finally, run `terraform init` in the root directory to set up the Terraform backend.
