#!/usr/bin/expect

set timeout -1
spawn sh /linux_unix_FineBI5_1-CN.sh
expect "回车键"
send "\r"
expect "回车键"
send "\r"
expect "回车键"
send "\r"
expect "我接受协议"
send "1\r"
expect "请选择在哪里安装 FineBI"
send "\r"
expect "最大jvm内存"
send "4096\r"
expect "是否创建快捷连接"
send "n\r"
expect "添加桌面快捷方式"
send "n\r"
expect "生成安全密钥"
send "n\r"
expect "运行 FineBI?"
send "y\r"
interact
