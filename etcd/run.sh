#!/bin/bash
systemctl enable etcd
systemctl start etcd
etcd --config-file /etc/default/etcd.conf