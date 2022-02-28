apt update -qq
apt install -y \
        apt-utils \
        apt-transport-https \
        gnupg \
		libcurl4-openssl-dev \
		libnlopt-dev \
        lsb-release
#apt-key adv \
#        --keyserver keyserver.ubuntu.com \
#        --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
		
apt install --no-install-recommends software-properties-common dirmngr
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
apt install --no-install-recommends r-base

#add-apt-repository \
#        --yes \
#
#		"deb {CRAN_MIRROR}/bin/linux/ubuntu/ $(lsb_release -c -s)-cran40/"
        #"deb {CRAN_MIRROR}/bin/linux/ubuntu/ $(lsb_release -c -s)${CRAN_MIRROR_TAG}/"

apt-get install -y \
        aptdaemon \
        ed \
        git \
		mercurial \
		libcairo-dev \
		libedit-dev \
		libxml2-dev \
		python3 \
		python3-pip \
		python3-venv \
		sudo \
		wget
rm -rf /var/lib/apt/lists/*
