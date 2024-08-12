#!/bin/bash
gunicorn --bind=0.0.0.0:8000 --timeout 600 upstox1.app:app