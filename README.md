# TA-Eventgen-Learning

TA-Eventgen-Learningis a tool designed to assist Splunk users in obtaining training data for practicing their data manipulation skills in Splunk. This application provides various types of data that can be generated, some of which are pre-parsed, while others are not. In addition, we'll walk you through configuring EventGen to accept external sources.

## Table of Contents
- [TA-Eventgen-Learning](#ta-eventgen-learning)
  - [Table of Contents](#table-of-contents)
  - [Features](#features)
  - [Sources](#sources)
  - [Installation](#installation)
  - [Contributing](#contributing)
  - [Credits](#credits)
  - [License](#license)

## Features

Eventgen-Ready-to-learn offers the following features:
- Generation of synthetic event data in various formats (CSV, JSON, XML, etc.).
- Pre-parsed data samples for quick Splunk exercises.
- User-friendly configuration options for data generation.
- Easily extendable for additional data types.

## Sources

Each source have dedicated documentation.

- [ATM](./doc/atm.md)
- [Firewall](./doc/firewall.md)
- [Apache HTTPD](./doc/httpd.md)
- [MessageTrace](./doc/messagetrace.md)

## Installation

1. Install [Eventgen App](https://splunkbase.splunk.com/app/1924).
2. Enable the SA-Eventgen modinput by going to Settings > Data Inputs > SA-Eventgen and by clicking “enable” on the default modular input stanza.
3. Download & Copy/Move this App bundle into your ${SPLUNK_HOME}/etc/apps/ directory OR you can possibly install this App via Splunk WebUI normally.
4. Restart Splunk
5. Search by `index=eventgen_fw`

## Contributing

We welcome contributions to improve Eventgen-Ready-to-learn. If you have ideas for new features or find any issues, please submit a pull request or open an issue on the GitHub repository.

## Credits

This project is the aggregation of several other EventGen projects (with possibly modifications):

 - [TA-fwlog_eventgen](https://splunkbase.splunk.com/app/6711)
 - [TA-apache_access_eventgen](https://splunkbase.splunk.com/app/6712)

Logo: Planning icon created by [Freepik - Flaticon](https://www.flaticon.com/free-icons/process")

## License

This project is licensed under the [Apache License 2.0](LICENSE). Feel free to use, modify, and distribute it as needed while adhering to the terms of the Apache License 2.0.