
# Change Log
All notable changes to this project will be documented in this file.
 
The format is based on [Keep a Changelog](http://keepachangelog.com/) and this project adheres to [Semantic Versioning](http://semver.org/).
 
## [1.1.0] - 2023-12-01
 
First changelog post.

Introducing new source of data : Climate Sensor. This sourcetype simulate 2 sensor on two sites, capturing temperature, wind speed and wind orientation.
Data are pre-generated to have a consistency in term of values (variation of value not exist yet en Eventgen Framework).

Adding firsts Tag and Event Type

Fixing bugs and updating occurences of event
 
### Added
- New source Climate Sensors (+ script of data generation).
- Firewall: Adding Tag on dest_port (ssh/http/https) 
- Firewall: Adding Blocked_messages Event Tag
 
### Changed
- More standardization of documentation
- Message Trace: Reducing the rate of blocked mails
- Message Trace: Introducting a new type of blocked mail (spam,malware) and a Failed status
 
### Fixed
- Firewall: `host` does not corresponding with `fw_name`
 
## [1.0.0] - 2023-11-05
  
Initial release