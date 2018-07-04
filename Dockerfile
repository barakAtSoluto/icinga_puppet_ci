FROM puppet/puppetserver
ARG  yml_path=hiera.yaml

ADD $yml_path /etc/puppetlabs/puppet/
ADD code       /etc/puppetlabs/code
ADD private_secrets /etc/puppetlabs/secure/keys 

RUN mv -f /etc/puppetlabs/puppet/$yml_path /etc/puppetlabs/puppet/hiera.yaml && \
    puppet module install icinga-icinga2 --version 1.3.6 && \
    puppet module install puppetlabs-apt --version 4.5.1
    