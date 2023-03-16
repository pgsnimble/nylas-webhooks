# Nylas Webhook Docker Image

## What is this?

This is a Docker image that runs a simple webhook server from [Nylas] that can be used to
receive webhook events from Nylas.

## Getting started

First of all, you need to create a `.env` file in the root of the project with the following content:

```bash
NYLAS_CLIENT_SECRET='NYLAS S'
NYLAS_CLIENT_ID='NYLAS CLIENT ID'
WEBHOOK_URL='SERVER THAT WILL BE RECEIVING THE EVENTS'
```

Then, you can run the following command to build the image:

```bash
docker build -t nylas-webhook .
```

Finally, you can run the image with the following command:

```bash
docker run -p 3000:3000 nylas-webhook
```


[Nylas]: https://www.nylas.com/