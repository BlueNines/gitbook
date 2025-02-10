# 指令说明

::: tip 提示
所有指令可简写为 `/wtc`，例如 `/wtc reload`
:::

## 基础指令

| 指令          | 说明        | 权限节点                       |
| ----------- | --------- | -------------------------- |
| help        | 查看帮助      | WorldListTrashCan.help       |
| globaltrash | 打开公共垃圾桶   | WorldListTrashCan.GlobalTrashOpen |
| look        | 右键获取实体类型  | WorldListTrashCan.Look     |
| dropmode    | 打开或关闭丢弃模式 | WorldListTrashCan.DropMode |

## 管理指令

| 指令             | 说明             | 权限节点                        |
| -------------- | -------------- | --------------------------- |
| reload         | 重载插件           | -                           |
| ban            | 打开本世界垃圾黑名单GUI  | WorldListTrashCan.BanGui     |
| globalban      | 打开全局世界垃圾黑名单GUI | WorldListTrashCan.GlobalBan |
| add [世界名] <数量> | 设置世界垃圾桶最大数量    | -                           |

::: warning 注意事项

1. `[]` 代表可选参数，`<>` 代表必填参数
2. 使用 `look` 指令可以方便地获取实体类型，用于配置文件中的黑名单/白名单
3. 不填写世界名时，默认为玩家脚下的世界
   :::

# 权限说明

## 默认拥有的权限

| 权限节点                        | 说明                |
| --------------------------- | ----------------- |
| WorldListTrashCan.BanGui      | 允许打开本世界垃圾黑名单添加GUI |
| WorldListTrashCan.GlobalTrashOpen | 允许打开公共垃圾桶 |
| WorldListTrashCan.help        | 允许使用帮助指令 |
| WorldListTrashCan.DropMode    | 允许使用丢弃保护模式 |
| WorldListTrashCan.Main        | 允许创建世界垃圾桶 |

## 默认不拥有的权限

| 权限节点                        | 说明                |
| --------------------------- | ----------------- |
| WorldListTrashCan.GlobalBan | 允许打开全球垃圾桶黑名单添加GUI |
| WorldListTrashCan.Look      | 允许使用右键查询实体类型的指令 |