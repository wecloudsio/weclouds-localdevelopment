awslocal s3 mb s3://weclouds-uploaded
awslocal s3 sync /docker-entrypoint-initaws.d/images-for-localstack-s3 s3://weclouds-uploaded