node default {
	class { 'icinga_puppet_ci': }
	class { 'soluto_icinga2::icinga2master::objects': }
}
ddd
