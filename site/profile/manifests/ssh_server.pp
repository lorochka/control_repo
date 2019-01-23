class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC2ojC87slQMIcTO6/bSB/IzWtQ7QRSDmDxPvrnEU5EZ4Ql+kDbxIlv6r2v5C35mBygTGxkXXQmvETLvKgXviM+Gs6flXFCTtev6ZoMFpmBf1JJiXUzRGK+xfC2+g9PAGjTsNy9aXELJSeR/rn1miiHeI/xO0x/79iJ7e9iBILIzoledcpzt4MdxSlqfn7OmJ1bwP9XVqYEybYN6MtGZCp4BjB+CCy7L7W+dIjls73wWj/5ld3znujD7wQ0f/bjY0/Ji5UwD8Vk0DK+BeWT3kTu64pVjzHsxiC+h+tH/wv1ye5jSNQ0lCrk/oGRcOHIbi4j3uAisoIjrPwAT4VbHNS7',
	}  
}

