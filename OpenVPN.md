Usefull commands in OpenVpn

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
root@setrus :   ip ro show dev tun0
10.10.0.1 via 10.10.1.17 
10.10.1.17 proto kernel scope link src 10.10.1.18 
192.168.1.0/24 via 10.10.1.17 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

- Displays the neworks accessible by that tunnel.

Connecting through a OpenVPN from another OpenVPN

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
root@setrus:~/pen.ru# openvpn --config vpn.conf --port 1194
Mon Nov 25 05:52:02 2019 OpenVPN 2.4.5 x86_64-pc-linux-gnu [SSL (OpenSSL)] [LZO] [LZ4] [EPOLL] [PKCS11] [MH/PKTINFO] [AEAD] built on Mar  4 2018
Mon Nov 25 05:52:02 2019 library versions: OpenSSL 1.1.0h  27 Mar 2018, LZO 2.08
Enter Auth Username: info@test.lab
Enter Auth Password: *********
Mon Nov 25 05:52:10 2019 WARNING: No server certificate verification method has been enabled.  See http://openvpn.net/howto.html#mitm for more info.
...snip ... 
Mon Nov 25 05:52:12 2019 Initialization Sequence Completed

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

