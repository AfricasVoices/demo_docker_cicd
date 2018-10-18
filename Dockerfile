FROM python:3.6-slim

# Install the tools we need.
RUN apt-get update && apt-get install -y git
RUN pip install pipenv

# Set working directory
WORKDIR /app

# Install project dependencies.
COPY Pipfile.lock /app
COPY Pipfile /app
RUN pipenv sync --dev

# Copy the rest of the project
COPY . /app
