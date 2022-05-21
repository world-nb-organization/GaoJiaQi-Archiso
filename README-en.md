# GaoJiaQi-Archiso
> Thanks 高嘉麒 for translating!

This is a [ArchISO](https://gitlab.archlinux.org/archlinux/archiso)-based live-CD project.It contains some popular IM and remote control applications in China to make it possible and easier for asking for help.It also contains some useful applications for testing,maintaining the system,proxy and more useful repos.

## Screenshots

![1](pics/1.png)

## To Do List

- [ ] build nightly version through github actions
- [ ] solve some know issues
- [x] sign for iso
- [ ] rebuild `build.sh`
- [ ] add support for installing packages from other repos(这一句没看懂，请自行修改)


## Get ISO
1. You can find the url to download iso built by us from[GitHub Release](https://github.com/world-nb-organization/GaoJiaQi-Archiso/releases)

2. （**Recommend**）You can also build it manually

## Building Instructions

- Build manually

> 摆烂

本repo中有三个位于aur里的包：分别是[clash-for-windows-chinese](https://aur.archlinux.org/packages/clash-for-windows-chinese),[rustdesk-bin](https://aur.archlinux.org/packages/rustdesk-bin)和[wechat-uos](https://aur.archlinux.org/packages/wechat-uos),因此请您自备具有这三个包的软件源或者创建本地软件源:
> 这三个包均位于aur-packages.x86_64中，因此，如果您没有将这些包复制到packages.x86_64或者使用一键脚本，默认不会安装这三个包。用以下命令来添加自定义软件源来安装来自其他位置或aur的包：

```bash
repo-add /path/to/repo.db.tar.gz /path/to/packagetoadd.pkg.tar.zst
```

然后在pacman.conf中添加[repo]软件源，参见[构建本地仓库](https://wiki.archlinux.org/title/Pacman_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)/Tips_and_tricks_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)#%E8%87%AA%E5%BB%BA%E6%9C%AC%E5%9C%B0%E4%BB%93%E5%BA%93)

在准备好本地软件源后，运行 `sudo mkarchiso -v -o ./images ./` ,来构建iso.如果一切顺利，iso文件将位于`images`文件夹内。

- (**experienments**) You can use the script we provided

Run ```sudo bash build.sh``` **in the working directory** to build it.The iso will be in the `images` folder if it succeed.

> Note：Please add the packages you want to install from aur to the `aur-packages.x86_64` before you run the script 
> 
> 有没有dalao帮我重构build.sh，bash好难啊啊啊啊啊啊！

