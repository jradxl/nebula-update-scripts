#/bin/bash

distname=dist-nebula.tar

rm -rf $distname
tar -cf $distname *.crt
tar -uf $distname *.key
tar -uf $distname nebula*
tar -uf $distname config*
tar --list -f $distname

exit 0

