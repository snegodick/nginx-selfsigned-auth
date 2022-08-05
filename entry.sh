#!/bin/bash
echo "Remote URL: $NGX_FORWARD_TO"
htpasswd -bc /etc/nginx/htpasswd $NGX_AUTH_USER $NGX_AUTH_PASSWORD
sed -i -e "s|NGX_FORWARD_TO|$NGX_FORWARD_TO|g" /etc/nginx/sites-enabled/default
exec nginx -g "daemon off;"