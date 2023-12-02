# Message Trace Documentation

⚠️ The Message Trace data in this project resembles Microsoft's Message Trace, but although the data is close to the real data, this is not the case.

The Message Trace logs each message (Incoming or outgoing) of a company.

## Message Trace Structure

A Message Trace log is represented in JSON format and consists of the following fields:

- `FromIP`: The IP address of the sender server.
- `Index`: An index or sequence number associated with the message. (Allways at 0)
- `MessageId`: A unique identifier for the message.
- `MessageTraceId`: A unique trace identifier to group related messages.
- `Organization`: The name of the organization associated with the monitored organization.
- `Received`: The date and time when the message was received.
- `Sent`: The date and time when the message was sent.
- `RecipientAddress`: The email address of the message recipient.
- `SenderAddress`: The email address of the message sender.
- `Size`: The size of the message in bytes.
- `Status`: The status of the message. Possible values:
  - Delivred: Mail is valid and delivred
  - Blocked (Spam): If the mail is considered as a spam
  - Blocked (Malware): If a malware is detected on mail
  - Failed: Mail account can't receive the mail
- `Subject`: The subject of the message.
- `ToIP`: The IP address of the recipient server.

## MessageTrace Log Example

```json
{
  "FromIP": "10.2.1.342",
  "Index": 0,
  "MessageId": "<nkPb~p8875Jr.foyi6T69YhiQ@H5vP7eOiszSjd8>",
  "MessageTraceId": "909fe35e-bb5d-4f64-9acb-a9daf98a548c",
  "Organization": "nexera.oncompany.xyz",
  "Received": "2023-11-05T01:13:00.000000",
  "Sent": "2023-11-05T01:13:00.000000",
  "RecipientAddress": "sarah.harris@nexera.xyz",
  "SenderAddress": "emily.rivera@planetobservatory.net",
  "Size": 70085,
  "Status": "Delivered",
  "Subject": "Mars Colonization Updates: Building a New World",
  "ToIP": null
}
```