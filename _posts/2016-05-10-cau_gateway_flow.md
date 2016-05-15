---
layout: post
title:  "中国农大网关流量监测"
date:   2016-05-10 15:14:54
categories: cau_tools
tags: python 我的项目
---

作者：张云浩    QQ : 3358023393(新)

关键词 ：China Agricultural University gateway_flow  中国农业大学

## 特性

- 仅记录网关走的下载流量，不同于其他软件的错误计算
- 只在流量发送变化的时候显示在窗口
- 自动使用日志记录流量



## 如何使用

- 点击 [下载](https://github.com/ZYunH/CAU-Gateway_Monitoring/archive/master.zip)，即可将整个项目下载至电脑。
- 解压ZIP文件，打开其中/User目录，点击'gateway_flow.exe'文件，即可自动显示当前流量变化（前提是流量发生变化），并自动在程序所在目录生成日志记录文件，按照日期记录流量变化。

**注**：

- 建议使用 管理员模式 + win7兼容模式 打开(为了最大的兼容性,打包环境为win7-32bit)。

## 当前版本

- 版本Ver1.1:

  1.优化了显示格式，现在可以在一行内容里监测流量变化。

  2.增加了日志记录功能。

## 开发信息

语言：Python 2.7.11

打包环境： windows7 Home Basic 32-bit



