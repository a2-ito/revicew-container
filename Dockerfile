FROM vvakame/review:2.5

ARG REVIEW_CONFIG_FILE

WORKDIR /book

RUN apt-get update -y \
  && apt-get install -y --no-install-recommends texlive-fonts-extra=2018.20190227-2 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* 

COPY Gemfile /book
COPY package.json /book
RUN npm install --unsafe-perm

# REVIEW_CONFIG_FILE=$REVIEW_CONFIG_FILE npm run pdf"
CMD ["/bin/bash"]
