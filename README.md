# Nylas Webhook Docker Image

## What is this?

This is a Docker image that runs a simple webhook server from [Nylas] that can be used to
receive webhook events from Nylas.

## Getting started

You can build it by your own or use the image from Docker Hub.

```bash
docker build . -t <your_user/image_name>
```

Finally, you can run the image with the following command:

```bash
docker run -p -e NYLAS_CLIENT_ID= -e NYLAS_CLIENT_SECRET= -e WEBHOOK_URL nylas-webhook
```

or using Docker Compose:

```yaml
nylas-webhooks:
  image: pgsnimble/nylas-webhooks:latest
  environment:
    NYLAS_CLIENT_ID:
    NYLAS_CLIENT_SECRET: 
    WEBHOOK_URL: 
  links:
    - {NAME OF CONTAINER THAT WILL BE RECEIVING THE WEBHOOKS}
```

[Nylas]: https://www.nylas.com/