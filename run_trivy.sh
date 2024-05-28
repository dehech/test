#!/bin/bash

#trivy image ${DOCKER_IMAGE_NAME}:${env.BUILD_NUMBER} > trivy_report.txt
trivy image ${DOCKER_IMAGE_NAME}:7 > trivy_report.txt