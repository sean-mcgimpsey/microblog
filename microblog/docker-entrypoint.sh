#!/bin/sh
# Flask db init.
flask db init
# Create migrations.
flask db migrate
# Upgrade the database.
flask db upgrade
# Compile  translations
pybabel compile -d /opt/microblog/app/translations
# Run the application.
flask run -h 0.0.0.0

#python -m smtpd -n -c DebuggingServer localhost:8025