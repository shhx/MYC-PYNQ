# PYNQ Image Building for MYC-C7Z020 SoM
The board documentation can be found here: https://www.myirtech.com/list.asp?id=694

## Setup host to build PYNQ image

```bash
source PYNQ/scripts/setup_host.sh
```

## Download project and distribution files

```bash
git clone https://github.com/shhx/MYC-PYNQ.git
git submodule update --init 
source download_dist.sh
```

## Build PYNQ image

```bash
cd PYNQ/sdbuild
make BOARDDIR=../../boards
```
