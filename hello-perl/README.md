# Hello Perl


## Build

either use the cloudbuild.yaml via `gcloud builds submit` or directly via `gcloud builds submit --tag gcr.io/$PROJECT_ID/hello-perl` (where `PROJECT_ID=$(gcloud info --format='value(config.project)')`)

## Run

Then, to run it, use cloud shell or some other env that has Docker:

```
export PROJECT_ID=$(gcloud info --format='value(config.project)')
docker run -it --name hello-perl gcr.io/${PROJECT_ID}/hello-perl:latest
```