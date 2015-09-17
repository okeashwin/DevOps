## Provisioning Servers

### Pre requisite steps
#### Digital Ocean
* Generate public and private keys using `ssh-keygen` and upload the public key on the Digital Ocean control panel
* Generate an access token for Digital Ocean API

#### AWS
* Create a file `~/.aws/credentials` on the host machine and place the AWS access ID and the secret access key as belows : 
```
[default]
aws_access_key_id = <access_key_id>
aws_secret_access_key = <secret_access_key>
```
* On the EC2 dashboard, using Network and Security -> Key Pairs, generate a key pair for accessing the EC2 instance using `ssh`. The private key will be automatically downloaded onto our host machine
* We should enable the remote host inbound traffic from any IP. For this, edit the "inbound rules" in Security Groups -> Inbound tab -> Edit -> Set "Anywhere" for source

#### Installing NodeJS on the host machine:
Download and install NodeJS from here : https://nodejs.org/en/download/

#### Installing Ansible on the host machine

Run the following commands from the shell on the host:
```
git clone git://github.com/ansible/ansible.git --recursive
cd ./ansible
git checkout tags/v1.9.2-1
git submodule update --recursive
source ./hacking/env-setup
```
#### Execute the script
* Run `script.sh` to install and start `nginx` on both the provisioned servers.

### Screencast
Link to the screencast : https://www.youtube.com/watch?v=-1QFe2OGYEo
