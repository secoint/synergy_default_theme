Synergy Default Theme
===================

Установка 
------------
1. Добавить в Gemfile
    
        gem 'synergy_default_theme', :git => 'git://github.com/secoint/synergy_default_theme.git'
    
1. Выполнить
    
        rails g synergy_default_theme:install
        rake db:migrate

### Примечание
В процессе установки в store/all.css будет добавлен файл стилей store/synergy_default_theme. Он должен находится после стилей прочих spree/synergy расширений


Copyright (c) 2011 "Сервис и Консалтинг", released under the New BSD License
