# terraform-iks
A Terrraform Plan for building an IKS cluster in Intersight using the [Terraform Module for IKS](https://registry.terraform.io/modules/terraform-cisco-modules/iks/intersight/latest)

## Pre-requirements
- Terraform
- Intersight API key
- vCenter target
## Usage
1. Copy the terraform.tfvars.example file to terraform.tfvars  
   Edit the values in this document.

2. Initialize your terraform provider.  
`tf init`

3. Plan your infrastructure change.  
`tf plan`

4. Apply your infrastructure change.  
`tf apply`

Now login to Intersight and you should see your Profile under Profiles.  
At the moment the Cluster is not automatically deployed, you can change the `Cluster_Action` property for that.  