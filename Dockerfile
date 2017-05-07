# Use CentOS 7 as a base image
FROM centos:7

RUN yum makecache fast

#Install bind.
RUN yum install -y bind && yum install -y bind-utils

# Copy the named.conf into the container at /etc
COPY ./named.conf /etc

# Make port 53 available to the world outside this container
EXPOSE 53

# Start named in the foreground with logging to stderr option.
ENTRYPOINT ["named", "-g", "-u", "named"]

