FROM jboss/wildfly
RUN /opt/jboss/wildfly/bin/add-user.sh admin bastos@2021 --silent
WORKDIR /opt/deploy
COPY JavaEEDemo.war /opt/jboss/wildfly/standalone/deployments
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
EXPOSE 9990 8080 8443 443
