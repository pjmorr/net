[![Contribute](http://codenvy.ubermonitoring.com/factory/resources/codenvy-contribute.svg)](http://codenvy.ubermonitoring.com/f?id=factoryfcu3w3itxht2i647)

# cogbundles/net

Simple network Tools for checking networking commands in Cog pipelines.

[![build status](https://gitlab.ubermonitoring.com/cogbundles/net/badges/master/build.svg)](https://gitlab.ubermonitoring.com/cogbundles/net/commits/master)

## Commands

- dig : Centralized DNS lookup utility
- nslookup - query Internet name servers interactively
- ping : Centralized PING utility

## Examples

```bash
!nslookup 8.8.8.8
```

## Installing

```
cogctl bundle install ./config.yaml --enable --relay-groups="default"
```
