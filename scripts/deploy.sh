function deploy() {
 site=$1
 if [ ! -f /etc/nginx/sites-available/${site} ]; then
    echo "${site} not available"
    return
 fi

 rm -f "/etc/nginx/sites-enabled/${site}"

 ln -s /etc/nginx/sites-available/${site} /etc/nginx/sites-enabled/${site}

 nginx -t

 service nginx restart
}
