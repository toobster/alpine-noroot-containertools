FROM debian

#Set Capabilities on busybox
RUN apt install iputils-arping
#Create a group for our user


# This is a Dumb Hack
CMD ["tail", "-f" , "/dev/null"]


