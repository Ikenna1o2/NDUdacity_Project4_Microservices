<include a CircleCI status badge, here>
[![CircleCI](https://circleci.com/gh/Ikenna1o2/NDUdacity_Project4_Microservices/tree/master.svg?style=svg)](https://circleci.com/gh/Ikenna1o2/NDUdacity_Project4_Microservices/tree/master)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

### Project Tasks:

## Create the Docker file
    => Specify a working directory.
    => Copy the app.py source code to that directory
    => Install any dependencies in requirements.txt (do not delete the commented # hadolint ignore statement).
    => Expose a port when the container is created; port 80 is standard.
    => Specify that the app runs at container launch.
    
    
## Run the container and make predictions
    => Build the docker image from the Dockerfile
    => Run the containerized Flask app; publish the container’s port(80) to a host port(8000)
    => Make the pricing prediction.
    => Add log statement
    
 ## Upload the Docker Image
    => Successfully authenticate and tag the docker image , once done upload the docker image.
    
 ## Configure Kubernetes to Run locally
    => Create a kubernetes cluster using minikube and kubectl.
    
 ## Deploy with Kubernetes and save Output Logs
    => Deploy application on the newly created Kubernetes cluster
    => Run the Docker Container
    => Forward the container port (80) to host port(8000)
    => Make a prediction and capture the logs.
    
 ## Delete Cluster
 
 ## Integrate project with CircleCI
    => Create a config file and run the build on circleCI.
    
