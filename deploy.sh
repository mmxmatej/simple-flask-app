#!/bin/bash

# Putanja do aplikacije
APP_DIR="/home/deployuser/simple-flask-app"  # Putanja do tvoje aplikacije
# Instalacija potrebnih paketa
cd $APP_DIR
pip3 install -r requirements.txt

# Pokretanje gunicorn servera
sudo systemctl daemon-reload  # Reload systemd konfiguracije
sudo systemctl restart simple-flask-app  # Restart servisa (ako je već pokrenut)
sudo systemctl enable simple-flask-app  # Omogući servis da se pokreće pri bootanju

# Provjera statusa servisa
sudo systemctl status simple-flask-app
