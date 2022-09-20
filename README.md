# README
## Xilinx Vivado+Vitits Install
### Date (y/m/d): 2022/09/17

## AGENDA
- vivado+vitis installation
- analyze rtl/fsm
- analyze rtl/fulladder (rtl + sim + axi + vitis)
- end vivado+vitis installation
- example helloworld (vivado bd + vitis)

## DOCUMENTATION
- Vivado archive:
	https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/archive.html

- Vivado 2019.2 - installation guide
	https://www.xilinx.com/support/documentation-navigation/design-hubs/2019-2/dh0013-vivado-installation-and-licensing-hub.html
	https://www.xilinx.com/content/dam/xilinx/support/documents/sw_manuals/xilinx2019_2/ug973-vivado-release-notes-install-license.pdf

- Vivado FIX - Cannot start the vivado GUI Multiple Display Issue
	https://support.xilinx.com/s/article/72614?language=en_US

## DOWNLOAD Vivado 2019.2
- Go to:
	https://www.xilinx.com/member/forms/download/xef.html?filename=Xilinx_Unified_2019.2_1106_2127_Lin64.bin

- Create an account and login
- Fill form to be able to download Vivado

## INSTALL
GUIDE: https://www.xilinx.com/content/dam/xilinx/support/documents/sw_manuals/xilinx2019_2/ug973-vivado-release-notes-install-license.pdf

- install dependencies
	sudo apt install git diffstat unzip texinfo python chrpath wget xterm socat cpio python2 net-tools tftp-hpa bison flex gnupg autoconf libtool tar gcc screen pax pax-utils libstdc++5 iproute2 openssl gawk python-pexpect libncurses5 libsdl2-dev inetutils-tools python3-venv iputils-ping xz-utils python3-pip pylint3 python3-jinja2 zlib1g python3-django xvfb python3-git libtinfo5 -y

- Launch the installer (it may take 1/2mins)
	cd ~/Downloads
	chmod +x Xilinx_Unified_2019.2_1106_2127_Lin64.bin 
	./Xilinx_Unified_2019.2_1106_2127_Lin64.bin
- Ignore warning: unsupported OS version
- Ignore updates: press 'Continue'
- Select Install Type:
	provide your Xilinx account details (userID is your account email)
	select "Download and Install Now"
- Select Product to Install:
	select Vitis (this will install both Vivado and Vitis)

## SETUP
- install cable drivers
	cd /tools/Xilinx/Vivado/2019.2/data/xicom/cable_drivers/lin64/install_script/install_drivers/
	sudo ./install_drivers

- copy board files
	sudo cp -r ~/Downloads/vivado-boards-master/new/board_files/* /tools/Xilinx/Vivado/2019.2/data/boards/board_files/

- run Vivado
	source /tools/Xilinx/Vivado/2019.2/settings64.sh
	vivado &
