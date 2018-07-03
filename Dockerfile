FROM puppet/puppetserver

COPY hiera.yaml /etc/puppetlabs/puppet
ADD  code       /etc/puppetlabs/code


