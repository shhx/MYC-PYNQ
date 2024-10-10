#!/bin/bash
ARCH=arm #or aarch64
CURDIR=$(pwd)/PYNQ
PREBUILT_ROOTFS_DST=${CURDIR}/sdbuild/prebuilt/pynq_rootfs.${ARCH}.tar.gz
PREBUILT_SDIST_DST=${CURDIR}/sdbuild/prebuilt/pynq_sdist.tar.gz
if [ -f ${PREBUILT_ROOTFS_DST} ]; then
    echo "Prebuilt rootfs already exists at ${PREBUILT_ROOTFS_DST}"
else
    echo "Downloading prebuilt rootfs to ${PREBUILT_ROOTFS_DST}"
    if [ ${ARCH}=="arm" ]; then
        wget https://bit.ly/pynq_arm_v3_1 -O ${PREBUILT_ROOTFS_DST}
    else
        wget https://bit.ly/pynq_aarch64_v3_0_1 -O ${PREBUILT_ROOTFS_DST}
    fi
fi
if [ -f ${PREBUILT_SDIST_DST} ]; then
    echo "Prebuilt sdist already exists at ${PREBUILT_SDIST_DST}"
else
    echo "Downloading prebuilt sdist to ${PREBUILT_SDIST_DST}"
    wget https://github.com/Xilinx/PYNQ/releases/download/v3.0.1/pynq-3.0.1.tar.gz -O ${PREBUILT_SDIST_DST}
fi
