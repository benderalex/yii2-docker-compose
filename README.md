# yii2-docker-compose
Yii2 advanced in docker-compose

1) clone repository
clone repository git clone https://github.com/benderalex/yii2-docker-compose.git

2) run docker-compose
docker-compose up -d

3) install yii2 with composer
docker-compose run phpfpm composer install

4) init yii2
docker-compose run phpfpm ./init

5) go to site
go to http://localhost:99

