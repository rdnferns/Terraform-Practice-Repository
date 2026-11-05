# Terraform-Practice-Repository
Hi, this is a Repository that highlight the exercises carried out for understanding Terraform.
<br>
<br>

# Terraform_Create:
Step-1: Paste the following files in a empty directory in your Linux terminal
<br>
<br>

Step-2: Perform terraform init:-
```bash
terraform init                                                                              
```
<br>
<br>

Step-3: Perform terraform plan ( for review ):-
```bash
terraform plan
```
<br>
<br>

Step-4: Perform terraform apply ( builds the required infra in the cloud [AWS] ):-
```bash
terraform apply
```
<br>

Notes:- Please use your own personal Pem-Key in place of the one already in use in main.tf, also please use your own region in the provider.tf file
<br>
<br>
<br>
<br>

# Managing_Terraform:
Step-1: Paste the following files in a empty directory in your Linux terminal.
<br>
<br>

Step-2: Configure the variables mentioned in the variable.tf file in the main.tf file.
e.g:
```bash
# instance type = t2.micro ❌
instance type = var.instance_type ✅
```
<br>
<br>

Step-3: Read the output.tf file to understand how outputs get shared during 'apply' done
```bash
output "instance_hostname" {
  description = "Will higlight the private DNS name of the instance created"
  value       = aws_instance.app_server.private_dns
}
```
<br>
<br>

Step-4: Observe the module used in main.tf. 
Modules: modules work as a pre-established repository that one can use instead of manually coding the infrastructure, most modules can be taken remotely form the Hashicorp Registry but modules can also be created & fetched locally.
```bash
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.19.0"

  name = "example-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24"]

  enable_dns_hostnames = true
}
```
<br>
<br>

Step-5: Execute 'terraform fmt', then 'terraform init' & then 'terraform plan' to set & review the IaC setup for 'apply'
```bash
terraform fmt
terraform init
terraform plan
```
<br>
<br>

Step-6: Finally execute the apply operation & observe the output.
```bash
terraform apply
```
