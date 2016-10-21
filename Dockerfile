FROM tomcat:7

#ENV version v0.5.12
ENV CATALINA_OPTS -Xms512m -Xmx512m -XX:MaxPermSize=256m

RUN rm -rf /usr/local/tomcat/webapps/ROOT && \
    #curl -L -o /usr/local/tomcat/webapps/ROOT.war https://github.com/annotationsatharvard/catcha/releases/download/${version}/catch.war && \
    mkdir /usr/local/tomcat/webapps/ROOT
ADD catcha.war /usr/local/tomcat/webapps/ROOT.war
RUN unzip /usr/local/tomcat/webapps/ROOT.war -d /usr/local/tomcat/webapps/ROOT
RUN mkdir /root/.grails
COPY catch-config.properties /root/.grails

VOLUME ['/usr/local/tomcat/webapps/ROOT/uploads']
