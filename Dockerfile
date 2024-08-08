FROM ruby:3.1

# Установка Terraform
ARG TERRAFORM_VERSION=1.0.0
RUN apt-get update && apt-get install -y wget unzip && \
    wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    apt-get clean

# Проверка установки Terraform
RUN terraform --version
