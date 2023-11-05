# Firewall Log  Documentation

This document explains the structure and fields associated with a firewall log entry in the provided format. Firewall logs record events related to network traffic and security.

This device is in a DMZ Zone (Internet <-> Internal Network)

## Firewall Log Structure

The firewall log entry is in the following format:

- `Timestamp`: The date and time of the log entry (e.g., "2023/11/05 15:37:20+00:00").
- `Action`: The action taken by the firewall, e.g., "DENY" indicating that the traffic was denied.
- `Source IP`: The source IP address of the incoming network traffic.
- `Source Port`: The source port number associated with the traffic.
- `Protocol`: The protocol used for the communication, e.g., "UDP."
- `Destination IP`: The destination IP address of the traffic.
- `Destination Port`: The destination port number for the traffic.
- `Bytes`: The number of bytes associated with this traffic entry.

## Example Firewall Log

`2023/11/05 15:37:20+00:00 action=DENY src_ip=201.42.223.29 src_port=33619 protocol=UDP dst_ip=10.2.1.35 dst_port=20071 bytes=0`