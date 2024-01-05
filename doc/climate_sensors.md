# Climate Sensor Data Documentation

This document provides details about the structure and fields associated with climate sensor data.

## Climate Sensor Log Structure

- `timestamp`: The date and time when the sensor data was recorded (e.g., "2023-11-19T00:26:34").
- `sensor_name`: The name or identifier of the climate sensor (e.g., "Site_A").
- `temperature`: The recorded temperature in degrees Celsius (e.g., 37.68).
- `humidity`: The recorded humidity level as a percentage (e.g., 46.85).
- `wind_speed`: The recorded wind speed in kilometer per hour (e.g., 14.98).
- `wind_orientation`: The recorded wind orientation in degrees (e.g., 89.03).
- `uv_index`: UV Index (between 0 and 10), Integer value.

## Climate Sensor Log Example

```json
{
  "timestamp": "2023-11-19T00:26:34",
  "sensor_name": "Site_A",
  "temperature": 37.68,
  "humidity": 46.85,
  "wind_speed": 14.98,
  "wind_orientation": 89.03,
  "uv_index": 2
}
```