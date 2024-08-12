#!/bin/sh
# Ensure the working directory is set to /app
cd /app

# Run Gunicorn to start your application
gunicorn --bind 0.0.0.0:8000 app:app
