# matrix-analytics-events

This repository contains JSON schema defining analytics events raised by the Matrix client SDKs.

It also contains a generator of type stubs for these events which can be used by the client SDKs. Using these stubs 
ensures events raised comply with the schema via compile-time type verification.

## Schemas

`/schemas` contains one JSON schema file per event, each named exactly according to the name of that event 
(case-sensitive).

`/types` contain type stubs generated from these schemas in the different client languages we support.

## Generating new type stubs

After creating or updating an event schema, you need to generate new type stubs and commit them along with your changes
to the events.

To install the stub generator (only needed once), you'll need yarn on your system, then: 

```
yarn install
```

To generate the stubs:

```
yarn build
```
