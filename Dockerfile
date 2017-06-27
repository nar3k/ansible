FROM williamyeh/ansible:alpine3-onbuild
RUN apk update
RUN apk add  py-pip
RUN pip install pyvmomi
CMD mkdir /ansible
ENV ANSIBLE_HOST_KEY_CHECKING=False
ENV ANSIBLE_CONFIG=ansible.cfg
WORKDIR /ansible

