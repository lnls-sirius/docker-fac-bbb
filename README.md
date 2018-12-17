# docker-fac-bbb
Dockerfile with FAC beaglebone IOC and libraries development

## Docker Installation
Instructions for installing Docker on Ubuntu can be found on this web site: https://docs.docker.com/install/linux/docker-ce/ubuntu/

### To build docker image:
```
docker build --pull --network=host -t lnls/fac-bbb .
```

### To push docker image to dockerhub:
```
docker push lnls/fac-bbb
```

### To run bash in docker container:
```
docker run --network=host -it lnls/fac-bbb
```
