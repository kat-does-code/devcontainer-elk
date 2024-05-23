ARG BASIS="python"
ARG VARIANT="3.12-bullseye"
FROM ${BASIS}:${VARIANT}

ADD requirements.txt .

RUN apt-get update -y && apt-get upgrade -y
RUN pip install -r requirements.txt