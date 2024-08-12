# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make the startup script executable
RUN chmod +x /app/startup.sh

# Expose port 8000
EXPOSE 8000

# Define the entry point for the container
ENTRYPOINT ["/app/startup.sh"]