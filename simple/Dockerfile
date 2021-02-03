FROM public.ecr.aws/lambda/nodejs:12

COPY index.js /var/task/

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
CMD [ "index.handler" ] 