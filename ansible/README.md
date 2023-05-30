Ansible Playbook
==========================

## Requirements
ansible user with ssh private key stored locally, that has appropriate access to VM instance.

## Variables

- **token_key** : custom key used by the script.

## Tasks

- Creates a directory on VM instance.
- Copies script and configuration file from local to remote vm.
- Executes the script on the VM.

## How to execute

>ansible-playbook gcp-vm -i inventory.imi