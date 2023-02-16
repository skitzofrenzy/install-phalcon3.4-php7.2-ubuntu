# To install Phalcon 3.4 with PHP 7.2 on Ubuntu 18.04, you can follow these steps

1. ## First, make sure that you have PHP 7.2 installed on your Ubuntu system. You can check this by running the command

```
bash
php -v
```

or

If PHP 7.2 is not installed, you can install it using the following command:

```
bash
sudo apt-get install php7.2
```

2. ## Next, you need to install the Phalcon dependencies, which include the PHP development headers, gcc, and make. You can install these dependencies using the following command

```
bash
sudo apt-get install php7.2-dev gcc make
```

3. ## Download the Phalcon 3.4 source code from the official Phalcon GitHub repository using the following command

```
bash
git clone git://github.com/phalcon/cphalcon.git
```

Once complete move to [Step#4]

#### if you get the error below

fatal: unable to connect to github.com:
github.com[0: 140.82.113.3]: errno=Connection timed out

#### use the https alt

```
bash
git clone -b 3.4.x --single-branch https://github.com/phalcon/cphalcon.git
```

4. ## Navigate to the downloaded Phalcon source code directory and checkout the 3.4 tag using the following commands

```
bash
cd cphalcon
git checkout v3.4.5
```

#### if you used the https alt
```
bash
cd cphalcon/build
```

5. ## Build the Phalcon extension using the following command

```
bash
sudo ./install
```

6. ## After the installation is complete, you need to enable the Phalcon extension in the PHP configuration. You can do this by creating a new phalcon.ini file in the PHP configuration directory

```
bash
sudo nano /etc/php/7.2/mods-available/phalcon.ini
```

7. ## Add the following line to the file

```
bash
extension=phalcon.so
```

Save and exit the file.

8. ## Finally, enable the Phalcon extension using the following command

```
bash
sudo phpenmod phalcon
```

9. ## Restart Apache or your web server to apply the changes

```
bash
sudo service apache2 restart
```

#### Phalcon should now be installed and enabled on your Ubuntu 18.04 system with PHP 7.2
