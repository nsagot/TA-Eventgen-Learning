# TA-Eventgen-Learning

![License: Apache 2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg)
![Splunk](https://img.shields.io/badge/Made%20for-Splunk-orange)

**TA-Eventgen-Learning** is a lightweight training app for Splunk that provides realistic **synthetic data sources** - perfect for hands-on SPL practice, detection engineering, lab environments, and workshops.  

Built on top of [SA-Eventgen](https://splunkbase.splunk.com/app/1924), it allows you to easily replay event streams and practice searches, dashboards, and detections.

> 🆕 Latest update: see [Changelog](./CHANGELOG.md)

## 📚 Table of Contents

- [TA-Eventgen-Learning](#ta-eventgen-learning)
  - [📚 Table of Contents](#-table-of-contents)
  - [✨ Features](#-features)
  - [📦 Sources](#-sources)
  - [⚡ Quick Start](#-quick-start)
  - [🤝 Contributing](#-contributing)
  - [🙌 Credits](#-credits)
  - [👤 Created by](#-created-by)
  - [📜 License](#-license)

## ✨ Features

- 📊 **Eventgen-ready**: synthetic event data in various formats (CSV, JSON, XML, etc.)
- 🧩 Some sources are pre-parsed; others require learners to build their own field extractions
- 🧰 Easy-to-extend architecture for adding new data types
- 🪄 Ideal for labs, training sessions, and Splunk workshops

## 📦 Sources

Each data source has its own dedicated documentation:

- [ATM](./doc/atm.md)
- [Firewall](./doc/firewall.md)
- [Apache HTTPD](./doc/httpd.md)
- [Message Trace](./doc/messagetrace.md)
- [Climate Sensor](./doc/climate_sensors.md)


## ⚡ Quick Start

1. **Install the Eventgen App**  
   Download and install the [SA-Eventgen App](https://splunkbase.splunk.com/app/1924) from Splunkbase.

2. **Enable the Eventgen modular input**  
   - Go to: `Settings` → `Data Inputs` → `SA-Eventgen`  
   - Click **“Enable”** on the default modular input stanza.  
   *(This allows Eventgen to start generating events automatically.)*

3. **Create or update the target index**  
   - Create a new index named `eventgen_events` in **Settings → Indexes**

4. **Deploy TA-Eventgen-Learning**  
   - Download the [TA-Eventgen-Learning app](https://github.com/nsagot/TA-Eventgen-Learning/releases/tag/v1.1.1).  
   - Install `TA-Eventgen-Learning` through **Splunk Web UI**:  
     `Apps` → `Manage Apps` → `Install App from File`.

5. **Restart Splunk**  
   Restart your Splunk instance to apply all changes.

6. **Verify the installation**  
   Run the following search to confirm that events are being generated:
   ```spl
   index=eventgen_events | stats count by sourcetype
   ```

## 🤝 Contributing

We welcome contributions to improve TA-Eventgen-Learning.

If you have:
- 🧠 Ideas for new data sources
- 🐛 Bug reports
- 🆕 Feature requests

👉 Submit a pull request or open an issue on the GitHub repository.

## 🙌 Credits

This project is the aggregation of several other EventGen projects (with possibly modifications)

 - [TA-fwlog_eventgen](https://splunkbase.splunk.com/app/6711)
 - [TA-apache_access_eventgen](https://splunkbase.splunk.com/app/6712)

Logo: Planning icon created by [Freepik - Flaticon](https://www.flaticon.com/free-icons/process")

## 👤 Created by

Nicolas SAGOT

- [Email](mailto:nicolas@nexera.xyz)
- [LinkedIn](https://www.linkedin.com/in/nsagot/)

## 📜 License

This project is licensed under the Apache License 2.0.
Feel free to use, modify, and distribute it as needed while adhering to the license terms.
