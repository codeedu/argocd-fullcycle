FROM jboss/wildfly
RUN /opt/jboss/wildfly/bin/add-user.sh admin k8s@2020 --silent
WORKDIR /opt/deploy
COPY JavaEEDemo.war /opt/jboss/wildfly/standalone/deployments
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
EXPOSE 9990 8080 8443 443
