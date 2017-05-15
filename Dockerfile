FROM registry.access.redhat.com/rhel7-atomic
MAINTAINER Mangirdas Judeikis <m.j@redhat.com>

RUN microdnf --enablerepo=rhel-7-server-rpms \
install chrony --nodocs ;\
microdnf clean all

VOLUME /var/lib/chrony

CMD ["/usr/sbin/chronyd", "-d", "-f", "/var/lib/chrony/chrony.conf"]


