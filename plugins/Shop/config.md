# 配置说明

## config.yml
```yaml
# 基础设置
settings:
  # 语言文件
  lang: 'zh_CN'
  # 数据库类型 (mysql/sqlite)
  database: 'sqlite'
  # 调试模式
  debug: false

# MySQL设置
mysql:
  host: 'localhost'
  port: 3306
  database: 'minecraft'
  username: 'root'
  password: '123456'

# 商店设置
shop:
  # 商店标题
  title: '&e&l服务器商店'
  # 每页显示数量
  items-per-page: 45
  # 税率 (0.1 = 10%)
  tax-rate: 0.1
  # 最小价格
  min-price: 0.01
  # 最大价格
  max-price: 1000000

# 市场设置
market:
  # 是否启用
  enable: true
  # 上架费用
  listing-fee: 10
  # 上架时间（小时）
  listing-duration: 48
  # 每人最大上架数量
  max-listings: 10

# 商品设置
items:
  example1:
    material: 'DIAMOND'
    name: '&b钻石'
    price: 100
    description:
      - '&7高品质钻石'
      - '&7购买后直接到背包'
  example2:
    material: 'GOLDEN_APPLE'
    name: '&6金苹果'
    price: 50
    description:
      - '&7补充饥饿和生命'
```

## 配置说明
### 基础设置
- `lang`: 语言文件设置
- `database`: 数据库类型选择
- `debug`: 调试模式开关

### MySQL设置
- `host`: 数据库地址
- `port`: 数据库端口
- `database`: 数据库名称
- `username`: 数据库用户名
- `password`: 数据库密码

### 商店设置
- `title`: 商店界面标题
- `items-per-page`: 每页显示物品数量
- `tax-rate`: 交易税率
- `min-price`: 最低价格限制
- `max-price`: 最高价格限制

### 市场设置
- `enable`: 是否启用市场功能
- `listing-fee`: 上架费用
- `listing-duration`: 上架持续时间
- `max-listings`: 最大上架数量限制

::: warning 注意
- 修改配置文件后需要重启服务器或使用 /shop admin reload 重载插件
- 物品ID必须是游戏中有效的物品ID
::: 