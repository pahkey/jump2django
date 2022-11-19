#!/bin/bash

# Prepare log files and start outputting logs to stdout
# tail -n 0 -f /root/wikidocs/logs/gunicorn*.log &

if [ $DJANGO_SETTINGS_MODULE == "config.settings.local" ]
then
    exec gunicorn config.wsgi:application \
        --reload \
        --name mysite \
        --bind unix:/root/mysite/sock/mysite.sock \
        --workers 1 \
        --log-level=debug \
	--log-config /root/mysite/gunicorn_log.ini &
else
    exec gunicorn config.wsgi:application \
        --name mysite \
        --bind unix:/root/mysite/sock/mysite.sock \
        --workers 2 \
        --log-level=info \
	--log-config /root/mysite/gunicorn_log.ini &
fi

