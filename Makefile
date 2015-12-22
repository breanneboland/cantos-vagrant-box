base:
	cd centos6-base && packer build -force template.json

build-postgres:
	cd postgres && packer build -force template.json
