FROM huntprod/verse AS verse
FROM iamjameshunt/env:base

RUN apt-get install -y make cpanminus build-essential \
 && cpanm Digest::SHA1 Clone TimeDate MIME::Base64
COPY --from=verse /usr/bin/verse /usr/bin/spruce /usr/bin/jq /usr/bin/
