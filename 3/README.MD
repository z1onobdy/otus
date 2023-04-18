

    Склонировать репозиторий на хост с установленным Vagrant:

    git clone https://github.com/z1onobdy/otus.git

    Перейти в директорию otus/3 и запустить vagrant:

    vagrant up

    Дождаться завершения выполнения задания и подключиться к ansible хосту:

    vagrant ssh ansible

    Склонировать репозиторий на ansible хосте и запустить ansible playbook:

    git clone https://github.com/z1onobdy/otus && cd otus/3 && ansible-playbook main.yml -i inventory.yml
    
    
    Проверка:
    на vagrant хосте в браузере переходим по адресу http://192.168.33.3
    Это VIP адрес
    
    Появятся следующие данные:
    Frontend IP address: Front-end: frontend1 MYSQL server version: 80033 
    frontend1 - master хост, а так же версия mysql
    
    Далее отключаем хост fe1 любым способом и обновляем страницу http://192.168.33.3
    Frontend изменится на frontend2. Это backup хост.
    Включаем хост fe1. Снова обновляем страницу. frontend изменится обратно на frontend1
    
  

