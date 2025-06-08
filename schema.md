# Non accesible
## Offices
- id: text (unique)
- name: text (unique)
- ip: text
- checkIP: boolean (default: true)  # Disable for virtual offices
- isActive: boolean (default: true)

## Machines
- id: text (unique)  # Generated during installation
- name: text (unique)
- office: relation (offices | single) (required)
- isActive: boolean (default: true)

# Auth

## System fields (required)
- id: text (unique)
- email: text (unique)
- emailVisibility: boolean
- verified: boolean
- password: text
- tokenKey: text

## Admin
- role: select \[receptionist, manager, superadmin\] (single) (required)
- office: relation (offices)  # Nullable for superadmins
- permissions: relation (permissions) (multiple)  # Direct permission mapping

## Client
- documentType: select \[dni, passport, other\] (single)(required)
- document: text (required)
- firstName: text (required)
- lastName: text (required)
- birthDate: date (required)
- phone: text  # Optional for elderly users
- dniPhotos: file (multiple)
- registeredBy: relation (admins | single)  # Receptionist who registered

# Accesible Schema

## Wallets
- id: text (unique)
- client: relation (clients) (unique)
- balance: number (min: 0, default: 0)
- currency: relation (currencies) (required)

## Currencies
- id: text (unique)  # ISO 4217 (PEN, USD)
- symbol: text

## Movements
- id: text (unique)
- wallet: relation (wallets | single) (required)
- amount: number (required)  # Positive values only for MVP
- type: select \[deposit, withdrawal, interest\] (required)  # Deposit or withdrawal
- note: text  (required) # Description of transaction
- session: relation (sessions) # Nullable if was automated or external

# Admin Only

## Sessions
- id: text (unique)
- admin: relation (admins) (required)
- machine: relation (machines) (required)
- login: datetime (default: @now)
- logout: datetime  # Manually set on logout
- geo: geolocation  # Optional, for tracking
- isActive: boolean (default: true)  # Active session

## Permissions
- module: select \[
    users,
    offices,
    wallets,
    movements,
    audit,
    configuration
  \] (required)
- action: select \[create, read, update, delete\] (required)
- description: text

## Audit Logs
- id: text (unique)
- table: text (required)  # "wallets" or "movements"
- recordId: text (required)
- action: select \[create, update, delete\] (required)
- oldData: json
- newData: json
- admin: relation (admins) (required)
- session: relation (sessions)  # Null if done outside session
