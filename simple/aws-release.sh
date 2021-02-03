#!/bin/bash
[ -z "$ECR_URI" ] && echo "\$ECR_URI is not set" && exit
[ -z "$REPO" ] && echo "\$REPO is not set" && exit
[ -z "$AWS_REGION" ] && echo "\$AWS_REGION is not set" && exit
[ -z "$AWS_ACCESS_KEY_ID" ] && echo "\$AWS_ACCESS_KEY_ID is not set" && exit
[ -z "$AWS_SECRET_ACCESS_KEY" ] && echo "\$AWS_SECRET_ACCESS_KEY is not set" && exit

DOCKERFILE=Dockerfile
TAG=$REPO:latest

# AWS CLI versions >= 1.17.10
aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $ECR_URI

docker build -t $REPO -f $DOCKERFILE .

docker tag $TAG $ECR_URI/$TAG

docker push $ECR_URI/$TAG
