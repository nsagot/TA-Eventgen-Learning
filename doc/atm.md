# ATM Log Entry Documentation

This document explains the structure and fields associated with an ATM (Automated Teller Machine) log entry in the provided format. ATM logs record events related to financial transactions and machine operations.

## ATM Log Entry Structure

The ATM log entry is in the following format:

- `Timestamp`: The date and time of the log entry (e.g., "Nov 05 15:53:36").
- `Source`: The source of the log entry (e.g., "atm-logging").
- `CEFSecurityEvent`: A Common Event Format (CEF) log entry, which includes the following fields:
  - `Version`: The CEF version (e.g., "0").
  - `Vendor`: The vendor name (e.g., "All The Money").
  - `Product`: The product name (e.g., "ATM").
  - `Version`: The product version (e.g., "1.0").
  - `EventID`: The event ID or code (e.g., "200").
  - `EventName`: The name of the event (e.g., "Withdraw failed").
  - `Severity`: The severity level (e.g., "3").
  - Additional attributes:
    - `atm_id`: The ATM identifier (e.g., "A_97992").
    - `account`: The bank account identifier (e.g., "BE52B4FA2E54").
    - `amount`: The transaction amount (e.g., "2175.0").
    - `error`: A description of the error (e.g., "No more money on account").
    - `currency`: ATM can distribute multiple currencies (Format ISO 4217)

## Example ATM Log Entry

`Nov 05 15:53:36 atm-logging CEF:0|All The Money|ATM|1.0|200|Withdraw failed|3|atm_id=A_97992 account=BE52B4FA2E54 amount=2175.0 currency=EUR error=No more money on account`

## More informations

- [CEF Format](https://raffy.ch/blog/wp-content/uploads/2007/06/CEF.pdf)
