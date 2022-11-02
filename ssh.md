<h2> Introduction to ssh </h2>

This document contains a quick introduction to using ssh to remotely log into ssh-enabled computers and execute commands, such as ```gmx```.<br>
For this one would need to know the account name, its password and the *IP* of the remote computer (server). The username and password will be different for different users. These two will be provided the adminstrator (admin) of the server. However, the IP is unique to the server and all users (even the admin) would need to use the same IP to log into the server. The IP will also be made known by the admin. In case you have forgotten the IP, a simple way to view the IP, while logged into the server is via the command ```ip addr```. The output should look something like the text below.<br>

```
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: enp129s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether XX:XX:XX:XX:XX:XX XXX XX:XX:XX:XX:XX:XX
    inet XXX.XXX.XXX.XXX/XX brd XXX.XXX.XXX.XXX/XX scope global noprefixroute enp129s0f0
       valid_lft forever preferred_lft forever
    inet6 fe80::d3d0:cc65:66d6:55e0/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
3: enp129s0f1: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN group default qlen 1000
    link/ether 0c:c4:7a:b0:cf:1f brd ff:ff:ff:ff:ff:ff
```
    
Look for something that starts with **enp** followed by the term **BROADCAST**. The is the ethernet port (LAN) IP. The IP is the one given beside inet. The format is XXX.XXX.XXX.XXX where XXX is anything between 0-255. An example is 192.168.0.1.

<h3> Logging into a server from Linux</h3>

Let the IP of the server be 168.134.0.15. Let the username be user and the password be 123456.<br>
On a Linux terminal type ```ssh <username>@<IP>```. For example ```ssh user@168.134.0.15```.<br>
There will be a password prompt. Enter the password. Here it is 123456. You will be logged into the server. <br>
Press ```Ctrl+D``` or type ```exit``` to exit.<br>

<h3> Logging into a server from Windows </h3>

Windows does not have a *Terminal* not does it have ssh by default. Therefore one has to use a ssh client. One of the recommended client is **MobaXterm** (https://mobaxterm.mobatek.net/)<br>
Here are the steps to log into a server using MobaXterm<br>
<ul>
  <li> Open the software. </li>
  <li> Type the IP address of the server you want to connect to in the field labeled ‘Remote host’. </li>
  <li> Select the ‘SSH’ protocol from the drop-down menu labeled ‘Connection type’. </li>
  <li> Enter your username in the ‘Login’ field. </li>
  <li> Enter your password in the ‘Password’ field. </li>
  <li> Click the ‘OK’ button. </li>
</ul>
(The steps have been copied from https://mobaxtermclub.com/blog/what-is-mobaxterm-and-how-to-use)

Press ```Ctrl+D``` to exit and press enter twice after that to close the window.
