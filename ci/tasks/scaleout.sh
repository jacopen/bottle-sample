#!/bin/bash

rancher --env 1a5 host create --driver openstack \
  --engine-install-url https://releases.rancher.com/install-docker/1.12.sh \
  --openstack-auth-url http://10.9.8.130:5000/v3 \
  --openstack-tenant-id 108b2d345ec64a199812c9d3e1c8bdd9 \
  --openstack-ssh-port 22 \
  --openstack-ssh-user ubuntu \
  --openstack-tenant-name  wells \
  --openstack-flavor-name m1.small  \
  --openstack-availability-zone nova \
  --openstack-endpoint-type publicURL \
  --openstack-password $OPENSTACK_PASSWORD \
  --openstack-sec-groups full \
  --openstack-domain-name Default \
  --openstack-image-name Xenial \
  --openstack-username $OPENSTACK_USERNAME \
  --openstack-net-id $OPENSTACK_NET_ID \
  --openstack-active-timeout 200 \
  --openstack-ip-version 4