DOCKER_YAML=-f docker-compose.yml
DOCKER=docker-compose $(DOCKER_YAML)
SITE_NAME=blog


docker-up:
	$(DOCKER) up

docker-down:
	$(DOCKER) down

sh:
	$(DOCKER) run --rm chalice ${p}

generate-pipeline:
	$(DOCKER) run --rm chalice chalice generate-pipeline -b buildspec.yml pipeline.json

deploy:
	$(DOCKER) run --rm chalice chalice deploy

delete:
	$(DOCKER) run --rm chalice chalice delete

cf-deploy:
	$(DOCKER) run --rm chalice aws cloudformation deploy \
	--stack-name XXXXXXXXX \
	--template-file pipeline.json \
	--capabilities CAPABILITY_IAM

delete-stack:
	$(DOCKER) run --rm chalice aws cloudformation delete-stack \
	--stack-name XXXXXXXXX
