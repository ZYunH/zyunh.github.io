---
layout: post
title:  "打开Mac os中NTFS读写功能"
date:   2016-07-04 00:55:04
categories: mac
tags: mac
author: 张云浩
---

## 前言:

​		硬盘格式一直Mac用户比较头疼的问题，对于windows下的NTFS格式，Mac只能做到读取，不能写入。这里记录一个用于打开Mac os中NTFS读写功能。（提示：操作有风险，小白用户谨慎使用）



## 解决方法：

- 系统版本：Mac os x EI 10.11 型号：Macbook air


- 打开Mac os系统终端（可在应用程序中搜索terminal）

- 在终端中输入: diskutil list

  此命令可查看你的磁盘信息， 请记住你的TYPE NAME,例如我的磁盘为zyh_ntfs

```
     #:                       TYPE NAME                    SIZE       IDENTIFIER
     0:      GUID_partition_scheme                        *121.3 GB   disk0
     1:                        EFI EFI                     209.7 MB   disk0s1
     2:                  Apple_HFS mac os                  88.5 GB    disk0s2
     3:                 Apple_Boot Recovery HD             650.0 MB   disk0s3
     4:       Microsoft Basic Data BOOTCAMP                32.0 GB    disk0s4
  /dev/disk1 (external, physical):
     #:                       TYPE NAME                    SIZE       IDENTIFIER
     0:                            zyh_ntfs               *15.6 GB    disk1
```

- 在终端中输入： sudo nano /etc/fstab

  紧接着会提示输入密码，没有密码就会跳过这一步骤

  此命令可打开一个关于硬盘挂载与操作之类的界面，可看到

```
  GNU nano 2.0.6              File: /etc/fstab                                  





                                  [ Read 1 line ]
  ^G Get Help  ^O WriteOut  ^R Read File ^Y Prev Page ^K Cut Text  ^C Cur Pos
  ^X Exit      ^J Justify   ^W Where Is  ^V Next Page ^U UnCut Text^T To Spell
```

- 在其中加入：LABEL=(你的磁盘TYPE NAME) none ntfs rw,auto,nobrowse

  例如我的命令就是：LABEL=zyh_ntfs none ntfs rw,auto,nobrowse

- 接着按下control + x ，会下下方提示是否保存修改，按下 y 键，回车，即可退出此界面

- 重启系统

- 重启以后，会发现找不到U盘图标（其实磁盘工具中可以看到），此时你可以设置一个快捷方式来访问你的磁盘

- 打开终端，输入：sudo ln -s /Volumes/zyh_ntfs ~/Desktop/zyh_ntfs

  **请将这个命令的zyh_ntfs换成自己的TYPE NAME即可**

  此命令会提示输入密码，照常输入即可

  命令完成后会在桌面创建一个通往这个磁盘的快捷方式

- 现在可以愉快的在mac上使用ntfs格式啦~~~



参考来源：http://bbs.feng.com/read-htm-tid-9932031.html