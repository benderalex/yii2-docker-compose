#!/bin/bash
cd /var/www/html/
rm .gitkeep
echo "Install Yii2"
composer create-project --prefer-dist yiisoft/yii2-app-advanced /var/www/html
/var/www/html/./init