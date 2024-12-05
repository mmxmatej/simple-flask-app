#!/bin/bash
# Putanja do aplikacije
APP_DIR="/path/to/your/app"
# Pokretanje aplikacije koristeći Gunicorn
cd $APP_DIR
gunicorn --workers 3 --bind 0.0.0.0:8000 app:app
