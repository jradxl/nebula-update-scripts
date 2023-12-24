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

## make-nodes.sh
Will make key pairs, named as per node entries in the script.\
Will not overwrite if already exsits.\
TODO stop asking for passphrase on each node.

## make-dist.sh
Creates a TAR achive of all files for easy deployment (via SFTP perhaps)\
I create config.yaml files as config-node1.yaml, config-node2.yaml etc etc...\
and then rename on actual node, deleting the TAR and unnecessary files afterwards.

## References:
https://www.baeldung.com/linux/redirect-systemd-output-to-file\
https://antofthy.gitlab.io/software/logrotate_one.sh.txt\
https://betterstack.com/community/guides/logging/how-to-manage-log-files-with-logrotate-on-ub>


December 2023

