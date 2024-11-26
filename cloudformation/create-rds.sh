# create primary vpc stack
aws cloudformation create-stack --stack-name primary-rds-stack --region us-east-1 --template-body file://rds-primary.yaml --parameters file://rds-params.json

# create secondary vpc stack
aws cloudformation create-stack --stack-name secondary-rds-stack --region us-west-2 --template-body file://rds-secondary.yaml --parameters file://rds-params.json
