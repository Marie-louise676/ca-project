# The base image
FROM ubuntu:latest

# Install python and pip
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

# Copy files required for the app to run
COPY . /ca-project/

# Install Python modules needed by the Python app
RUN pip install --no-cache-dir -r /ca-project/requirements.txt

# Declare the port number the container should expose "Som den lytter på"
EXPOSE 5000

# Run the application -  starter det der står i filen. 
CMD ["python", "/ca-project/run.py"]
