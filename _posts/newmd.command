#!/usr/bin/env python
# -*- coding:utf-8 -*-
import time
import os
import sys

path = os.path.dirname(sys.argv[0])

os.chdir(path)

def text_save(content, filename, mode='a'):
    """ Try to save a list variable in txt file."""
    file = open(filename, mode)
    for i in range(len(content)):
        file.write(str(content[i]) + '\n')
    file.close()


date = time.strftime('%Y-%m-%d %H:%M:%S')

content = ['---', 'layout: post', 'title:  "   "',
           'date:   %s' % date, 'categories: python', 'tags: python',
           'author: 张云浩', '---', ' ',
           '## 前言:', ' '
           ]

filename = '%s' % time.strftime('%Y-%m-%d') + '-' + 'none' + '.md'


text_save(content=content, filename=filename,mode='w')
