#!/bin/sh

ajv compile -s $SCHEMAS/Entity.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json

ajv compile -s $SCHEMAS/Subscription.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json
