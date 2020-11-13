#Upload the json file for creating the stack - This can be done by this method or via Console

aws s3 cp awsasgcf.json s3://{bucketname}/awsasgcf.json


aws cloudformation create-stack --stack-name CC615x-stack \
--template-url https://s3.amazonaws.com/{bucketname}/awsasgcf.json \
--parameters ParameterKey=KeyName,ParameterValue=ASG ParameterKey=VpcId,ParameterValue={vpc.id} \
ParameterKey=Subnets,ParameterValue={subnet-1}\\,{subnet-2} --capabilities CAPABILITY_IAM
