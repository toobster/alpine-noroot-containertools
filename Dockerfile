FROM registry.access.redhat.com/ubi7/ubi

RUN yum -y update && yum -y install iputils tracert


# This is a Dumb Hack
CMD ["tail", "-f" , "/dev/null"]


