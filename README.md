# Nginx reverse proxy with selfsigned certificate and basic auth
### Features
 - Websockets proxy enabled
 - htpasswd tool included

### Easy start

    docker run -it -d --name app_reverse_auth \
     -p 19443:443 \
     -e NGX_FORWARD_TO=https://rbc.ru \
     -e NGX_AUTH_USER=hui \
     -e NGX_AUTH_PASSWORD=pizda \
     snegowiki/nginx-selfsigned-auth

### Docker build
    docker build -t snegowiki/nginx-selfsigned-auth .
    docker run -it -d --name app_revers -p 18443:443 -e NGX_FORWARD_TO=https://dnbproducer.ru -e NGX_AUTH_USER=ha -e NGX_AUTH_PASSWORD=ha snegowiki/nginx-selfsigned-auth  

## Links
 - [Docker hub](https://hub.docker.com/r/snegowiki/nginx-selfsigned-auth) 
 - [Github](https://github.com/snegodick/nginx-selfsigned-auth)       
