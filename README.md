so once we need to connect private cluster to vpn i need to first launch instance and install vpn inside it also in security group of cluster add rule all traffic and security group if of instance where your vpn server install than download ovpn profile go to another machine and install vpn client and upload that file and than try to access cluster.

To install vpn server on install:

``sh 
curl -O https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh
``
