# Use an official Python base image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application files into the working directory
COPY . .

# Install the necessary dependencies
RUN pip install Flask

ARG PORT=5000

# Expose the port on which the Flask application runs
EXPOSE ${PORT}

# Define the command to run the application
CMD ["python", "app.py"]
