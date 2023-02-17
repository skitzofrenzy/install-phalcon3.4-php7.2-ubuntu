## Set up Laravel with PHP 8.1 and MySQL on Ubuntu 20.04

1. ### Update the package manager

```bash
sudo apt-get update

```

2. ### Install the required packages

```bash
sudo apt-get install php8.1 php8.1-mysql php8.1-curl php8.1-mbstring php8.1-xml php8.1-zip mysql-server

```

3. ### Install Composer, a PHP package manager

```bash
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

```

4. ### Install Laravel using Composer

```bash
sudo composer global require laravel/installer

```

5. ### Add the Composer bin directory to the system's PATH

```bash
echo 'export PATH="$PATH:$HOME/.composer/vendor/bin"' >> ~/.bashrc
source ~/.bashrc

```

6. ### Create a new Laravel project

```bash
laravel new myproject

```
*you can replace myproject with your own project name.*

7. ### Set the correct file permissions

```bash
sudo chown -R www-data:www-data myproject
sudo chmod -R 755 myproject/storage

```

8. ### Configure the MySQL database

```bash
mysql -u root -p
CREATE DATABASE mydatabase;
GRANT ALL ON mydatabase.* TO 'myuser'@'localhost' IDENTIFIED BY 'mypassword';
FLUSH PRIVILEGES;
EXIT;

```

9. ### Update the Laravel database configuration file

```bash
nano myproject/.env

```

Update the following variables with your database information:

```bash
DB_DATABASE=mydatabase
DB_USERNAME=myuser
DB_PASSWORD=mypassword

```
*Make sure to replace myproject, mydatabase, myuser, and mypassword with your own database, and user information in steps 8 and 9.*

10. ### Start the Laravel development server

```bash
php myproject/artisan serve

```
