@echo off

set AWS_REGION=us-east-1
set AWS_ACCESS_KEY_ID=xxxx
set AWS_SECRET_ACCESS_KEY=xxxxx

aws configure set region %AWS_REGION%
aws configure set aws_access_key_id "%AWS_ACCESS_KEY_ID%"
aws configure set aws_secret_access_key "%AWS_SECRET_ACCESS_KEY%"
aws configure set aws_session_token ""
aws sts get-caller-identity
aws eks update-kubeconfig --region %AWS_REGION% --name cluster
kubectl config current-context

PAUSE
