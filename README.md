# Xilinx Vivado+Vitits Install README
Date (y/m/d): 2022/09/17

## AGENDA
- vivado+vitis installation
- analyze rtl/fsm
- analyze rtl/fulladder (rtl + sim + axi + vitis)
- end vivado+vitis installation
- example helloworld (vivado bd + vitis)

## DOCUMENTATION
- Vivado archive:
	https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/archive.html

- Vivado 2019.2 - installation docs: https://www.xilinx.com/support/documentation-navigation/design-hubs/2019-2/dh0013-vivado-installation-and-licensing-hub.html

- Vivado 2019.2 - installation guide: https://www.xilinx.com/content/dam/xilinx/support/documents/sw_manuals/xilinx2019_2/ug973-vivado-release-notes-install-license.pdf

- Vivado FIX - Cannot start the vivado GUI Multiple Display Issue
	https://support.xilinx.com/s/article/72614?language=en_US

## STEPS
### DOWNLOAD Vivado 2019.2
- Go to: https://www.xilinx.com/member/forms/download/xef.html?filename=Xilinx_Unified_2019.2_1106_2127_Lin64.bin
- Create an account and login
- Fill form to be able to download Vivado
- Make sure you downloaded ```Xilinx_Unified_2019.2_1106_2127_Lin64.bin``` into your ```~/Downloads``` folder

### SETUP
Open your terminal. Type:
```shell$ cd ~```
```shell$ git clone https://github.com/ESRGgroup9/vivado_suite_intro.git```
```shell$ cd vivado_suite_intro ```
```shell$ mkdir bin```
```shell$ mv ~/Downloads/Xilinx_Unified_2019.2_1106_2127_Lin64.bin bin/```
```shell$ chmod +x ./install.sh ```
```shell$ sudo ./install.sh```

### INSTALL
GUIDE: https://www.xilinx.com/content/dam/xilinx/support/documents/sw_manuals/xilinx2019_2/ug973-vivado-release-notes-install-license.pdf

- Ignore warning: unsupported OS version
- Ignore updates: press 'Continue'
- Select Install Type: provide your Xilinx account details (userID is your account email)
- Select "Download and Install Now"
- Select Product to Install: Select Vitis (this will install both Vivado and Vitis)

## RUN VIVADO
```shell$ ./vivadostart.sh```
```shell$ vivado &```
