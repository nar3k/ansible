
FROM williamyeh/ansible:alpine3-onbuild
RUN apk update
RUN apk add  libxml2 libxml2-dev py-lxml py-pip
RUN pip install lxml pyvmomi nsxramlclient
CMD mkdir /ansible
ENV ANSIBLE_HOST_KEY_CHECKING=False
ENV ANSIBLE_CONFIG=ansible.cfg
WORKDIR /ansible

