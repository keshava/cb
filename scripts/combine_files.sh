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

# Generate a file which combines all the spec files into a unique swagger definition file (maintains references)
swagger-cli bundle ../spec/ngsild_swagger.json -o combined_spec/ngsild_swagger_combined.json

# Generate a file which combines all the spec files into a unique swagger definition file (removes references)
swagger-cli bundle -r ../spec/ngsild_swagger.json -o combined_spec/ngsild_swagger_combined_dereferenced.json

# Move cd to the directory from where the script was called
cd $current_dir
