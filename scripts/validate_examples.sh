#!/bin/bash

ajv validate -s $SCHEMAS/Entity.json -d $EXAMPLES/Entity-example.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json

ajv validate -s $SCHEMAS/Entity.json -d $EXAMPLES/Vehicle_C2.2.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json

ajv validate -s $SCHEMAS/Entity.json -d $EXAMPLES/OffStreetParking_C2.3.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json

ajv validate -s $SCHEMAS/Entity_keyValues.json -d -d $EXAMPLES/Vehicle_keyValues_C2.2.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json

ajv validate -s $SCHEMAS/Entity_keyValues.json -d -d $EXAMPLES/OffStreetParking_keyValues_C2.3.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json

ajv validate -s $SCHEMAS/Entity.json -d $EXAMPLES/Vehicle_MultiAttribute_C2.2.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json

ajv validate -s $SCHEMAS/subscriptions/Subscription.json -d $EXAMPLES/Subscription-example_C.4.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json

ajv validate -s $SCHEMAS/registrations/ContextSourceRegistration.json -d $EXAMPLES/ContextSourceRegistration-example_C.3.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json

ajv validate -s $SCHEMAS/temporal/EntityTemporal.json -d $EXAMPLES/EntityTemporal-example_C5.5.3.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json -r $SCHEMAS/Entity.json

ajv validate -s $SCHEMAS/temporal/Entity_temporalValues.json -d  $EXAMPLES/Entity_temporalValues_C.5.6.3.json -r $SCHEMAS/common.json -r $SCHEMAS/geometry-schema.json -r $SCHEMAS/Entity.json

