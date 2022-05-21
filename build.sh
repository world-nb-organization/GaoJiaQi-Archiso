#!/usr/bin/bash
echo -e "\033[32m从aur-packages.x86_64中读取包名并生成二进制包...\033[0m"
cp ./pacman.conf ./pacman.conf.bak
mkdir ./local-repo || cd ./local-repo 
for ((i=1;i <= $(awk 'END {print NR}' ../aur-packages.x86_64) ;i++))
do
    package=$(head -"${i}" ../aur-packages.x86_64 | tail -1)
    git clone "https://aur.archlinux.org/${package}.git"
    cd ./"${package}" && 
    makepkg --skippgpcheck --skipchecksums --noconfirm && 
    cp ./*.pkg.tar.zst ../ && 
    cd ../
done
echo -e "\033[32m正在配置本地软件源...\033[0m"
cd ../
repo add ./local-repo.db.tar.gz ./local-repo/*
echo "[local-repo]
Server = file://$(pwd)/
" >> ./pacman.conf
echo -e "\033[32m正在生成最终ISO,这可能会花掉一些时间，请耐心等待\033[0m"
sudo mkarchiso -v -o ./images ./
echo -e "\033[32m删除一些临时文件\033[0m"
mv ./pacman.conf.bak ./pacman.conf &&
rm -f ./pacman.conf.bak
sudo pacman -Scc --noconfirm  ||
sudo rm -rf ./work
