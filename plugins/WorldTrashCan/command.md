# 指令说明

::: tip 提示
指令前缀: /wtc
权限节点前缀: worldtrashcan
:::

## 基础指令
| 指令 | 说明 | 权限节点 |
|-----|------|----------|
| help | 查看帮助 | use |
| clean | 立即清理 | use |
| stats | 查看统计信息 | use |
| tps | 查看服务器TPS | use |

## 管理指令
| 指令 | 说明 | 权限节点 |
|-----|------|----------|
| reload | 重载插件 | admin |
| debug | 切换调试模式 | admin |
| whitelist add <物品> | 添加白名单 | admin |
| whitelist remove <物品> | 移除白名单 | admin |

## 区域管理
| 指令 | 说明 | 权限节点 |
|-----|------|----------|
| region create <名称> | 创建保护区域 | admin |
| region delete <名称> | 删除保护区域 | admin |
| region list | 查看所有区域 | admin |
| region info <名称> | 查看区域信息 | admin |

::: warning 注意事项
1. <> 代表必填参数
2. 物品名称支持通配符，例如：DIAMOND_*
3. 区域创建需要使用选区工具
::: 