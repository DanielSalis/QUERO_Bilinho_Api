# README

## Building application
```docker-compose build```


## Starting containers
```docker-compose up```

## Creating Database (necessary only in first time)
1) ```docker-compose run web rake db:create```
2) ```docker-compose run web rake db:migrate```
3) ```docker-compose run web rake db:seed```

## Accessing application
```http://localhost:3000/```
