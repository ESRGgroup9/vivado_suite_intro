# Xilinx Vivado+Vitis Install

## AGENDA
- Vivado + Vitis installation
- Analyze rtl/fsm
- Analyze rtl/fulladder (rtl + sim + axi + vitis)
- Vivado + Vitis installation end
- Example helloworld (vivado bd + vitis)

## DOCUMENTATION
- Vivado archive:
	https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/archive.html

- Vivado 2019.2 - installation docs: https://www.xilinx.com/support/documentation-navigation/design-hubs/2019-2/dh0013-vivado-installation-and-licensing-hub.html

- Vivado 2019.2 - installation guide: https://www.xilinx.com/content/dam/xilinx/support/documents/sw_manuals/xilinx2019_2/ug973-vivado-release-notes-install-license.pdf

- Vivado FIX - Cannot start the vivado GUI Multiple Display Issue
	https://support.xilinx.com/s/article/72614?language=en_US

## STEPS
### DOWNLOAD Vivado 2019.2
1. Go to: https://www.xilinx.com/member/forms/download/xef.html?filename=Xilinx_Unified_2019.2_1106_2127_Lin64.bin
2. Create an account and login. (You should use your institutional email)
3. Fill form to be able to download Vivado
4. Make sure you downloaded ```Xilinx_Unified_2019.2_1106_2127_Lin64.bin``` into your ```~/Downloads``` folder

### SETUP
Open your terminal. Type: 
```shell
shell$ cd ~
shell$ git clone https://github.com/ESRGgroup9/vivado_suite_intro.git
shell$ cd vivado_suite_intro
shell$ mkdir bin
shell$ mv ~/Downloads/Xilinx_Unified_2019.2_1106_2127_Lin64.bin bin/
shell$ chmod +x ./install.sh 
```

### INSTALL
Run install script. This will install all advised dependencies and launch Vivado installer:
```shell
shell$ sudo ./install.sh
```

Follow the installation guide: https://www.xilinx.com/content/dam/xilinx/support/documents/sw_manuals/xilinx2019_2/ug973-vivado-release-notes-install-license.pdf

- Ignore warning: unsupported OS version
- Ignore updates: press 'Continue'

Notes:

- **Select Install Type**: provide your Xilinx account details (userID is your account email)
- Select "Download and Install Now"
- **Select Product to Install**: Select Vitis (this will install both Vivado and Vitis)

## RUN VIVADO
```shell
shell$ ./vivadostart.sh
shell$ vivado &
```
### BONUS TIPS
- Open vivado project:<br/>
```shell$ vivado project_name.xpr```

- To create a vivado project using a .tcl script:<br/>
```shell$ vivado -source create_proj.tcl &```

## PROJECT DIRECTORIES
- **/boards**:
- **/constraints**: Constraint files
- **/doc**: aux documentation
- **/examples**: Vivado example projects

**Vivado** project directories:

- **/rtl**: HDL source files
- **/sim**: HDL simulation files
- **/constraints**: 
- **/ip**: IP block definition
- **/bd**: Block design definition
- **/proj**: Project working directory

**Vitis** project directories:

- **/src**: Source files
- **/proj**: Project working directory
