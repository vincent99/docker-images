FROM azul/zulu-openjdk:8u72
RUN cp /usr/lib/jvm/zulu-8-amd64/jre/lib/security/US_export_policy.jar /usr/lib/jvm/zulu-8-amd64/jre/lib/security/local_policy.jar

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends curl ca-certificates unzip

RUN mkdir -p /crowdin /tmp/download /source \
    && curl -o /tmp/crowdin-cli.zip https://crowdin.com/downloads/crowdin-cli.zip \
    && unzip -d /tmp/download /tmp/crowdin-cli.zip \
    && mv /tmp/download/*/* /crowdin/ \
    && rm -rf /tmp/download


WORKDIR /source
ENTRYPOINT ["java","-jar","/crowdin/crowdin-cli.jar"]
