#!/bin/sh

SFTP=sftp

instance="6588360"
hostname="sftp.dc0.gpaas.net"
$SFTP $instance@$hostname
