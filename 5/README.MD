Склонировать репозиторий на хост с установленным Vagrant:

git clone https://github.com/z1onobdy/otus.git

Перейти в директорию otus/5 и запустить vagrant:

vagrant up

Дождаться завершения выполнения задания и подключиться к ansible хосту:

vagrant ssh ansible

Склонировать репозиторий на ansible хосте и запустить ansible playbook:

git clone https://github.com/z1onobdy/otus && cd otus/5 && ansible-playbook main.yml -i inventory.yml

Плейбук создаст 3 pxc ноды, создаст базу данных на одном хосте, потом создаст таблицу и данные на другом (чтобы показать, что репликация между нодами работает) и выведет содержимое таблицы. 
