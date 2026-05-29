NEXUS_VERSION ?= 3.82.1-java17-ubi
TEST_TIMEOUT ?= 600

.PHONY: build
build:
	docker buildx \
		build \
		--build-arg NEXUS_VERSION=${NEXUS_VERSION} \
		--platform linux/amd64 \
		-t dockette/nexus \
		.

.PHONY: test
test:
	docker rm -f nexus-test >/dev/null 2>&1 || true
	docker run -d --name nexus-test -p 127.0.0.1:8081:8081 dockette/nexus
	trap 'docker rm -f nexus-test >/dev/null 2>&1 || true' EXIT; \
		for i in $$(seq 1 $(TEST_TIMEOUT)); do \
			status=$$(curl -s -o /dev/null -w "%{http_code}" http://127.0.0.1:8081/ || true); \
			if [ "$$status" != "000" ] && [ "$$status" -lt 500 ]; then \
				exit 0; \
			fi; \
			sleep 1; \
		done; \
		docker logs nexus-test; \
		exit 1

.PHONY: run
run: 
	docker run -it --rm -p 8081:8081 --name nexus dockette/nexus

.PHONY: run-password
run-password: 
	docker exec -it nexus cat /nexus-data/admin.password
