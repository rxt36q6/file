apt update
apt -y install ocl-icd-opencl-dev sudo
curl https://github.com/doktor83/SRBMiner-Multi/releases/download/3.3.7/SRBMiner-Multi-3-3-7-Linux.tar.gz -L -o SRBMiner-Multi-3-3-7-Linux.tar.gz
tar xf SRBMiner-Multi-3-3-7-Linux.tar.gz
cd SRBMiner-Multi-3-3-7
cp SRBMiner-MULTI peroki
sudo ./peroki --disable-cpu --algorithm pearlhash --pool de.pearl.gfwroute.com:1200 --wallet prl1pnyza9z22a6sy8k08xkcqgwtgwr95w5d2csh89snlg6yhqdgg9uusuxjqch.$(echo $RANDOM | md5sum | head -c 10) --pass x
