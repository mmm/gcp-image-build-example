default: list
image_prefix = "my-example-image"

list:
	@echo "---" $@ "---"
	@gcloud compute images list | grep $(image_prefix) || true

build: build_centos build_ubuntu

build_centos: timestamp := $(shell date +%s)
build_centos:
	@echo "---" $@ "---"
	@time packer build -var \'gcp_image_name=$(image_prefix)-centos-$(timestamp)\' -var-file=variables.json image-based-on-centos/centos.json

build_ubuntu: timestamp := $(shell date +%s)
build_ubuntu:
	@echo "---" $@ "---"
	@time packer build -var \'gcp_image_name=$(image_prefix)-ubuntu-$(timestamp)\' -var-file=variables.json image-based-on-ubuntu/ubuntu.json
