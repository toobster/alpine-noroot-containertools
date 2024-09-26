FROM registry.access.redhat.com/ubi7/ubi

RUN yum -y update && yum -y install iputils traceroute


# This is a Dumb Hack
CMD ["tail", "-f" , "/dev/null"]


