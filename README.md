# GaoJiaQi-Archiso
> [English](./README-en.md) （WIP）

这是一个自用的基于[ArchISO](https://gitlab.archlinux.org/archlinux/archiso)的live-CD项目，本项目包含常用的聊天软件和远程控制软件，便于远程维修或者求助。iso中包含常用的测试、维护和代理软件，以及一些实用的软件源。

## 屏幕截图

![1](pics/1.png)

## To Do List

- [ ] 用github-actions自动构建每日版本
- [ ] 解决一些小问题
- [x] 给iso签名
- [ ] 重构build.sh
- [ ] 添加安装其他来源的软件包的功能


## 获取ISO

1. 您可以直接从[GitHub Release](https://github.com/world-nb-organization/GaoJiaQi-Archiso/releases)找到我们编译的ISO的下载地址  
2.（**推荐**）您也可以通过我们给出的配置文件自行构建

## 构建以及自定义指南

1. 手动配置并构建

本repo中有三个位于aur里的包：分别是[clash-for-windows-chinese](https://aur.archlinux.org/packages/clash-for-windows-chinese),[rustdesk-bin](https://aur.archlinux.org/packages/rustdesk-bin)和[wechat-uos](https://aur.archlinux.org/packages/wechat-uos),因此请您自备具有这三个包的软件源或者创建本地软件源:
> 这三个包均位于aur-packages.x86_64中，因此，如果您没有将这些包复制到packages.x86_64或者使用一键脚本，默认不会安装这三个包。用以下命令来添加自定义软件源来安装来自其他位置或aur的包：

```bash
repo-add /path/to/repo.db.tar.gz /path/to/packagetoadd.pkg.tar.zst
```

然后在pacman.conf中添加[repo]软件源，参见[构建本地仓库](https://wiki.archlinux.org/title/Pacman_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)/Tips_and_tricks_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)#%E8%87%AA%E5%BB%BA%E6%9C%AC%E5%9C%B0%E4%BB%93%E5%BA%93)

在准备好本地软件源后，运行`sudo mkarchiso -v -o ./images ./` ,来构建iso,构建完毕后，iso文件将位于`images`文件夹内。

2. （**实验性**）您可以使用我们提供的一键脚本

在**工作目录内**运行```sudo bash build.sh```来构建iso。构建完毕后，iso文件将位于`images`文件夹内。
> 注：如果你想要安装AUR中的包，请在aur-packages.x86_64中填写你想要安装的包，脚本会自动处理aur中的软件。
> 有没有dalao帮我重构build.sh，bash好难啊啊啊啊啊啊！

