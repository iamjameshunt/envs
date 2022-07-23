FROM iamjameshunt/env:base

RUN apt-get update \
 && apt-get install -y mysql-client postgresql-client \
 && apt-get install -y build-essential libpq-dev git python3-pip
RUN git clone https://github.com/dbt-labs/dbt-core.git \
 && cd dbt-core \
 && pip install -r requirements.txt
