1. Склонировать репозиторий на хост с установленным Vagrant:

   git clone https://github.com/z1onobdy/otus.git 
2. Перейти в директорию otus/2 и запустить vagrant:

   vagrant up
3. Дождаться завершения выполнения задания и подключиться к ansible хосту:
  
   vagrant ssh ansible
4. Склонировать репозиторий на ansible хосте:
 
   git clone https://github.com/z1onobdy/otus.git && cd otus/2
5. Запустить ansible playbook:
 
   ansible-playbook main.yml -i inventory.yml -v
