

    Склонировать репозиторий на хост с установленным Vagrant:

    git clone https://github.com/z1onobdy/otus.git

    Перейти в директорию otus/3 и запустить vagrant:

    vagrant up

    Дождаться завершения выполнения задания и подключиться к ansible хосту:

    vagrant ssh ansible

    Склонировать репозиторий на ansible хосте и запустить ansible playbook:

    git clone https://github.com/z1onobdy/otus && cd otus/3 && ansible-playbook main.yml -i inventory.yml

  

