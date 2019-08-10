#!/bin/bash
#$#表示，输入的参数个数，如果输入的参数不等于1 则提示是 arg error!!!，并且程序退出
#判断用户是否存在，使用[]
#使用echo $? 这个命令如果，指上次命令的返回值，如果为0说明正确执行，非0表示没有正确执行
#id username 如果用户名存在则打印此用户的uid $?为0 否则 打印不存在 $?为非0 
[ ! $# -eq 1 ] && echo "args error!!!" && exit 2 #短路与判断条件 如果true 全部都得执行
id $1 &>/dev/null #不需要打印提示 &>标准输入 错误输入全部重定向到黑洞
[ $? -eq 0 ] && echo "用户已存在，添加失败" && exit 3
adduser $1 &>/dev/null 
echo "$1" | passwd --stdin $1 &>/dev/null  #通过pipe标准输入 设置密码与用户名相同
echo "用户添加成功！"

