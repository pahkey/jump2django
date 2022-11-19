#!/bin/bash

PID=$(ps -ef | grep gunicorn | grep mysite | grep -v grep | awk '{print $2}')

if [ -z "$PID" ];
then
    echo "gunicorn is not running"
else
    kill -9 $PID
    echo "gunicorn stopped."
fi

