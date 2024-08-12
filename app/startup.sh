#!/bin/sh
# Change to the application directory
cd /app

# Start Gunicorn on port 80
exec gunicorn --bind 0.0.0.0:80 app:app
