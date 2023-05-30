Terraform Configuration 
==========================

## Pre-requisite
- Create a project in GCP using console.
- Enable GCP APIs from console - ["compute.googleapis.com","iam.googleapis.com"]
- Create a service account with editor and Security Admin access( needed for iam roles).
- Create a key for above service account and download the json to local.
- Above service account will be used by terraform for authenticating to GCP.
- ssh key pair generated locally with a user named ansible. eg: **$ ssh-keygen -t rsa -C ansible**

## Configuration Details
- 0-locals.tf --> Defines the path for gcp service account credentials and ssh public key.
- 1-variables.tf --> Defines variables for project_id, zone, region etc.
- 2-provider.tf --> Defines the google provider with required versions of plugin.
- 3-vpc.tf --> Defines a regional VPC network. By default, GCP creates a subnet in all zones.
- 4-subnet.tf --> Creates a subnet for just one region, avoiding automatic creation of subnet.
- 5-firewall.tf --> Creates a firewall rule to allow access to port 22 and 443 in the network.
- 6-vm.tf --> Create a VM with selected operating system and a default service account.
- 7-output.tf --> To print the external IP of the VM instance
