### docker-script
---
Standardised docker repository as a git sub module for projects

## Repository Instructions 
Add this git repository to exisitng and future projects as a submodule.It would serve as a standardised template for docker enviroments.Each Dockerfile is placed in their local repository and uses this repository as template for building and running images.

# In your project you want to dockerize:

```
git submodule add git@github.com:coderbunker/docker-scripts.git docker
```

# Create Dockerfile
Create Dockerfile based on specified environments of your project to create teh image. The image should contains all the dependencies the application requires.
 


# Add to Dockerhub
Ensure organisation has granted access to the git repositories.Connect dockerhub with github via UI interface
...

## Setup autotest
The docker-compose.test.yml file should defines a ` sut ` service that lists the tests to be run. The docker-compose.test.yml file should be located in the same directory that contains the Dockerfile used to build the image.
 
 * You can define any number of linked services in this file. The only requirement is that sut is defined. Its return code determines if tests passed or not. Tests pass if the sut service returns 0, and fail otherwise.

* Note: Only the sut service and all other services listed in depends_on are started. For instance, if you have services that poll for changes in other services, be sure to include the polling services in the depends_on list to make sure all of your services start.

## Setup deployment

# Configration for project 

Edit docker-entrypoint.sh to the entrypoint of your respective docker image.


# Run ./dockerize.sh
This shellscript is used to build the image for the Dockerfile. After image is build, check if image is present using 
` docker image ls`.It would be tagged as repository name and current date of built.


# Run ./run-development.sh
This shellscript is used to run the image that was build.
...



### Acknowledgments
@rngadam's workshop-docker-test docker folder was used as a reference.
