FROM williamyeh/ansible:alpine3-onbuild
RUN apk update
RUN apk add  -y gcc g++ libxml2 libxml2-dev py-lxml py-pip python-dev 
RUN pip install lxml pyvmomi nsxramlclient pysnmp docker-py napalm-ansible
CMD mkdir /ansible
ENV ANSIBLE_HOST_KEY_CHECKING=False
ENV ANSIBLE_CONFIG=ansible.cfg
WORKDIR /ansible

