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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDELqggdHlcUQL0tcaUMjxikiwpO52aoImK/Y95udnjUVxAcWUleNdN+rIu1k6ri/by0yYA0nGik9Gxx9dE2f6aiWipuKp1Q18OstVbVNqkE30Z5f4j+jgWYzxRnd3DyiujJpGEr7qdBu5KC5OVTAEvBwX0Jwhp1IF/apONM2kqsCUeKrKbTvQZsEGClsLa5XI6Tg+ainUmMP2ii1F3Xcna3C5EXaJtEF9XoJjutVVcKREKb2PhurHKfSEbZLPClTXvilUK4C28j9zF91nOP55KqMXlPN1Ajzi3R86GtTGk0XCuYPulUfcTQU2psrkEDvZYcJsdhhxbwjq28XX4140t',
	}  
}
