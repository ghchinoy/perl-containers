# Perl Webserver

This is a perl webserver - using apache httpd - exposed at port 80.

The `cloudbuild.yaml` builds a container image, pushes that container image to a registry, and then deploys to Cloud Run.


## Build

```
export PROJECT_ID=$(gcloud info --format='value(config.project)')
sed =i '' 's/PROJECT_ID/'"${PROJECT_ID}"'/' cloudbuild.yaml
gcloud builds submit --tag gcr.io/$PROJECT_ID/hello-perl
```

## Run

```
docker run -it -p 8080:8080 gcr.io/$PROJECT_ID/hello-perl
```

Then go to localhost:8080 (or wherever) `/cgi-bin/hello` (note for this, I removed the `.pl` from the sourcefile in order to obfuscate that it's perl in the URL)

