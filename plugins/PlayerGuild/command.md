# 指令说明

::: tip 提示
指令前缀: /guild
权限节点前缀: playerguild
:::

## 玩家指令
| 指令 | 说明 | 权限节点 |
|-----|------|----------|
| help | 查看帮助 | use |
| create <名称> | 创建公会 | use |
| join <公会名> | 加入公会 | use |
| quit | 退出公会 | use |
| info | 查看公会信息 | use |

## 管理指令
| 指令 | 说明 | 权限节点 |
|-----|------|----------|
| admin help | 查看管理员帮助 | admin |
| admin reload | 重载插件 | admin |
| admin delete <公会名> | 删除公会 | admin |

## 公会管理
| 指令 | 说明 | 权限节点 |
|-----|------|----------|
| manage help | 查看公会管理帮助 | use |
| manage kick <玩家名> | 踢出成员 | use |
| manage setdesc <描述> | 设置公会描述 | use |

::: warning 注意事项
1. <> 代表必填参数
2. 部分指令需要玩家拥有公会会长或管理员身份
3. 权限节点需要加上前缀，例如: playerguild.use
::: 