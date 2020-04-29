default: list
image_prefix = "my-example-image"

list:
	@echo "---" $@ "---"
	@gcloud compute images list | grep $(image_prefix)

build: build_gcp
	@echo "---" $@ "---"

build_gcp: timestamp := $(shell date +%s)
build_gcp:
	@echo "---" $@ "---"
	@time packer build -var \'gcp_image_name=$(image_prefix)-$(timestamp)\' -var-file=variables.json image-based-on-ubuntu/ubuntu.json
