FROM vvakame/review:2.5

ARG REVIEW_CONFIG_FILE

COPY setup.sh ./
COPY package.json ./
#RUN apt update -y && apt install -y texlive-fonts-extra && ./setup.sh 
RUN apt update -y 
RuN apt install -y texlive-fonts-extra 
#RUN ./setup.sh 

# REVIEW_CONFIG_FILE=$REVIEW_CONFIG_FILE npm run pdf"

ENTRYPOINT ["npm run pdf"]
