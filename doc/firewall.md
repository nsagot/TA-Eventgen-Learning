# Firewall Log  Documentation

This document explains the structure and fields associated with a firewall log entry in the provided format. Firewall logs record events related to network traffic and security.

This device is in a DMZ Zone (Internet <-> Internal Network)

## Firewall Log Structure

The firewall log entry is in the following format:

- `_time`: The date and time of the log entry (e.g., "2023/11/05 15:37:20+00:00").
- `fw_name`: The name of the firewall (e.g., "FW_DMZ_01")
- `action`: The action taken by the firewall. Possible values:
  - ACCEPT: If the connection is accepted
  - DENY: If the connection is not authorized
- `src_ip`: The source IP address of the incoming network traffic.
- `src_port`: The source port number associated with the traffic.
- `protocol`: The protocol used for the communication, e.g., "UDP."
- `dst_ip`: The destination IP address of the traffic.
- `dst_port`: The destination port number for the traffic.
- `bytes`: The number of bytes associated with this traffic entry.

## Firewall Log Example

`2023/11/05 15:37:20+00:00 fw_name=FW_DMZ_01 action=DENY src_ip=201.42.223.29 src_port=33619 protocol=UDP dst_ip=10.2.1.35 dst_port=20071 bytes=0`