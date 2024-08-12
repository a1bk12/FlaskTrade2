#!/bin/bash

# Print environment variables for debugging
echo "Starting application with environment variables:"
printenv

# Start Gunicorn server
exec gunicorn --bind=0.0.0.0:8000 --timeout 600 upstox1.app:app
