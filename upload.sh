#!/bin/sh

JEKYLL=jekyll
LFTP=lftp

localDirectory="`pwd`/_site"
instance="1073028"
hostname="sftp.sd3.gpaas.net"
remoteDirectory="/vhosts/tierradealegria.com/htdocs"

rm -rf _site/ && $JEKYLL build && cd $localDirectory && $LFTP -u $instance -e "mirror -R -p -P=10 -e --ignore-time -v ${localDirectory} ${remoteDirectory};quit" sftp://${hostname}
