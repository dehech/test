#!/bin/bash

trivy image ${DOCKER_IMAGE_NAME}:${env.BUILD_NUMBER} > trivy_report.txt