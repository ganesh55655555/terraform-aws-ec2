# terraform-aws-ec2



---

# 📦 Repo 2: `terraform-aws-ec2/README.md`

```md
# Terraform AWS EC2 Module

This module creates:
- EC2 instance
- Security Group

## 🚀 How to use

```hcl
module "ec2" {
  source = "git::https://github.com/ganesh55655555/terraform-aws-ec2.git?ref=v1.0.0"

  vpc_id         = module.vpc.vpc_id
  subnet_id      = module.vpc.subnet_id
  instance_type  = var.instance_type
  instance_count = var.instance_count
  instance_name  = var.instance_name
  sg_name        = var.sg_name
  allowed_cidr   = var.allowed_cidr
}



Name	Description	Example
vpc_id	VPC ID	from VPC module
subnet_id	Subnet ID	from VPC module
instance_type	EC2 type	t2.micro
instance_count	Number of instances	1
instance_name	Name of EC2	demo-server
sg_name	Security group name	demo-sg



Example terraform.tfvars
instance_type  = "t2.micro"
instance_count = 1
instance_name  = "demo-server"
sg_name        = "demo-sg"
allowed_cidr   = ["0.0.0.0/0"]

