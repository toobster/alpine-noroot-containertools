FROM registry.access.redhat.com/ubi7/ubi

RUN yum -y update && yum -y install iputils tracepath


# This is a Dumb Hack
CMD ["tail", "-f" , "/dev/null"]


