FROM jenkins:2.25

USER root

ENTRYPOINT ["/bin/tini", "--", "/usr/local/bin/jenkins.sh"]
