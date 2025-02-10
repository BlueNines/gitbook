# 配置版本

6.0.0

# 配置说明

## config.yml

```yaml
# 5.1.5配置文件小更新：
# 调整了个人垃圾桶的配置位置，加入了新的参数，如果你的配置文件是从版本小于5.1.5搬运而来，请最好重新生成一份配置文件，后果自负

#如果你使用的是1.16.5以上支持RGB颜色的服务器
#以下的所有带字符串的配置均可设置为RGB颜色
#格式为   &#FFB5C5 I am RGBColor

# 所有功能Flag开关解释：
# true为启用，  false为禁用


# 请在群内问问题时分清楚以下内容
# 1.个人垃圾桶（又称私人垃圾桶）: 每个玩家独立的垃圾桶
# 2.世界垃圾桶（又称家园垃圾桶）：玩家创建的，独立于世界的垃圾桶，每次清理垃圾时会将该世界的垃圾放到该世界的世界垃圾桶里
# 3.公共垃圾桶（又称全局垃圾桶）：所有世界互通的全局垃圾桶，当玩家的个人垃圾桶或任意一个世界垃圾桶塞不下时、会转移到公共垃圾桶里

# 插件采用单例模式控制监听器, 所有选项支持使用/wtc reload指令重载

# 5.7.2版本之后可用%WTC_ClearTime%变量查看距离下一次清理垃圾的时间
# papi指令/papi parse --null %WTC_ClearTime%

# 留空符号是[] ，而不是简单的删除所有内容！
Set:
  Debug: false
  Lang: message_zh.yml
  #公共垃圾桶(当世界垃圾溢出来的物品会进入该垃圾桶)
  GlobalTrash:
    #这里可以彻底关闭这个功能的任何检查，与其他插件不同，这里的关闭是直接从服务器内部注销了监听器，是彻彻底底的关闭，想重新打开该功能只需重载也无需重启，重载即可，如果你不需要它的话，关闭后不会占用任何性能
    Flag: true
    #公共垃圾桶最大页数
    MaxPage: 5
    #在每N次扫地时，先清理公共垃圾桶内原有物品，后再将物品加入公共垃圾桶
    #如果下面的数是3，则在三次扫地之后，自动清理公共垃圾桶
    #如果为-1，则不会清理公共垃圾桶
    EveryClearGlobalTrash: 3
  #每次执行的垃圾清理的间隔
  SecondCount: 360
  #如果你想关闭这个功能，可以在权限组插件中禁用默认自带的WorldTrashCan.Main权限，玩家就无法创建世界垃圾桶了
  #玩家创建垃圾桶需要输入的字段
  SighCheckName: "[世界垃圾桶]"
  #创建垃圾桶成功后替换的字段
  #这里在插件4.9.0版本过后就可以使用RGB颜色了！
  #注意。只能在1.16.5以上版本使用RGB颜色，请勿在1.16.5以下使用，可能会导致世界垃圾桶无法正常检查字段
  SighCheckedName: "&b[&c世界垃圾桶&b]"
  #包含以下物品类型的（用wtc look也可以查看手持物品类型）
  NoClearContainerType:
    #以下物品不会进行任何处理(不会被清理，放入垃圾桶)
    - "DIAMOND"
  #包含以下任意一行lore的物品不处理
  NoClearContainerLore:
    #防止QS商店的悬浮物被处理进垃圾桶
    - "shopLocation"
  ClearEntity:
    #是否同时清理实体
    #这里可以彻底关闭这个功能的任何检查，与其他插件不同，这里的关闭是直接从服务器内部注销了监听器，是彻彻底底的关闭，想重新打开该功能只需重载也无需重启，重载即可，如果你不需要它的话，关闭后不会占用任何性能
    Flag: true
    # 是否清理经验球
    ClearExpBottle: true
    #是否清理怪物
    ClearMonster: true
    #是否清理动物
    #村民在不同版本中可能属于动物，可能不属于动物，如果你想特别清理村民，请移除白名单后加入黑名单
    ClearAnimals: false
    #是否清理被命名过的生物
    ClearReNameEntity: false
    #如果在以下名单内，不会清理（白名单）
    WhiteNameList:
      - VILLAGER
      - WITHER
    #如果在以下名单内，会清理（黑名单）
    BlackNameList:
      #这是拔刀剑的刀挂台以及拔刀的实体
      - FLAMMPFEIL.SLASHBLADE_BLADESTAND

  #仙人掌，岩浆触碰到的物品的处理
  PersonalTrashCan:
    #这里可以彻底关闭这个功能的任何检查，与其他插件不同，这里的关闭是直接从服务器内部注销了监听器，是彻彻底底的关闭，想重新打开该功能只需重载也无需重启，重载即可，如果你不需要它的话，关闭后不会占用任何性能
    Flag: true
    OriginalFeatureClearItemAddGlobalTrash:
      #模式1：将丢进仙人掌，岩浆后被删除的物品(Delay秒内)直接装入公共垃圾桶  [作者推荐]
      #模式2：将丢进仙人掌，岩浆后被删除的物品(Delay秒内)装入个人独立的垃圾桶("个人垃圾桶")（类似于这类物品的特殊垃圾桶）  [群友要求]
      #模式3：对这类丢进仙人掌，岩浆，岩浆后被删除的物品(五秒内)，不处理（关闭该功能）
      UseModel: 3
      #玩家丢在地上的物品超过以下Delay设置的时间，就算丢进仙人掌，岩浆后，也不会被处理(防止卡顿)
      Delay: 6
      Model2:
        #若"个人垃圾桶"满了，是否自动清理
        AutoClear: true
        #如果使用了Vault以及它的经济插件，可以在下面设置玩家从个人垃圾桶中 取出垃圾所要花费的金币
        #如果没使用Vault以及它的经济插件或者不想使用扣费功能，请在下面填-1以禁用
#        Coins: 10.0
        Coins: -1

    # 对玩家丢弃的物品进行处理，使用条件：服务器版本＞1.14 否则下面选项无效
    # 当玩家所处世界没有世界垃圾桶时。玩家主动丢弃的物品是否优先进入个人垃圾桶，其次才进入公共垃圾桶
    # 这里填false则玩家主动丢弃的物品不会优先进入个人垃圾桶
    NoWorldTrashCanEnterPersonalTrashCan: false


  # 支持的所有bossbar颜色
  #    PINK,
  #    BLUE,
  #    RED,
  #    GREEN,
  #    YELLOW,
  #    PURPLE,
  #    WHITE;
  # 支持的所有bossbar类型
  #    SOLID,
  #    SEGMENTED_6,
  #    SEGMENTED_10,
  #    SEGMENTED_12,
  #    SEGMENTED_20;
  BossBarFlag: false
  #当读秒到达以下数字时会进行一次信息的发送   如  &d&l还剩下 60 秒清理物品和实体
  #%DealItemSum%为处理的物品总数（包括回收进任意垃圾桶的也包括被清理的）
  #%GlobalTrashAddSum%为进入公共垃圾桶的物品总数
  BossBarMessageForCount:
    - 30;&d&l即将清理物品和实体;SOLID;RED
    - 29;&d&l即将清理物品和实体;SOLID;YELLOW
    - 28;&d&l即将清理物品和实体;SOLID;GREEN
    - 27;&d&l即将清理物品和实体;SOLID;BLUE
    - 26;&d&l即将清理物品和实体;SOLID;PINK
    - 25;&d&l即将清理物品和实体;SOLID;PURPLE
    - 24;&d&l即将清理物品和实体;SOLID;WHITE
    - 23;&d&l即将清理物品和实体;SEGMENTED_6;RED
    - 22;&d&l即将清理物品和实体;SEGMENTED_6;YELLOW
    - 21;&d&l即将清理物品和实体;SEGMENTED_6;GREEN
    - 20;&d&l即将清理物品和实体;SEGMENTED_6;BLUE
    - 19;&d&l即将清理物品和实体;SEGMENTED_6;PINK
    - 18;&d&l即将清理物品和实体;SEGMENTED_6;PURPLE
    - 17;&d&l即将清理物品和实体;SEGMENTED_6;WHITE
    - 16;&d&l即将清理物品和实体;SEGMENTED_10;RED
    - 15;&d&l即将清理物品和实体;SEGMENTED_10;YELLOW
    - 14;&d&l即将清理物品和实体;SEGMENTED_10;GREEN
    - 13;&d&l即将清理物品和实体;SEGMENTED_10;BLUE
    - 12;&d&l即将清理物品和实体;SEGMENTED_10;PINK
    - 11;&d&l即将清理物品和实体;SEGMENTED_10;PURPLE
    - 10;&d&l即将清理物品和实体;SEGMENTED_10;WHITE
    - 9;&d&l即将清理物品和实体;SEGMENTED_12;RED
    - 8;&d&l即将清理物品和实体;SEGMENTED_12;YELLOW
    - 7;&d&l即将清理物品和实体;SEGMENTED_12;GREEN
    - 6;&d&l即将清理物品和实体;SEGMENTED_12;BLUE
    - 5;&d&l即将清理物品和实体;SEGMENTED_12;PINK
    - 4;&d&l即将清理物品和实体;SEGMENTED_12;PURPLE
    - 3;&d&l即将清理物品和实体;SEGMENTED_20;WHITE
    - 2;&d&l即将清理物品和实体;SEGMENTED_20;RED
    - 1;&d&l即将清理物品和实体;SEGMENTED_20;YELLOW
    - 0;&a清理成功，有%GlobalTrashAddSum%个物品加入了公共垃圾桶，有%EntitySum%个生物被清理;SEGMENTED_20;GREEN
    #-1和-2是设置清理公共垃圾桶时的提醒，如果本次没有清理公共垃圾桶，则输出-1的提醒，如果本次清理公共垃圾桶，则输出-2的提醒
    #该提醒是在清理垃圾后，延迟2秒发送的提醒
    - -1;&d还有%ClearGlobalCount%次清理，公共垃圾桶;SEGMENTED_20;GREEN
    - -2;&a公共垃圾桶的物品已刷新;SEGMENTED_20;GREEN

  #是否启用ActionBar的提示方式(经验条上面的提示字)
  #ActionBar 也支持使用RGB（版本1.16.5+）
  ActionBarFlag: true
  #当读秒到达以下数字时会进行一次信息的发送   如  &d&l还剩下 60 秒清理物品和实体
  #%DealItemSum%为处理的物品总数（包括回收进任意垃圾桶的也包括被清理的）
  #%GlobalTrashAddSum%为进入公共垃圾桶的物品总数
  ActionBarMessageForCount:
    - 60;&d&l还剩下 60 秒清理物品和实体
    - 30;&d&l还剩下 30 秒清理物品和实体
    - 10;&d&l还剩下 10 秒清理物品和实体
    - 5;&c&l5秒
    - 3;&c&l3秒
    - 2;&c&l2秒
    - 1;&c&l1秒
    - 0;&a清理成功，有%GlobalTrashAddSum%个物品加入了公共垃圾桶，有%EntitySum%个生物被清理
    #-1和-2是设置清理公共垃圾桶时的提醒，如果本次没有清理公共垃圾桶，则输出-1的提醒，如果本次清理公共垃圾桶，则输出-2的提醒
    #该提醒是在清理垃圾后，延迟2秒发送的提醒
    - -1;&d还有%ClearGlobalCount%次清理，公共垃圾桶
    - -2;&a公共垃圾桶的物品已刷新

  #是否启用Title的提示方式
  TitleFlag: false
  #当读秒到达以下数字时会进行一次信息的发送   如  &d&l还剩下 60 秒清理物品和实体
  #%DealItemSum%为处理的物品总数（包括回收进任意垃圾桶的也包括被清理的）
  #%GlobalTrashAddSum%为进入公共垃圾桶的物品总数
  TitleMessageForCount:
    #这里多了一个;是因为前一个是大标题，后一个是小标题
    - 60;&d还剩下 60 秒;清理物品和实体
    - 30;&d还剩下 30 秒;清理物品和实体
    - 10;&d还剩下 10 秒;清理物品和实体
    - 5;&c5秒
    - 3;&c3秒
    - 2;&c2秒
    - 1;&c1秒
    - 0;&a清理成功;有%GlobalTrashAddSum%个物品加入了公共垃圾桶，有%EntitySum%个生物被清理
    #-1和-2是设置清理公共垃圾桶时的提醒，如果本次没有清理公共垃圾桶，则输出-1的提醒，如果本次清理公共垃圾桶，则输出-2的提醒
    #该提醒是在清理垃圾后，延迟2秒发送的提醒
    - -1;&d还有%ClearGlobalCount%次清理，公共垃圾桶
    - -2;&a公共垃圾桶的物品已刷新

  #是否启用聊天栏的提示方式
  ChatFlag: true
  #当读秒到达以下数字时会进行一次信息的发送   如  &d&l还剩下 60 秒清理物品和实体
  #%DealItemSum%为处理的物品总数（包括回收进任意垃圾桶的也包括被清理的）
  #%GlobalTrashAddSum%为进入公共垃圾桶的物品总数
  ChatMessageForCount:
    - 60;&d还剩下 60 秒清理物品和实体
    - 30;&d还剩下 30 秒清理物品和实体
    - 10;&d还剩下 10 秒清理物品和实体
    - 5;&c5秒
    - 3;&c3秒
    - 2;&c2秒
    - 1;&c1秒
    - 0;&a清理成功，有%DealItemSum%个物品被回收，有%GlobalTrashAddSum%个物品加入了公共垃圾桶，有%EntitySum%个生物被清理
    #-1和-2是设置清理公共垃圾桶时的提醒，如果本次没有清理公共垃圾桶，则输出-1的提醒，如果本次清理公共垃圾桶，则输出-2的提醒
    #该提醒是在清理垃圾后，延迟2秒发送的提醒
    - -1;&d还有%ClearGlobalCount%次清理，公共垃圾桶
    - -2;&a公共垃圾桶的物品已刷新

  #是否启用提示音
  SoundFlag: true
  #提示音
  # 提示音大全去这个网站里找
  # https://minecraft.fandom.com/zh/wiki
  # 下列格式 倒计时;提示音,音量,音调
  SoundForCount:
    - 5;entity.experience_orb.pickup,0.4,0.2
    - 3;entity.experience_orb.pickup,0.4,0.4
    - 2;entity.experience_orb.pickup,0.4,0.6
    - 1;entity.experience_orb.pickup,0.4,0.8
    - 0;entity.experience_orb.pickup,0.4,1
    #-1和-2是设置清理公共垃圾桶时的提醒，如果本次没有清理公共垃圾桶，则输出-1的提醒，如果本次清理公共垃圾桶，则输出-2的提醒
    #该提醒是在清理垃圾后，延迟2秒发送的提醒
#    - -1;entity.experience_orb.pickup,1,0.6
#    - -2;entity.experience_orb.pickup,1,0.6

  #普通玩家能够创建的最大世界垃圾桶数量
  DefaultRashCanMax: 3
  #禁止玩家创建世界垃圾桶的世界
  BanWorldNameList:
    - world
    - DIM-1
    - DIM1
#所有世界垃圾桶的总黑名单(存在此表中的物品不会回收到世界垃圾桶里)
GlobalBanItem:
  - EGG
  - DIRT

#每个世界限制生物的数量(单世界空岛/家园推荐)
WorldEntityLimitCount:
  #这里可以彻底关闭这个功能的任何检查，与其他插件不同，这里的关闭是直接从服务器内部注销了监听器，是彻彻底底的关闭，想重新打开该功能只需重载也无需重启，重载即可，如果你不需要它的话，关闭后不会占用任何性能
  Flag: false
  #不受实体限制的世界
  # 如果你这里想留空，请这样写 BanWorldNameList: []
  BanWorldNameList:
    - world
    - DIM-1
    - DIM1
  DefaultCount:
    #一个世界最多多少个村民
    #如果你想限制一个实体，请你用/WorldListTrashCan Look指令
    # 如果你打开了这个功能，那这里留空是没有意义的，留空仍会依照默认配置- Villager;10 - Chicken;20
    - Villager;10
    - Chicken;20

#密集实体清理功能
GatherEntityLimitCount:
  #这里可以彻底关闭这个功能的任何检查，与其他插件不同，这里的关闭是直接从服务器内部注销了监听器，是彻彻底底的关闭，想重新打开该功能只需重载也无需重启，重载即可，如果你不需要它的话，关闭后不会占用任何性能，关闭后不会占用任何性能
  Flag: false
  #密集清理时，系统清理的密集实体是否会掉落物品
  ItemDropFlag: true
  #不受实体聚集限制的世界
  # 如果你这里想留空，请这样写 BanWorldNameList: []
  BanWorldNameList:
   - world
#    - DIM-1
#    - DIM1
  DefaultCount:
    #解析: 15格的范围内，只允许出现10只村民，清理其中的5只
    #如果你想限制一个实体，请你用/WorldListTrashCan Look指令
    # 如果你打开了这个功能，那这里留空是没有意义的，留空仍会依照默认配置- Villager;10;15;5
    # 格式：实体类型;数量;范围;清理数量
    - Villager;10;15;5
#    - Chicken;9;5;4

#禁止刷屏/频繁使用指令
ChatSet:
  QuickSendMessage:
    #这里可以彻底关闭这个功能的任何检查，与其他插件不同，这里的关闭是直接从服务器内部注销了监听器，是彻彻底底的关闭，想重新打开该功能只需重载也无需重启，重载即可，如果你不需要它的话，关闭后不会占用任何性能
    Flag: true
    #0.7秒允许发送一次聊天消息
    Time: 0.7
    #提醒语句
    Message: "&c请不要刷屏"
  QuickUseCommand:
    #这里可以彻底关闭这个功能的任何检查，与其他插件不同，这里的关闭是直接从服务器内部注销了监听器，是彻彻底底的关闭，想重新打开该功能只需重载也无需重启，重载即可，如果你不需要它的话，关闭后不会占用任何性能
    Flag: true
    #0.7秒允许使用一次指令
    Time: 0.7
    #提醒语句
    Message: "&c请不要频繁使用指令"
    #指令白名单，如果在指令以下名单中，不受以上间隔时间限制
    WhiteList:
      - /tpa
      - /spawn
      - /suicide




#防丢弃功能
#玩家如果有WorldListTrashCan.DropMode权限
#输入/WorldListTrashCan DropMode指令开启防丢弃模式
DropItemCheck:
  #这里可以彻底关闭这个功能的任何检查，与其他插件不同，这里的关闭是直接从服务器内部注销了监听器，是彻彻底底的关闭，想重新打开该功能只需重载也无需重启，重载即可，如果你不需要它的话，关闭后不会占用任何性能
  Flag: true

#优化
SimpleOptimize:
  #是否在无法拾取的箭矢射到目标后直接清理
  #如，无限附魔的弓射出的箭矢，以及骷髅射出的箭矢
  #这里可以彻底关闭这个功能的任何检查，与其他插件不同，这里的关闭是直接从服务器内部注销了监听器，是彻彻底底的关闭，想重新打开该功能只需重载也无需重启，重载即可，如果你不需要它的话，关闭后不会占用任何性能
  NotPickArrow: true
  #禁止踩踏农田
  NotTreadingFarmLand: true

#以上功能绝大多数均为群友提出后 一 一 实现，进Q群923738709 提新功能需求
```