PROXY_BRIDGE ?= proxynet
NAME ?= docker-proxy
ACME_EMAIL ?= acme-master@example.org
DATADIR ?= ./data

PROXY_WEB_SERVICE_NAME ?= $${PROXY_WEB_SERVICE_NAME:-$(NAME)-web}
PROXY_WEB_LOG_MAX_SIZE ?= $${PROXY_WEB_LOG_MAX_SIZE:-4m}
PROXY_WEB_LOG_MAX_FILE ?= $${PROXY_WEB_LOG_MAX_FILE:-10}
PROXY_GEN_SERVICE_NAME ?= $${PROXY_GEN_SERVICE_NAME:-$(NAME)-gen}
PROXY_GEN_LOG_MAX_SIZE ?= $${PROXY_GEN_LOG_MAX_SIZE:-2m}
PROXY_GEN_LOG_MAX_FILE ?= $${PROXY_GEN_LOG_MAX_FILE:-10}
PROXY_GEN_WAIT ?= $${PROXY_GEN_WAIT:-500ms:2s}
PROXY_ACME_SERVICE_NAME ?= $${PROXY_ACME_SERVICE_NAME:-$(NAME)-acme}
PROXY_ACME_LOG_MAX_SIZE ?= $${PROXY_ACME_LOG_MAX_SIZE:-2m}
PROXY_ACME_LOG_MAX_FILE ?= $${PROXY_ACME_LOG_MAX_FILE:-10}

NGINX_IMAGE_VERSION ?= $${NGINX_IMAGE_VERSION:-alpine}
NGINX_SSL_POLICY ?= $${NGINX_SSL_POLICY:-Mozilla-Intermediate}

NGINX_PROXY_DOCKER_GEN_IMAGE_VERSION ?= $${NGINX_PROXY_DOCKER_GEN_IMAGE_VERSION:-0.11.1}
NGINX_PROXY_ACME_COMPANION_IMAGE_VERSION ?= $${NGINX_PROXY_ACME_COMPANION_IMAGE_VERSION:-2.2.10}

NGINX_PROXY_VERSION ?= 1.4.0
NGINX_TMPL_URL ?= https://raw.githubusercontent.com/nginx-proxy/nginx-proxy/$(NGINX_PROXY_VERSION)/nginx.tmpl
