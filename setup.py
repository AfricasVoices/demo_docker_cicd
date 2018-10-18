from setuptools import setup, find_packages

setup(
    name="demo_docker_cicd",
    version="0.1.0",
    url="https://github.com/AfricasVoices/demo_docker_cicd",
    packages=find_packages(),
    setup_requires=["pytest-runner"],
    tests_require=["pytest<=3.6.4"]
)
