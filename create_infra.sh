#!/usr/bin/env bash

UUID="$(uuidgen)"

aws cloudformation create-stack --stack-name udacityCapstone$UUID --template-body file://capstone_infra.yml \
--parameters file://capstone_infra_parameter.json --region=us-west-2

