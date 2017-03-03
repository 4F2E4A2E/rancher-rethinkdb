FROM rethinkdb:2.3.5
MAINTAINER xkodiak

RUN apt update && apt install -y curl

COPY assets/run.sh /run.sh

RUN chmod +x /run.sh 

ENTRYPOINT [ "/run.sh" ]