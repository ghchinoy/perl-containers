# Perl Webserver

This is a perl webserver exposed at port 8080.

The `cloudbuild.yaml` builds a container image, pushes that container image to a registry, and then deploys to Cloud Run.

This uses modern perl constructs (no Apache + CGI):

* [PSGI/Plack](https://plackperl.org/)
* [cpanm](https://metacpan.org/pod/App::cpanminus#INSTALL),  a package manager for Perl/CPAN
* [carton](https://metacpan.org/pod/Carton), another CPAN package manager
* [starman](https://metacpan.org/pod/Starman), Webserver in perl.


## Build and Deploy with Cloud Build

```
export PROJECT_ID=$(gcloud info --format='value(config.project)')
sed -i '' 's/PROJECT_ID/'"${PROJECT_ID}"'/' cloudbuild.yaml
gcloud builds submit --tag gcr.io/$PROJECT_ID/hello-perl
```

or, if you have docker, `docker build -t gcr.io/${PROJECT_ID}/hello-perl` and then `gcloud run deploy hello-perl --image gcr.io/${PROJECT_ID}/hello-perl --platform managed --region us-central1 --allow-unauthenticated`

Then go to the resulting Cloud Run URL and see the HTML.

also `/echo?field=hello` will give back JSON.

## Run locally

Run the created container locally:

```
export PROJECT_ID=$(gcloud info --format='value(config.project)')
docker run -it -p 8080:8080 gcr.io/$PROJECT_ID/hello-perl
```

Then go to localhost:8080 and see the HTML.

also `/echo?field=hello` will give back JSON.

