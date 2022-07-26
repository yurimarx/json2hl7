ARG IMAGE=intersystemsdc/irishealth-community
FROM $IMAGE

USER root   
        
WORKDIR /opt/user
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/user
USER ${ISC_PACKAGE_MGRUSER}

COPY semarquivo.pdf semarquivo.pdf
COPY  Installer.cls Installer.cls
COPY  module.xml module.xml
COPY  src src
COPY input input
COPY output output
COPY json json
COPY iris.script /tmp/iris.script
COPY hcd.properties /var/opt/hcd.properties
COPY teste.json teste.json


USER root
RUN chmod 777 -R /opt/user/input
RUN chmod 777 -R /opt/user/output

USER ${ISC_PACKAGE_MGRUSER}
RUN iris start IRIS \
	&& iris session IRIS < /tmp/iris.script \
    && iris stop IRIS quietly
