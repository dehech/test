#!/bin/bash

trivy image ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} > trivy_report.txt
#trivy image ${DOCKER_IMAGE_NAME}:7 > trivy_report.txt
#script de trivy