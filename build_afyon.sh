#!/bin/bash 

# Colorize and add text parameters
red=$(tput setaf 1) # red
grn=$(tput setaf 2) # green
cya=$(tput setaf 6) # cyan
txtbld=$(tput bold) # Bold
bldred=${txtbld}$(tput setaf 1) # red
bldgrn=${txtbld}$(tput setaf 2) # green
bldblu=${txtbld}$(tput setaf 4) # blue
bldcya=${txtbld}$(tput setaf 6) # cyan
txtrst=$(tput sgr0) # Reset

echo""
echo -e "${bldred} 
     Cleaning Build Directory 
${txtrst}"

make mrproper

echo""
echo -e "${bldgrn} 
      Source is Sanitary 
${txtrst}"


echo""
echo -e "${bldblu} 
      Building ZERO Kernel By DM47021 From Source
${txtrst}" 

make -j64 ARCH=arm CROSS_COMPILE=/home/dm47021/Android/toolchains/arm-eabi-4.7/bin/arm-eabi- msm8226-sec_defconfig VARIANT_DEFCONFIG=msm8926-sec_afyonltetmo_defconfig
make -j64 ARCH=arm CROSS_COMPILE=/home/dm47021/Android/toolchains/arm-eabi-4.7/bin/arm-eabi-

echo -e "${bldgrn} 
      Kernel Built Sucessfully!!
${txtrst}" 

#Append dtb to zImage
echo""
echo -e "${bldcya} 
      Appending .dtb Files to zImage 
      The end result will be zImage-dtb  in arch/arm/boot 
${txtrst}" 

# Wait for user input
echo""
read -p "Press [Enter] to exit this script..."
