# 配置说明

## config.yml
```yaml
# 基础设置
settings:
  # 语言文件
  lang: 'zh_CN'
  # 更新间隔（秒）
  update-interval: 1
  # 是否启用调试模式
  debug: false

# 计分板设置
scoreboard:
  # 默认启用
  default-enable: true
  # 标题
  title: '&e&l服务器计分板'
  # 内容行
  lines:
    - '&7玩家: &f%player_name%'
    - '&7等级: &f%player_level%'
    - '&7金币: &f%player_money%'
    - ''
    - '&7排名: &f%scoreboard_rank%'
    - '&7分数: &f%scoreboard_score%'
    
# 页面设置
pages:
  # 默认页面
  default:
    title: '&e&l默认页面'
    lines:
      - '&7玩家: &f%player_name%'
      - '&7等级: &f%player_level%'
  # 排行榜页面
  rank:
    title: '&e&l排行榜'
    lines:
      - '&71. &f%rank_1_name% - %rank_1_score%'
      - '&72. &f%rank_2_name% - %rank_2_score%'
      - '&73. &f%rank_3_name% - %rank_3_score%'
```

## 配置说明
### 基础设置
- `lang`: 语言文件设置
- `update-interval`: 计分板更新间隔
- `debug`: 调试模式开关

### 计分板设置
- `default-enable`: 玩家默认是否启用计分板
- `title`: 计分板标题
- `lines`: 计分板显示内容

### 页面设置
- `default`: 默认页面配置
- `rank`: 排行榜页面配置

::: warning 注意
- 修改配置文件后需要重启服务器或使用 /sb admin reload 重载插件
- 颜色代码使用 & 符号
::: 