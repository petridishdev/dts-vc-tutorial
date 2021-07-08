# /bin/bash

python manage.py migrate;

GUNICORN_CMD_ARGS="--bind=0.0.0.0:8080 --workers=2" gunicorn vc_tutorial.wsgi:application
