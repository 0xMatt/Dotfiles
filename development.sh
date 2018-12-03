# PHP Crap
sudo dnf install -y nodejs php php-process php-opcache php-json php-msgpack php-xml php-mbstring php-xdebug php-intl

## Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '93b54496392c062774670ac18b134c3b3a95e5a5e5c8f1a9f115f203b75bf9a129d5daa8ba6a13e2cc8a1da0806388a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
chmod +x composer.phar 
sudo mv composer.phar /usr/bin/composer

wget -O phpunit https://phar.phpunit.de/phpunit-7.phar
chmod +x phpunit
sudo mv phpunit /usr/bin/phpunit

# NodeJS/Typescript Crap
sudo npm install -g javascript-typescript-langserver typescript

## Neo/Vim crap
sudo npm install -g neovim
sudo pip2 install neovim
sudo pip3 install neovim

# SpaceVim                                                                          
curl -sLf https://spacevim.org/install.sh | bash
