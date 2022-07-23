FROM iamjameshunt/env:base

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo 'deb https://dl.yarnpkg.com/debian/ stable main' >> /etc/apt/sources.list.d/yarn.list \
 && curl -sL https://deb.nodesource.com/setup_18.x | bash \
 && apt-get update \
 && apt-get install -y yarn nodejs build-essential

RUN npm install -g @vue/cli
