FROM python:2.7
RUN pip install cs ansible sshpubkeys
RUN mkdir -p /usr/share/ansible && \
    cd /usr/share/ansible && \
    git clone https://github.com/resmo/ansible-cloudstack.git
RUN mkdir -p /etc/ansible ; \
    echo "[defaults]"                                       > /etc/ansible/ansible.cfg; \
    echo "host_key_checking = False"                       >> /etc/ansible/ansible.cfg; \
    echo "library = /usr/share/ansible/ansible-cloudstack" >> /etc/ansible/ansible.cfg
