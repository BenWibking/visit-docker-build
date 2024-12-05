FROM --platform=linux/amd64 docker.io/bwibking/visit-342-deps-build

ENV TZ=America/Phoenix

USER visit
WORKDIR /home/visit

# Build visit, package, install and test.
RUN /bin/bash build_test_visit.sh -v 3.4.2

