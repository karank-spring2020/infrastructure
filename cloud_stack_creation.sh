#!/bin/bash

echo "Creating CloudFormation Stack"
aws cloudformation create-stack --profile dev --region us-east-1 --stack-name stack2 --capabilities CAPABILITY_NAMED_IAM --parameters ParameterKey=CBlock,ParameterValue=10.0.0.0/16  ParameterKey=VpcName,ParameterValue=myVPC ParameterKey=SB1,ParameterValue=10.0.0.0/24 ParameterKey=SB2,ParameterValue=10.0.1.0/24 ParameterKey=SB3,ParameterValue=10.0.2.0/24 ParameterKey=AZ1,ParameterValue=us-east-1a ParameterKey=AZ2,ParameterValue=us-east-1b ParameterKey=KeyId,ParameterValue=karanag ParameterKey=AmiImage,ParameterValue=ami-0d8045d43b559ba5d ParameterKey=AWSACCESSKEY,ParameterValue=AKIA2PMB67KOZGGZYBSK ParameterKey=AWSSECRETKEY,ParameterValue=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  ParameterKey=EC2VolumeSize,ParameterValue=20 ParameterKey=RDSVolumeSize,ParameterValue=20 ParameterKey=RDSAccessibility,ParameterValue=false ParameterKey=ApplicationName,ParameterValue=csye6225-webapp  ParameterKey=DeploymentGroup,ParameterValue=csye6225-webapp-deployment ParameterKey=AZ3,ParameterValue=us-east-1c  --template-body file://karan-application.json
