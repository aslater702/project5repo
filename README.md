#status badge 
[![CircleCI](https://circleci.com/gh/aslater702/project5repo/tree/main.svg?style=svg)](https://circleci.com/gh/aslater702/project5repo/tree/main)

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


### Files Overview
CircleCI- config.yml:
    The config.yml file integretes with CircleCI to define jobs we want to run for the workflow

Model_data- boston_housing_prediction.joblib- housing.csv:
    These files contain data for the prediction model
    
output_txt_files- docker_out.txt- kubernetes_out.txt:
    These files contian output text from the docker and kubernetes logs
    
app.py:
    This file contains source code for the application
    
Dockerfile:
    The dockerfile creates a working directory, copies source code, installs pip, opens port 80 and runs the app.py on launch
    
Make_prediction.sh:
    This file outputs a prediction from the housing model data and returns it in the console. run_docker.sh or run_kubernetes.sh must be ran as a prerequisite to this file
    
MakeFile:
    The makefile sets up, installs, lints, and tests the environment. Can be used by calling "make lint", "make install", etc
    
Requirements.txt
    Installs modules needed to run the code
    
run_docker.sh:
    Run docker runs the setup for the docker container to be able to run locally.
    
run_kubernetes.sh:
    Run kubernetes uploads a docker image to DockerHub
    
upload_docker.sh:
    Tags and uploads an image to dockerHub
    
    