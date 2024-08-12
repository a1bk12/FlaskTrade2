#!/bin/bash

# Start Gunicorn server
exec gunicorn --bind=0.0.0.0:8000 --timeout 600 app.main:app