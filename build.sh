echo -e "\033[32m从aur-packages中读取包名...\033[0m"
for i in {1..$(awk 'END {print NR}' ./aur-packages)}
    git clone https://aur.archlinux.org/$(head -$i filename | tail -1).git

head -m ./aur-packages | tail -1
echo -e "\033[32m正在生成二进制包...\033[0m"

echo -e "\033[32m正在配置本地软件源...\033[0m"
mkdir ./local-repo && repo add ./local-repo/local-repo.db.tar.gz ./local-repo/*
echo "[local-repo]
Server = file://$pwd/local-repo/
" >> ./pacman.conf

echo -e "\033[32m正在生成最终ISO,这可能会花掉一些时间，请耐心等待\033[0m"
sudo mkarchiso -v -o ./images ./
echo -e "\033[32m删除一些临时文件\033[0m"
pacman -Scc --no-confirm
sudo rm -rf ./work