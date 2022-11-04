Terraform HomeWork
1. clone repo:
   git clone https://github.com/z1onobdy/otus/new/main/terraform
2. terraform init
3. terraform apply
   it will create inventory/hosts.ini file for ansible
4. ansible-playbook -i ./inventory/hosts.ini playbook.yml
   it will deploy nginx to the created server in YC
