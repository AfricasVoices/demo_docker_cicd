FROM python:3.6-slim

# Set working directory
WORKDIR /app

# Copy the rest of the project
COPY . /app

# Run pytest
CMD python setup.py pytest --addopts "--doctest-modules --junitxml=test_results.xml"
