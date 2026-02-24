#!/usr/bin/env bash

PATH="${PATH}:${HOME}/bin"
export PATH

# Populates OpenSearch Dashboards config file:

cat <<- EOF >> "${HOME}/config/opensearch_dashboards.yml"
server:
  host: 0.0.0.0
  port: ${OPENSEARCH_DASHBOARD_PORT}

opensearch.hosts:
  - "${OPENSEARCH_URL}"
EOF
