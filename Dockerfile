FROM hashicorp/terraform
RUN set -x && \
    apk add --no-cache python3 python3-dev  build-base py3-cffi libffi libffi-dev openssl openssl-dev

RUN pip3 install azure-cli
