# zerrtech-aws-lambda-docker simple

First, in AWS create a new ECR repository.

Create a `.env` file in this folder.

```bash
REPO=base/zerrtech-lambda-simple-nodejs
ECR_URI=someid.dkr.ecr.us-west-1.amazonaws.com
```

We also need AWS credentials to upload our Docker image to ECR.  You can put these env vars in your `.env` file but it's also just as convenient to put them in your `~/.bash_profile` and be formal environment variables too.

```bash
AWS_ACCESS_KEY_ID=replace_me
AWS_SECRET_ACCESS_KEY=replace_me
AWS_REGION=us-west-1
```

* AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY are AWS credentials to a user that can upload to your ECR
* AWS_REGION is the region your ECR lives in
* REPO is the Repository Name within ECR
* ECR_URI is the address AWS gives you for the ECR you created

## About the code

The code is in `index.js`.  It has no dependencies, so no need to run `npm install`.

## Releasing Docker image

```bash
bash aws-release-env.sh
```

This sources the `.env` file and then runs the `aws-release.sh` script.

Script builds the docker image defined in `Dockerfile`.

Then pushes into ECR.

Then you can go create a Lambda from that image.