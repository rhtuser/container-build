FROM registry.access.redhat.com/ubi8/ubi:latest

RUN yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm && \
    yum makecache && \
    yum -y install cowsay fortune-mod && \
    yum clean all && \
    rm -rf /var/cache/yum

CMD cowsay $(fortune)
