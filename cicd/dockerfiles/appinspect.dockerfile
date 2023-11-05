FROM python:3.10-bullseye
RUN pip install --no-cache-dir splunk-appinspect splunk-packaging-toolkit
RUN apt-get update && apt-get install -y \
  jq \
  && rm -rf /var/lib/apt/lists/*