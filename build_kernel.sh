#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=$(pwd)/../PLATFORM/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-
mkdir output

make -C $(pwd) O=output msm8929_sec_defconfig VARIANT_DEFCONFIG=msm8929_sec_j7_spr_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -j64 -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage