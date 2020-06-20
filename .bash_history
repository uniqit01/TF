ls -la
mkdir .ssh
ls -la
chmod 700 .ssh
ls -la
cd .ssh
ls -la
vi authorized_keys
cat -n authorized_keys
ls -la
cd .ssh
chmod 600 authorized_keys 
ls -la
vi ~/.ssh/authorized_keys 
terraform --version
pwd
w
history
ls -la
ls -la .ssh
history
git version
vi .ssh/id_rsa
cd .ssh/
ls -la
chmod 600 id_rsa
ls -la
cd ..
mk 00-tenant-base
mkdir 00-tenant-base
cd 00-tenant-base/
vi provider.tf
vi keypair.tf
export http_proxy=http://10.14.38.3:3128
export https_proxy=http://10.14.38.3:3128
terraform init
vi keypair.tf 
terraform init
vi keypair.tf 
terraform init
vi keypair.tf 
terraform init
vi keypair.tf 
terraform init
cd 00-tenant-base/
ls -la
cat keypair.tf
ls -la
rm -rf tfplan terraform.tfstate .terraform
cat provider.tf 
terraform init
export https_proxy=http://10.14.38.3:3128
export http_proxy=http://10.14.38.3:3128
terraform init
terraform plan -out=tfplan
terraform apply "tfplan"
cat keypair.tf 
ssh-add -L
ssh linux@10.14.253.56
ls -la
terraform plan -out=tfplan
vi keypair.tf 
cd 00-tenant-base/
terraform plan -out=tfplan
terraform apply "tfplan"
ls -la
rm terraform.tfstate 
rm tfplan 
terraform plan
terraform apply
vi keypair.tf 
ls -la
rm terraform.tfstate
terraform init
terraform plan -out=tfplan
terraform apply "tfplan"
less keypair.tf 
less provider.tf 
vi provider.tf 
ls -la
rm -rf .terraform terraform.tfstate tfplan
terraform init
export https_proxy=http://10.14.38.3:3128
export http_proxy=http://10.14.38.3:3128
terraform init
terraform valid
terraform validate
terraform apply "tfplan"
terraform plan -out=tfplan
terraform apply "tfplan"
ls -la
rm -rf .terraform terraform.tfstate tfplan 
vi keypair.tf 
terraform init
terraform plan -out=tfplan
terraform apply "tfplan"
terraform state list
ls -la
vi security-groups.tf
terraform apply "tfplan"
terraform plan -out=tfplan
terraform apply "tfplan"
ls -la
rm -rf terraform.tfstate terraform.tfstate.backup tfplan
terraform plan -out=tfplan
terraform apply "tfplan"
vi sg-ssh.tf
less security-groups.tf 
less sg-ssh.tf 
terraform plan -out=tfplan
terraform apply "tfplan"
terraform state list
cd ..
mkdir 01-single-instance
cd 01-single-instance/
ls -la
vi instance.tf
less ../00-tenant-base/keypair.tf 
vi instance.tf
cp ../00-tenant-base/provider.tf .
ls -la
terraform init
terraform plan -out=tfplan
ls -la
vi instance.tf 
terraform plan -out=tfplan
ls -la
less provider.tf 
vi instance.tf 
less ../00-tenant-base/* | grep -i sg-ssh-spetrovk
:q
cd ../00-tenant-base/
ls -la
less sg-ssh.tf 
pwd
cd ../01-single-instance/
terraform plan -out=tfplan
vi instance.tf 
ls -la
terraform plan -out=tfplan
terraform apply "tfplan"
ssh linux@10.14.253.56
terraform show
ssh linux@10.14.253.56
pwd
cd ../00-tenant-base/
ls -la
cd -
vi instance.tf 
terraform plan -out=tfplan
terraform apply "tfplan"
terraform plan -out=tfplan
terraform apply "tfplan"
terraform show
ssh linux@10.14.253.56
rm /home/spetrovk/.ssh/known_hosts
ssh linux@10.14.253.56
vi instance.tf
terraform plan -out=tfplan
terraform apply "tfplan"
ssh linux@10.14.253.56
vi instance.tf
ssh linux@10.14.253.56
terraform destroy
ssh linux@10.14.253.56
ls -la
vi .bashrc 
cd .ssh/h
cd .ssh/
ls -la
vi config
cd .ssh/
ls -la
chmod 600 config 
ls -la
cd 01-single-instance/
ls -la
vi instance.tf 
terraform plan -out=tfplan
terraform state list
cat terraform.tfstate
terraform apply "tfplan"
vi instance.tf 
ssh linux@10.14.253.56
rm /home/spetrovk/.ssh/known_hosts
ssh linux@10.14.253.56
vi .bashrc 
export http_proxy=http://10.14.38.3:3128
export https_proxy=http://10.14.38.3:3128
ssh linux@10.14.253.56
cd 01-single-instance/
ls -la
vi mount_vm.sh
less mount_vm.sh 
chmod +x mount_vm.sh
ll
vi instance.tf 
terraform plan -out=tfplan
terraform apply "tfplan"
terraform plan -out=tfplan
terraform apply "tfplan"
ssh linux@10.14.253.56
ls -la
vi locals.tf
less instance.tf 
vi locals.tf 
less instance.tf 
vi instance.tf 
terraform plan -out=tfplan
vi locals.tf 
terraform output 
vi instance.tf 
terraform plan -out=tfplan
vi instance.tf 
terraform plan -out=tfplan
terraform apply "tfplan"
terraform output binding
terraform destroy
cd ..
mkdir 03-multiple-instances
ls -la
mv 03-multiple-instances 02-multiple-instances
ls -la
cd 02-multiple-instances
vi variables.tf
cp ../01-single-instance/instance.tf .
cp ../01-single-instance/provider.tf .
cp ../01-single-instance/locals.tf .
ls -la
vi locals.tf 
vi instance.tf 
cp ../01-single-instance/mount_vm.sh .
ll
mv instance.tf instances.tf
ls -la
terraform plan -out=tfplan
terraform init
vi instances.tf 
terraform plan -out=tfplan
vi instances.tf 
terraform plan -out=tfplan
vi instances.tf 
terraform plan -out=tfplan
terraform apply "tfplan"
cat variables.tf 
ssh linux@10.14.253.57
vi instances.tf 
terraform plan -out=tfplan
terraform apply "tfplan"
vi instances.tf 
terraform plan -out=tfplan
vi instances.tf 
terraform plan -out=tfplan
vi instances.tf 
terraform plan -out=tfplan
terraform apply "tfplan"
vi instances.tf 
ls -la
terraform destroy
uuidgen
ls -la
vi terraform.tf
cat terraform.tf
export AWS_ACCESS_KEY_ID="RERGMT0JHGYC7AD4GC9L"
export AWS_SECRET_ACCESS_KEY="4hx8ggCq7t2mQyBYVV5c4nwBeSHZPMMPIQc0xJ0i"
cat provider.tf 
terraform state list
vi terraform.tf
terraform state list
ls -la
cd 03-single-instance_remote-exec/
ls -la
terraform plan -out=tfplan
export AWS_SECRET_ACCESS_KEY="4hx8ggCq7t2mQyBYVV5c4nwBeSHZPMMPIQc0xJ0i"
export AWS_ACCESS_KEY_ID="RERGMT0JHGYC7AD4GC9L"
terraform plan -out=tfplan
terraform apply "tfplan"
cat instance.tf 
ls -la /home/spetrovk/.ssh/id_rsa
cat /home/spetrovk/.ssh/id_rsa
ls -la /home/spetrovk/.ssh/
cd 02-multiple-instances/
ls -la
rm -rf terraform.tfstate terraform.tfstate.backup
terraform init
export AWS_ACCESS_KEY_ID="RERGMT0JHGYC7AD4GC9L"
export AWS_SECRET_ACCESS_KEY="4hx8ggCq7t2mQyBYVV5c4nwBeSHZPMMPIQc0xJ0i"
terraform init
terraform plan -out=tfplan
terraform apply "tfplan"
terraform destroy
cd ..
mkdir 03-single-instance_remote-exec
cd 03-single-instance_remote-exec/
cp ../01-single-instance/* .
ls -la
rm terraform.tfstate terraform.tfstate.backup tfplan
cp ../02-multiple-instances/terraform.tf .
uuidgen
vi terraform.tf 
pwd
vi instance.tf 
terraform init
df -ah
df -h
ls -la ../01-single-instance/
du -ksh .
terraform plan -out=tfplan
terraform apply "tfplan"
ls -la /home/spetrovk/.ssh/id_rsa 
vi terraform.tf 
ls -la
vi provider.tf 
vi instance.tf 
ls -la /home/spetrovk/.ssh/id_rsa
vi instance.tf 
ls -la
rm -rf .terraform tfplan
terraform init
terraform plan -out=tfplan
uuidgen
vi instance.tf 
vi terraform.tf 
terraform init
ls -la
rm -rf .terraform tfplan
terraform init
terraform plan -out=tfplan
terraform apply "tfplan"
vi terraform.tf 
vi instance.tf 
terraform plan -out=tfplan
terraform apply "tfplan"
ls -la
vi instance.tf 
ls -la /home/spetrovk/.ssh/id_rsa
export AWS_ACCESS_KEY_ID="RERGMT0JHGYC7AD4GC9L"
export AWS_SECRET_ACCESS_KEY="4hx8ggCq7t2mQyBYVV5c4nwBeSHZPMMPIQc0xJ0i"
terraform plan -out=tfplan
terraform apply "tfplan"
cd /home/spetrovk/.ssh/
ls -la
terraform destroy
ls -la
cd -
vi /home/spetrovk/.ssh/id_rsa 
terraform plan -out=tfplan
terraform apply "tfplan"
terraform state list
terraform apply "tfplan"
vi instance.tf 
terraform plan -out=tfplan
vi instance.tf 
terraform plan -out=tfplan
terraform apply "tfplan"
vi terraform.tf 
terraform plan -out=tfplan
terraform init
terraform plan -out=tfplan
terraform apply "tfplan"
terraform destroy
cd ..
mkdir 04-single-instance_local-exec
cd 04-single-instance_local-exec/
cp ../03-single-instance_remote-exec/* .
ls -la
rm tfplan 
vi instance.tf 
ansible
ansible --version
vi instance.tf 
ls -la ~/.ssh/id_rsa
terraform init
vi terraform.tf 
uuidgen
vi terraform.tf 
terraform init
terraform plan -out=tfplan
terraform apply "tfplan"
ssh linux@10.14.253.56
vi in
vi instance.tf 
terraform plan -out=tfplan
terraform apply "tfplan"
vi instance.tf 
terraform plan -out=tfplan
terraform apply "tfplan"
export ANSIBLE_FORCE_COLOR=true
vi ~/.bashrc 
vi instance.tf 
terraform plan -out=tfplan
terraform apply "tfplan"
vi instance.tf 
terraform  destroy
ls -la
cd 00-tenant-base/
ls -la
cd ../01-single-instance/
ls -la
uuidgen
cd ../03-single-instance_remote-exec/
ls -la
grep -ir trigger *
vi instance.tf 
uuidgen
ls -la
ls -la 00-tenant-base/
history
ls -la
vi 00-tenant-base/provider.tf 
vi 00-tenant-base/tfplan 
vi 00-tenant-base/keypair.tf 
vi 01-single-instance/instance.tf 
ls -la 01-single-instance/
cd 01-single-instance/
ls -la
less instance.tf 
less locals.tf 
less mount_vm.sh 
less provider.tf 
less instance.tf 
ls -la
ls -la ..
ls -la ../00-tenant-base/
less ../00-tenant-base/keypair.tf 
less provider.tf 
less ../02-multiple-instances/instances.tf 
less ../02-multiple-instances/locals.tf 
cd 01-single-instance/
ls -la
less instance.tf 
less provider.tf 
less locals.tf 
history 
terraform state list
terraform 
terraform show
history 
terraform 
history 
ls -la
less instance.tf 
less locals.tf 
less provider.tf 
pwd
ls -la
cd ..
ls -la
ls -la 03-single-instance_remote-exec/
less 03-single-instance_remote-exec/instance.tf 
less 03-single-instance_remote-exec/locals.tf 
less 03-single-instance_remote-exec/provider.tf 
less 03-single-instance_remote-exec/terraform.tf 
less 03-single-instance_remote-exec/mount_vm.sh 
ls -la
cd 01-single-instance/
ls -la
less instance.tf 
pwd
ls -la
cd ../00-tenant-base/
ls -la
less keypair.tf 
less provider.tf 
terraform validate
terraform plan -out=tfplan
ls -la
vi provider.tf 
ls -la
rm tfplan 
vi provider.tf 
terraform validate
terraform plan -out=tfplan
ls -la
less keypair.tf 
less provider.tf 
less security-groups.tf 
less sg-ssh.tf 
terraform state list
terraform --help
ls -la
terraform destroy
ls -la
terraform validate
terraform plan -out=tfplan
terraform apply tfplan
terraform show
terraform destroy
ls -la
cd ../01-single-instance/
ls -la
less mount_vm.sh 
less locals.tf 
less instance.tf 
l s-la
ls -la
ls -la instance.tf 
less instance.tf 
clear
ls -la
ls -la ../00-tenant-base/
ls -la ../00-tenant-base/sg-ssh.tf 
less ../00-tenant-base/sg-ssh.tf 
ls -la
less provider.tf 
less locals.tf 
less instance.tf 
less locals.tf 
terraform --help
terraform show
terraform validate
terraform plan -out=tfplan
vi provider.tf 
terraform plan -out=tfplan
vi provider.tf 
less ../00-tenant-base/provider.tf 
diff provider.tf ../00-tenant-base/provider.tf 
terraform plan -out=tfplan
cd ../00-tenant-base/
terraform plan -out=tfplan
terraform apply  "tfplan"
cd ../01-single-instance/
terraform plan -out=tfplan
less ../00-tenant-base/keypair.tf 
less ../00-tenant-base/security-groups.tf 
less ../00-tenant-base/sg-ssh.tf 
ls -la
terraform validate
terraform apply "tfplan"
ls -la
grep -ir linux *
grep -ir user *
less locals.tf 
ssh linux@10.14.253.56
terraform destroy
terraform show
terraform state list
cd ../00-tenant-base/
terraform destroy
ls -la
