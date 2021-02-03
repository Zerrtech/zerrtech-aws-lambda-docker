# zerrtech-aws-lambda-docker sam-app

This repo was created using the AWS Serverless Application Model framework.  See the original [README.md](ORIGINALREADME.md).

This was created by installing the SAM command line utility and running.

```bash
sam init
sam build
sam local start-api
```

During the `sam init` I picked a nodejs API and using a sample template for an API Gateway application.

Then I went in and stripped out code because the example connected to DynamoDB.  I wanted code the same as the simple example in the `simple/` folder at the root of this repo.

After you run the `sam local start-api` you have the API Gateway + Lambda fired up locally so that you can test your actual Lambda code.

Visit [http://localhost:3000](http://localhost:3000)

Then you can deploy the Cloudformation template using

```bash
sam deploy --guided
```

Asks you a few questions then creates the Lambda function, API Gateway endpoint, and tells you the URL you can use to hit the server.