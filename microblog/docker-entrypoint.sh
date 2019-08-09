#!/bin/sh
# Flask db init.
flask db init
# Create migrations.
flask db migrate
# Upgrade the database.
flask db upgrade
# RUn the application.
flask run -h 0.0.0.0
