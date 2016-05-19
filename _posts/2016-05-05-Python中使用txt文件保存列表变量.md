---
layout: post
title:  "Python中使用txt文件保存列表变量"
date:   2016-05-05 10:14:54
categories: python
tags: python 
excerpt: 问题：我们常常需要在python使用中保存一些变量在文件中，其中txt文件是比较方便的，这篇文章给初学者提供了一个解决方案
author: 张云浩
---

> ### 解决方案：

```python
def text_save(content,filename,mode='a'):
   # Try to save a list variable in txt file.
   file = open(filename,mode)
   for i in range(len(content)):
      file.write(str(content[i])+'\n')
   file.close()

def text_read(filename):
   # Try to read a txt file and return a list.Return [] if there was a mistake.
   try:
      file = open(filename,'r')
   except IOError:
      error = []
      return error
   content = file.readlines()

   for i in range(len(content)):
      content[i] = content[i][:len(content[i])-1]

   file.close()
   return content
```

> ### 使用实例：

1. text_save()函数

- 输入：content ，即列表变量；filename,即文件名；mode,即读写方式(默认为'a'，即追加模式);
- 输出：保存列表变量到一个名为‘filename’的txt文件，每一个变量占一行。

运行

```
list_test = [1,2,3,4,5,0]
text_save(list_test,'test.txt')
```

得到一个名为'test.txt'文件，其中内容为：

```
1
2
3
4
5
0

```

2.text_read()函数

- 输入：filename,即文件的名字
- 输出：返回一个列表变量（每个列表转换为字符型）

运行

```
list_test = text_read('test.txt')
print list_test
```

得到结果

```
['1', '2', '3', '4', '5', '0']
```

> ### 异常处理：

- text_save():无
- text_read():如果文件不存在或者为空，返回一个空的列表变量[]

