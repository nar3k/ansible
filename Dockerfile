FROM williamyeh/ansible:ubuntu16.04
RUN apt-get update
RUN apt-get install -y libssl-dev gcc g++ libxml2 libxml2-dev python-lxml python-pip 
RUN pip install lxml pyvmomi nsxramlclient pysnmp
CMD mkdir /ansible
ENV ANSIBLE_HOST_KEY_CHECKING=False
ENV ANSIBLE_CONFIG=ansible.cfg
WORKDIR /ansible

