playbook-ohie-cr
======================

Ansible playbook for deploying the client registry component of the [OpenHIE](http://ohie.org) stack.

## What it does
* Installs Openjdk-jre-7, tomcat7, postgresql-server, and openempi.
* Sets up a blank database for use.

## Requirements
* Ansible **1.3+** installed on client.
* Debian based distro installed on target machine (tested with Ubuntu 12.04 LTS).
* root username/password on target machine, ssh installed and running.
* **If you do not having the required python packages uncomment the `# - bootstrap` line in the `site.yml` file.**

## Vars and setup
You will need to copy `group_vars/all.example` to `group_vars/all` then edit the variables in`group_vars/all`.

Also copy `hosts.example` to `hosts` and enter the ip or hostname of your server in place of the ip.

By default we try to login with root via ssh, if you have another user with sudo access on your server(e.g. AWS) edit `site.yml` and change the user and uncomment the sudo line.

## Running the play
`ansible-playbook -k -i hosts site.yml`

Drop the -k if you are logging in with a public/private key. 

`ansible-playbook -i hosts site.yml`

After this is complete point your browser to http://ip_or_hostname:8080/openempi-admin.  The default login is admin/admin.
