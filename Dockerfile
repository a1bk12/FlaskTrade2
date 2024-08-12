# Use the official Python image.
FROM python:3.12

# Set the working directory.
WORKDIR /app

# Copy the requirements file into the container.
COPY requirements.txt requirements.txt

# Install any dependencies.
RUN pip install -r requirements.txt

# Copy the rest of the application code.
COPY . .

# Expose the port that the app runs on.
EXPOSE 80

# Define the command to run the application.
CMD ["gunicorn", "-b", "0.0.0.0:80", "app:app"]
