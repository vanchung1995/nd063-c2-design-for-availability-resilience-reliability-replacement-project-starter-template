aws cloudformation create-stack --stack-name primary-ec2-stack --region us-east-1 --template-body file://ec2-template.yaml

aws cloudformation create-stack --stack-name secondary-ec2-stack --region us-west-2 --template-body file://ec2-template.yaml
