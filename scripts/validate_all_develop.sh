#!/bin/bash
echo 'Validating everything...'
echo '-------->Validating Examples...'
sh ./scripts/validate_examples.sh
echo '-------->Validating locally...'
sh ./scripts/validate_locally_develop.sh
echo '-------->Validating online...'
sh ./scripts/validate_online_develop.sh
echo '-------->Validating schema...'
sh ./scripts/validate_schema.sh
echo 'Done'