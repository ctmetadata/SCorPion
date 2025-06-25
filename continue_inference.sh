#!/bin/bash

# 第一个 Python 脚本
python inference.py --reverse True --topk 5 --url  http://10.209.76.23:8501/v1

# 检查第一个脚本是否成功执行
if [ $? -eq 0 ]; then
    # 如果第一个脚本成功执行，则运行第二个脚本
    python inference.py --reverse True --url  http://10.209.76.23:8501/v1
else
    # 如果第一个脚本执行失败，输出错误信息
    echo "script1.py 执行失败，script2.py 不会运行。"
    exit 1
fi