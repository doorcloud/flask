# Launching a [Flask](https://flask.palletsprojects.com/) (Python) Application with Docker

This guide explains how to set up and launch a [Flask](https://flask.palletsprojects.com/) (Python) application using Docker.

## Prerequisites

Before starting, ensure you have the following tools installed on your machine:

- [Docker](https://www.docker.com/products/docker-desktop)

## Dockerfile Content

This repository contains a Docker setup for a Flask application.

```Dockerfile
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

```
## Steps to Launch the Application

1. Build the Docker Image

To build the Docker image, use the following command in the directory containing the Dockerfile:

```
docker build -t door-flask .
```

2. Run the Container

Once the image is built, run a container from this image:

```
docker run -p 8080:5000 door-flask
```

3. Access the Application

Open your browser and go to the following URL to see your application running:

```
http://localhost:8080
```

4. Environment Variables

If you need to configure additional environment variables, modify the .env file that was copied into the container during the image build.

## Publishing the Image on Docker Hub

1. Log In to Docker Hub

Before publishing your image, log in to Docker Hub with your Docker account:

```
docker login
```

2. Tag the Image

Tag the image you built with your Docker Hub username and the image name:

```
docker tag door-flask your_dockerhub_username/door-flask:latest
```
Replace your_dockerhub_username with your Docker Hub username.

3. Push the Image to Docker Hub

Push the tagged image to Docker Hub:

```
docker push your_dockerhub_username/door-flask:latest
```

