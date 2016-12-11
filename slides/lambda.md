## AWS Lambda
* AWS compute service
* Run code without provisioning or managing servers
* Run code at edge locations
* $0.000000208 per 100ms per 128 MB
* Node.js, Java, C#, Python


## AWS Lambda
```javascript
exports.myHandler = function(event, context, callback) {
  console.log("value1 = " + event.key1);
  console.log("value2 = " + event.key2);  
  callback(null, "some success message");
  // or 
  // callback("some error type"); 
}
```


## AWS Lambda Trigger
| |  |  |
| --- | --- | --- |
| AWS S3 | AWS CloudFormation | AWS IoT |
| AWS DynamoDB | AWS Config | AWS Cognito |
| AWS CloudWatch | AWS Kinesis | AWS SNS |
| AWS API Gateway | Cron | AWS SES |
| API call|  |  | 
