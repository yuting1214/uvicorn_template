# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in requirements.txt
RUN pip install -r requirements.txt

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Expose the port uvicorn will run on
EXPOSE 8010

# Command to run the uvicorn server
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8010"]
