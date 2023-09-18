FROM kalilinux/kali-rolling

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /root

RUN mkdir -p /root/data

# Update
RUN apt -y update && DEBIAN_FRONTEND=noninteractive apt -y dist-upgrade && apt -y autoremove && apt clean

# Install common and useful tools
RUN apt -y install \
	ca-certificates \
	build-essential \
	apt-transport-https \
	sudo \
	bash-completion \
	curl \
	wget \
	vim \
	neovim \
	python3-neovim \
	nano \
	git \
	subversion \
	net-tools \
	whois \
	netcat-traditional \
	pciutils \
	usbutils \
	dos2unix \
	gdebi \
	w3m 

# Install useful languages
RUN apt -y install \
	python3-pip \
	golang \
	nodejs \
	npm

# Install SOC red team tools
RUN apt -y install \
	kali-tools-top10 \
	exploitdb \
	man-db \
	dirb \
	nikto \
	wpscan \
	uniscan \
	lsof \
	apktool \
	dex2jar \
	ltrace \
	strace \
	binwalk

# Install SOC blue team tools
RUN apt install kali-tools-identify -y
RUN apt install kali-tools-protect -y
RUN apt install kali-tools-detect -y
RUN apt install kali-tools-respond -y
RUN apt install kali-tools-recover -y

# Install Tor and proxychains, then configure proxychains with Tor
RUN apt -y install tor proxychains
COPY config/proxychains.conf /etc/proxychains.conf

# Install ZSH shell with custom settings and set it as default shell
RUN apt -y install zsh
COPY config/install.sh /root/install.sh
RUN sh /root/install.sh
COPY config/.zshrc .

COPY config/entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]