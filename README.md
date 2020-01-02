# terraform_digitalocean
Terraform scripts to do tasks on digitalocean cloud

NOTE:- Every time for new user, the values for fingerprint and ssh keys will change.

Terraform installation on ubuntu 18.04 LTS:
* Run the script "terraform_install.sh":
	                                * $ bash terraform_install.sh

How to get fingerprint of the machine?
--> Run below command to get the fingerprint and take the value after "md5:"
	--> $ ssh-keygen -E md5 -lf ~/.ssh/id_rsa.pub | awk '{print $2}'

How to generate ssh keys for the machine?
--> ssh-keygen(means ssh key generate) will able to provide you with both public and private keys for the machine so that you can ssh to machine. Run below command and follow the steps.
	--> $ ssh-keygen

How to find path for public key and private key?
1. Public key= $HOME/.ssh/id_rsa.pub
2. Private key= $HOME/.ssh/id_rsa


Terraform commands:
1. terraform init (initialize directory as terraform directory)
2. terraform plan (to see plan for the changes that going to be take effect on cloud)
3. terraform apply (to apply changes to permanent)
