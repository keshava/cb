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

# Validate locally the definition using the swagger-cli validate option
swagger-cli validate ../spec/ngsild_swagger.json

# Move cd to the directory from where the script was called
cd $current_dir