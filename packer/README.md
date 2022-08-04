# Cottontail Image Builds

Copy `variables.tfvars.template` over to `variables.tfvars` and edit the values.

I also

    export GOOGLE_CLOUD_PROJECT=mmm-goog-ad-cottontail-images

just for good measure.

Add ansible stuff into `ansible/`.

Then just run
```
make build
```





```
gcloud compute images add-iam-policy-binding IMAGE_NAME \
    --member='allAuthenticatedUsers' \
    --role='roles/compute.imageUser'
```

```
gcloud compute images add-iam-policy-binding IMAGE_NAME --member='allAuthenticatedUsers' --role='roles/compute.imageUser'
```
