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
                    user => 'root',
                    type => 'ssh-rsa',
                    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC73Uh5bfSB7hMfy2BzsKugFEExdZ1qj8RMAWbwzEJcKp3hiWuWCKUXIST+VyO+PDcbzMW/K+4XbbL+yyxJGtfXDwRWqFLTmbUlT2KWTobSbcqkDQeWjbtzpc9pprcBuvEmqeY1HjwE/+JeoYqK9cNru5YRLrT1QpKUnyN86G9ZfZc1scKAIunmeI+trbxI0dMFkWDtjAQ+m4bccpwIU/fuQgDs0Oim3BNjKz/7VbXyWV4mdpDj2oPwucoQV5VWMkQQagm6b/brL/Ga/BRE6JPTMnnpGHPHbiRSqWWz2ImBwavPYdoNCPgdL39H+mF99MqWQpJgjYhOdLHlnuaH8tYV',
          }
}
