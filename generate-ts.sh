#!/bin/sh
openapi-generator generate -i openapi.yaml -g typescript-axios -o dist --global-property models,supportingFiles