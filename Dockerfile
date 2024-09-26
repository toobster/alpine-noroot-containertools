FROM registry.access.redhat.com/ubi8/ubi

RUN yum -y update && yum -y install iputils iputils-traceroute


# This is a Dumb Hack
CMD ["tail", "-f" , "/dev/null"]


