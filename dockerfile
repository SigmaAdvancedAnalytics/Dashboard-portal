FROM python:3.6.3-slim-jessie

WORKDIR /usr/src/app

#Install required unix components
RUN apt-get update && \
    apt-get -y install gcc python-dev freetds-dev

#Install required python dependencies
COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Currently we are just creating a dev work environment
# Uncopy the below lines to make a deployable container

# Copy application files
# COPY ./app .

# Set a startup command
# CMD ["python","main.py"]

# Drop into a shell by default
CMD ["/bin/bash"]
