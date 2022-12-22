#!/bin/bash

# pip install rsync





# Set up the database for storing the catalog data:
python manage.py migrate

# Populate the Database
python manage.py updatecatalog

# # Collect Static Files
# python manage.py collectstatic

python manage.py runserver "0.0.0.0:8000"