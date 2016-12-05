# serverless-vote

## Deploy
```
$ ./stack
```

## Usage

### Get API URL
```
API_URL=$(aws cloudformation describe-stacks --stack-name serverless-vote | jq -r '.Stacks[0].Outputs[0].OutputValue')
```

### Create vote
```
$ http POST "$API_URL/my-vote" type=good
```

### Get votes
```
$ http "$API_URL/my-vote"
```