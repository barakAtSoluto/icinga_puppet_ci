FROM puppet/puppetserver
ARG  yml_path=hiera.yaml

ADD $yml_path /etc/puppetlabs/puppet/
RUN mv -f /etc/puppetlabs/puppet/$yml_path /etc/puppetlabs/puppet/hiera.yaml
ADD  code       /etc/puppetlabs/code


