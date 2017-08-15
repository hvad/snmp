# L'image source Fedora
FROM fedora:latest

MAINTAINER David Hannequin
# Installation de l'agent SNMP
RUN dnf update -y && dnf install -y net-snmp
# Fichier de configuration de l'agent SNMP
COPY snmpd.conf /etc/snmp/snmpd.conf
# Démarrage de l'agent SNMP
CMD ["/usr/sbin/snmpd", "-f"]
# Ouverture du port udp/161
EXPOSE 161:161/udp
