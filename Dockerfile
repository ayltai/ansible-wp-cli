FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn

# Install required packages
RUN apt-get -y update --fix-missing
RUN apt-get -y install curl ca-certificates tzdata software-properties-common

# Configure timezone
ENV TZ=Asia/Hong_Kong
RUN echo "Asia/Hong_Kong" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

# Install Docker
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN sh get-docker.sh

# Install Python
RUN apt-get install -y --no-install-recommends python3.8 python3-pip

# Mount project directory
RUN mkdir /ansible-wp-cli
WORKDIR /ansible-wp-cli

CMD /bin/bash
