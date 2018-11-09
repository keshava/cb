#!/bin/sh

ajv compile -s $SCHEMAS/Entity.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json

ajv compile -s $SCHEMAS/Subscription.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json

ajv compile -s $SCHEMAS/EntityTemporal.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json -r $SCHEMAS/Entity.json

ajv compile -s $SCHEMAS/ContextSourceRegistration.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json

ajv compile -s $SCHEMAS/Notification.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json -r $SCHEMAS/Entity.json
