# Use an official Python runtime as a parent image
FROM python:latest
# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED=1

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app/

RUN pip install --upgrade pip setuptools

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container at /app
COPY . /app/

# Expose the port that Django will run on
EXPOSE 8000

# Run Django when the container launches
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
