apt-get update -qq
apt-get install -y \
        apt-utils \
        apt-transport-https \
		dirmngr \
        gnupg \
		libcurl4-openssl-dev \
		libnlopt-dev \
        lsb-release

apt-key adv \
        --keyserver keyserver.ubuntu.com \
        --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

add-apt-repository \
	--yes \
	"deb {CRAN_MIRROR}/bin/linux/ubuntu/ $(lsb_release -c -s)${CRAN_MIRROR_TAG}/"
	
apt-get update
apt-get install -y --no-install-recommends \
		r-base=${R_BASE_VERSION}-* \
		r-base-dev=${R_BASE_VERSION}-*

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
