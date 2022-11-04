Terraform HomeWork
1. clone repo:
   git clone https://github.com/z1onobdy/otus
2. cd otus/terraform
3. terraform init
4. terraform apply
   it will create inventory/hosts.ini file for ansible
5. ansible-playbook -i ./inventory/hosts.ini playbook.yml
   it will deploy nginx to the created server in YC
