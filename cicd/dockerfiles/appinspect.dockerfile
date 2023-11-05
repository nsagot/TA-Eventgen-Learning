# splunk-packaging-toolkit not compatible with latest Python Release
FROM python:3.9-bullseye
RUN pip install --no-cache-dir splunk-appinspect splunk-packaging-toolkit
RUN apt-get update && apt-get install -y \
  jq \
  && rm -rf /var/lib/apt/lists/*