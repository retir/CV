FROM ubuntu:18.04

ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install --yes\
    texlive-xetex \
    texlive-fonts-recommended \
    texlive-generic-recommended \
    texlive-latex-extra \
    texlive-fonts-extra \
    dvipng \
    texlive-latex-recommended \
    texlive-base
    
COPY CV /CV
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["bash","/entrypoint.sh"]
