# create primary vpc stack
aws cloudformation create-stack --stack-name primary-vpc-stack --region us-east-1 --template-body file://vpc.yaml --parameters file://primary-params.json

# create secondary vpc stack
aws cloudformation create-stack --stack-name secondary-vpc-stack --region us-west-2 --template-body file://vpc.yaml --parameters file://secondary-params.json
