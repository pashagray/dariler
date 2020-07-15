# README

**У нас блочат  ruby-gems и rvm, поэтому сначала VPN! **

Устанавилвать ruby желательно через rvm [http://rvm.io/](http://rvm.io/)


```bash

cd path/to/project

# Устанавливаем 
rvm install ruby-2.7.1
rvm gemset create dariler
rvm use ruby-2.7.1@dariler

# Гемы и npm
gem install rails
bundle install
yarn install

# Поднимаем базу
rake db:create
rake db:migrate

# Наполняем базовыми данными
rake db:seed

# Запуск на localhost:3000
rails s

# Консоль
rails c

# Если захочется вебпак в отдельном процессе
# Без этого компиляция будет при обновлении страницы,
# а не при изменении файлов
./bin/webpack-dev-server
```