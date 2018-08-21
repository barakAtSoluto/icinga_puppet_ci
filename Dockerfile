FROM puppet/puppetserver


RUN     puppet module install icinga-icinga2 --version 1.3.6 && \
	puppet module install icinga-icingaweb2 --version 2.2.0 && \
        puppet module install puppetlabs-apt --version 5.0.0 && \
        puppet module install petems-swap_file --version 4.0.0 && \
        puppet module install puppetlabs-docker --version 1.1.0  && \
        puppet module install puppetlabs-ruby --version 1.0.0 && \
        puppet module install puppet-nodejs --version 5.0.0 && \
        puppet module install saz-resolv_conf --version 4.0.0 && \
        puppet module install puppetlabs-mysql && \
        puppet module install puppetlabs-gcc && \
        puppet module install puppetlabs-git && \
        puppet module install puppetlabs-vcsrepo && \
        puppet module install example42/puppi  && \
        puppet module install example42/perl && \
        puppet module install maestrodev-wget && \
        puppet module install mayflower-php --version 4.0.0-beta1  --force && \
        puppet module install puppetlabs-inifile --version 1.6.0  --force
    
