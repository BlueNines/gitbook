# 配置说明

## config.yml
```yaml
# 基础设置
settings:
  # 语言文件
  lang: 'zh_CN'
  # 调试模式
  debug: false
  # 检查更新
  check-update: true

# 清理设置
cleanup:
  # 自动清理间隔（秒）
  interval: 300
  # 清理前警告时间（秒）
  warning-time: 60
  # 清理提示消息
  warning-message: '&c[清理] &f将在 &e{time} &f秒后清理掉落物'
  # 合并相同物品
  merge-items: true
  # 最小合并距离
  merge-radius: 2.5

# 性能监控
performance:
  # 启用TPS监控
  monitor-tps: true
  # TPS警告阈值
  tps-warning: 18.0
  # 自动清理阈值
  auto-cleanup-tps: 16.0

# 白名单设置
whitelist:
  # 启用白名单
  enabled: true
  # 白名单物品
  items:
    - DIAMOND
    - NETHERITE_*
    - SHULKER_BOX
  # 忽略命名物品
  ignore-named: true
  # 忽略附魔物品
  ignore-enchanted: true

# 区域保护
regions:
  # 启用区域保护
  enabled: true
  # 保护区域列表
  list:
    spawn:
      world: 'world'
      min: [100, 60, 100]
      max: [-100, 100, -100]
    shop:
      world: 'world'
      min: [200, 60, 200]
      max: [300, 100, 300]
```

## 配置说明

### 基础设置
- `lang`: 语言文件设置
- `debug`: 调试模式开关
- `check-update`: 是否检查更新

### 清理设置
- `interval`: 自动清理间隔时间
- `warning-time`: 清理前警告时间
- `warning-message`: 清理警告消息
- `merge-items`: 是否合并物品
- `merge-radius`: 物品合并范围

### 性能监控
- `monitor-tps`: 是否监控TPS
- `tps-warning`: TPS警告阈值
- `auto-cleanup-tps`: 自动清理TPS阈值

### 白名单设置
- `enabled`: 是否启用白名单
- `items`: 白名单物品列表
- `ignore-named`: 是否忽略命名物品
- `ignore-enchanted`: 是否忽略附魔物品

### 区域保护
- `enabled`: 是否启用区域保护
- `list`: 保护区域列表配置

::: warning 注意
1. 物品ID必须使用大写
2. 支持使用 * 作为通配符
3. 坐标必须是整数
4. 修改配置后需要重载插件
::: 