FROM redis:3.0

ENV CONSUL_VERSION 0.6.3
ENV CONSUL_CHECKSUM b0532c61fec4a4f6d130c893fd8954ec007a6ad93effbe283a39224ed237e250

RUN apt-get update && \
apt-get install -y unzip && \
rm -rf /var/lib/apt/lists/*

ADD https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip /tmp/consul.zip

RUN echo "$CONSUL_CHECKSUM *consul.zip" | sha256sum -c - && \
unzip /tmp/consul.zip && \
mv consul /usr/local/bin/ && \
rm -f /tmp/consul.zip