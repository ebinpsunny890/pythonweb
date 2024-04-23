# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask and gunicorn
RUN pip install --no-cache-dir Flask gunicorn

# Expose the port gunicorn will listen on
EXPOSE 5000

# Command to run the application using gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
