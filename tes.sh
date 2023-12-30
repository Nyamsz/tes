sudo apt update
sudo apt upgrade
sudo apt install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git git-lfs gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev libelf-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev python-is-python3
sudo apt update
sudo apt install repo
mkdir yaap
cd yaap
repo init -u https://github.com/yaap/manifest.git -b fourteen --git-lfs
repo sync -c -j$(nproc --all) --no-tags --no-clone-bundle --current-branch
git clone -b thirteen-oss https://github.com/alternoegraha/device_xiaomi_fog device/xiaomi/fog
