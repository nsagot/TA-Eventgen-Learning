# SSHD Log Documentation

This document explains the structure and fields associated with SSHD log entries in the provided format. SSHD logs record authentication activity and session events on Linux servers.

These logs are commonly found on bastion hosts, jump servers, and application servers, and are frequently used in security investigations and monitoring.

## SSHD Log Structure

The SSHD log entry is in the following format:

- `Timestamp`: When the event occurred (e.g., Oct 12 14:00:22)
- `Hostname`: The server generating the log (e.g., aurora-backend)
- `Process name and ID`: Usually sshd followed by the process ID in brackets (e.g., sshd[2331])
- `Message type`: Indicates whether the entry is informational, a warning, or an error
- `Event details`: The specific action or event being logged (e.g., authentication result, IP, user, port)

> Note: This dataset is provided without predefined Splunk field extractions. Learners should work with native fields (_time, host, source, sourcetype, _raw) and build their own extractions. Some fields may be partially parsed through Splunk’s KV_MODE extraction.

## SSHD Log Example

```
Oct 12 14:00:22 server1 sshd[2581]: Accepted publickey for ubuntu from 10.0.1.14 port 1351 ssh2: RSA 92:07:bd:59:68:d0:52:dc:bb:ce:05:38:09:b1:99:a2
Oct 12 14:00:24 server1 sshd[2310]: Failed password for invalid user oracle from 198.51.100.10 port 53287 ssh2
Oct 12 14:00:24 web-node-3 sshd[2350]: error: maximum authentication attempts exceeded for oracle from 10.0.1.43 port 17365 ssh2 [preauth]
Oct 12 14:00:25 aurora-backend sshd[2500]: Accepted publickey for ines from 198.51.100.64 port 1583 ssh2: RSA ba:f8:65:9c:a6:6b:ce:5c:69:0d:b8:d6:9b:7b:67:86
```
