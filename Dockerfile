FROM alpine:latest
MAINTAINER Max Cai <zhiyuan.cai@gmail.com>

RUN apk add --update curl
ENV TERRAFORM_URL=https://releases.hashicorp.com/terraform/0.6.12/
#ENV TERRAFORM_URL=./
ENV TERRAFORM_FILE=terraform_0.6.12_linux_amd64.zip


ADD ${TERRAFORM_URL}${TERRAFORM_FILE} /
RUN unzip /${TERRAFORM_FILE} && \
    rm -f /${TERRAFORM_FILE}

RUN mkdir -p /tfplan
VOLUME /tfplan
WORKDIR /tfplan

ENTRYPOINT ["/terraform"]
CMD ["--version"]