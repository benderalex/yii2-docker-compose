# Yii2 in docker-compose
Yii2 advanced in docker-compose

Clone repository
-------------------

```
git clone https://github.com/benderalex/yii2-docker-compose.git
```

Run dockers
-------------------

```
docker-compose up -d`
```

Install Yii2
-------------------

```
docker-compose run phpfpm composer create-project --prefer-dist yiisoft/yii2-app-advanced .
```


Init yii2
-------------------
```
docker-compose run phpfpm ./init
```


Go to site
-------------------

[http://localhost:299](http://localhost:299)




