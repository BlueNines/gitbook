# 命令说明

## 基础命令
| 命令 | 说明 | 权限 |
|-----|------|------|
| /shop help | 查看帮助 | shop.use |
| /shop open | 打开商店 | shop.use |
| /shop sell | 出售物品 | shop.sell |
| /shop balance | 查看余额 | shop.use |

## 管理命令
| 命令 | 说明 | 权限 |
|-----|------|------|
| /shop admin help | 查看管理员帮助 | shop.admin |
| /shop admin reload | 重载插件 | shop.admin |
| /shop admin add <商品> <价格> | 添加商品 | shop.admin |
| /shop admin remove <商品ID> | 移除商品 | shop.admin |

## 市场命令
| 命令 | 说明 | 权限 |
|-----|------|------|
| /shop market list | 查看市场列表 | shop.use |
| /shop market sell <价格> | 上架手中物品 | shop.sell |
| /shop market search <关键词> | 搜索商品 | shop.use |
| /shop market buy <商品ID> | 购买商品 | shop.use |

::: tip 提示
- 命令中的 <> 表示必填参数
- 价格参数支持小数点
::: 