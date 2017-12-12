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
docker-compose up -d
```

Install and init Yii2
-------------------

```
docker-compose run phpfpm bash /root/run.sh
```


Go to site
-------------------

[http://localhost:599](http://localhost:299)


Enable pretty url
-------------------
frontend/config/main.php

```
    'request' => [
                'csrfParam' => '_csrf-frontend',
                'baseUrl' => '',
    ],
    
    'urlManager' => [
                'enablePrettyUrl' => true,
                'showScriptName' => false,
                'rules' => [
                ],
    ],

```
backend/config/main.php

```
    'request' => [
                'csrfParam' => '_csrf-frontend',
                'baseUrl' => '/admin',
    ],
    
    'urlManager' => [
                'enablePrettyUrl' => true,
                'showScriptName' => false,
                'rules' => [
                ],
    ],
```


MongoDB
-------------------
Install MongoDB extension

```
docker-compose run phpfpm composer require --prefer-dist yiisoft/yii2-mongodb
```
Add to config

common/config/main-local.php

```
'mongodb' => [
            'class' => '\yii\mongodb\Connection',
            'dsn' => 'mongodb://mongo/your_database',
        ],
```
 
uncomment in docker-compose.yml

```
mongo:
  image: mongo
  ports:
    - 27017:27017
```

run dockers

```
docker-compose up -d
```


Elasticsearch
-------------------

Install Elasticsearch extension

```
docker-compose run phpfpm composer require --prefer-dist yiisoft/yii2-elasticsearch
```

Add to config 

```
'elasticsearch' => [
            'class' => 'yii\elasticsearch\Connection',
            'nodes' => [
                ['http_address' => 'elasticsearch:9200'],
            ],
        ],
```
uncomment in docker-compose.yml

```
elasticsearch:
  image: tutum/elasticsearch
  ports:
    - "9200:9200"
```

run dockers

```
docker-compose up -d
```
