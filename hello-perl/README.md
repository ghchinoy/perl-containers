# Hello Perl

While the output of this container looks like HTML suitable for a webserver, it's neither.


## Build with Cloud Build

Either use the cloudbuild.yaml via `gcloud builds submit` or directly via 

```
PROJECT_ID=$(gcloud info --format='value(config.project)')
gcloud builds submit --tag gcr.io/$PROJECT_ID/hello-perl
```

### Build locally

If you have docker locally, `docker build -t gcr.io/${PROJECT_ID}/hello-perl .` should do it.

## Run

Then, to run it, use cloud shell or some other env that has Docker:

```
export PROJECT_ID=$(gcloud info --format='value(config.project)')
docker run -it --name hello-perl gcr.io/${PROJECT_ID}/hello-perl:latest
```

Example output:

```
$ docker run -it --name hello-perl gcr.io/${PROJECT_ID}/hello-perl:latest
Content-type: text/html

Hello, world!
```

Excitement!