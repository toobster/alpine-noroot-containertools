FROM alpine

#Set Capabilities on busybox
RUN setcap 'cap_net_raw,cap_net_bind_service,cap_chown,cap_dac_override,cap_fowner,cap_fsetid,cap_kill,cap_setgid,cap_setuid,cap_setpcap,cap_sys_chroot,cap_mknod,cap_audit_write,cap_setfcap=+ep' /bin/busybox

#Create a group for our user
RUN addgroup -g 1001 -S tester

#create our new user
RUN adduser -S --ingroup tester --uid 1001 tester

#set the workdir, why not
WORKDIR /home/tester

USER tester

# This is a Dumb Hack
CMD ["tail", "-f" , "/dev/null"]


