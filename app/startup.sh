#!/bin/sh
# Change to the application directory
cd /app

# Start Gunicorn
exec gunicorn --bind 0.0.0.0:8000 app:app
