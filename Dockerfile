FROM jenkinsci/jenkins:2.26

USER root

RUN apt-get update && apt-get upgrade -y && apt-get install -y ruby && rm -rf /var/lib/apt/lists/*


ENTRYPOINT ["/bin/tini", "--", "/usr/local/bin/jenkins.sh"]
