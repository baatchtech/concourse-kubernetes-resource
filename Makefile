all: build push
test: build pushtest

build:
	docker build -t pplr/concourse-kubernetes-resource:local .

push:
	docker tag pplr/concourse-kubernetes-resource:local pplr/concourse-kubernetes-resource:latest
	docker push pplr/concourse-kubernetes-resource:latest

pushtest:
	docker tag pplr/concourse-kubernetes-resource:local pplr/concourse-kubernetes-resource:test
	docker push pplr/concourse-kubernetes-resource:test
