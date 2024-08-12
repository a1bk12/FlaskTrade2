#!/bin/sh

# Activate virtual environment if needed (uncomment if using venv)
# source /app/venv/bin/activate

# Start Gunicorn server
exec gunicorn --bind 0.0.0.0:8000 app:app
