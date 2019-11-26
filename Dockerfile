FROM ruby:2.6

RUN apt-get -y update && apt-get install -y default-jre-headless graphviz
ENV RUBYGEMS_VERSION=2.7.0

# Set default locale for the environment
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

LABEL "com.github.actions.name"="Build & Deploy to GitHub Pages"
LABEL "com.github.actions.description"="Builds & deploys Jekyll to gh-pages branch of the same repository. "
LABEL "com.github.actions.icon"="globe"
LABEL "com.github.actions.color"="green"

LABEL "repository"="http://github.com/BryanSchuetz/jekyll-deploy-gh-pages"


ENV PLANTUML_VERSION 1.2019.5
ENV LANG en_US.UTF-8

ADD plantuml.jar /plantuml.jar
ADD plantuml /usr/bin/plantuml
RUN chmod +x /usr/bin/plantuml
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
