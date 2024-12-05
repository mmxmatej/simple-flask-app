#!/bin/bash
# Putanja do aplikacije
APP_DIR="/home/deployuser/simple-flask-app"  # Putanja do aplikacije
# Pokretanje aplikacije koristeći Gunicorn
cd $APP_DIR
gunicorn --workers 3 --bind 0.0.0.0:8000 app:app
