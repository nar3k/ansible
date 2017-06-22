FROM williamyeh/ansible:ubuntu14.04
RUN apt-get -y update
RUN apt-get -y install python-pip
RUN pip install pyvmomi
CMD mkdir /ansible
ENV ANSIBLE_HOST_KEY_CHECKING=False
ENV ANSIBLE_CONFIG=ansible.cfg
WORKDIR /ansible

