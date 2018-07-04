class icinga_puppet_ci {
	file { '/created_by_puppet.txt':
        	ensure  => file,
        	content => "bismella el rahman el rahim\n",
        	owner   => 'root',
        	group   => 'root',
		mode    => '0755',
	}
}

