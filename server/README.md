# Stripe Backend for the Shop

## Docker Commands

Build the docker image
```sh
docker build -t svgl/parts-unknown-stripe .
```

Run docker image in a container
```sh
docker run -it --rm -p 6900:6900 --name parts-unknown-stripe svgl/parts-unknown-stripe
```

Push to docker hub
```sh
docker push svgl/parts-unknown-stripe
```