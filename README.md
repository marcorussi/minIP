# minIP
A minimal IP layer compliant to RFC791 with ARP and ICMP layers (Ping service).

This IP stack is implemented on top of my Ethernet driver for PIC32. A demo application has been developed on a PIC32 Ethernet Starter Kit. 

The demo application sets a static IP address and then starts a Ping service to a fixed remote address for 5 seconds. 
How to use the demo application:
 - set a static local IP address in app_ip.c file;
 - check the IP address of your PC and then set it as remote IP address in app_ip.c file;
 - build and run on the board;
 - you can see ping requests from the board and PC replies with a tool like Wireshark for the first 5 seconds;
 - start a Ping request from your PC to the board, use a command like: $ ping -I eth0 10.42.0.10.

For an example of use please have a look at minUDP project.

Known issues:
 - Ethernet layer remains stacked until an Ethernet cable is connected. It is necessary to add a timeout in order to exit the related infinite loop in eth.c file.
