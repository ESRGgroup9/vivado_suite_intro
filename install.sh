#!/bin/bash

green="\033[0;32m"
reset="\033[0m"

install_bin=./bin/Xilinx_Unified_2019.2_1106_2127_Lin64.bin
install_dir=/tools/Xilinx
version=2019.2

echo -e "\nRUN THIS WITH SUDO! OTHERWISE BAD INSTALL MAY OCCUR\n"
echo -e "${green}Installing dependencies ...${reset}"
sudo apt install -f \
	git diffstat \
	unzip texinfo python chrpath \
	wget xterm socat cpio python2 \
	net-tools tftp-hpa bison flex \
	gnupg autoconf libtool tar gcc \
	screen pax pax-utils libstdc++5 \
	iproute2 openssl gawk \
	libncurses5 libsdl2-dev inetutils-tools \
	python3-venv iputils-ping xz-utils python3-pip \
	python3-jinja2 zlib1g \
	python3-django xvfb python3-git libtinfo5 \
	pylint python3-pexpect -y

echo -e "${green}Launching installer ...${reset}"
chmod +x ${install_bin}
sudo ${install_bin}

echo -e "${green}Installing cable_drivers ...${reset}"
sudo ${install_dir}/Vivado/${version}/data/xicom/cable_drivers/lin64/install_script/install_drivers/install_drivers

echo -e "${green}Adding board files ...${reset}"
unzip boards/vivado-boards-master.zip -d boards/
sudo cp -rf \
	boards/vivado-boards-master/new/board_files/* \
	${install_dir}/Vivado/${version}/data/boards/board_files/

chmod +x vivadostart.sh
