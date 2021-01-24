FROM vvakame/review:2.5

ARG REVIEW_CONFIG_FILE

COPY setup.sh ./
COPY package.json ./
COPY Gemfile ./

RUN apt-get update -y \
  && apt-get install -y --no-install-recommends texlive-fonts-extra=2018.20190227-2 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && ./setup.sh 

# REVIEW_CONFIG_FILE=$REVIEW_CONFIG_FILE npm run pdf"
CMD ["/bin/bash"]
