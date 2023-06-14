# Jupyter notebook with gdal

```sh
docker-compose build
docker push rub21/jbook:v1
```

```sh
alias jbook='docker run -it --rm -p 8888:8888 \
-v $HOME/.aws:/home/jovyan/.aws \
-v $(pwd)/:/home/jovyan \
--user root \
-e AWS_PROFILE=devseed \
--rm \
rub21/jbook:v1'
```
