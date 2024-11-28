aws cloudformation create-stack --stack-name s3-stack --region us-west-2 --template-body file://s3-template.yaml

aws cloudformation describe-stacks --stack-name s3-stack --region us-west-2 --query 'Stacks[0].Outputs[?OutputKey==`BucketName`].OutputValue' --output text

export BUCKET_NAME = $(aws cloudformation describe-stacks --stack-name s3-stack --region us-west-2 --query 'Stacks[0].Outputs[?OutputKey==`BucketName`].OutputValue' --output text) # ubuntu
set BUCKET_NAME $(aws cloudformation describe-stacks --stack-name s3-stack --region us-west-2 --query 'Stacks[0].Outputs[?OutputKey==`BucketName`].OutputValue' --output text) # windows

aws s3 cp ../s3/ s3://$BUCKET_NAME/ --recursive 
aws s3 rm s3://$BUCKET_NAME/winter.jpg
