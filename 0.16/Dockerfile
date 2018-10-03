FROM hashicorp/terraform:light

ENV TERRAGRUNT_VERSION=0.16.14

RUN apk add --update curl && \
    curl -o terragrunt_linux_amd64 -L https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64  && \
    echo "Downloaded Terragrunt v${TERRAGRUNT_VERSION}" && \
    mv terragrunt_linux_amd64 /bin/terragrunt && \
    chmod +x /bin/terragrunt
    
ENTRYPOINT ["/bin/terragrunt"]