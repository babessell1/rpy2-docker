ARG UBUNTU_RELEASE=20.04
FROM ubuntu:$UBUNTU_RELEASE

# force rebuild
MAINTAINER Brandt Bessell <babessell@gmail.com>

ARG DEBIAN_FRONTEND=noninteractive
ENV CRAN_MIRROR=https://cloud.r-project.org \
    CRAN_MIRROR_TAG=-cran40 \
	R_BASE_VERSION=4.0.1

ARG RPY2_VERSION=RELEASE_3_4_5
ARG RPY2_CFFI_MODE=BOTH

COPY install_apt.sh /opt/
COPY install_rpacks.sh /opt/
COPY install_pip.sh /opt/

RUN \
  sh /opt/install_apt.sh \
  && sh /opt/install_rpacks.sh \
  && sh /opt/install_pip.sh \
  && rm -rf /tmp/* \
  && apt-get remove --purge -y $BUILDDEPS \
  && apt-get autoremove -y \
  && apt-get autoclean -y \
  && rm -rf /var/lib/apt/lists/*

RUN \
  python3 -m pip --no-cache-dir install https://github.com/rpy2/rpy2/archive/"${RPY2_VERSION}".zip && \
  rm -rf /root/.cache
