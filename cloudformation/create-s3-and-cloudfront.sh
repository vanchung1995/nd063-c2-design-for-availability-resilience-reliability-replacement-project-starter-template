aws cloudformation create-stack --stack-name s3-stack --region us-west-2 --template-body file://s3-template.yaml

aws cloudformation describe-stacks --stack-name s3-stack --region us-west-2 --query 'Stacks[0].Outputs[?OutputKey==`BucketName`].OutputValue' --output text
