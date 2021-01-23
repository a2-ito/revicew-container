FROM vvakame/review:2.5

ARG REVIEW_CONFIG_FILE

COPY setup.sh ./
COPY package.json ./
COPY Gemfile ./

RUN apt update -y && \
  apt install -y texlive-fonts-extra && \
  apt clean && \
  rm -rf /var/lib/apt/lists/* && \
  ./setup.sh 

# REVIEW_CONFIG_FILE=$REVIEW_CONFIG_FILE npm run pdf"
CMD ["/bin/bash"]
