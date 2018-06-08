#!/bin/bash
#
# Requires install swagger-cli: npm install -g swagger-cli
#


# Store current directory
current_dir=${PWD}  

# Store script directory
script_directory="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# Move cd to the script directory (the script must be called from the 'script' directory)
cd $script_directory

# Merge the swagger definition into an unified and de-referenced file (use this file will avoid reference resolution problems during the validation)
swagger-cli bundle -r ../spec/ngsild_swagger.json -o combined_spec/ngsild_swagger_combined_dereferenced.json

# Validate the swagger definition against the official online swagger validation service
curl -X POST -d @combined_spec/ngsild_swagger_combined_dereferenced.json -H 'Content-Type:application/json' http://online.swagger.io/validator/debug

# Move cd to the directory from where the script was called
cd $current_dir