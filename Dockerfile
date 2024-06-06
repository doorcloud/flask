# Use an official Python base image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application files into the working directory
COPY . .

# Install the necessary dependencies
RUN pip install Flask

# Expose the port on which the Flask application runs
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]
