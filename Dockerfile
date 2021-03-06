FROM hashicorp/terraform:0.11.10

ENV TERRAGRUNT_VERSION=0.16.14

RUN apk add --update --no-cache curl jq && \
    curl -o terragrunt_linux_amd64 -L https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64  && \
    echo "Downloaded Terragrunt v${TERRAGRUNT_VERSION}" && \
    mv terragrunt_linux_amd64 /bin/terragrunt && \
    chmod +x /bin/terragrunt

RUN ssh -T -o "StrictHostKeyChecking no" -o "PubkeyAuthentication no" git@github.com || true
    
ENTRYPOINT ["/bin/terragrunt"]