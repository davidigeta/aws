my_region='your-region'
template_name=${1}
s3_bucket_name='your-bucket-name'

aws --region ${my_region} cloudformation package --template-file ${template_name}.yml --s3-bucket ${s3_bucket_name} --output-template-file ${template_name}.yml.output

aws --region ${my_region} cloudformation deploy --stack-name ${template_name} --template-file ${template_name}.yml.output --s3-bucket ${s3_bucket_name} --capabilities CAPABILITY_NAMED_IAM
