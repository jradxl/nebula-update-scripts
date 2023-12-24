# Nebula VPN Scripts etc...

## upgrade-nebula.sh
Compares your existing version of Nebula with the latest available binaries at StackHQ https://github.com/slackhq/nebula

Installs if not locally present, or updates if necessary.

Expected to be run as root.\
Installs both nebula and nebula-cert to /usr/local/bin

Required Dependencies:\
PIPX, # apt install pipx\
LASTVERSION, # pipx install lastversion\
LASTVERSION is assumed to be located $HOME/.local/bin

## config-sample.yml
My basic config file. Rename as and place into: /etc/nebula/config.yml

## nebula.logrotate
Place into: /etc/logrotate.d

## nebula.service
Place into: /etc/systemd/system


## References:
https://www.baeldung.com/linux/redirect-systemd-output-to-file\
https://antofthy.gitlab.io/software/logrotate_one.sh.txt\
https://betterstack.com/community/guides/logging/how-to-manage-log-files-with-logrotate-on-ub>


December 2023

