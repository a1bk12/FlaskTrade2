# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Ensure startup.sh is executable
RUN chmod +x /app/startup.sh

# Expose port 8000
EXPOSE 8000

# Command to run the application
CMD ["/app/startup.sh"]
