# HAProxy Ansible Collection

My personal collection of playbook(s) to install and configure HAProxy on a target system.

This playbook was designed and tested to be ran against RHEL8/9 systems. Other operating systems have not been tested. Pull requests to add this functionality are welcome and appreciated!

## Requirements

This playbook requires the use of the `ansible.posix` collection and all relevant dependencies. 

## Usage

Below is an example Ansible playbook command to run the playbook. Change the options as necessary depending on your Ansible configuration and inventory. 

```bash
ansible-playbook haproxy.yml -e target=haproxy --user user --ask-pass --ask-become-pass
```