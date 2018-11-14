#!/bin/bash

ajv validate -s $SCHEMAS/Entity.json -d $EXAMPLES/Entity-example.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json

ajv validate -s $SCHEMAS/Entity.json -d $EXAMPLES/Vehicle_C2.2.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json

ajv validate -s $SCHEMAS/Entity.json -d $EXAMPLES/OffStreetParking_C2.3.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json

ajv validate -s $SCHEMAS/Entity_keyValues.json -d -d $EXAMPLES/Vehicle_keyValues_C2.2.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json 

ajv compile -s $SCHEMAS/subscriptions/Subscription.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json

ajv compile -s $SCHEMAS/temporal/EntityTemporal.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json -r $SCHEMAS/Entity.json

ajv compile -s $SCHEMAS/registrations/ContextSourceRegistration.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json

ajv compile -s $SCHEMAS/subscriptions/Notification.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json -r $SCHEMAS/Entity.json

ajv compile -s $SCHEMAS/registrations/ContextSourceNotification.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json -r $SCHEMAS/registrations/ContextSourceRegistration.json

ajv compile -s $SCHEMAS/EntityList.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json -r $SCHEMAS/Entity.json

ajv compile -s $SCHEMAS/temporal/EntityTemporalList.json  -r $SCHEMAS/temporal/EntityTemporal.json -r $SCHEMAS/Entity.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json

ajv compile -s $SCHEMAS/BatchOperationResult.json -r $SCHEMAS/common.json

ajv compile -s $SCHEMAS/UpdateResult.json



ajv compile -s $SCHEMAS/temporal/Entity_temporalValues.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json -r $SCHEMAS/Entity.json

