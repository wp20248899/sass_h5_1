#!/bin/bash

# 定义要生成的页面名称列表
pages=("discount" "my" "setting" "deposit" "notice")

# 循环生成页面
for page in "${pages[@]}"; do
  echo "正在生成页面: $page"
  get create page $page
done

echo "所有页面已生成！"