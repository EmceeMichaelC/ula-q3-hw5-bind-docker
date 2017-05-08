# ula-q3-hw5-bind-docker
## Docker container image for bind DNS slave on CentOS 7

#### Contents
* Dockerfile - Dockerfile based on centos:7 image, including bind and bind-utils installation.
* named.conf - Sample bind configuration file to be copied to the container.

#### After building image execute

``` docker run --name container-name -d -p 53:53/udp -p 53:53  image-name ```
