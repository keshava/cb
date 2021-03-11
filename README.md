# NGSI-LD OpenAPIs

This repository contains OpenAPI descriptions for the NGSI-LD interface defined by ETSI ISG CIM.

## Online resources

* [Navigate the API in the browser](https://forge.etsi.org/swagger/ui/?url=https://forge.etsi.org/rep/NGSI-LD/NGSI-LD/raw/master/spec/updated/generated/full_api.json).

## Contribute

To get an account on ETSI Forge and to learn how to contribute visit the [Forge Getting started wiki](https://forge.etsi.org/wiki/index.php/Get_started).

More info @ [CONTRIBUTE](./CONTRIBUTE.md)

Change requests are managed using [Gerrit](https://forge.etsi.org/gerrit).

### Local editing
>:warning: The described setup requires [docker](https://docs.docker.com/engine/install/) to be installed.

In order to edit the api locally, the script [runLocalDevEnv.sh](scripts/runLocalDevEnv.sh) can be used. When executed from the root of this repository,
it replaces all paths to the master branch inside [spec](spec) and [schema](schema) and serves them through a local file-server. Without that, all 
references are resolved with 'https://forge.etsi.org/rep/NGSI-LD/NGSI-LD/raw/master' and therefore changes will not be present locally.

With the local file-server still running, you can build the bundled api via:

```
docker run --network host -it -v  ${PWD}/:/data wistefan/redocly-openapi-cli bundle /data/spec/updated/ngsi-ld-spec-open-api.json -o /data/spec/updated/generated/full_api.json
```
And validate it with:
```
docker run --network host --rm -v ${PWD}/:/local openapitools/openapi-generator-cli validate -i /local/spec/updated/generated/full_api.json
```

When editing is finished, hit the enter button on your local dev env and push.

## Report issues

To report issues, bugs or requests please fill in a bug [at this location](https://forge.etsi.org/bugzilla/enter_bug.cgi?product=NGSI-LD).

Find the currently open issues [here](https://forge.etsi.org/bugzilla/buglist.cgi?component=NGSI%20OpenAPIs%20general&list_id=193&product=NGSI-LD&resolution=---).

## Contact information

Email at `cti_support` at `etsi` dot `org`.
