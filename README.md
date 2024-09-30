# test-opensupport-terraform-project

Steps to Set Up Multiple Environments with Terraform We'll break the task into:

Terraform Setup.
Networking (VPC, Subnets, Security Groups).
EC2 Instances.
RDS (MySQL) Database.
S3 Bucket.
Multi-Environment Setup with Terraform Workspaces.
CI/CD Integration.
Project Structure: test-opensupport-terraform-project/
 |-- main.tf |-- variables.tf |-- provider.tf

Multi-Environment Setup Using Terraform Workspaces:

Initialize Terraform: First, initialize the Terraform configuration. cmd: terraform init
Create Workspaces: cmd: terraform workspace new development terraform workspace new staging terraform workspace new production
Select a Workspace: cmd: terraform workspace select development
Deploy to a Specific Environment: cmd: terraform plan -var environment=development terraform apply -var environment=development
Note: Each workspace maintains a separate state file, ensuring isolated infrastructure for each environment.
