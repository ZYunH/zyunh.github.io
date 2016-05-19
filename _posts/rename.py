# -*-coding:utf-8 -*-
import os

def text_read(filename):
    """ Try to read a txt file and return a list.Return [] if there was a mistake."""
    try:
        file = open(filename, 'r')
    except IOError:
        error = []
        return error
    content = file.readlines()

    for i in range(len(content)):
        content[i] = content[i][:len(content[i]) - 1]

    file.close()
    return content

#print read_list[2][read_list[2].find('"')+1:len(read_list[2])-1]

for filename in os.listdir(os.getcwd()):
    if filename.find('.md')>-1:
        filename_title = text_read(filename)[2][text_read(filename)[2].find('"')+1:len(text_read(filename)[2])-1]
        filename_change =  text_read(filename)[3][8:18] + '-'+ filename_title + '.md'
        os.rename(filename,filename_change)
        
