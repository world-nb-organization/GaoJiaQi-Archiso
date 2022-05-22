#!/usr/bin/bash
if [[ -e /usr/bin/pacman ]]
then
    true
else
    echo -e "\033[31m不受支持的发行版，请联系开发者并尝试手动构建\033[0m"
    exit
fi
sudo pacman -Scc --noconfirm
echo -e "\033[32m从aur-packages.x86_64中读取包名并生成二进制包...\033[0m"
cp ./pacman.conf ./pacman.conf.bak
cp ./packages.x86_64 ./packages.x86_64.bak
mkdir aur ;mkdir ./local-repo ; cd ./aur 
echo "$(cat ../aur-packages.x86_64)" >>  ../packages.x86_64
pwd
for ((i=1;i <= $(awk 'END {print NR}' ../aur-packages.x86_64) ;i++))
do
    package=$(head -"${i}" ../aur-packages.x86_64 | tail -1)
    git clone "https://aur.archlinux.org/${package}.git"
    cd ./"${package}" && 
    makepkg --skippgpcheck --skipchecksums --noconfirm --syncdeps;
    cp ./*.pkg.tar.zst ../../local-repo ;
    cd ../
done
echo -e "\033[32m正在配置本地软件源...\033[0m"
cd ../
repo-add ./local-repo/local-repo.db.tar.gz ./local-repo/*
echo "[local-repo]
Server = file://$(pwd)/local-repo
" >> ./pacman.conf
echo -e "\033[32m正在生成最终ISO,这可能会花掉一些时间，请耐心等待\033[0m"
sudo mkarchiso -v -o ./images ./
if  [ $? = "0" ]
then
    echo -e "\033[32m生成完毕，请打开images文件夹来查看iso\033[0m"
else
    echo -e "\033[31m生成失败,请向开发者反馈或者尝试手动构建\033[0m"
fi
echo -e "\033[32m删除一些临时文件\033[0m"
mv ./pacman.conf.bak ./pacman.conf &&
rm -f ./pacman.conf.bak
mv ./packages.x86_64.bak ./packages.x86_64 &&
rm -f ./packages.x86_64.bak
rm -rf ./aur
sudo pacman -Scc --noconfirm  ;
sudo rm -rf ./work
sudo rm -rf ./local-repo
