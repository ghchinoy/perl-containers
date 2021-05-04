# Perl Webserver

This is a perl webserver exposed at port 8080.

The `cloudbuild.yaml` builds a container image, pushes that container image to a registry, and then deploys to Cloud Run.


## Build

```
export PROJECT_ID=$(gcloud info --format='value(config.project)')
sed -i '' 's/PROJECT_ID/'"${PROJECT_ID}"'/' cloudbuild.yaml
gcloud builds submit --tag gcr.io/$PROJECT_ID/hello-perl
```

## Run

```
export PROJECT_ID=$(gcloud info --format='value(config.project)')
docker run -it -p 8080:8080 gcr.io/$PROJECT_ID/hello-perl
```

Then go to localhost:8080 and see the HTML.

also `/echo?field=hello` will give back JSON.

