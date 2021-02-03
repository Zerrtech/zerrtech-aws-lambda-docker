# zerrtech-aws-lambda-docker

The `simple/` folder contains a minimal nodejs lambda example for an API endpoint along with the Dockerfile to run a Lambda container.  See the [README.md](simple/README.md) there.

The `express/` folder contains an express app with one endpoint, but loads a bunch of useless packages to emulate the initialization time of a mature express app.  See the [README.md](express/README.md) there.

The `sam-app/` folder is a simple Lambda API Gateway example of a simple GET endpoint using the AWS Serverless Application Model framework.  See the [README.md](sam-app/README.md) there.