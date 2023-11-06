CFN_STACK_NAME=gradio-on-aws

cfn:
	aws cloudformation create-stack --stack-name ${CFN_STACK_NAME} --template-body file://cloudformation.yaml || \
		aws cloudformation update-stack --stack-name ${CFN_STACK_NAME} --template-body file://cloudformation.yaml