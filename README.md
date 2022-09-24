# Laravel From Scratch Demo Project

http://127.0.0.1:8000/

## Installation

First clone this repository, install the dependencies, and setup your .env file.

```
git clone https://gitlab.com/yogesh.vakhre.5057/laravel-crud-app.git
cd Laravel-app-crude/
composer install
cp .env.example .env
```

Then create the necessary database and Import from your root directory database path 
```
/database/laravel_app.sql
```

setup database configuration in .env file on root directory.

```
DB_DATABASE=laravel_app
DB_USERNAME=root
DB_PASSWORD=
```

And run the initial run your application.

```
php artisan key:generate
php artisan migrate --seed
php artisan cache:clear
php artisan config:clear
```
  
And run the your laravel application.  
```
php artisan serve
```

if you face permissioan realated issue  in the your laravel application on Ubuntu or Centos oprating systeme then do this.
```
sudo chown -R deployer:www-data /var/www/html/{your-project-name}/;
find /var/www/html/{your-project-name} -type f -exec chmod 664 {} \;
find /var/www/html/{your-project-name} -type d -exec chmod 775 {} \;
chgrp -R www-data storage bootstrap/cache
chmod -R ug+rwx storage bootstrap/cache
```
